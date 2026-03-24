# 경계 민감 세그멘테이션 (Boundary-Sensitive Segmentation)

정확한 경계 검출은 많은 컴퓨터 비전 애플리케이션에서 중요합니다. 이 문서는 정확한 경계 인식 세그멘테이션, 엣지 보존, 정밀한 윤곽 검출을 위한 방법을 다룹니다.

## 📚 개요

**경계 민감 세그멘테이션**은 세그멘테이션 작업에서 정밀한 객체 경계를 달성하는 데 중점을 둡니다. 다음에 중요합니다:
- 의료 영상 (종양 경계)
- 자율주행 (차도 표시)
- 로봇공학 (객체 조작)
- 이미지 편집 (정밀 선택)

**주요 도전 과제:**
- **모호한 경계**: 객체가 정확히 어디서 끝나는가?
- **흐릿한 엣지**: 초점이 맞지 않은 영역
- **낮은 대비**: 양쪽의 유사한 색상
- **미세 구조**: 좁은 객체, 세부 사항
- **다중 스케일**: 다른 스케일의 경계

**지표:**
- **Boundary F1 Score**: 경계의 정밀도/재현율
- **Dice coefficient**: 전체 겹침
- **Hausdorff distance**: 최대 경계 편차

## 🔷 Boundary-Aware Loss Functions

### Boundary Loss

**Explicit Boundary Supervision:**
```python
class BoundaryLoss(nn.Module):
    def __init__(self):
        super().__init__()
        # Sobel edge detector
        self.sobel = torch.nn.Conv2d(1, 2, 3, padding=1, bias=False)
        self.sobel.weight.requires_grad = False
        
        # Edge weights for Sobel
        sobel_matrix = torch.tensor([[-1, 0, 1],
                                     [-2, 0, 2],
                                     [-1, 0, 1]])
        self.sobel.weight[0, 0] = sobel_matrix.unsqueeze(0).unsqueeze(0)
        self.sobel.weight[0, 1] = sobel_matrix.unsqueeze(0).unsqueeze(0).transpose(1, 2)
    
    def forward(self, pred, gt, alpha=0.5):
        # Compute boundaries
        pred_edge = self.compute_edges(pred)
        gt_edge = self.compute_edges(gt)
        
        # Boundary IoU
        pred_edge = pred_edge > 0.5
        gt_edge = gt_edge > 0.5
        
        iou = (pred_edge & gt_edge).float().sum() / \
              (pred_edge | gt_edge).float().sum()
        
        # Combined loss
        seg_loss = F.binary_cross_entropy_with_logits(pred, gt)
        boundary_loss = 1 - iou
        
        return alpha * boundary_loss + (1-alpha) * seg_loss
    
    def compute_edges(self, seg):
        """Compute binary edges from segmentation"""
        with torch.no_grad():
            seg = torch.sigmoid(seg)
            pred_8 = self.sobel(seg)
            edges = (torch.abs(pred_8[:, 0, :, :]) + 
                    torch.abs(pred_8[:, 1, :, :]))
        return edges
```

### Gradient-Based Boundary Loss

**Gradient Matching:**
```python
class GradientBoundaryLoss(nn.Module):
    def __init__(self):
        super().__init__()
    
    def forward(self, pred, gt):
        # Compute gradients
        pred_grad_x = F.conv2d(pred, self.edge_kernel_x, padding=1)
        pred_grad_y = F.conv2d(pred, self.edge_kernel_y, padding=1)
        gt_grad_x = F.conv2d(gt, self.edge_kernel_x, padding=1)
        gt_grad_y = F.conv2d(gt, self.edge_kernel_y, padding=1)
        
        # Gradient magnitude
        pred_mag = torch.sqrt(pred_grad_x**2 + pred_grad_y**2)
        gt_mag = torch.sqrt(gt_grad_x**2 + gt_grad_y**2)
        
        # Gradient matching loss
        loss = F.mse_loss(pred_mag, gt_mag)
        return loss
```

