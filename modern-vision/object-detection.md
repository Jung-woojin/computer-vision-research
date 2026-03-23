# Object Detection

Object detection is one of the most important and actively researched areas in computer vision. This document covers all major detection paradigms from R-CNN to modern transformer-based methods.

## 📚 Overview

**Object Detection** task: Given an image, predict bounding boxes and class labels for all objects.

**Key Metrics:**
- **mAP (mean Average Precision)**: Standard metric
- **IoU (Intersection over Union)**: Overlap between predicted and ground truth boxes
- **FPS (Frames Per Second)**: Real-time performance
- **Latency**: Inference time per image

## 🔷 Two-Stage Detectors

### R-CNN (2014)

**First Deep Object Detector**
- Selective Search regions
- CNN for feature extraction
- SVM classification
- Bounding box regression

**Pipeline:**
1. Generate ~2000 region proposals (Selective Search)
2. Extract features from each region using CNN
3. Classify with SVM
4. Regress bounding box coordinates

**Performance:**
- **mAP: 47.2%** on PASCAL VOC 2012
- **227 seconds per image** (extremely slow)

**Limitations:**
- Extremely slow (2000+ CNN forward passes per image)
- Complex training pipeline
- Not end-to-end

### Fast R-CNN (2015)

**Key Innovation:** ROI Pooling enables shared computation

**Improvements:**
- Single CNN forward pass for whole image
- ROI Pooling extracts features for each proposal
- Multi-task loss: Classification + bounding box regression

**ROI Pooling:**
```python
def roi_pool(feature_map, rois, pooled_height, pooled_width):
    """
    Pools features from region of interest
    Maps ROI coordinates to feature map coordinates
    """
    # For each ROI, extract corresponding region
    # Divide into pooled_height × pooled_width bins
    # Max-pool each bin
```

**Loss Function:**
```
L({l_i}, {b_i}) = Σ_i L_cls(l_i, p_i) + λ·Σ_i p_i ≥ class ? L_reg(b_i, b*_i)
```

**Performance:**
- **mAP: 66.5%** (5× improvement over R-CNN)
- **2 seconds per image** (100× faster)

**Implementation:**
```python
# Fast R-CNN architecture
class FastRCNN(nn.Module):
    def __init__(self, backbone, roi_pool_size):
        self.backbone = backbone  # VGG16 or ResNet
        self.roi_pool = ROI_Pool(roi_pool_size)
        self.fc_cls = nn.Linear(4096, num_classes)
        self.fc_reg = nn.Linear(4096, 4 * num_classes)
    
    def forward(self, images, rois):
        features = self.backbone(images)
        roi_features = self.roi_pool(features, rois)
        roi_features = F.flatten(roi_features, 1)
        
        cls_scores = self.fc_cls(roi_features)
        box_preds = self.fc_reg(roi_features)
        
        return cls_scores, box_preds
```

### Faster R-CNN (2015)

**Breakthrough: Region Proposal Network (RPN)**

**Innovations:**
- **RPN**: Replaces Selective Search
- **End-to-end training**: RPN + detection network
- **Feature sharing**: RPN and detector share convolutional features

**RPN Architecture:**
```
Features → 1×1 conv → anchors → RPN Head → cls + bbox reg
```

**Anchor Boxes:**
- Multiple scales per location: (16², 32², 64², 128², 256²)
- Three aspect ratios: (1:1, 1:2, 2:1)
- **9 anchors per location**

**RPN Training:**
```python
# Positive: IoU > 0.7
# Negative: IoU < 0.3
# Ignore: 0.3 ≤ IoU < 0.7

loss = L_cls(labels) + λ·L_reg(bboxes)
```

**Performance:**
- **mAP: 73.2%** (PASCAL VOC 2012)
- **2 seconds per image** (1000× faster than R-CNN)
- First practical real-time two-stage detector

### Cascade R-CNN (2018)

**Successive Refinement Approach:**
- Multiple stages (typically 3)
- Each stage refines bounding boxes
- Higher IoU thresholds at later stages

