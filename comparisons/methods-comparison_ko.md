# 메서드 비교

성능 지표, 트레이드오프, 선택 가이드라인이 포함된 컴퓨터 비전 메서드의 종합 비교.

## 📊 성능 비교 개요

### 물체 탐지 (PASCAL VOC 2012)

| 메서드 | 연도 | mAP | 지연시간 | 파라미터 | 실시간 |
|--------|-----|-----|---------|---------|-----|
| R-CNN | 2014 | 47.2% | 227 초 | 40M | ❌ |
| Fast R-CNN | 2015 | 66.5% | 2 초 | 40M | ❌ |
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

### 의미론적 분할 (PASCAL VOC 2012)

| 메서드 | 연도 | mIoU | 지연시간 | 실시간 |
|--------|-----|-----|---------|-----|
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

### 인스턴스 분할 (COCO Test-Dev)

| 메서드 | 연도 | mAP | AP_mask | 지연시간 |
|--------|-----|-----|---------|-----|
| Mask R-CNN | 2017 | 36.7% | 37.5% | 180ms |
| Cascade Mask R-CNN | 2019 | 44.1% | 39.2% | 250ms |
| YOLACT | 2019 | 24.6% | 22.8% | 35ms |
| SOLOv2 | 2020 | 35.2% | 33.5% | 65ms |
| Mask2Former | 2022 | 48.0% | 46.8% | 180ms |
| Co-DETR | 2023 | 49.5% | 47.9% | 95ms |

### 광유동 (Sintel Final)

| 메서드 | 연도 | EPE | FPS | 실시간 |
|--------|-----|---|---|-----|
| Farneback | 2003 | 8.5 | 20 | ✅ |
| TV-L1 | 2011 | 4.2 | 15 | ✅ |
| PWC-Net | 2018 | 2.4 | 35 | ✅ |
| RAFT | 2020 | 1.9 | 3 | ❌ |
| LiteFlowNet3 | 2021 | 2.1 | 55 | ✅ |
| GMFlow | 2022 | 1.7 | 25 | ✅ |

## 🎯 선택 가이드라인

### 정확도 우선순위별

**높은 정확도 우선:**
1. **Cascade R-CNN**: 최고 정확도 (mAP 78.2%)
2. **Mask2Former**: 최고 분할 (mIoU 82.7%)
3. **RAFT**: 최고 광유동 (EPE 1.9)

**균형 성능:**
1. **YOLOv8**: 최고 실시간 (mAP 82.5%, 5ms)
2. **SegFormer-B4**: 최고 트랜스포머 (mIoU 81.3%)
3. **Co-DETR**: 최고 DETR 변형 (mAP 85.7%)

**실시간 우선:**
1. **YOLOv8n**: 가장 빠름 (5ms, 3.2M 파라미터)
2. **Fast-SCNN**: 가장 빠른 분할 (11ms, 3.8M 파라미터)
3. **PWC-Net**: 실시간 광유동 (35ms)

### 컴퓨팅 리소스별

**제한된 컴퓨팅 (< 10M 파라미터):**
- **YOLOv8n**: 3.2M, mAP 78.5%
- **MobileNet V3**: 5.4M, Top-1 75.2%
- **Fast-SCNN**: 3.8M, mIoU 61.4%

**중등도 컴퓨팅 (10-50M 파라미터):**
- **YOLOv5s**: 7.2M, mAP 81.2%
- **ResNet-50**: 25.6M, Top-1 78.3%
- **BiSeNet v2**: 4.2M, mIoU 78.7%

**고성능 컴퓨팅 (> 50M 파라미터):**
- **Co-DETR**: 45M, mAP 85.7%
- **SegFormer-B5**: 106M, mIoU 83.3%
- **ConvNeXt-L**: 198M, Top-1 85.0%

### 지연 시간 예산별

**< 10ms (초고속 실시간):**
- **YOLOv8n**: 5ms
- **YOLOv5n**: 7ms
- **Fast-SCNN**: 11ms (분할)

**10-50ms (실시간):**
- **YOLOv8s**: 8ms
- **YOLOv5s**: 12ms
- **BiSeNet v2**: 9ms (분할)
- **PWC-Net**: 28ms (광유동)

**50-150ms (준실시간):**
- **YOLOv8m**: 20ms
- **SegFormer-B3**: 110ms
- **DeepLab v3+**: 130ms

**> 150ms (오프라인):**
- **Co-DETR**: 95ms
- **Mask2Former**: 180ms
- **RAFT**: 333ms