### Distance Transform Loss

**Boundary-aware with Distance Maps:**
```python
def compute_distance_map(seg):
    """Compute Euclidean distance transform"""
    binary = (seg > 0.5).float()
    dist = cv2.distanceTransform(binary.numpy(), 
                                 cv2.DIST_L2, 5)
    return torch.from_numpy(dist).unsqueeze(0).unsqueeze(0)

class DistanceTransformLoss(nn.Module):
    def __init__(self):
        super().__init__()
        self.criterion = nn.SmoothL1Loss()
    
    def forward(self, pred, gt):
        pred_dist = compute_distance_map(pred)
        gt_dist = compute_distance_map(gt)
        
        # Boundary-aware: focus on edges
        pred_boundary = torch.abs(pred_dist) < 3
        gt_boundary = torch.abs(gt_dist) < 3
        
        boundary_pred = pred_dist * pred_boundary
        boundary_gt = gt_dist * gt_boundary
        
        loss = self.criterion(boundary_pred, boundary_gt)
        return loss
```

## 🔵 Explicit Boundary Learning

### SCRNet (Segmentation-Constraint Refinement)

**Two-Stage Architecture:**

**Stage 1 - Coarse Segmentation:**
```python
class SCRNet(nn.Module):
    def __init__(self):
        super().__init__()
        self.encoder = ResNet50(pretrained=True)
        self.decoder1 = DecoderBlock()
        self.coarse_mask = nn.Conv2d(64, 1, 1)
        
        # SCR module for refinement
        self.scr_module = SegmentationConstraintRefinement()
        
        self.decoder2 = DecoderBlock()
        self.fine_mask = nn.Conv2d(64, 1, 1)
    
    def forward(self, x):
        features = self.encoder(x)
        
        # Coarse segmentation
        coarse = self.decoder1(features)
        coarse_mask = self.coarse_mask(coarse)
        
        # SCR refinement
        refined_features = self.scr_module(coarse, coarse_mask)
        fine = self.decoder2(refined_features)
        fine_mask = self.fine_mask(fine)
        
        return coarse_mask, fine_mask
```

**SCR Module:**
- **Semantic attention**: Focus on regions of interest
- **Geometric attention**: Boundary-aware processing
- **Refinement**: Iterative boundary improvement

**Performance:**
- **mIoU: 80.3%** (PASCAL VOC)
- **Boundary F1: 84.1%**
- **25% faster** than traditional methods

### BANet (Boundary Awareness Network)

**Two-Stream Architecture:**

```python
class BANet(nn.Module):
    def __init__(self):
        super().__init__()
        
        # Object segmentation stream
        self.object_stream = ObjectSegmentationStream()
        
        # Boundary segmentation stream
        self.boundary_stream = BoundarySegmentationStream()
        
        # Fusion module
        self.fusion = BoundaryObjectFusion()
        
        # Final refinement
        self.refinement = RefinementModule()
    
    def forward(self, x):
        object_feat, object_mask = self.object_stream(x)
        boundary_feat, boundary_mask = self.boundary_stream(x)
        
        # Fusion
        fused = self.fusion(object_feat, boundary_feat)
        fused_mask = self.fusion(object_mask, boundary_mask)
        
        # Refinement
        refined = self.refinement(fused_mask)
        return refined
```

**Boundary Stream:**
- Extracts edge information
- Focuses on boundary regions
- Uses gradient information

**Object Stream:**
- Standard semantic segmentation
- Captures object context

**Performance:**
- **mIoU: 79.3%** (PASCAL VOC)
- **Boundary F1: 85.6%**
- **Better thin structure** detection

## 🎯 Multi-Scale Boundary Learning

### DeepLab v3+ with Boundary Attention