**Architecture:**
```
Stage 1: RPN → 0.5 IoU threshold
Stage 2: RPN → 0.6 IoU threshold
Stage 3: RPN → 0.7 IoU threshold
```

**Advantages:**
- Better localization accuracy
- **mAP: 49.0%** (COCO test-dev)
- Simple and effective

## 🔵 One-Stage Detectors

### YOLO (You Only Look Once) Series

#### YOLO v1 (2016)

**Radical Simplification:**
- Treat detection as single regression problem
- Divide image into S×S grid
- Each predicts B boxes + class probabilities

**Output Format:**
```
Grid cell predicts: [x, y, w, h, confidence, P(class)]
```

**Performance:**
- **mAP: 53.3%**
- **FPS: 155** (at 448×448)
- **First real-time detector**

**Limitations:**
- Poor at small objects
- Limited localization accuracy
- Struggles with unusual aspect ratios

#### YOLO v2/YOLO9000 (2017)

**Improvements:**
- **Anchors**: Similar to Faster R-CNN
- **Batch normalization**: Improves accuracy and speed
- **Dimension clusters**: Cluster anchor boxes on dataset
- **Multi-scale training**: Better small object detection
- **Dimension clusters**: Automatically discover good anchor sizes

**Architecture:**
- Darknet-19 backbone (instead of VGG)
- **1000 classes** (YOLO9000)
- Better small object detection

**Performance:**
- **mAP: 63.4%**
- **FPS: 105**
- **mAP: 28.2%** (small objects)

#### YOLO v3 (2018)

**Key Features:**
- **Three-scale predictions**: 82×82, 41×41, 20×20
- **Residual connections** (Darknet-53 backbone)
- **Logistic regression** for class probabilities
- **Binary cross-entropy loss** (one-vs-all)

**Architecture:**
```
Backbone: Darknet-53
FPN-like structure:
  - 82×82 predictions (small objects)
  - 41×41 predictions (medium objects)
  - 20×20 predictions (large objects)
```

**Performance:**
- **mAP: 57.9%** (COCO test-dev)
- **FPS: 45**
- **1000 classes** (YOLOv3 with COCO pretrained)

#### YOLO v4 (2020)

**Collective Boosting Techniques:**

1. **CSPDarknet backbone**
2. **PANet** (Path Aggregation Network)
3. **Mosaic augmentation**
4. **CIoU loss**
5. **DropBlock regularization**
6. **SAM** (Spatial Attention Module)

**Performance:**
- **mAP: 56.5%** (COCO, single scale)
- **FPS: 61** (at 416×416)
- **mAP: 68.2%** (at 1280×1280)

#### YOLO v5 (2020)

**Practical Improvements:**
- Not just an incremental update
- Better hyperparameters
- Improved training pipeline
- More flexible (various sizes)

**Available Sizes:**
- YOLOv5n (nano): 452k params, 170 FPS
- YOLOv5s (small): 7.2M params, 140 FPS
- YOLOv5m (medium): 21.2M params, 80 FPS
- YOLOv5l (large): 46.5M params, 55 FPS
- YOLOv5x (xlarge): 86.7M params, 35 FPS

**Performance (COCO, 640×640):**

| Model | Params | mAP | FPS |
|-------|--------|-----|-----|
| YOLOv5n | 0.5M | 37.4% | 270 |
| YOLOv5s | 7.2M | 44.0% | 140 |
| YOLOv5m | 21.2M | 49.8% | 80 |
| YOLOv5l | 46.5M | 52.5% | 55 |
| YOLOv5x | 86.7M | 53.7% | 35 |

**Key Features:**
- **Hyperparameter evolution** (automatic tuning)
- **Better data augmentation**:
  - HSV, mixup, mosaic
- **Auto-anchor** computation
- **Faster inference** (TensorRT, ONNX)

#### YOLO v6 (2022)

**Focus: Training-free deployment**
- **Model re-parameterization**: Dynamic multi-scale training
- **Decoupled head**
- **Efficient activation** (MiDaS)
- **Better anchor-free design**

**Performance:**
- **mAP: 56.2%** (COCO, single scale)
- Competitive with v4/v5
- Better inference speed