### 응용 도메인별

**자율주행:**
- 탐지: **YOLOv8** (82.5% mAP, 실시간)
- 분할: **BiSeNet v2** (78.7% mIoU, 9ms)
- 추적: **ByteTrack** (MOTA 82.2%)

**의료 영상:**
- 분할: **U-Net** (96.2% 정확도)
- 주의집중: **Attention U-Net** (ROI 에 집중)
- 3D: **3D U-Net** (볼륨 데이터)

**모바일/임베디드:**
- 탐지: **YOLOv8n** (3.2M 파라미터, 5ms)
- 분할: **Fast-SCNN** (3.8M 파라미터, 11ms)
- 분류: **MobileNet V3** (5.4M 파라미터)

**위성/항공:**
- 탐지: **YOLOv8** (고해상도 입력)
- 분류: **ResNet-101** (95.8% mAP)
- 소형 물체: **P2-enhanced YOLO**

**감시:**
- 사람: **YOLOv8** (실시간)
- 얼굴: **RetinaFace** (높은 정확도)
- 이상 탐지: **Unsupervised 방법**

## 📈 정확도 vs 속도 트레이드오프

### 물체 탐지

```
지연시간 (ms)
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

### 의미론적 분할

```
지연시간 (ms)
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

## 🔍 메서드 특성

### 2 단 탐지기 (R-CNN 패밀)

**장점:**
- ✅ 높은 정확도 (mAP 73-78%)
- ✅ 우수한 위치 지정
- ✅ 검증된 안정성

**단점:**
- ❌ 느린 추론 (100-200ms)
- ❌ 복잡한 학습 파이프라인
- ❌ 높은 컴퓨팅 요구사항

**최적 용도:** 오프라인 응용, 높은 정확도 필요, 연구

**추천:** 최고 정확도는 **Cascade R-CNN**, 균형 성능은 **Faster R-CNN** 사용

### 1 단 탐지기 (YOLO 패밀리)

**장점:**
- ✅ 실시간 (5-20ms)
- ✅ 단순한 학습
- ✅ 속도에 맞는 높은 mAP (82.5%)

**단점:**
- ❌ 2 단 보다 약간 낮은 정확도
- ❌ 매우 작은 물체 누락 가능
- ❌ NMS 오버헤드 (YOLOv8/v9)

**최적 용도:** 실시간 응용, 임베디드 시스템, 로봇공학

**추천:** 가장 균형 좋은 성능은 **YOLOv8**, 검증된 안정성은 **YOLOv5** 사용

### 트랜스포머 기반 탐지기 (DETR 패밀리)

**장점:**
- ✅ 높은 정확도 (mAP 85.7%)
- ✅ 엔드투엔드 학습
- ✅ 우수한 전역 추론

**단점:**
- ❌ 느린 수렴
- ❌ 높은 컴퓨팅
- ❌ 큰 메모리 사용

**최적 용도:** 높은 정확도 오프라인 응용, 연구

**추천:** 최고 성능은 **Co-DETR**, 빠른 수렴은 **Deformable DETR** 사용

### 의미론적 분할

**CNN 기반 (DeepLab v3+, PSPNet):**
- ✅ 검증됨, 안정적
- ✅ 빠른 추론
- ✅ 좋은 정확도 (mIoU 77-80%)

**트랜스포머 기반 (SegFormer, Mask2Former):**
- ✅ state-of-the-art 정확도
- ✅ 우수한 장거리 의존성
- ❌ 느린 추론
- ❌ 높은 컴퓨팅

**추천:** 가장 균형 좋은 성능은 **SegFormer-B4**, 속도는 **DeepLab v3+** 사용

### 인스턴스 분할

**Mask R-CNN:**
- ✅ 견고한 baseline
- ✅ 좋은 정확도 (mAP 36.7%)
- ❌ 느림 (180ms)

**실시간 (YOLOX, YOLACT):**
- ✅ 빠름 (35ms)
- ❌ 낮은 정확도 (mAP 24.6%)

**최신 SOTA (Mask2Former, Co-DETR):**
- ✅ 높은 정확도 (mAP 48%)
- ❌ 계산 집약적

**추천:** 정확도는 **Co-DETR**, 실시간은 **YOLOX** 사용

## 📊 다른 물체 크기별 성능

### 소형 물체 (< 32×32)

