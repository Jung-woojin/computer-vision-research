# Methods Comparison

Comprehensive comparison of computer vision methods with performance metrics, trade-offs, and selection guidelines.

## 📊 Performance Comparison Overview

### Object Detection (PASCAL VOC 2012)

| Method | Year | mAP | Latency | Params | Real-time |
|--------|------|-----|--------|--------|---|----|
| R-CNN | 2014 | 47.2% | 227s | 40M | ❌ |
| Fast R-CNN | 2015 | 66.5% | 2s | 40M | ❌ |
| Faster R-CNN | 2015 | 73.2% | 140ms | 40M | ❌ |
| SSD-300 | 2016 | 74.3% | 17ms | 22M | ✅ |
| YOLOv2 | 2017 | 74.1% | 95ms | 22M | ✅ |
| YOLOv3 | 2018 | 73.8% | 22ms | 56M | ✅ |
| RetinaNet | 2017 | 74.8% | 55ms | 27M | ✅ |
| Cascade R-CNN | 2018 | 78.2% | 200ms | 48M | ❌ |
| YOLOv4 | 2020 | 78.2% | 16ms | 56M | ✅ |
| YOLOv5s | 2020 | 81.2% | 7ms | 7.2M | ✅ |
| YOLOv8s | 2023 | 82.5% | 5ms | 11.2M | ✅ |
| Co-DETR | 2023 | 85.7% | 33ms | 45M | ✅ |

### Semantic Segmentation (PASCAL VOC 2012)

| Method | Year | mIoU | Latency | Real-time |
|--------|------|-----|--------|---|----|
| FCN | 2015 | 48.4% | 150ms | ❌ |
| U-Net | 2015 | 67.8% | 200ms | ❌ |
| DeepLab v1 | 2016 | 72.2% | 120ms | ❌ |
| DeepLab v2 | 2016 | 73.7% | 130ms | ❌ |
| DeepLab v3 | 2017 | 77.6% | 120ms | ❌ |
| DeepLab v3+ | 2018 | 80.0% | 130ms | ❌ |
| PSPNet | 2017 | 79.0% | 125ms | ❌ |
| Fast-SCNN | 2019 | 61.4% | 11ms | ✅ |
| BiSeNet v2 | 2021 | 78.7% | 9ms | ✅ |
| SegFormer-B4 | 2021 | 81.3% | 140ms | ❌ |
| Mask2Former | 2022 | 82.7% | 180ms | ❌ |

### Instance Segmentation (COCO Test-Dev)

| Method | Year | mAP | AP_mask | Latency |
|--------|------|-----|--------|---|----|
| Mask R-CNN | 2017 | 36.7% | 37.5% | 180ms |
| Cascade Mask R-CNN | 2019 | 44.1% | 39.2% | 250ms |
| YOLACT | 2019 | 24.6% | 22.8% | 35ms |
| SOLOv2 | 2020 | 35.2% | 33.5% | 65ms |
| Mask2Former | 2022 | 48.0% | 46.8% | 180ms |
| Co-DETR | 2023 | 49.5% | 47.9% | 95ms |

### Optical Flow (Sintel Final)

| Method | Year | EPE | FPS | Real-time |
|--------|------|---|-|--|----|
| Farneback | 2003 | 8.5 | 20 | ✅ |
| TV-L1 | 2011 | 4.2 | 15 | ✅ |
| PWC-Net | 2018 | 2.4 | 35 | ✅ |
| RAFT | 2020 | 1.9 | 3 | ❌ |
| LiteFlowNet3 | 2021 | 2.1 | 55 | ✅ |
| GMFlow | 2022 | 1.7 | 25 | ✅ |

## 🎯 Selection Guidelines

### By Accuracy Requirements

**High Accuracy Priority:**
1. **Cascade R-CNN**: Best accuracy (mAP 78.2%)
2. **Mask2Former**: Best segmentation (mIoU 82.7%)
3. **RAFT**: Best optical flow (EPE 1.9)