#### YOLO v7 (2022)

**Innovations:**
- **Extended re-parameterizable block (ERB)**
- **E-ELAN** for gradient path design
- **Dynamic label assignment**
- **Multi-label training**

**Performance:**
- **mAP: 56.8%** (COCO, single scale)
- Faster than v5/v6
- Better small object detection

#### YOLO v8 (2023)

**YOLOv8 is anchor-free** and features:
- **Decoupled head**
- **Multi-scale predictions**
- **Task-aligned labels**
- **Improved IoU loss**
- **SimOTA label assignment**

**Performance (COCO):**

| Model | Params | mAP@0.5 | mAP@0.5:0.95 | FPS |
|-------|--------|---------|------|-----|
| YOLOv8n | 3.2M | 50.2% | 37.3% | 350 |
| YOLOv8s | 11.2M | 54.9% | 40.9% | 200 |
| YOLOv8m | 25.9M | 58.2% | 43.3% | 100 |
| YOLOv8l | 43.7M | 60.4% | 44.8% | 70 |
| YOLOv8x | 68.2M | 61.6% | 45.6% | 45 |

**Key Features:**
- **Anchor-free**: Simpler, better performance
- **Improved loss functions**
- **Better data augmentation**
- **Auto-enhanced architecture**

#### YOLO v9 (2024)

**Innovations:**
- **Programmable gradient information (PGI)**
- **Generalized efficient layer aggregation network (GELAN)**
- **Dynamic label assignment**

**Performance:**
- **mAP: 59.2%** (COCO, single scale)
- Best efficiency among YOLO variants
- Better small object detection

#### YOLO v10 (2024)

**Key Innovation: Dual-Label Assignment**
- **No NMS required** (non-maximum suppression)
- **Consistent precision** across NMS-free detectors

**Performance:**
- **mAP: 57.5%** (COCO)
- **NMS-free**: Faster inference
- **Comparable to v8/v9**

### SSD (Single Shot MultiBox Detector, 2016)

**Concept:**
- Multi-scale feature maps for different object sizes
- Default boxes (prior boxes) at multiple scales
- Simple and efficient

**Architecture:**
```
Base network: VGG-16/SSD-300/SSD-512
Multi-scale detection:
  - 38×38 (small)
  - 19×19 (medium)
  - 10×10 (large)
  - 5×5 (very large)
  - 3×3 (extra large)
  - 1×1 (large)
```

**Default Boxes:**
- 4 aspect ratios + square
- **4 per location**
- **8732 boxes** for SSD-300

**Performance:**
- **mAP: 74.3%** (SSD-512, VOC 2012)
- **FPS: 45** (SSD-512)
- **FPS: 590** (SSD-300)

**Limitations:**
- Struggles with small objects
- Performance degrades on crowded scenes

### RetinaNet (2017)

**Problem Solved: Class imbalance** (background dominates)

**Focal Loss:**
```
FL(p_t) = -α_t·(1 - p_t)^γ·log(p_t)
```

Where:
- `p_t` = model probability for ground truth class
- `α_t` = balancing factor
- `γ` = focusing parameter (≥ 0)

**Key Features:**
- **Simple**: Single-stage with feature pyramid
- **Effective**: SOTA before EfficientDet
- **Balanced training**: Focal loss handles imbalance

**Performance:**
- **mAP: 46.9%** (COCO, ResNet-50)
- **mAP: 47.0%** (COCO, ResNet-101)
- Comparable to Faster R-CNN

**Implementation:**
```python
class FocalLoss(nn.Module):
    def __init__(self, alpha=1, gamma=2):
        super().__init__()
        self.alpha = alpha
        self.gamma = gamma
    
    def forward(self, inputs, targets):
        ce_loss = F.cross_entropy(inputs, targets, reduction='none')
        pt = torch.exp(-ce_loss)
        focal_loss = self.alpha * (1-pt)**self.gamma * ce_loss
        return focal_loss.mean()
```

### FCOS (Fully Convolutional One-Stage, 2019)