**Enhanced Decoder:**
```python
class DeepLabBoundaryV3Plus(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = ResNet101()
        self.aspp = ASPP(2048, 256)
        
        # Boundary attention in decoder
        self.decoder = DeepLabDecoder(
            low_level_channels=256,
            boundary_attention=True
        )
        
        # Boundary prediction head
        self.boundary_head = nn.Sequential(
            nn.Conv2d(256, 64, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(64, 1, 1)
        )
    
    def forward(self, x):
        features = self.backbone(x)
        
        x1 = features[0]  # Low-level
        x2 = features[1]
        x3 = features[2]
        x4 = features[3]
        
        # ASPP
        x = self.aspp(x4)
        
        # Decoder with boundary attention
        x, boundary_features = self.decoder(
            x, x1, use_boundary=True
        )
        
        # Main output
        seg = nn.Conv2d(48, 1, 1)
        
        # Boundary output
        boundary = self.boundary_head(x)
        
        return seg, boundary
```

**Boundary Attention:**
```python
class BoundaryAttention(nn.Module):
    def __init__(self, channels):
        super().__init__()
        self.attention = nn.Sequential(
            nn.AdaptiveAvgPool2d(1),
            nn.Conv2d(channels, channels//8, 1),
            nn.ReLU(),
            nn.Conv2d(channels//8, channels, 1),
            nn.Sigmoid()
        )
    
    def forward(self, x, boundary_map):
        # Use boundary to guide feature attention
        b = torch.sigmoid(self.attention(boundary_map))
        return x * b.expand_as(x)
```

### Hierarchical Boundary Learning

**Multi-Scale Boundary Learning:**
```python
class HierarchicalBoundary(nn.Module):
    def __init__(self):
        super().__init__()
        
        # Multi-scale boundary heads
        self.boundary_p3 = BoundaryHead(scale=1/32)
        self.boundary_p4 = BoundaryHead(scale=1/16)
        self.boundary_p8 = BoundaryHead(scale=1/8)
        self.boundary_p16 = BoundaryHead(scale=1/4)
        
        # Boundary fusion
        self.boundary_fusion = BoundaryFuseModule()
        
        # Segmentation decoder
        self.decoder = SegmentationDecoder()
    
    def forward(self, features):
        # Multi-scale boundary supervision
        b3 = self.boundary_p3(features[2])
        b4 = self.boundary_p4(features[3])
        b8 = self.boundary_p8(features[4])
        b16 = self.boundary_p16(features[5])
        
        # Fuse boundary information
        boundary_features = self.boundary_fusion([b3, b4, b8, b16])
        
        # Segmentation with boundary guidance
        seg = self.decoder(features, boundary_features)
        
        return seg
```

## 🔶 Learning Boundary Representations

### Edge-Guided Attention

**Edge-Enhanced Features:**
```python
class EdgeGuidedAttention(nn.Module):
    def __init__(self, channels):
        super().__init__()
        self.edge_extractor = nn.Sequential(
            nn.Conv2d(1, 32, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(32, 1, 3, padding=1)
        )
        
        self.attention = nn.Sequential(
            nn.Conv2d(channels + 1, channels, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(channels, channels, 3, padding=1),
            nn.Sigmoid()
        )
    
    def forward(self, features, edge_map):
        # Extract edge information
        edge = self.edge_extractor(edge_map)
        
        # Concatenate features with edges
        fused = torch.cat([features, edge], dim=1)
        
        # Learn attention weights
        att = self.attention(fused)
        
        # Apply attention
        return features * att
```

**Multi-scale Edge Extraction:**
```python
class MultiScaleEdge(nn.Module):
    def __init__(self):
        super().__init__()
        self.edge_s3 = EdgeDetector(scale=1/32)
        self.edge_s4 = EdgeDetector(scale=1/16)
        self.edge_s8 = EdgeDetector(scale=1/8)
    
    def forward(self, features):
        edge_s3 = self.edge_s3(features[2])
        edge_s4 = self.edge_s4(features[3])
        edge_s8 = self.edge_s8(features[4])
        
        # Upsample and fuse
        edge_s4 = F.interpolate(edge_s4, size=edge_s8.shape[2:], mode='bilinear')
        edge_s3 = F.interpolate(edge_s3, size=edge_s8.shape[2:], mode='bilinear')
        
        fused_edge = torch.cat([edge_s3, edge_s4, edge_s8], dim=1)
        return torch.sigmoid(fused_edge)
```

