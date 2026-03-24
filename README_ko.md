# 컴퓨터 비전 연구 컬렉션

고전부터 현대까지의 컴퓨터 비전 기법을 포괄적으로 다루는 연구 모음집입니다. object detection, 악천후 지각, 원격탐사, 경계 민감 세그멘테이션 등 고부가가치 응용 분야에 중점을 둡니다.

## 📑 목차

### 고전 컴퓨터 비전
- **[필터링 & 기본 연산](./classical-vision/filtering.md)** - 컨볼루션, 상관관계, 선형/비선형 필터링, 주파수 영역
- **[특징점 검출](./classical-vision/feature-detection.md)** - 엣지, 코너, 블롭 검출, 특징점 기술자 (SIFT, SURF, ORB)
- **[기하학적 비전](./classical-vision/geometric-vision.md)** - 옵티컬 플로우, 엡폴라 기하, 스테레오 비전, 이미지 형성

### 현대 컴퓨터 비전
- **[CNN 기본 원리](./modern-vision/cnn-fundamentals.md)** - 아키텍처 원리, ResNet, DenseNet, Inception
- **[Object Detection](./modern-vision/object-detection.md)** - Two-stage, one-stage, transformer 기반 방법, SOTA
- **[이미지 세그멘테이션](./modern-vision/segmentation.md)** - Semantic, instance, boundary-sensitive 방법
- **[심화 주제](./modern-vision/advanced-topics.md)** - ViT, diffusion 모델, multimodal 비전

### 중점 영역 (우선순위)
- **[악천후 지각](./focus-areas/adverse-weather.md)** - 비, 안개, 눈, 저조도 강인성
- **[원격탐사 & 해양 비전](./focus-areas/remote-sensing.md)** - 위성, 드론, 선박 감지
- **[경계 민감 세그멘테이션](./focus-areas/boundary-segmentation.md)** - 정확한 경계 검출

### 비교 및 리소스
- **[방법론 비교](./comparisons/methods-comparison_ko.md)** - 성능 벤치마크 및 trade-off
- **[리소스 & 구현체](./resources_ko.md)** - 코드 저장소, 데이터셋, 튜토리얼

## 🎯 주요 특징

### Object Detection SOTA (2024)
- **YOLOv8/v9/v10**: 개선된 정확도의 실시간 탐지
- **DETR variants**: Transformer 기반 end-to-end 탐지
- **FocalDet, FCOS**: Anchor-free 접근법
- **성능**: COCO 기준 최상위 mAP >85%

### 세그멘테이션 발전
- **Segment Anything Model (SAM)**: Zero-shot 일반화
- **U-Net variants**: 의료 영상 표준
- **DeepLabV3+**: 엣지 인식 semantic segmentation
- **Boundary-aware 방법**: 정확한 윤곽 검출

### 중점 영역 혁신
- **Weather-robust 탐지**: Adversarial training, dehazing 전처리
- **원격탐사**: 위성 영상을 위한 커스텀 아키텍처
- **소형 객체 탐지**: 고해상도 네트워크, feature pyramid 개선

## 📊 주요 지표

| 과제 | 방법 | 성능 | 지연 |
|------|------|------|--|
| 탐지 (실시간) | YOLOv8 | mAP@0.5: 0.78 | 15ms (RTX 3080) |
| 탐지 (정확도) | Mask R-CNN | mAP@0.5: 0.50 | 180ms |
| Semantic Seg | DeepLabV3+ | mIoU: 0.86 | 120ms |
| Instance Seg | Mask2Former | mAP: 0.48 | 250ms |

## 🔗 리소스

