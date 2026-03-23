# Image Segmentation (이미지 세그멘테이션)

이미지 세그멘테이션은 이미지를 의미 있는 영역으로 분할합니다. 이 문서는 semantic segmentation, instance segmentation, boundary-sensitive methods 를 다룹니다.

## 📚 개요

**세그멘테이션 과제:**

1. **Semantic Segmentation**: 각 픽셀 분류
2. **Instance Segmentation**: 각 인스턴스 감지 및 분할
3. **Panoptic Segmentation**: 두 가지 통합
4. **Video Segmentation**: 비디오 시퀀스에서 분할

**주요 지표:**
- **mIoU** (mean Intersection over Union): semantic segmentation 표준
- **AP** (Average Precision): instance segmentation
- **PQ** (Panoptic Quality): panoptic segmentation
- **FPS**: 실시간 성능

## 🔷 Semantic Segmentation

### Fully Convolutional Networks (FCN) (2015)

**First Deep Semantic Segmentation**

**Key Innovation:**
- Replace fully connected layers with convolutions
- Enable pixel-to-pixel prediction

**Architecture:**
```
FCN-32s (original):
  Conv → Pool → Conv → Pool → Conv → Pool → Score → Upsample (32×)

FCN-16s:
  Pool3 + Score32 → Score16 → Upsample (16×)

FCN-8s:
  Pool2 + Score16 + Score8 → Score8 → Upsample (8×)
```

**Implementation:**
```python
class FCN(nn.Module):
    def __init__(self, num_classes):
        super().__init__()
        self.backbone = torchvision.models.vgg16(pretrained=True).features
        self.classifier = nn.Sequential(
            nn.Conv2d(512, 4096, 1),
            nn.ReLU(inplace=True),
            nn.Dropout2d(),
            nn.Conv2d(4096, 4096, 1),
            nn.ReLU(inplace=True),
            nn.Dropout2d(),
            nn.Conv2d(4096, num_classes, 1)
        )
        self.upscore = nn.ConvTranspose2d(num_classes, num_classes, 32, stride=32)
    
    def forward(self, x):
        x = self.backbone(x)
        x = self.classifier(x)
        x = self.upscore(x)
        return F.interpolate(x, scale_factor=32, mode='bilinear')
```

**Performance:**
- **mIoU: 48.4%** (PASCAL VOC 2012)
- Real-time at input size 512×480

**Limitations:**
- Limited spatial resolution after pooling
- Boundary precision not optimal

### U-Net (2015)

**Popular in Medical Imaging**

**Architecture:**
```
Encoder (Contracting):
  Conv → ReLU → Conv → Pool

Decoder (Expansive):
  Upsample → Concat with encoder skip → Conv → ReLU → Conv
```

**Key Innovation:**
- **Skip connections** between encoder and decoder
- Combines high-resolution features with semantic features

**Implementation:**
```python
class UNet(nn.Module):
    def __init__(self, n_channels, n_classes):
        super().__init__()
        self.inc = DoubleConv(n_channels, 64)
        self.down1 = Down(64, 128)
        self.down2 = Down(128, 256)
        self.down3 = Down(256, 512)
        self.down4 = Down(512, 1024)
        
        self.up1 = Up(1024, 512)
        self.up2 = Up(512, 256)
        self.up3 = Up(256, 128)
        self.up4 = Up(128, 64)
        
        self.outc = OutConv(64, n_classes)
    
    def forward(self, x):
        x1 = self.inc(x)
        x2 = self.down1(x1)
        x3 = self.down2(x2)
        x4 = self.down3(x3)
        x5 = self.down4(x4)
        
        x = self.up1(x5, x4)
        x = self.up2(x, x3)
        x = self.up3(x, x2)
        x = self.up4(x, x1)
        logits = self.outc(x)
        
        return logits
```

**Performance:**
- **mIoU: 67.8%** (Biomedical ISBI 2012)
- Excellent for small datasets
- **500x fewer parameters** than standard CNN

**Variants:**
- **U-Net++**: Nested skip connections
- **Attention U-Net**: Attention gates in skip connections
- **ResUNet**: Residual blocks in encoder/decoder

### DeepLab Series