## 🚀 Modern Boundary-Sensitive Methods

### Boundary-Aware Transformers

**Transformer with Boundary Attention:**
```python
class BoundaryAwareTransformer(nn.Module):
    def __init__(self):
        super().__init__()
        self.encoder = TransformerEncoder()
        self.boundary_encoder = BoundaryAttentionEncoder()
        self.fusion = CrossModalFusion()
        self.decoder = TransformerDecoder()
    
    def forward(self, x):
        # Regular features
        regular_feat = self.encoder(x)
        
        # Boundary features
        boundary_feat = self.boundary_encoder(x)
        
        # Fusion
        fused = self.fusion(regular_feat, boundary_feat)
        
        # Decode
        seg = self.decoder(fused)
        return seg
```

**Boundary Attention Mechanism:**
```python
class BoundaryAttentionModule(nn.Module):
    def __init__(self, dim, num_heads=8):
        super().__init__()
        self.attention = nn.MultiheadAttention(dim, num_heads)
        self.boundary_proj = nn.Conv2d(1, dim, 1)
        self.fusion = nn.Linear(2*dim, dim)
    
    def forward(self, features, boundary_map):
        B, C, H, W = features.shape
        
        # Project boundary to attention space
        boundary_proj = self.boundary_proj(boundary_map)
        boundary_proj = boundary_proj.view(B, C, H*W).permute(2, 0, 1)
        features_flat = features.view(B, C, H*W).permute(2, 0, 1)
        
        # Cross-attention with boundaries
        attended, _ = self.attention(
            features_flat, boundary_proj, boundary_proj
        )
        
        attended = attended.permute(1, 2, 0).view(B, C, H, W)
        return self.fusion(torch.cat([features, attended], dim=1))
```

### Contrastive Boundary Learning

**Learn Boundary Representations:**
```python
class ContrastiveBoundaryLoss(nn.Module):
    def __init__(self, margin=0.5):
        super().__init__()
        self.margin = margin
        self.criterion = nn.CosineEmbeddingLoss()
    
    def forward(self, pred, gt):
        # Extract boundary pixels
        pred_edges = self.extract_boundaries(pred)
        gt_edges = self.extract_boundaries(gt)
        
        # Positive pairs (same class boundaries)
        pos_pairs = torch.cat([pred_edges, gt_edges], dim=1)
        pos_labels = torch.ones(len(pos_pairs))
        
        # Negative pairs (different class boundaries)
        neg_pairs = torch.cat([pred_edges, 1 - gt_edges], dim=1)
        neg_labels = torch.zeros(len(neg_pairs))
        
        # Contrastive loss
        pos_loss = self.criterion(pred_edges, gt_edges, pos_labels)
        neg_loss = self.criterion(pred_edges, 1-gt_edges, neg_labels)
        
        return pos_loss + neg_loss
```

## 🎯 Advanced Boundary Methods

### Active Contour Networks

**Learned Snake:**
```python
class ActiveContourNet(nn.Module):
    def __init__(self):
        super().__init__()
        self.initialization = CNNInitialization()
        self.contour_evolution = ContourEvolutionLayer()
        self.energy_minimizer = EnergyMinimizer()
    
    def forward(self, x, initial_mask):
        # Initial boundary estimation
        init_points = self.initialization(x, initial_mask)
        
        # Evolution
        refined_points = self.contour_evolution(x, init_points)
        
        # Energy minimization
        final_mask = self.energy_minimizer(refined_points, x)
        return final_mask
```

**Energy Function:**
```
E = E_internal + E_external
E_internal = α·E_continuity + β·E_curvature
E_external = -λ·∫ gradient(x) · ds
```

## 📊 성능 비교

### PASCAL VOC 2012 검증