**Balanced Performance:**
1. **YOLOv8**: Best real-time (mAP 82.5%, 5ms)
2. **SegFormer-B4**: Best transformer (mIoU 81.3%)
3. **Co-DETR**: Best DETR variant (mAP 85.7%)

**Real-time Priority:**
1. **YOLOv8n**: Fastest (5ms, 3.2M params)
2. **Fast-SCNN**: Fastest seg (11ms, 3.8M params)
3. **PWC-Net**: Real-time flow (35ms)

### By Compute Resources

**Limited Compute (< 10M params):**
- **YOLOv8n**: 3.2M, mAP 78.5%
- **MobileNet V3**: 5.4M, Top-1 75.2%
- **Fast-SCNN**: 3.8M, mIoU 61.4%

**Moderate Compute (10-50M params):**
- **YOLOv5s**: 7.2M, mAP 81.2%
- **ResNet-50**: 25.6M, Top-1 78.3%
- **BiSeNet v2**: 4.2M, mIoU 78.7%

**High Compute (> 50M params):**
- **Co-DETR**: 45M, mAP 85.7%
- **SegFormer-B5**: 106M, mIoU 83.3%
- **ConvNeXt-L**: 198M, Top-1 85.0%

### By Latency Budget

**< 10ms (Ultra Real-time):**
- **YOLOv8n**: 5ms
- **YOLOv5n**: 7ms
- **Fast-SCNN**: 11ms (segmentation)

**10-50ms (Real-time):**
- **YOLOv8s**: 8ms
- **YOLOv5s**: 12ms
- **BiSeNet v2**: 9ms (segmentation)
- **PWC-Net**: 28ms (optical flow)

**50-150ms (Near Real-time):**
- **YOLOv8m**: 20ms
- **SegFormer-B3**: 110ms
- **DeepLab v3+**: 130ms

**> 150ms (Offline):**
- **Co-DETR**: 95ms
- **Mask2Former**: 180ms
- **RAFT**: 333ms

### By Application Domain

**Autonomous Driving:**
- Detection: **YOLOv8** (82.5% mAP, real-time)
- Segmentation: **BiSeNet v2** (78.7% mIoU, 9ms)
- Tracking: **ByteTrack** (MOTA 82.2%)

**Medical Imaging:**
- Segmentation: **U-Net** (96.2% accuracy)
- Attention: **Attention U-Net** (focus on ROIs)
- 3D: **3D U-Net** (volumetric data)

**Mobile/Embedded:**
- Detection: **YOLOv8n** (3.2M params, 5ms)
- Segmentation: **Fast-SCNN** (3.8M params, 11ms)
- Classification: **MobileNet V3** (5.4M params)

**Satellite/Aerial:**
- Detection: **YOLOv8** with high-res input
- Classification: **ResNet-101** (95.8% mAP)
- Small objects: **P2-enhanced YOLO**

**Surveillance:**
- Person: **YOLOv8** (real-time)
- Face: **RetinaFace** (high accuracy)
- Anomaly: **Unsupervised methods**

## 📈 Accuracy vs Speed Trade-off

### Object Detection

```
Latency (ms)
  ^
  |   Co-DETR (33ms, 85.7%)
  |   Faster R-CNN (140ms, 73.2%)
150|         Mask2Former (180ms)
  |   Cascade R-CNN (200ms, 78.2%)
  |
100|   YOLOv8m (20ms, 84.3%)
  |   YOLOv8l (35ms, 85.1%)
  |
 50|   YOLOv8s (8ms, 82.5%)
  |   YOLOv5s (12ms, 81.2%)
  |   RetinaNet (55ms, 74.8%)
  |
 10|   YOLOv8n (5ms, 78.5%)
  |   YOLOv5n (7ms, 74.2%)
  |   SSD-300 (17ms, 74.3%)
  |
  0+--------------------------------------------------> mAP
    70      75      80      85      90 (%)
```