**Truly Anchor-Free:**
- No anchor boxes
- Predict relative offsets from center point
- Simpler and faster

**Predictions per Point:**
- Class probabilities
- Distance to four boundaries (l, t, r, b)
- Centerness score (how close to center)

**Loss Function:**
```
L = Σ (1 - centerness) · L_cls + centerness · L_reg
```

**Performance:**
- **mAP: 42.1%** (COCO, single scale, ResNet-50)
- Simpler than anchor-based methods
- Better localization for centerness

### CenterNet (2019)

**Keypoint-based Approach:**
- Objects as points (centers)
- Predict offset from center
- Predict size and class

**Advantages:**
- Very simple
- **FPS: 105** (COCO, 511×511)
- Good for deformable objects

## 🔶 Transformer-Based Detectors

### DETR (2020)

**First End-to-End Object Detection with Transformers**

**Key Innovation:**
- No anchors or NMS
- **Set prediction** formulation
- **Bipartite matching** (Hungarian matching)

**Architecture:**
```
Image → CNN Backbone → Encoder → Decoder → Predictions
```

**Set Prediction:**
```
Output: {c_i, b_i} for i=1..N
```
- N = number of predicted objects (typically 100)
- One "no object" class
- Hungarian matching matches predictions to ground truth

**Training:**
```
Loss = L_cls + L_boxes
L_boxes = L_L1 + λ·L_GIoU
```

**Performance:**
- **mAP: 42.0%** (COCO, ResNet-50)
- **Slower**: 72 seconds per image
- Converges slower than CNN detectors

**Limitations:**
- Slow inference
- Poor small object detection
- Long training time

### Deformable DETR (2020)

**Improvement:** Faster convergence, better localization

**Key Innovation:**
- **Deformable attention**: Sparse sampling
- Multi-scale features
- Better for small objects

**Performance:**
- **mAP: 45.7%** (COCO)
- **5× faster training** than DETR
- **mAP: 34.2%** (small objects)

### DINO (2023)

**DETR with Improved Queries**
- **Denoising training**
- **Improved convergence**
- **Better localization**

**Performance:**
- **mAP: 50.9%** (COCO, single scale)
- Fast training
- SOTA performance

### Co-DETR (2023)

**Collaborative Detectors**
- Multiple detectors collaborate
- Better convergence

**Performance:**
- **mAP: 48.1%** (COCO, single scale)
- Better for diverse object sizes

## 🎯 Anchor-Free Methods Summary

| Method | Year | mAP (COCO) | Key Feature |
|--------|------|-----|------|----------|
| FCOS | 2019 | 42.1% | True anchor-free |
| CenterNet | 2019 | 40.5% | Keypoint-based |
| YOLOv5 | 2020 | 50.2% | Anchor-free variant |
| YOLOv8 | 2023 | 52.5% | Anchor-free SOTA |

## 📊 Comprehensive Performance Comparison

### PASCAL VOC 2012 (Single Image)

| Method | mAP | FPS | Latency |
|--------|-----|-----|---------|
| Faster R-CNN | 73.2% | 7 FPS | 140ms |
| SSD-512 | 74.3% | 24 FPS | 42ms |
| YOLOv4 | 75.3% | 61 FPS | 16ms |
| YOLOv8 | 78.2% | 100 FPS | 10ms |
| Co-DETR | 76.8% | 30 FPS | 33ms |

### COCO 2017 Test-Dev

| Method | mAP | mAP@0.5 | mAP@0.75 | mAP_s | mAP_m | mAP_l |
|--------|-----|---------|------|-------|-------|-------|
| Cascade R-CNN | 49.0% | 67.9% | 52.7% | 28.4% | 51.4% | 63.6% |
| YOLOv4 | 49.5% | 73.8% | 53.6% | 33.0% | 52.2% | 64.4% |
| YOLOv8x | 55.5% | 72.5% | 60.9% | 39.1% | 61.2% | 73.2% |
| Co-DETR | 55.7% | 73.2% | 61.1% | 39.4% | 61.7% | 73.5% |
| SOTA (2024) | 58.5% | 76.5% | 63.8% | 42.0% | 64.5% | 76.2% |