| 방법 | mIoU | Boundary F1 | 지연 |
|----|----|---|----|
| DeepLab v3+ | 80.0% | 82.1% | 130ms |
| SCRNet | 79.3% | 84.1% | 125ms |
| BANet | 79.3% | 85.6% | 135ms |
| DeepLab v3+ 경계 | 80.3% | 86.2% | 140ms |
| 계층적 경계 | 81.2% | 87.5% | 150ms |
| 경계 인식 Transformer | 81.8% | 88.3% | 160ms |

### ADE20K 검증

| 방법 | mIoU | Boundary F1 | 소형 객체 |
|---|----|---|---|
| DeepLab v3+ | 45.8% | 48.2% | 35.6% |
| SCRNet | 47.2% | 50.3% | 37.8% |
| 계층적 경계 | 48.5% | 52.1% | 40.2% |
| 경계 Transformer | 49.3% | 53.4% | 42.5% |

### 의료 영상 (종양 세그멘테이션)

| 방법 | Dice | 경계 Dice | Hausdorff 거리 |
|---|----|---|---|
| U-Net | 0.875 | 0.823 | 5.2px |
| U-Net 경계 | 0.892 | 0.865 | 3.8px |
| 경계 인식 | 0.903 | 0.887 | 3.1px |
| 계층적 | 0.912 | 0.905 | 2.7px |

## 🔬 Best Practices

### Training Strategies

1. **Multi-task Learning:**
```python
class MultiTaskBoundary(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = ResNet50()
        self.decoder = SegmentationDecoder()
        self.boundary_head = BoundaryHead()
    
    def forward(self, x, targets):
        features = self.backbone(x)
        seg, boundary = self.decoder(features)
        boundary_pred = self.boundary_head(features)
        
        # Multi-task loss
        seg_loss = F.binary_cross_entropy(seg, targets)
        boundary_loss = F.binary_cross_entropy(boundary_pred, targets_boundary)
        boundary_iou = boundary_iou(boundary_pred, targets_boundary)
        
        total_loss = seg_loss + 0.3 * boundary_loss + 0.2 * (1 - boundary_iou)
        
        return total_loss, seg, boundary_pred
```

2. **Curriculum Learning:**
- Start with coarse segmentation
- Gradually add boundary supervision
- Improve boundary precision over time

3. **Attention to Fine Details:**
- Use **high-resolution** features
- Apply **spatial attention** to boundaries
- Focus on **thin structures**

### Data Augmentation

**Boundary-preserving Augmentation:**
```python
class BoundaryPreservingAugmentation:
    def __init__(self):
        self.augmentation = RandomAugmentation()
    
    def __call__(self, image, mask):
        # Apply augmentation to both
        image, mask = self.augmentation(image, mask)
        
        # Ensure boundary integrity
        mask = self.enforce_boundary_consistency(mask)
        
        # Boundary augmentation
        boundary = self.compute_boundaries(mask)
        boundary = self.augment_boundary(boundary)
        
        return image, mask, boundary
    
    def enforce_boundary_consistency(self, mask):
        # Ensure binary and connected components
        mask = (mask > 0.5).float()
        mask = remove_small_components(mask, min_area=10)
        return mask
```

**Augmentation Types:**
- **Geometric**: Rotation, scaling, flipping
- **Photometric**: Brightness, contrast, color jitter
- **Boundary-specific**: Slight boundary shifts, edge blur

## 🎓 Emerging Trends (2020-2024)

### Transformer-based Boundary Detection

**DETR with Boundary Prediction:**
```python
class DETRBoundary(nn.Module):
    def __init__(self):
        super().__init__()
        self.detr = DETR()
        self.boundary_decoder = BoundaryDecoder()
    
    def forward(self, x):
        # DETR output
        outputs, attention = self.detr(x)
        
        # Boundary refinement
        boundaries = self.boundary_decoder(outputs, attention)
        
        return outputs, boundaries
```

### Few-Shot Boundary Learning

**Learning to Detect Boundaries with Few Examples:**
- **Prototypical networks** for boundaries
- **Meta-learning** boundary representations
- **Transfer learning** across datasets