| 메서드 | mAP_s | 향상 |
|--------|-----|-----|
| YOLOv8-standard | 38.2% | - |
| YOLOv8-small | 45.8% | +7.6% |
| YOLOv8-tiny | 52.3% | +14.1% |
| YOLOv8 + crop | 58.2% | +20.0% |

**추천:** 소형 물체 탐지는 **YOLOv8 과 crop 처리** 사용

### 중형 물체 (32-96×96)

| 메서드 | mAP_m | 성능 |
|--------|-----|-----|
| YOLOv8-standard | 62.5% | 좋음 |
| YOLOv5s | 64.2% | 더 좋음 |
| YOLOv8s | 66.8% | 최고 |

**추천:** 중형 물체에는 표준 YOLOv8 이 잘 작동

### 대형 물체 (> 96×96)

| 메서드 | mAP_l | 성능 |
|--------|-----|-----|
| Faster R-CNN | 78.5% | 우수 |
| Cascade R-CNN | 81.2% | 더 좋음 |
| Co-DETR | 83.5% | 최고 |

**추천:** 대형 물체에는 **Cascade R-CNN** 또는 **Co-DETR** 사용

## 🎓 오류 분석

### 일반적인 실패 사례

**1. 가림:**
- 2 단 탐지기가 가림 더 잘 처리
- **Faster R-CNN**: 가림 시 85% 정확도
- **YOLO**: 가림 시 72% 정확도

**2. 저조도 조건:**
- 전처리 필수
- **강화 + YOLO**: 78% mAP
- **baseline YOLO**: 52% mAP

**3. 악천후:**
- 악천후 대응 모델 필수
- **날씨강건 YOLO**: 68% mAP (비)
- **일반 YOLO**: 45% mAP (비)

**4. 소형 물체:**
- 고해상도 입력 필요
- **YOLOv8 + crop**: 58% mAP (소형)
- **일반 YOLO**: 38% mAP (소형)

**5. 밀집 군중:**
- 큰 탐지 헤드가 더 좋음
- **Cascade R-CNN**: 82% mAP (군중)
- **YOLO**: 65% mAP (군중)

## 🔬 벤치마킹 권장사항

### 연구를 위해

**표준 벤치마크:**
1. **COCO**: mAP@0.5:0.95, AP_s, AP_m, AP_l
2. **PASCAL VOC**: mAP@0.5
3. **KITTI**: 자율주행
4. **Cityscapes**: 도시 장면

**지표:**
- **mAP**: Mean Average Precision
- **지연시간**: 평균 추론 시간
- **FPS**: 초당 프레임 수
- **파라미터**: 모델 파라미터
- **FLOPs**: 연산량 (Floating point operations)

### 생산을 위해

**테스트 기준:**
1. **현실 세계 성능** 벤치마크 이상
2. **예외 사례**: 실패 모드
3. **부하 하 지연시간** (단일 이미지 이상)
4. **전력 소비** 모바일/임베디드용
5. **강건성** 변화에 대한

**검증:**
```python
def validate_model(model, test_loader, devices):
    results = {}
    
    for device in devices:
        # 정확도 지표
        mAP = compute_mAP(model, test_loader, device)
        latency = compute_latency(model, test_loader, device)
        
        # 강건성 지표
        robustness = compute_robustness(model, test_loader, device)
        
        # 자원 지표
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

## 📚 주요 인사이트

### 빠른 의사결정 매트릭스

```
높은 정확도, 낮은 속도 필요 → Cascade R-CNN, Co-DETR
실시간, 좋은 정확도 → YOLOv8, Co-DETR
최고속도 → YOLOv8n, Fast-SCNN
최고 균형 → YOLOv8s, SegFormer-B4
모바일/임베디드 → YOLOv8n, MobileNet V3
트랜스포머 기반 → Co-DETR, SegFormer
검증됨 & 안정적 → Faster R-CNN, YOLOv5
```

### 성능 예상

**탐지:**
- 실시간: YOLOv8 (82.5% mAP, 5ms)
- 높은 정확도: Co-DETR (85.7% mAP, 33ms)

**분할:**
- 실시간: BiSeNet v2 (78.7% mIoU, 9ms)
- 높은 정확도: SegFormer-B5 (83.3% mIoU, 200ms)

**광유동:**
- 실시간: LiteFlowNet3 (EPE 2.1, 55fps)
- 높은 정확도: RAFT (EPE 1.9, 3fps)

---

*문서 업데이트: 2026 년 3 월*
*2020-2024 년 최신 개발사항 포함*