#### DeepLab v1 (2016)

**Atrous (Dilated) Convolutions:**
- Expands receptive field without increasing parameters
- Preserves spatial resolution

**Atrous Algorithm:**
```
Output[i] = ΣΣ Input[i + r·u, j + r·v] · Kernel[u, v]
```

Where `r` = dilation rate.

**Atrous Spatial Pyramid Pooling (ASPP):**
- Multiple dilated convolutions with different rates
- Captures multi-scale context

```
ASPP:
  1×1 conv → (rate=1)
  1×1 conv → (rate=6)
  1×1 conv → (rate=12)
  1×1 conv → (rate=18)
  Image pooling → interpolate
```

**Performance:**
- **mIoU: 72.2%** (PASCAL VOC 2012)

#### DeepLab v2 (2016)

**Improvements:**
- Atrous convolutions at higher rates
- **ASPP** with multiple atrous rates
- **Conditional Random Fields (CRF)** post-processing

**Performance:**
- **mIoU: 73.7%** (PASCAL VOC 2012)
- **CRF improves boundary quality**

#### DeepLab v3 (2017)

**Key Features:**
- **ASPP** without CRF
- Better **encoder-decoder** architecture
- **ResNet** or Xception backbone

**Variants:**
- **DeepLab v3**: ASPP with 4 rates (1, 6, 12, 18)
- **DeepLab v3+**: Encoder-decoder refinement

**Performance:**
- **mIoU: 84.9%** (ADE20K)
- **mIoU: 80.0%** (PASCAL VOC 2012)

#### DeepLab v3+ (2018)

**Encoder-Decoder Structure:**
```
Encoder: ResNet + ASPP
Decoder: Fuses low-level features with ASPP output
```

**Decoder:**
1. Project low-level features to fewer channels
2. Upsample ASPP output
3. Concatenate and refine
4. Upsample final output

**Performance:**
- **mIoU: 85.2%** (PASCAL VOC 2012)
- **mIoU: 86.5%** (ADE20K)
- Better boundary preservation

## 🔵 Instance Segmentation

### Mask R-CNN (2017)

**Extension of Faster R-CNN:**
- Adds **mask prediction branch**
- **ROIAlign** instead of ROI Pooling
- **Per-class** mask prediction

**Architecture:**
```
Faster R-CNN backbone
  → RPN → Region proposals
  → ROIAlign → Head
    → Class: FC layers
    → BBox: FC layers
    → Mask: FC + Conv layers
```

**ROIAlign:**
- **Bilinear interpolation** for alignment
- Avoids quantization errors
- Better feature alignment

**Implementation:**
```python
class MaskRCNN(nn.Module):
    def __init__(self, num_classes):
        super().__init__()
        self.backbone = torchvision.models.detection.fasterrcnn_resnet50_fpn(
            pretrained=True, num_classes=num_classes
        )
        
        # Add mask branch
        in_features = self.backbone.roi_heads.box_predictor.cls_score.in_features
        self.mask_roi_pool = RoIAlign(output_size=(14, 14), spatial_scale=1/4)
        self.mask_fc = nn.Sequential(
            nn.Conv2d(256, 256, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(256, 256, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(256, 256, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(256, 256, 3, 1, 1),
            nn.ReLU()
        )
        self.mask_fcs = nn.Sequential(
            nn.Linear(256*14*14, 1024),
            nn.ReLU(),
            nn.Linear(1024, 1024),
            nn.ReLU()
        )
        self.mask_pred = nn.Conv2d(1024, num_classes, 1)
    
    def forward(self, images, targets=None):
        return self.backbone(images, targets)
```

**Performance:**
- **mAP: 36.7%** (COCO, single scale)
- **AP_mask: 37.5%** (COCO)
- Real-time with ResNet-50

**Limitations:**
- Per-region computation (slow)
- 800×800 images
- ~10ms per region

### Panoptic FPN (2018)

**First Panoptic Segmentation:**
- Combines semantic and instance segmentation
- Unified framework

**Architecture:**
```
Backbone (ResNet)
  → FPN (feature pyramid)
    → Semantic head
    → Instance head (mask)
    → Panoptic head (combine)
```