### Semantic Segmentation

```
Latency (ms)
  ^
  |   Mask2Former (180ms, 82.7%)
  |   SegFormer-B5 (200ms, 83.3%)
150|   DeepLab v3+ (130ms, 80.0%)
  |   SegFormer-B4 (140ms, 81.3%)
  |
  |   PSPNet (125ms, 79.0%)
100|   SegFormer-B3 (100ms, 79.5%)
  |   SegFormer-B2 (80ms, 77.2%)
  |   SegFormer-B1 (60ms, 74.5%)
  |
 50|   BiSeNet v2 (9ms, 78.7%)
  |   Fast-SCNN (11ms, 61.4%)
  |   MobileSegNet (15ms, 72.3%)
  |
  0+-------------------------------------------> mIoU
    50      60      70      80      90 (%)
```

## 🔍 Method Characteristics

### Two-Stage Detectors (R-CNN family)

**Pros:**
- ✅ High accuracy (mAP 73-78%)
- ✅ Good localization
- ✅ Proven robustness

**Cons:**
- ❌ Slower inference (100-200ms)
- ❌ Complex training pipeline
- ❌ Higher compute requirements

**Best for:** Offline applications, high accuracy needs, research

**Recommendation:** Use **Cascade R-CNN** for maximum accuracy, **Faster R-CNN** for balanced performance

### One-Stage Detectors (YOLO family)

**Pros:**
- ✅ Real-time (5-20ms)
- ✅ Simple training
- ✅ High mAP for speed (82.5%)

**Cons:**
- ❌ Slightly lower accuracy than two-stage
- ❌ May miss very small objects
- ❌ NMS overhead (YOLOv8/v9)

**Best for:** Real-time applications, embedded systems, robotics

**Recommendation:** Use **YOLOv8** for best balance, **YOLOv5** for proven stability

### Transformer-based Detectors (DETR family)

**Pros:**
- ✅ High accuracy (mAP 85.7%)
- ✅ End-to-end training
- ✅ Better global reasoning

**Cons:**
- ❌ Slower convergence
- ❌ Higher compute
- ❌ Large memory usage

**Best for:** High accuracy offline applications, research

**Recommendation:** Use **Co-DETR** for best performance, **Deformable DETR** for faster convergence

### Semantic Segmentation

**CNN-based (DeepLab v3+, PSPNet):**
- ✅ Proven, stable
- ✅ Fast inference
- ✅ Good accuracy (mIoU 77-80%)

**Transformer-based (SegFormer, Mask2Former):**
- ✅ State-of-the-art accuracy
- ✅ Better long-range dependencies
- ❌ Slower inference
- ❌ Higher compute

**Recommendation:** Use **SegFormer-B4** for best balance, **DeepLab v3+** for speed

### Instance Segmentation

**Mask R-CNN:**
- ✅ Solid baseline
- ✅ Good accuracy (mAP 36.7%)
- ❌ Slow (180ms)

**Real-time (YOLOX, YOLACT):**
- ✅ Fast (35ms)
- ❌ Lower accuracy (mAP 24.6%)

**Modern SOTA (Mask2Former, Co-DETR):**
- ✅ High accuracy (mAP 48%)
- ❌ Computationally expensive

**Recommendation:** Use **Co-DETR** for accuracy, **YOLOX** for real-time

## 📊 Performance on Different Object Sizes

### Small Objects (< 32×32)

| Method | mAP_s | Enhancement |
|--------|-----|-------------|
| YOLOv8-standard | 38.2% | - |
| YOLOv8-small | 45.8% | +7.6% |
| YOLOv8-tiny | 52.3% | +14.1% |
| YOLOv8 + crop | 58.2% | +20.0% |

**Recommendation:** Use **YOLOv8 with crop processing** for small object detection

### Medium Objects (32-96×96)

| Method | mAP_m | Performance |
|--------|-----|-----------|----|
| YOLOv8-standard | 62.5% | Good |
| YOLOv5s | 64.2% | Better |
| YOLOv8s | 66.8% | Best |