## 🔬 Advanced Topics

### Efficient Detectors (Mobile)

**YOLO-NAS** (2022):
- Neural Architecture Search optimized
- Mobile-optimized
- **21 FPS** on mobile

**NanoDet** (2020):
- Lightweight anchor-free
- **300+ FPS** on mobile
- Real-time on all platforms

**EfficientDet** (2019-2020):
- Compound scaling for detection
- **mAP: 50.8%** (COCO, EfficientDet-D7)
- Parameter-efficient

### Real-Time Detectors

**YOLO series**: Best real-time performance
- YOLOv8: 100+ FPS at 640×640
- YOLOv9: Optimized for latency

**Fastest methods (2024):**
- **RT-DETR**: 120 FPS
- **YOLOv10**: 150 FPS (NMS-free)

### Multi-Object Tracking

**ByteTrack** (2022):
- Association by IoU only
- Better performance with low confidence
- **MOTA: 82.2%** (MOT20)

**OC-SORT** (2023):
- Observation-centric
- **OC-SORT** with camera motion
- Handles occlusion well

## 🎯 Practical Applications

### Autonomous Vehicles
- **YOLOv5/v8**: Real-time detection
- **3D detection**: LiDAR + camera fusion
- **Pedestrian, vehicle, sign detection**

### Surveillance
- **Small object detection**: Enhanced YOLO
- **Face detection**: RetinaFace, MTCNN
- **Anomaly detection**: Unsupervised methods

### Medical Imaging
- **CenterNet**: Lesion detection
- **Faster R-CNN**: Organ segmentation
- **High precision** required

### Manufacturing
- **Anomaly detection**: One-class classification
- **Defect detection**: Small object optimization
- **Real-time**: YOLO series

## 📚 Resources & Implementations

### Popular Implementations

1. **Ultralytics YOLOv8**
   ```python
   from ultralytics import YOLO
   
   model = YOLO('yolov8n.pt')
   results = model(image, conf=0.25)
   ```

2. **MMDetection** (OpenMMLab)
   ```python
   from mmdet.apis import init_detector, inference_detector
   
   config = 'configs/faster_rcnn/faster_rcnn_r50_fpn_1x_coco.py'
   model = init_detector(config, checkpoint=None, device='cuda:0')
   result = inference_detector(model, image)
   ```

3. **Detectron2** (Facebook)
   ```python
   from detectron2.config import get_cfg
   from detectron2.engine import DefaultPredictor
   
   cfg = get_cfg()
   cfg.merge_from_file("COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml")
   predictor = DefaultPredictor(cfg)
   outputs = predictor(image)
   ```

### Datasets

- **COCO**: 80 classes, 330k images
- **PASCAL VOC**: 20 classes, ~10k images
- **OpenImages**: 600+ classes, 9M images
- **KITTI**: Autonomous driving

### Key Papers

1. **R-CNN**: Girshick et al., 2014
2. **Faster R-CNN**: Ren et al., 2015
3. **YOLO**: Redmon et al., 2016
4. **RetinaNet**: Lin et al., 2017
5. **DETR**: Carion et al., 2020
6. **DETR++**: Liu et al., 2023

## 🎓 Best Practices

### Method Selection

**Real-time applications:**
- YOLOv8/YOLOv9 (best accuracy-speed trade-off)
- RT-DETR (Transformer-based real-time)

**High accuracy:**
- Cascade R-CNN
- Co-DETR

**Small objects:**
- YOLOv8 with larger input size
- Multi-scale training

**Mobile deployment:**
- YOLOv5n/v8n
- NanoDet
- YOLO-NAS

### Training Tips

1. **Use pretrained weights** (COCO pretrained)
2. **Data augmentation**: Mosaic, mixup, HSV
3. **Learning rate**: 0.01 for batch size 16
4. **Epochs**: 100+ for convergence
5. **IoU thresholds**: Adjust for target dataset

---

*Document updated: March 2026*
*Includes latest YOLO v8, v9, v10 and transformer-based methods*