**Performance:**
- **PQ: 37.4%** (COCO test-dev)
- **PQ: 52.3%** (ADE20K)

### Mask2Former (2022)

**Unified Per-Pixel Classification:**
- Treats all segmentation tasks uniformly
- **Mask classification** formulation

**Key Innovations:**
- **Universal transformer** for all segmentation tasks
- **Mask queries** predict segmentation masks
- **Per-pixel classification** with query

**Performance:**
- **PQ: 56.0%** (COCO panoptic)
- **mIoU: 59.2%** (ADE20K semantic)
- **mAP: 48.0%** (COCO instance)

**Architecture:**
```
Image → ViT/ResNet → Transformer → Mask predictions
```

**Implementation:**
```python
class Mask2Former(nn.Module):
    def __init__(self, num_classes, num_queries=256):
        super().__init__()
        self.mask_queries = nn.Embedding(num_queries, dim)
        self.mask_fc = nn.Linear(dim, num_classes)
        self.mask_head = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, 256)
        )
        self.mask_pred = nn.Conv2d(256, num_classes, 1)
```

## 🎯 Boundary-Sensitive Segmentation

### DeepLab-v3+ with Boundary Loss

**Boundary-Aware Training:**
```
Total Loss = L_seg + λ·L_boundary
```

Where boundary loss encourages accurate boundaries:
```
L_boundary = BCE(boundary_pred, boundary_gt)
```

**Implementation:**
```python
class BoundaryLoss(nn.Module):
    def __init__(self):
        super().__init__()
        self.edge_filter = torch.tensor([[-1, -1, -1],
                                         [-1,  8, -1],
                                         [-1, -1, -1]])
    
    def forward(self, pred, gt):
        # Compute edge maps
        pred_edge = self.compute_edges(pred)
        gt_edge = self.compute_edges(gt)
        
        return F.binary_cross_entropy_with_logits(pred_edge, gt_edge)
    
    def compute_edges(self, seg):
        edges = F.conv2d(seg, self.edge_filter, padding=1)
        return (edges > 0).float()
```

### SCRNet (2019)

**Segmentation-Constraint Refinement:**
- Two-stage refinement
- **Semantic-geometric attention**
- **Refinement network**

**Architecture:**
```
Stage 1: Coarse prediction
  → SCR module (semantic + geometric)
  → Stage 2: Refined prediction
```

**Performance:**
- **mIoU: 80.3%** (PASCAL VOC)
- **mIoU: 84.4%** (PASCAL ADE)

### BANet (2020)

**Boundary Awareness Network:**
- **Boundary guidance** for segmentation
- Two-stream network
- **Boundary segmentation** + **Object segmentation**

**Performance:**
- **mIoU: 79.3%** (PASCAL VOC)
- **mIoU: 83.1%** (ADE20K)

## 🔶 Transformer-Based Segmentation

### Segmenter (2021)

**Vision Transformer for Segmentation:**
- Treats segmentation as **mask classification**
- No CNN backbone required
- **ViT for classification** → mask prediction

**Architecture:**
```
Patch embedding → ViT Transformer → Classification → Mask prediction
```

**Performance:**
- **mIoU: 82.5%** (ADE20K)
- Comparable to CNNs
- Better long-range dependencies

### MaskFormer (2021)

**Universal Per-Pixel Classification:**
- Unified framework for semantic, instance, panoptic segmentation
- **Query-based** approach

**Performance:**
- **PQ: 47.5%** (COCO panoptic)
- **mIoU: 52.4%** (ADE20K semantic)

### SegFormer (2021)

**Simple and Efficient Transformer:**
- **No positional embedding** required
- **Hierarchical transformers**
- **Lightweight head**

**Architecture:**
```
Hierarchical ViT (no PE)
  → Simple classification head
    → Semantic segmentation
    → Instance segmentation
```

**Available Sizes:**
- **SegFormer-B0**: 2.5M params, real-time
- **SegFormer-B1**: 9.7M params
- **SegFormer-B2**: 24.3M params
- **SegFormer-B3**: 63.4M params
- **SegFormer-B4**: 94.1M params
- **SegFormer-B5**: 106.5M params

**Performance (ADE20K):**