- **코드 구현체**: [resources.md](./resources.md) 저장소 확인
- **데이터셋**: COCO, ADE20K, KITTI, PASCAL VOC
- **논문**: 각 문서의 original 논문 링크
- **온라인 벤치마크**: [paperswithcode.com](https://paperswithcode.com)

## 📝 인용

연구 목적으로. 이 컬렉션은 다음에서 지식을 종합:
- CVPR, ICCV, ECCV 학회 (2020-2024)
- arXiv 논문제
- PyTorch, TensorFlow 오픈소스 구현체

### 권장 인용 형식:
```
@misc{cv-research-2026,
  author = {Computer Vision Research Team},
  title = {Computer Vision Research Collection: Classical to Modern Methods},
  year = {2026},
  url = {https://github.com/username/computer-vision-research}
}
```

## 🚀 시작하기

### 연구자를 위해
1. `README.md` 와 `comparisons/methods-comparison.md` 로 시작
2. `focus-areas/` 에서 전문 도메인 탐색
3. `resources.md` 에서 구현체 참조

### 실무자를 위해
1. 실용적 코드 스니펫에 집중
2. 성능 비교로 방법 선택
3. `focus-areas/` 에서 도메인별 과제 참조

### 학생을 위해
1. 기초를 위해 `classical-vision/` 으로 시작
2. 심화학습을 위해 `modern-vision/` 으로 진행
3. `comparisons/` 로 trade-off 이해

### 과제로 빠른 시작

**Object Detection:**
```bash
# 실시간: modern-vision/object-detection.md 읽기 (YOLOv8 섹션)
# 고정확도: comparisons/methods-comparison.md 읽기
# 코드: resources.md 에서 YOLOv8 설치
```

**Semantic Segmentation:**
```bash
# 실시간: modern-vision/segmentation.md 읽기 (BiSeNet v2)
# 고정확도: SegFormer 또는 Mask2Former 사용
# 의료: U-Net + boundary-aware loss 사용
```

**Weather-Robust 비전:**
```bash
# focus-areas/adverse-weather.md 읽기
# 탐지 전에 dehazing/deraining 전처리
```

**원격탐사:**
```bash
# focus-areas/remote-sensing.md 읽기
# 소형 객체를 위한 고해상도 YOLO 사용
```

## 📅 유지보수

최신 개발 내용으로 정기 업데이트됩니다. 마지막 업데이트: 2026 년 3 월

## 🔗 깃허브 업로드

이 연구 컬렉션을 깃허브에 업로드:

```bash
# 1. GitHub 토큰 설정 (https://github.com/settings/tokens 에서 생성)
export GITHUB_TOKEN='your-token-here'

# 2. 업로드 스크립트 실행
cd computer-vision-research
./upload-to-github.sh
```

스크립트가 실행할 일:
- 새 깃허브 리포지토리 생성
- Git 초기화 및 모든 문서 커밋
- 포괄적 metadata 로 깃허브에 푸시
- 리포지토리 통계 표시

## 📊 리포지토리 통계

- **총 문서**: 13 개 마크다운 파일
- **총 크기**: ~240KB 연구 자료
- **커버리지**: 고전 CV → 현대 딥러닝 → 중점 영역
- **최신 방법**: 2024 SOTA 개발 사항까지
- **성능 데이터**: 포괄적 벤치마크 비교
- **코드 예제**: 바로 사용 가능한 구현체

## 🎯 주요 다루는 주제

### ⭐ 우선순위 중점 영역
1. **Object Detection**: YOLOv8, Co-DETR (82.5% mAP)
2. **이미지 세그멘테이션**: Mask2Former, SegFormer (82.7% mIoU)
3. **악천후**: 비, 안개, 눈, 저조도 강인성
4. **원격탐사**: 위성, 항공, 해양 비전
5. **경계 세그멘테이션**: 정확한 엣지 검출

### 📚 완전 주제 목록
- 고전 필터링 및 특징점 검출
- CNN 아키텍처 (ResNet, EfficientNet 등)
- Transformer 기반 방법 (ViT, Swin 등)
- 옵티컬 플로우 및 기하학적 비전
- Diffusion 모델 및 multimodal 비전
- Change detection 및 metric learning

---

*포괄적 컴퓨터 비전 연구 및 구현 안내를 위해 작성되었습니다.*