**Performance:**
- **5-way 1-shot**: Competitive with supervised
- **Boundary F1: 78.5%** (few-shot)

### Dynamic Boundary Refinement

**Iterative Refinement:**
```python
class IterativeBoundaryRefinement(nn.Module):
    def __init__(self):
        super().__init__()
        self.initial = InitialSegmentation()
        self.refinement_modules = nn.ModuleList([
            RefinementModule() for _ in range(5)
        ])
        self.fusion = FinalFusion()
    
    def forward(self, x):
        seg = self.initial(x)
        
        # Iterative refinement
        for i, module in enumerate(self.refinement_modules):
            seg = module(seg, x)
        
        # Final fusion
        final = self.fusion(seg)
        return final
```

**Benefits:**
- **Progressive improvement**
- **Adaptive refinement**
- **Better boundaries** than single-pass

## 📚 Resources & Implementations

### Libraries

**Boundary Processing:**
- **OpenCV**: Edge detection, contour finding
- **scikit-image**: Distance transforms, morphological operations
- **TorchIO**: Medical image processing

**Deep Learning:**
- **MMSegmentation**: OpenMMLab segmentation
- **segmentation_models_pytorch**: U-Net variants
- **PyTorch Lightning**: Training frameworks

### Datasets

**Boundary-Specific:**
- **BSDS500**: Berkeley Segmentation Dataset
- **Pascal Context**: Semantic segmentation with boundaries
- **ADE20K**: Scene segmentation
- **ISIC**: Medical imaging with precise boundaries

**Medical:**
- **MICCAI datasets**: Tumor segmentation
- **ISIC challenge**: Skin lesion segmentation
- **BraTS**: Brain tumor segmentation

### Key Papers

1. **SCRNet**: Wang et al., 2019
2. **BANet**: Xu et al., 2020
3. **DeepLab v3+**: Chen et al., 2018
4. **Boundary Transformer**: Recent developments
5. **Active Contour Networks**: Chen et al., 2021

## 🎯 Practical Applications

### Medical Imaging

**Tumor Boundary Detection:**
- **Precision**: Critical for surgical planning
- **Multi-modal**: Combine MRI, CT, PET
- **3D segmentation**: Volumetric analysis

**Implementation:**
```python
class MedicalBoundarySegmentation:
    def __init__(self):
        self.backbone = ResNet50()
        self.decoder = UNetDecoder()
        self.boundary_head = BoundaryHead()
        self.loss = BoundaryAwareLoss()
    
    def forward(self, x, y):
        features = self.backbone(x)
        seg, boundary = self.decoder(features)
        boundary_pred = self.boundary_head(features)
        
        loss = self.loss(seg, boundary_pred, y)
        return loss, seg
```

### Autonomous Driving

**Road Marking Detection:**
- **Lane boundaries**: Precise lane detection
- **Traffic signs**: Accurate sign recognition
- **Pedestrian detection**: Safety-critical boundaries

**Implementation:**
```python
class RoadSegmentation:
    def __init__(self):
        self.lane_detector = LaneBoundaryDetector()
        self.sign_detector = SignBoundaryDetector()
        self.fusion = BoundaryFusion()
    
    def process(self, image):
        lanes = self.lane_detector(image)
        signs = self.sign_detector(image)
        fused = self.fusion(lanes, signs)
        return fused
```

### Image Editing

**Precise Selection:**
- **Object isolation**: Remove backgrounds
- **Selective editing**: Targeted modifications
- **Inpainting**: Boundary-aware filling

**Implementation:**
```python
class PreciseSelection:
    def __init__(self):
        self.segmentor = SegmentationModel()
        self.boundary_refiner = BoundaryRefiner()
    
    def select(self, image, prompt):
        seg = self.segmentor(image, prompt)
        refined = self.boundary_refiner(seg)
        return refined
```

---

*Document updated: March 2026*
*Includes latest developments from 2020-2024*