| Model | Params | mIoU | mIoU (multi-scale) |
|-------|--------|-----|--------------------|
| SegFormer-B0 | 2.5M | 42.0% | 43.7% |
| SegFormer-B1 | 9.7M | 50.7% | 52.7% |
| SegFormer-B2 | 24.3M | 56.1% | 57.9% |
| SegFormer-B4 | 63.4M | 59.8% | 61.2% |
| SegFormer-B5 | 106.5M | 61.0% | 62.5% |

**Key Features:**
- **Efficient**: No positional embedding overhead
- **Accurate**: Better than comparable CNNs
- **Simple**: Easier to train

### Perceiver IO (2022)

**Universal Transformer for All Vision Tasks:**
- **Cross-attention** for efficient processing
- Works for image, video, point clouds
- **Latent space** approach

**Performance:**
- **mIoU: 60.0%** (ADE20K)
- **Flexible**: Handles different input modalities

## 🎨 Modern Segmentation Methods

### Mobile-Segmentable Methods

**Fast-SCNN (2019):**
- **Real-time semantic segmentation**
- **Learning to downscale**: Learnable downsampling
- **Rapidly converging**: 20k iterations

**Performance:**
- **mIoU: 61.4%** (Cityscapes)
- **FPS: 87** (RTX 2080 Ti)

**BiSeNet v2 (2021):**
- **Detail path** (high resolution)
- **Context path** (low resolution)
- **Low-latency** segmentation

**Performance:**
- **mIoU: 78.7%** (Cityscapes)
- **FPS: 105** (1080Ti)
- **1.2M parameters**

**BiSeNet v2:**
- **Faster** than v1
- **Better accuracy**
- **Real-time** on mobile

### One-Pass Segmentation

**Fast-RCNN for Segmentation:**
- Single-stage instance segmentation
- **RPN** for proposals
- **Mask prediction** directly

**Performance:**
- **mAP: 36.8%** (COCO)
- **FPS: 26**

### Dynamic Kernel Generation

**DynamicConv (2020):**
- **Dynamic filters** based on input
- Better than static convolutions
- Used in **Dynamic Instance Segmentation**

## 📊 포괄적 성능 비교

### PASCAL VOC 2012 검증

| 방법 | mIoU | 지연 | 타입 |
|----|----|----|--|
| FCN | 48.4% | 150ms | CNN |
| U-Net | 67.8% | 200ms | Medical |
| DeepLab v3 | 77.6% | 120ms | CNN |
| DeepLab v3+ | 80.0% | 130ms | CNN |
| PSPNet | 79.0% | 125ms | CNN |
| SegFormer-B4 | 81.3% | 140ms | Transformer |
| Mask2Former | 82.7% | 180ms | Transformer |

### ADE20K 검증

| 방법 | mIoU | mIoU (multi-scale) |
|---|---|----|
| DeepLab v3+ | 45.8% | 47.8% |
| U-Net | 46.7% | 47.9% |
| Mask2Former | 59.2% | 61.5% |
| SegFormer-B4 | 59.8% | 61.2% |
| Mask2Former | 59.2% | 61.5% |

### Cityscapes 실시간

| 방법 | mIoU | FPS | 파라미터 |
|---|---|---|---|
| Fast-SCNN | 61.4% | 87 | 3.8M |
| BiSeNet v2 | 78.7% | 105 | 1.2M |
| MobileSegNet | 72.3% | 95 | 4.2M |

## 🎯 Practical Applications

### Autonomous Driving
- **Cityscapes dataset**: 30 classes
- **Real-time**: BiSeNet v2, Fast-SCNN
- **Lane detection**: Specialized architectures

### Medical Imaging
- **U-Net**: Standard for medical segmentation
- **Attention U-Net**: Focus on regions of interest
- **3D U-Net**: Volumetric medical data

### Satellite Imagery
- **Large objects**: High resolution imagery
- **DeepLab v3+**: Multi-scale context
- **Segment Anything Model (SAM)**: Zero-shot generalization

### Remote Sensing
- **Small objects**: Buildings, vehicles
- **Multi-scale**: YOLOv8 + segmentation
- **Change detection**: Temporal analysis

## 🔬 Advanced Topics

