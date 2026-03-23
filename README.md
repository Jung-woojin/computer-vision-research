# Computer Vision Research Collection

A comprehensive research compendium covering classical to modern computer vision techniques, with focus on high-value applications including object detection, adverse weather perception, remote sensing, and boundary-sensitive segmentation.

## 📑 Table of Contents

### Classical Computer Vision
- **[Filtering & Basic Operations](./classical-vision/filtering.md)** - Convolution, correlation, linear/nonlinear filtering, frequency domain
- **[Feature Detection](./classical-vision/feature-detection.md)** - Edge, corner, blob detection, keypoint descriptors (SIFT, SURF, ORB)
- **[Geometric Vision](./classical-vision/geometric-vision.md)** - Optical flow, epipolar geometry, stereo vision, image formation

### Modern Computer Vision
- **[CNN Fundamentals](./modern-vision/cnn-fundamentals.md)** - Architecture principles, ResNet, DenseNet, Inception
- **[Object Detection](./modern-vision/object-detection.md)** - Two-stage, one-stage, transformer-based methods, SOTA
- **[Image Segmentation](./modern-vision/segmentation.md)** - Semantic, instance, boundary-sensitive methods
- **[Advanced Topics](./modern-vision/advanced-topics.md)** - ViT, diffusion models, multimodal vision

### Focus Areas (High Priority)
- **[Adverse Weather Perception](./focus-areas/adverse-weather.md)** - Rain, fog, snow, low-light robustness
- **[Remote Sensing & Maritime Vision](./focus-areas/remote-sensing.md)** - Satellite, drone, ship detection
- **[Boundary-Sensitive Segmentation](./focus-areas/boundary-segmentation.md)** - Precise boundary detection

### Comparisons & Resources
- **[Methods Comparison](./comparisons/methods-comparison.md)** - Performance benchmarks and trade-offs
- **[Resources & Implementations](./resources.md)** - Code repositories, datasets, tutorials

## 🎯 Key Highlights

### Object Detection SOTA (2024)
- **YOLOv8/v9/v10**: Real-time detection with improved accuracy
- **DETR variants**: Transformer-based end-to-end detection
- **FocalDet, FCOS**: Anchor-free approaches
- **Performance**: State-of-the-art mAP >85% on COCO

### Segmentation Advances
- **Segment Anything Model (SAM)**: Zero-shot generalization
- **U-Net variants**: Medical imaging standards
- **DeepLabV3+**: Edge-aware semantic segmentation
- **Boundary-aware methods**: Precise contour detection

### Focus Area Innovations
- **Weather-robust detection**: Adversarial training, dehazing preprocessing
- **Remote sensing**: Custom architectures for satellite imagery
- **Small object detection**: High-resolution networks, feature pyramid improvements

## 📊 Quick Metrics

| Task | Method | Performance | Latency |
|------|--------|-------------|---------|
| Detection (Real-time) | YOLOv8 | mAP@0.5: 0.78 | 15ms (RTX 3080) |
| Detection (Accuracy) | Mask R-CNN | mAP@0.5: 0.50 | 180ms |
| Semantic Seg | DeepLabV3+ | mIoU: 0.86 | 120ms |
| Instance Seg | Mask2Former | mAP: 0.48 | 250ms |

## 🔗 Resources

- **Code Implementations**: See [resources.md](./resources.md) for repositories
- **Datasets**: COCO, ADE20K, KITTI, PASCAL VOC
- **Papers**: All original papers linked in respective documents
- **Online Benchmarks**: [paperswithcode.com](https://paperswithcode.com)

## 📝 Citation

For research purposes. This collection synthesizes knowledge from:
- CVPR, ICCV, ECCV conferences (2020-2024)
- arXiv preprints
- Open-source implementations from PyTorch, TensorFlow

### Recommended Citation Format:
```
@misc{cv-research-2026,
  author = {Computer Vision Research Team},
  title = {Computer Vision Research Collection: Classical to Modern Methods},
  year = {2026},
  url = {https://github.com/username/computer-vision-research}
}
```

## 🚀 Getting Started

### For Researchers
1. Start with `README.md` and `comparisons/methods-comparison.md`
2. Explore `focus-areas/` for specialized domains
3. Reference `resources.md` for implementations

### For Practitioners
1. Focus on practical code snippets throughout
2. Use performance comparisons for method selection
3. Reference `focus-areas/` for domain-specific challenges

### For Students
1. Begin with `classical-vision/` for foundations
2. Progress to `modern-vision/` for deep learning
3. Use `comparisons/` to understand trade-offs

### Quick Start by Task

**Object Detection:**
```bash
# Real-time: Read modern-vision/object-detection.md (YOLOv8 section)
# High accuracy: Read comparisons/methods-comparison.md
# Code: Install YOLOv8 from resources.md
```

**Semantic Segmentation:**
```bash
# Real-time: Read modern-vision/segmentation.md (BiSeNet v2)
# High accuracy: Use SegFormer or Mask2Former
# Medical: Use U-Net with boundary-aware loss
```

**Weather-Robust Vision:**
```bash
# Read focus-areas/adverse-weather.md
# Preprocess with dehazing/deraining before detection
```

**Remote Sensing:**
```bash
# Read focus-areas/remote-sensing.md
# Use high-resolution YOLO for small objects
```

## 📅 Maintenance

This document is updated regularly with latest developments. Last updated: March 2026.

## 🔗 Upload to GitHub

To upload this research collection to GitHub:

```bash
# 1. Set your GitHub token (create at https://github.com/settings/tokens)
export GITHUB_TOKEN='your-token-here'

# 2. Run the upload script
cd computer-vision-research
./upload-to-github.sh
```

The script will:
- Create a new GitHub repository
- Initialize Git and commit all documents
- Push to GitHub with comprehensive metadata
- Display repository statistics

## 📊 Repository Statistics

- **Total Documents**: 13 markdown files
- **Total Size**: ~240 KB of research content
- **Coverage**: Classical CV → Modern Deep Learning → Focus Areas
- **Latest Methods**: Up to 2024 SOTA developments
- **Performance Data**: Extensive benchmark comparisons
- **Code Examples**: Ready-to-use implementations

## 🎯 Key Topics Covered

### ⭐ Priority Focus Areas
1. **Object Detection**: YOLOv8, Co-DETR (82.5% mAP)
2. **Image Segmentation**: Mask2Former, SegFormer (82.7% mIoU)
3. **Adverse Weather**: Rain, fog, snow, low-light robustness
4. **Remote Sensing**: Satellite, aerial, maritime vision
5. **Boundary Segmentation**: Precise edge detection

### 📚 Complete Topics
- Classical filtering and feature detection
- CNN architectures (ResNet, EfficientNet, etc.)
- Transformer-based methods (ViT, Swin, etc.)
- Optical flow and geometric vision
- Diffusion models and multimodal vision
- Change detection and metric learning

---

*Created for comprehensive computer vision research and implementation guidance.*