**Recommendation:** Standard YOLOv8 works well for medium objects

### Large Objects (> 96×96)

| Method | mAP_l | Performance |
|--------|-----|-----------|----|
| Faster R-CNN | 78.5% | Excellent |
| Cascade R-CNN | 81.2% | Better |
| Co-DETR | 83.5% | Best |

**Recommendation:** Use **Cascade R-CNN** or **Co-DETR** for large objects

## 🎓 Error Analysis

### Common Failure Cases

**1. Occlusion:**
- Two-stage detectors better handle occlusion
- **Faster R-CNN**: 85% accuracy with occlusion
- **YOLO**: 72% accuracy with occlusion

**2. Low-light Conditions:**
- Pre-processing essential
- **Enhancement + YOLO**: 78% mAP
- **Baseline YOLO**: 52% mAP

**3. Adverse Weather:**
- Weather-aware models essential
- **Weather-robust YOLO**: 68% mAP (rain)
- **Standard YOLO**: 45% mAP (rain)

**4. Small Objects:**
- High-resolution input needed
- **YOLOv8 + crop**: 58% mAP (small)
- **Standard YOLO**: 38% mAP (small)

**5. Dense Crowds:**
- Better for larger detection heads
- **Cascade R-CNN**: 82% mAP (crowded)
- **YOLO**: 65% mAP (crowded)

## 🔬 Benchmarking Recommendations

### For Research

**Standard Benchmarks:**
1. **COCO**: mAP@0.5:0.95, AP_s, AP_m, AP_l
2. **PASCAL VOC**: mAP@0.5
3. **KITTI**: Autonomous driving
4. **Cityscapes**: Urban scenes

**Metrics:**
- **mAP**: Mean Average Precision
- **Latency**: Average inference time
- **FPS**: Frames per second
- **Params**: Model parameters
- **FLOPs**: Floating point operations

### For Production

**Testing Criteria:**
1. **Real-world performance** not just benchmark
2. **Edge cases**: Failure modes
3. **Latency under load** (not just single image)
4. **Power consumption** for mobile/embedded
5. **Robustness** to variations

**Validation:**
```python
def validate_model(model, test_loader, devices):
    results = {}
    
    for device in devices:
        # Accuracy metrics
        mAP = compute_mAP(model, test_loader, device)
        latency = compute_latency(model, test_loader, device)
        
        # Robustness metrics
        robustness = compute_robustness(model, test_loader, device)
        
        # Resource metrics
        params = count_parameters(model)
        flops = compute_flops(model, input_size)
        
        results[device] = {
            'mAP': mAP,
            'latency_ms': latency,
            'robustness': robustness,
            'params': params,
            'flops': flops
        }
    
    return results
```

## 📚 Key Takeaways

### Quick Decision Matrix

```
High Accuracy, Low Speed Needs → Cascade R-CNN, Co-DETR
Real-time, Good Accuracy → YOLOv8, Co-DETR
Maximum Speed → YOLOv8n, Fast-SCNN
Best Balance → YOLOv8s, SegFormer-B4
Mobile/Embedded → YOLOv8n, MobileNet V3
Transformer-based → Co-DETR, SegFormer
Proven & Stable → Faster R-CNN, YOLOv5
```

### Performance Expectations

**Detection:**
- Real-time: YOLOv8 (82.5% mAP, 5ms)
- High accuracy: Co-DETR (85.7% mAP, 33ms)

**Segmentation:**
- Real-time: BiSeNet v2 (78.7% mIoU, 9ms)
- High accuracy: SegFormer-B5 (83.3% mIoU, 200ms)

**Flow:**
- Real-time: LiteFlowNet3 (EPE 2.1, 55fps)
- High accuracy: RAFT (EPE 1.9, 3fps)

---

*Document updated: March 2026*
*Includes latest developments from 2020-2024*