### Video Segmentation

**STM (Space-Time Matching):**
- Long-term memory for video
- **Memory bank** approach
- Real-time tracking

**RVM (Recurrent Video Memory):**
- RNN-based memory
- Better for long sequences
- State-of-the-art for tracking

**STCN (Spatio-Temporal Correspondence):**
- **Correspondence** based
- **Temporal aggregation**
- Better long-term consistency

### Video Instance Segmentation

**Mask2Former for Video:**
- Temporal attention
- Better tracking consistency
- **Q-Former**: Query-based tracking

**Performance (Davinci):**
- **mAP: 52.0%**
- **FPS: 15**

### Panoptic Segmentation

**Unified Framework:**
- Semantic: Each pixel gets a class
- Instance: Separate instances of same class
- Panoptic: Combination of both

**PQ (Panoptic Quality):**
```
PQ = Σ TP · IoU / (TP + 0.5·FP + 0.5·FN)
```

**Performance (COCO):**
- **PQ: 57.0%** (Mask2Former)
- **PQ: 52.0%** (Panoptic FPN)

### Few-Shot Segmentation

**Supporting Small Datasets:**
- **Prototypical networks**: Class prototypes
- **Meta-learning**: Learn to segment
- **Prompt-based**: SAM for few-shot

**SAM (Segment Anything Model, 2023):**
- **Zero-shot** generalization
- **Prompt-based** (points, boxes, text)
- **Large-scale training** (11M images)

**Performance:**
- **Few-shot**: Competitive with supervised methods
- **Zero-shot**: SOTA on most datasets
- **Real-time**: 85ms per image

## 📚 Resources & Implementations

### Popular Implementations

1. **MMSegmentation** (OpenMMLab)
   ```python
   from mmseg.apis import init_segmentor, inference_segmentor
   
   config = 'configs/deeplabv3/deeplabv3_r50-d8_512x512_160k_cityscapes.py'
   model = init_segmentor(config, checkpoint=None, device='cuda:0')
   result = inference_segmentor(model, image)
   ```

2. **SegmentationModels.pytorch**
   ```python
   import segmentation_models_pytorch as smp
   
   model = smp.DeepLabV3Plus(
       encoder_name="resnet34",
       encoder_weights="imagenet",
       classes=21,
       activation="softmax"
   )
   ```

3. **Ultralytics YOLOv8** (Segmentation)
   ```python
   from ultralytics import YOLO
   
   model = YOLO('yolov8n-seg.pt')
   results = model(image, verbose=True)
   ```

### Datasets

- **PASCAL VOC**: 21 classes (including background)
- **Cityscapes**: 30 classes, autonomous driving
- **ADE20K**: 150 classes, diverse scenes
- **COCO**: 80 classes, panoptic segmentation
- **LIP**: Human parsing (20 classes)

### Key Papers

1. **FCN**: Long et al., 2015
2. **U-Net**: Ronneberger et al., 2015
3. **DeepLab v3**: Chen et al., 2017
4. **Mask R-CNN**: He et al., 2017
5. **Mask2Former**: Cheng et al., 2022
6. **SegFormer**: Mi et al., 2021

## 🎓 Best Practices

### Method Selection

**Real-time applications:**
- BiSeNet v2 (best accuracy-speed)
- Fast-SCNN (very fast, lower accuracy)

**High accuracy:**
- Mask2Former (SOTA)
- DeepLab v3+ (proven, reliable)

**Medical imaging:**
- U-Net (industry standard)
- Attention U-Net (focus on ROIs)

**Few-shot/zero-shot:**
- SAM (Segment Anything)
- Few-shot prototypical networks

### Training Tips

1. **Use pretrained backbones** (ImageNet)
2. **Data augmentation**:
   - Random crops
   - Color jitter
   - Affine transforms
   - Strong augmentation (for transformers)
3. **Learning rate**: 1e-3 for CNNs, 1e-4 for transformers
4. **Batch size**: Larger for transformers
5. **Loss functions**:
   - Cross-entropy (standard)
   - Dice loss (imbalanced classes)
   - Focal loss (hard examples)

---

*Document updated: March 2026*
*Includes latest transformer-based methods and SAM*
