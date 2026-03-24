# 📚 Computer Vision 장기 학습 커리큘럼
## 연구자 & 엔지니어를 위한 체계적 로드맵

> **대상:** 컴퓨터비전 아키텍처 연구자/엔지니어  
> **배경:** 딥러닝 기반 CV 연구, robust vision architecture 설계  
> **주요 관심:** detection, adverse weather, remote sensing/aerial/maritime, segmentation/boundary-sensitive  
> **목표:** 해외박사 (특히 일본) 고려한 장기 경력 개발

---

## 📋 문서 구조

1. [고전 비전 (Classical Vision)](#1-고전-비전-classical-vision)
2. [현대 비전 (Modern Vision)](#2-현대-비전-modern-vision)
3. [핵심 응용/연구축 (Core Applications)](#3-핵심-응용연구축-core-applications)
4. [연구자 관점 분석](#4-연구자-관점-분석)
5. [엔지니어 관점 분석](#5-엔지니어-관점-분석)
6. [박사 지원 관점 분석](#6-박사-지원-관점-분석)
7. [6 개월 로드맵](#7-6-개월-로드맵)
8. [1 년 로드맵](#8-1-년-로드맵)
9. [3 년 로드맵](#9-3-년-로드맵)

---

## 1. 고전 비전 (Classical Vision)

고전 비전은 **딥러닝 이전의 전통적 방법**이지만, 여전히 중요한 기초 개념과 **interpretability**, **computational efficiency** 측면에서 가치가 있습니다. 연구자라면 **"왜 딥러닝이 등장했는지" 이해하기 위해** 필수입니다.

---

### 1.1 Filtering & Image Formation

#### **왜 중요한가?**
- 이미지 전처리, 노이즈 제거, 특징 추출의 기초
- CNN 의 convolution 이 실제로 하는 일의 본질 이해
- 실시간 시스템 설계 시 필터 선택의 기준

#### **핵심 개념**
- **Convolution vs Correlation**: 이론적 차이 (실제 구현은 대부분 correlation)
- **선형 필터**: smoothing (Gaussian), sharpening
- **비선형 필터**: median filter (impulse noise 제거), bilateral filter (edge-preserving smoothing)
- **Image formation 모델**: irradiance, radiance, camera response function
- **Camera model**: pinhole, lens distortion (radial, tangential)

#### **자주 헷갈리는 포인트**
```python
# Convolution vs Correlation
# 이론적 convolution: kernel flip 후 correlation
# PyTorch/TensorFlow: 실제론 correlation (flip 없음)
# nn.Conv2d 는 technically correlation이지만 convention상 convolution이라 부름

# 이점: 
# - Conv: (f * g)(t) = ∫ f(τ)g(t-τ)dτ  (신호 처리 표준)
# - Corr: (f ⋆ g)(t) = ∫ f*(τ)g(t+τ)dτ
# 하지만 CNN 은 kernel 을 학습하므로 flip 유무가 영향 없음
```

#### **연구/실무 연결점**
- **preprocessing pipeline** 설계 시 filter 선택 근거
- **domain shift** 연구: camera response curve 변화가 CNN 에 미치는 영향
- **efficient design**: lightweight filter 로 augmentation 대체

#### **GitHub 문서 제목 예시**
- `01_filtering_fundamentals.md`
- `01_image_formation_camera_model.md`

#### **작은 과제**
1. **Gaussian blur 의 σ 변화 실험**: σ=1,3,5,7 에서 edge preservation vs noise removal trade-off 측정
2. **Bilateral filter 구현**: OpenCV 없이 numpy 로 구현하여 edge-preserving smoothing 시각화
3. **Camera calibration**: OpenCV `calibrateCamera` 로 distortion coefficient 추출, correction 적용

#### **관련 키워드**
- **기본**: convolution, correlation, Gaussian blur, median filter, bilateral filter
- **후속**: total variation denoising, non-local means, anisotropic diffusion

#### **최종 점검 질문**
1. Gaussian blur 의 convolution kernel size 는 왜 보통 odd해야 하는가?
2. Bilateral filter 의 spatial σ 와 intensity σ 가 각각 어떤 역할을 하는가?
3. Median filter 가 impulse noise 에 효과적인 이유는 무엇인가?
4. Camera response function 이 무엇이며, HDR 이미징에 왜 필요한가?
5. Radial distortion과 tangential distortion 의 기하학적 차이는?

---

### 1.2 Edge/Corner/Blob Detection

#### **왜 중요한가?**
- **feature point** extraction 의 기초
- **SLAM, structure from motion**의 핵심
- **semantic segmentation**의 boundary detection 기초

#### **핵심 개념**
- **Edge detection**: Sobel, Prewitt, Canny (non-max suppression + hysteresis thresholding)
- **Corner detection**: Harris corner, Shi-Tomasi (eigenvalue 기반)
- **Blob detection**: Laplacian of Gaussian (LoG), DoG (Difference of Gaussian)
- **Scale space**: Gaussian pyramid, octave, layer

#### **자주 헷갈리는 포인트**
```
Canny edge detector 5 단계:
1. Gaussian smoothing (noise 제거)
2. Gradient calculation (Sobel)
3. Non-maximum suppression (1-pixel edge만 남김)
4. Double threshold (strong/weak/none)
5. Edge linking (hysteresis: strong → weak 연결)

Harris corner response: R = det(M) - k*trace(M)²
- det(M): eigenvalue product (두 방향 모두 강함)
- k: empirical constant (0.04~0.06)
- Corner = large R, Edge = one λ large, Flat = both small
```

#### **연구/실무 연결점**
- **feature matching**에서 corner가 point feature에 유리한 이유
- **multi-scale** 처리 필요성 (큰 객체 vs 작은 객체)
- **deep feature detectors** (SIFTNet, SuperPoint) 와의 비교

#### **GitHub 문서 제목 예시**
- `02_edge_corner_blob_detection.md`
- `02_canny_harris_implementation.md`

#### **작은 과제**
1. **Canny edge detector 직접 구현**: numpy 로 전체 pipeline 구현
2. **Harris corner vs Shi-Tomasi 비교**: eigenvalue 임계값 차이에 따른 결과 비교
3. **DoG 로 blob detection**: SIFT 의 DoG 단계만 구현하고 scale-space extrema 찾

#### **관련 키워드**
- **기본**: Canny, Sobel, Harris, Shi-Tomasi, LoG, DoG, non-max suppression
- **후속**: scale-space theory, interest point repeatability, feature matching

#### **최종 점검 질문**
1. Canny edge detector 에서 hysteresis thresholding 이 왜 필요한가?
2. Harris corner detection 에서 eigenvalue가 두 개 모두 작은 영역은 무엇인가?
3. DoG 가 LoG 의 근사치인 이유는 무엇인가?
4. Non-max suppression 의 원리와 구현법은?
5. Scale-space 에서 "octave"과 "layer"의 차이는?

---

### 1.3 SIFT/SURF/FAST/ORB

#### **왜 중요한가?**
- **feature description**과 **matching**의 표준
- **SLAM, 3D reconstruction, panorama stitching**의 핵심
- **딥러닝 기반 feature**와의 비교 기준

#### **핵심 개념**
- **SIFT (Scale-Invariant Feature Transform)**:
  - DoG 로 keypoint detection + orientation assignment
  - Gradient histogram (128-dim descriptor)
  - **invariant**: scale, rotation, moderate illumination
  - **단점**: 느림 (특허 만료: 2020 년)

- **SURF (Speeded Up Robust Features)**:
  - SIFT 가속화: Hessian matrix + integral image
  - Faster but similar performance
  - **특허 만료**: 2020 년

- **FAST (Features from Accelerated Segment Test)**:
  - 실시간 corner detection (15fps~)
  - Machine learning 으로 feature point 학습
  - ORB 의 base

- **ORB (Oriented FAST and Rotated BRIEF)**:
  - FAST keypoint + ORB rotation + BRIEF descriptor
  - **binary descriptor**: Hamming distance 기반
  - **특허 무료** + **초고속**

#### **자주 헷갈리는 포인트**
```
Feature descriptor 비교:
SIFT  : 128-dim float, Euclidean distance, 느림
SURF  : 64/128-dim float, Euclidean, 중속
FAST  : descriptor 없음 (keypoint 만), 초고속
ORB   : 32/64 byte binary, Hamming distance, 초고속

ORB rotation invariance:
- FAST keypoint 에 orientation assign
- BRIEF descriptor rotation 보정
- uBRIEF (modified BRIEF) 사용

BRIEF descriptor: random pixel pairs 비교
binary string 생성 (0 또는 1)
```

#### **연구/실무 연결점**
- **real-time SLAM** (ORB-SLAM2/3): ORB 사용 이유
- **image retrieval**: binary descriptor vs float descriptor
- **deep features**: SuperPoint, SuperGlue 와의 비교 연구

#### **GitHub 문서 제목 예시**
- `03_sift_surf_fast_orb_comparison.md`
- `03_feature_detectors_descriptors.md`

#### **작은 과제**
1. **ORB 로 panorama stitching**: OpenCV `Stitcher` 클래스로 광각 이미지 생성
2. **SIFT vs ORB 속도 비교**: same images에서 detection+matching 시간 측정
3. **ORB rotation 실험**: 회전 각도별 matching invariance 측정

#### **관련 키워드**
- **기본**: SIFT, SURF, FAST, ORB, BRIEF, descriptor, matching
- **후속**: SuperPoint, SuperGlue, loftr, deep feature matching

#### **최종 점검 질문**
1. SIFT 의 128-dim descriptor는 어떻게 구성되는가?
2. ORB 에서 BRIEF descriptor의 rotation invariance를 어떻게 구현하는가?
3. FAST에서 "segment test"의 원리는?
4. SIFT/SURF의 특허 만연 연도는? (2020 년)
5. Binary descriptor (ORB) 와 float descriptor (SIFT) 의 matching 방식 차이는?

---

### 1.4 Optical Flow

#### **왜 중요한가?**
- **video analysis**, **motion analysis**의 기초
- **action recognition**, **video interpolation**의 핵심
- **SLAM, odometry**에서 motion estimation

#### **핵심 개념**
- **Optical flow 정의**: pixel movement over time (not physical motion!)
- **Brightness constancy assumption**: I(x,y,t) = I(x+dx, y+dy, t+dt)
- **Flow constraint equation**: u·Iₓ + v·Iᵧ + Iₜ = 0 (1 equation, 2 unknowns)
- **Lukas-Kanade (local)**: small window 내 assumption, least squares
- **Lucas-Kanade with pyramid**: multi-scale 처리 (large motion)
- **Horn-Schunck (global)**: smoothness constraint 추가, variational method

#### **자주헷갈리는 포인트**
```
Optical Flow vs Motion Field:
- Flow: 2D image plane projection
- Motion: 3D physical movement
- Flow ≠ Motion (aperture problem 등)

Aperture Problem:
- Local window만 보면 normal flow만 측정 가능
- tangential flow 불확실
- Solution: multi-scale, corner points, global constraints

Lukas-Kanade 조건:
- window 내 intensity 변화가 sufficiently large (corner)
- corner가 없는 edge region에서는 unreliable
```

#### **연구/실무 연결점**
- **video understanding**: temporal information extraction
- **real-time tracking**: LK tracker (OpenCV `calcOpticalFlowPyrLK`)
- **deep optical flow**: FlowNet, RAFT, PWC-Net

#### **GitHub 문서 제목 예시**
- `04_optical_flow_fundamentals.md`
- `04_lucas_kanade_horn_schunck.md`

#### **작은 과제**
1. **LK optical flow 구현**: numpy 로 small-window least squares 구현
2. **Pyramid 적용**: multi-scale 로 large motion 처리
3. **RAFT 논문 리딩**: deep learning based optical flow 이해

#### **관련 키워드**
- **기본**: optical flow, brightness constancy, flow constraint, aperture problem
- **후속**: Lucas-Kanade, Horn-Schunck, FlowNet, RAFT, PWC-Net

#### **최종 점검 질문**
1. Aperture problem 이 무엇이며, 왜 발생하는가?
2. Lukas-Kanade 에서 corner point가 중요한 이유는?
3. Horn-Schunck 의 smoothness constraint 는 어떤 역할을 하는가?
4. Pyramid approach 가 large motion에 필요한 이유는?
5. Optical flow와 motion field의 차이는?

---

### 1.5 Geometry Basics & Stereo/Epipolar

#### **왜 중요한가?**
- **3D reconstruction**, **SLAM**, **structure from motion**의 수학적 기초
- **multi-view geometry**, **calibration**의 핵심
- **depth estimation**의 기초 (supervised/unsupervised)

#### **핵심 개념**
- **Pinhole camera model**: P = K [R|t] · X
  - Intrinsics: K (focal length, principal point, skew)
  - Extrinsics: [R|t] (rotation, translation)
- **Epipolar geometry**: two views 사이의 geometric relationship
- **Epipolar constraint**: x'ᵀF x = 0 (F: fundamental matrix, 3×3, rank 2)
- **Essential matrix**: E = K'ᵀ F K, eᵀ E e = 0 (calibrated camera)
- **Triangulation**: 두 projection line intersection으로 3D point recovery

#### **자주 헷갈리는 포인트**
```
Fundamental Matrix F vs Essential Matrix E:
- F: uncalibrated camera (8 DOF), x'ᵀ F x = 0
- E: calibrated camera (5 DOF), e'ᵀ E e = 0
- E = K'ᵀ F K

5-point algorithm (Essential):
- 5 points minimum, RANSAC with multiple solutions
- 4 solutions 중 feasible 한 개만 선택 (positive depth)

Epipolar line:
- x'의 epipolar line: l' = F x (point-to-line mapping)
- Point-to-point constraint → Point-to-line constraint
```

#### **연구/실무 연결점**
- **stereo depth estimation**: traditional vs deep learning
- **unsupervised stereo learning**: photometric loss 기반
- **visual odometry**: epipolar geometry로 motion estimation

#### **GitHub 문서 제목 예시**
- `05_epipolar_geometry_basics.md`
- `05_camera_calibration_fundamental_matrix.md`

#### **작은 과제**
1. **OpenCV calibration**: `calibrateCamera` 로 intrinsics 추정
2. **Fundamental matrix estimation**: `findFundamentalMat` 로 2 이미지 간 F 계산
3. **Epipolar line visualization**: 한 이미지의 point 에 대한 epipolar line 그리기

#### **관련 키워드**
- **기본**: pinhole model, intrinsics, extrinsics, epipolar geometry, fundamental matrix, essential matrix
- **후속**: triangulation, bundle adjustment, multi-view stereo, visual odometry

#### **최종 점검 질문**
1. Fundamental matrix 와 Essential matrix 의 차이는?
2. Epipolar constraint x'ᵀF x = 0 의 의미는?
3. 5-point algorithm 에서 왜 4 개의 해가 나오는가?
4. RANSAC 이 왜 필요한가? (outlier 제거)
5. Pinhole camera model 의 projection equation은?

---

### 1.6 Morphology

#### **왜 중요한가?**
- **binary image processing**의 기본
- **noise 제거**, **shape analysis**
- **preprocessing for segmentation**

#### **핵심 개념**
- **Erosion**: object shrinking (small noise 제거)
- **Dilation**: object expansion (gap filling)
- **Opening**: erosion → dilation (noise 제거, shape 보존)
- **Closing**: dilation → erosion (gap filling, noise 보존)
- **Structuring element (SE)**: kernel shape (rectangle, ellipse, cross)

#### **자주 헷갈리는 포인트**
```python
# Morphology operations on binary images:
# Erosion: 1 인 pixel 가 모두 1 인 경우만 1 유지
# Dilation: 1 인 pixel 가 하나라도 있으면 1

# Opening = Erosion(Dilation()) → small noise 제거
# Closing = Dilation(Erosion()) → small gaps filling

# Structural element 영향:
# Square SE: isotropic, 모든 방향 균일
# Horizontal SE: horizontal 구조 강조
```

#### **연구/실무 연결점**
- **preprocessing for OCR**, **document analysis**
- **shape-based features**: area, perimeter, convexity
- **deep morphology**: learnable morphological operations (morphological layers)

#### **GitHub 문서 제목 예시**
- `06_morphological_operations.md`

#### **작은 과제**
1. **Morphology ops 구현**: numpy 로 erosion, dilation 구현
2. **Opening/Closing 비교**: noise 제거 vs gap filling 시각화
3. **Shape analysis**: contour area, perimeter, Hu moments 계산

#### **관련 키워드**
- **기본**: erosion, dilation, opening, closing, structuring element
- **후속**: morphological gradients, top-hat, black-hat, learnable morphology

#### **최종 점검 질문**
1. Opening operation 이 noise 제거에 효과적인 이유는?
2. Closing operation 이 gap filling 에 효과적인 이유는?
3. Structuring element 의 shape 이 결과에 미치는 영향은?
4. Morphological gradient 의 정의와 용도는?
5. Top-hat transformation 은 무엇을 하는가?

---

### 1.7 Classical Segmentation

#### **왜 중요한가?**
- **semantic segmentation**의 기초
- **thresholding**, **region-based** 방법 이해
- **딥러닝 segmentation** 결과 해석

#### **핵심 개념**
- **Thresholding**: global, adaptive, Otsu's method
- **Edge-based**: edge detection + boundary closure
- **Region-based**: region growing, splitting & merging
- **Watershed**: flooding simulation, marker-controlled
- **Graph cuts**: minimum cut, energy minimization
- **GrabCut**: interactive segmentation

#### **자주 헷갈리는 포인트**
```
Otsu's method:
- bimodal histogram assumption
- between-class variance 최대화
- 자동으로 threshold 값 결정

Watershed 문제:
- over-segmentation (noise 기반 small regions)
- 해결: marker-controlled watershed
- pre-detection of markers 필요

GrabCut:
- user-provided rectangle → GMM 모델링
- Graph cuts 로 optimal segmentation
```

#### **연구/실무 연결점**
- **preprocessing for deep segmentation**: mask quality improvement
- **interactive segmentation**: GrabCut, user-in-the-loop
- **weakly supervised**: scribble-based segmentation

#### **GitHub 문서 제목 예시**
- `07_classical_segmentation_methods.md`
- `07_thresholding_watershed_grabcut.md`

#### **작은 과제**
1. **Otsu thresholding 구현**: numpy 로 automatic threshold 계산
2. **Watershed 오버세그멘테이션**: marker-controlled로 개선
3. **GrabCut interactive**: OpenCV 로 인터랙티브 segmentation

#### **관련 키워드**
- **기본**: thresholding, Otsu, edge-based, region growing, watershed, graph cuts, GrabCut
- **후속**: deep segmentation, weakly supervised, interactive segmentation

#### **최종 점검 질문**
1. Otsu's method 가 bimodal histogram 에만 효과적인 이유는?
2. Watershed 의 over-segmentation 문제와 해결법은?
3. Graph cuts 가 segmentation 에 어떻게 적용되는가?
4. GrabCut 의 GMM 모델링 과정은?
5. Region growing 의 seed point 선택 중요성은?

---

## 2. 현대 비전 (Modern Vision)

딥러닝 기반 CV 의 핵심. **연구자**라면 아키텍처 설계의 **"이유"를**, **엔지니어**라면 **배포 최적화**를 이해해야 합니다.

---

### 2.1 CNN Fundamentals

#### **왜 중요한가?**
- **모든 현대 CV 모델의 기초**
- **feature hierarchy** 이해
- **아키텍처 설계**의 기본 원리

#### **핵심 개념**
- **Convolutional layer**: local connectivity, weight sharing, translation equivariance
- **Pooling**: max pooling, average pooling, spatial pyramid
- **Activation functions**:
  - ReLU (max(0, x)): sparse activation, vanishing gradient 해결
  - Leaky ReLU, PReLU (negative slope)
  - Swish, GELU (transformer 에서 더 좋음)
- **Batch Normalization**: internal covariate shift 감소, regularization 효과
- **Dropout**: overfitting 방지 (CNN 에서 pooling 대체 경향)

#### **자주 헷갈리는 포인트**
```python
# Convolution stride/padding effects:
# Output size = (Input - Kernel + 2*Padding) / Stride + 1
# Same padding: stride=1, padding=(kernel-1)/2 → output = input
# Valid padding: padding=0

# ReLU vs Leaky ReLU:
# ReLU: gradient dead zone (x<0) → "dying ReLU"
# Leaky ReLU: small slope (0.01) for x<0

# Batch Norm training vs inference:
# Training: per-batch mean/var + momentum-based running stats
# Inference: fixed running mean/var (no batch norm)

# Translation equivariance vs invariance:
# Equivariance: shift(input) → shift(output) (CNN)
# Invariance: shift(input) → same output (CNN+Pooling)
```

#### **연구/실무 연결점**
- **architectural choice**: convolution vs pooling vs stride
- **efficient design**: depthwise separable convolution, mobileNet
- **domain adaptation**: BN 통계량 domain shift 영향

#### **GitHub 문서 제목 예시**
- `08_cnn_fundamentals_architectural_choices.md`
- `08_convolution_pooling_normalization.md`

#### **작은 과제**
1. **Custom CNN 구현**: PyTorch 로 simple CNN (MNIST classifier)
2. **ReLU vs Leaky ReLU 실험**: dying ReLU 현상 관찰
3. **Batch Norm ablation**: BN 있는 경우 vs 없는 경우 비교
4. **Stride vs Pooling**: pooling 대신 stride convolution 실험

#### **관련 키워드**
- **기본**: convolution, pooling, ReLU, Batch Norm, dropout, equivariance
- **후속**: residual connections, normalization variants, efficient convolutions

#### **최종 점검 질문**
1. CNN 의 translation equivariance 와 invariance 는 어떻게 다른가?
2. Batch Norm 의 training 과 inference 모드는 어떻게 다른가?
3. ReLU 의 "dying ReLU" 현상과 해결법은?
4. Depthwise separable convolution 이 효율적인 이유는?
5. Spatial pyramid pooling 의 용도는?

---

### 2.2 Residual/Dense/Inception

#### **왜 중요한가?**
- **심층 네트워크** 훈련 가능성 확보
- **gradient flow** 문제 해결
- **현대 아키텍처**의 기본 빌딩 블록

#### **핵심 개념**
- **ResNet (Residual Networks)**: skip connections, identity mapping
  - Residual block: y = F(x) + x
  - **문제**: vanishing gradient, deep network training
  - **해결**: shortcut connection으로 gradient flow 개선
  - **depth**: 18, 34, 50, 101, 152 layers

- **DenseNet (Densely Connected)**: every layer to every layer
  - Dense block: yₗ = Hₗ([y₀, y₁, ..., yₗ₋₁])
  - **feature reuse**, **parameter efficiency**
  - **shortcuts**: 모든 층이 직접 연결

- **Inception (GoogleNet)**: multi-scale convolutions
  - Inception module: parallel 1×1, 3×3, 5×5 + pooling
  - **1×1 conv**: dimensionality reduction (compute savings)
  - **ensemble effect**: different receptive sizes

#### **자주 헷갈리는 포인트**
```
ResNet skip connection types:
- Identity mapping: y = F(x) + x (baseline)
- Projection shortcut: y = F(x) + Wx (stride=2, dimension change)
- Pre-activation: BN → ReLU → conv (residual block before activation)

DenseNet vs ResNet:
- ResNet: layers add (residual learning)
- DenseNet: layers concatenate (feature reuse)
- DenseNet: more connections → more memory usage

Inception 1×1 convolution:
- Compute reduction: C×H×W → (C/r)×H×W → C×H×W
- Parameter reduction: 5×5 conv → 1×1 conv + 5×5 conv
- Non-linearity 추가 가능
```

#### **연구/실무 연결점**
- **architecture search**: skip connection design (add vs concat)
- **efficient models**: ResNet variants (ResNeXt, SE-Net)
- **transfer learning**: pretrained backbone 선택 기준

#### **GitHub 문서 제목 예시**
- `09_residual_dense_inception_architectures.md`
- `09_skip_connections_gradient_flow.md`

#### **작은 과제**
1. **ResNet 구현**: 18 layers로 CIFAR-10 classifier
2. **DenseNet vs ResNet**: 연결 패턴 시각화
3. **Inception module 구현**: multi-scale convolution 병렬 구현
4. **Pre-activation ResNet**: BN-ReLU-Conv 순서 구현

#### **관련 키워드**
- **기본**: ResNet, DenseNet, Inception, skip connection, residual learning, feature reuse
- **후속**: ResNeXt, SE-Net, CBAM, efficient transformers

#### **최종 점검 질문**
1. ResNet 의 skip connection 이 vanishing gradient 를 어떻게 해결하는가?
2. DenseNet 의 feature concatenation 이 parameter efficiency 에 어떻게 기여하는가?
3. Inception module 에서 1×1 convolution 의 역할은?
4. ResNet 의 projection shortcut 이 필요한 상황은?
5. Pre-activation ResNet 의 장점은?

---

### 2.3 Detection

#### **왜 중요한가?**
- **object localization + classification**의 real-world application
- **autonomous driving**, **robotics**, **security**의 핵심
- **multi-scale**, **multi-object** 처리

#### **핵심 개념**
- **Two-stage detectors**: R-CNN series (proposal + classification)
  - R-CNN → Fast R-CNN → Faster R-CNN (RPN)
  - **정밀도** 높음, **속도** 느림
  - ROI pooling, ROI align

- **One-stage detectors**: YOLO, SSD, RetinaNet
  - **Single pass**, **real-time**
  - **class imbalance**: Focal loss
  - **anchor-free**: CenterNet, FCOS

- **Modern architectures**:
  - YOLO v5/v8: anchor-free, CSPDarknet backbone
  - DETR (DEtection TRansformer): set prediction, attention-based
  - Cascade R-CNN: multi-stage refinement

#### **자주 헷갈리는 포인트**
```
Two-stage vs One-stage:
- Two-stage: proposal (RPN) → classification →精度高，速度慢
- One-stage: direct regression → 速度快，精度稍低

Anchor design:
- K = 9 anchors per location (3 scales × 3 aspect ratios)
- Anchor-free: predict center point + size directly
- Anchor benefits: initialization, convergence speed

IOU loss vs L1 loss:
- IoU loss: scale-invariant, bounding box quality
- L1 loss: fast convergence, precise localization
- GIoU, DIoU, CIoU: improved IoU variants

Focal loss:
- Focus on hard examples: (1-p)ᵋ log(p)
- easy negatives downweighting
```

#### **연구/실무 연결점**
- **real-time detection**: YOLO series
- **precision-critical**: Faster R-CNN, Cascade R-CNN
- **annotation efficiency**: anchor-free, weakly-supervised

#### **GitHub 문서 제목 예시**
- `10_object_detection_fundamentals.md`
- `10_two_stage_one_stage_detectors.md`
- `10_yolo_detr_architectures.md`

#### **작은 과제**
1. **YOLOv8 inference**: pretrained model 으로 custom images
2. **Detection metric 실험**: mAP@0.5 vs mAP@0.5:0.95
3. **Focal loss vs CE loss**: class imbalance 실험
4. **Anchor vs Anchor-free**: YOLOv5 vs YOLOv8 비교

#### **관련 키워드**
- **기본**: R-CNN, Faster R-CNN, YOLO, SSD, Detr, anchor, ROI Align
- **후속**: real-time detection, anchor-free, few-shot detection, open-vocabulary detection

#### **최종 점검 질문**
1. Two-stage detector 의 proposal generation 은 왜 필요한가?
2. Anchor-based 와 anchor-free 의 차이는?
3. Focal loss 가 class imbalance 에 어떻게 대응하는가?
4. ROI Align 이 ROI Pooling 와 다른 점은?
5. DETR 의 set prediction 의 원리는?

---

### 2.4 Segmentation

#### **왜 중요한가?**
- **pixel-level understanding**: semantic, instance, panoptic
- **medical imaging**, **autonomous driving**의 핵심
- **boundary sensitivity**, **fine-grained tasks**

#### **핵심 개념**
- **Semantic segmentation**: pixel-wise classification
  - **Encoder-Decoder**: FCN, U-Net, DeepLab
  - **Atrous convolution**: dilated convolution, larger receptive field
  - **ASPP**: Atrous Spatial Pyramid Pooling (DeepLab)
  - **Loss**: cross-entropy, Dice loss, IoU loss

- **Instance segmentation**: object-level segmentation
  - **Mask R-CNN**: detection + mask head
  - **Panoptic segmentation**: semantic + instance unified

- **Boundary-sensitive tasks**:
  - Boundary loss, contour detection
  - **edge-aware** segmentation

#### **자주헷갈리는 포인트**
```
Atrous/Dilated convolution:
- 기존 convolution → dilation rate d: gaps between weights
- Effective receptive field ↑, resolution 유지
- ASPP: multi-scale d (1,6,12,18) 병렬

U-Net vs DeepLab:
- U-Net: skip connections (feature fusion), encoder-decoder
- DeepLab: ASPP (multi-scale context), crf post-processing

Loss functions:
- CE loss: per-pixel classification
- Dice loss: region overlap, class imbalance robust
- Boundary loss: edge-aware refinement

Encoder-decoder design:
- Encoder: feature extraction (downsampling)
- Decoder: spatial recovery (upsampling)
- Skip: low-level detail preservation
```

#### **연구/실무 연결점**
- **medical imaging**: U-Net variant (3D U-Net, Attention U-Net)
- **boundary-sensitive**: segmentation + edge detection joint
- **real-time segmentation**: Fast FCN, MobileNet backbone

#### **GitHub 문서 제목 예시**
- `11_semantic_instance_segmentation.md`
- `11_unet_deeplab_architectures.md`
- `11_boundary_sensitive_segmentation.md`

#### **작은 과제**
1. **U-Net 구현**: PyTorch 로 encoder-decoder with skip connections
2. **Dice loss vs CE loss**: class imbalance 실험
3. **Atrous convolution 실험**: dilation rate 변화 영향 관찰
4. **Mask R-CNN inference**: pretrained model 으로 instance segmentation

#### **관련 키워드**
- **기본**: semantic segmentation, instance segmentation, FCN, U-Net, DeepLab, Atrous convolution, ASPP
- **후속**: boundary-aware, panoptic segmentation, weakly supervised segmentation

#### **최종 점검 질문**
1. Atrous convolution 이 receptive field 를 늘리는 원리는?
2. U-Net 의 skip connection 이 왜 중요한가?
3. Dice loss 가 class imbalance 에 강한 이유는?
4. ASPP 의 multi-scale convolution 이 하는 일은?
5. Panoptic segmentation 과 instance segmentation 의 차이는?

---

### 2.5 Change Detection

#### **왜 중요한가?**
- **시간에 따른 변화 감지**: 원격 탐사, 도시 발전, 재해 모니터링
- **dual-image comparison**의 special case
- **supervised vs unsupervised** 방법론

#### **핵심 개념**
- **Supervised change detection**: paired images → change mask
  - **Siamese networks**: dual encoders, weight sharing
  - **Difference-based**: feature difference, concat + segmentation
  - **U-Net based**: time-aware input (stacked channels)

- **Unsupervised/Weakly-supervised**:
  - **Autoencoder**: reconstruction difference
  - **Contrastive learning**: same scene different time → contrast

- **Applications**:
  - **Remote sensing**: land use change, deforestation
  - **Disaster**: flood, fire, earthquake damage
  - **Urban**: construction monitoring

#### **자주 헷갈리는 포인트**
```
Siamese network for change detection:
- Dual encoders with shared weights
- Inputs: (t1, t2) → embeddings → difference → change map
- Fusion strategies: concat, subtract, multiply

Temporal alignment:
- Image registration prerequisite
- Geometric alignment 필요
- Radiometric normalization (illumination change)

Challenge:
- Seasonal change (not true change)
- Illumination variation
- Cloud cover occlusion
- Scale/rotation differences
```

#### **연구/실무 연결점**
- **remote sensing**: satellite imagery, temporal analysis
- **landslide/flood monitoring**: real-time change detection
- **weak supervision**: sparse labels로 training

#### **GitHub 문서 제목 예시**
- `12_change_detection_methods.md`
- `12_remote_sensing_change_detection.md`

#### **작은 과제**
1. **Siamese U-Net 구현**: paired images 로 change detection
2. **Difference fusion 비교**: concat vs subtract vs multiply
3. **Temporal alignment**: image registration preprocessing

#### **관련 키워드**
- **기본**: change detection, siamese networks, temporal difference, paired images
- **후속**: unsupervised change detection, weakly-supervised, remote sensing

#### **최종 점검 질문**
1. Siamese network 에서 weight sharing 이 중요한 이유는?
2. Change detection 에서 temporal alignment 이 왜 필요한가?
3. Seasonal change 와 true change 를 구분하는 방법은?
4. Supervised vs unsupervised change detection 의 차이는?
5. Cloud cover 가 change detection 에 미치는 영향은?

---

### 2.6 Metric Learning & Representation Learning

#### **왜 중요한가?**
- **similarity-based tasks**: retrieval, verification, clustering
- **embedding space** 설계
- **re-id, face recognition, matching**

#### **핵심 개념**
- **Metric learning**: learn distance function
  - **Triplet loss**: anchor, positive, negative
  - **Contrastive loss**: pairwise similarity
  - **Circle loss**: margin-based optimization
  - **ArcFace, CosFace**: additive/multiplicative margin

- **Hard negative mining**:
  - **online hard triplet mining**
  - **softmax-based mining**

- **Applications**:
  - **face recognition**: verification, identification
  - **re-identification**: person, vehicle
  - **image retrieval**: similarity search

#### **자주 헷갈리는 포인트**
```
Triplet loss vs Contrastive loss:
- Triplet: L = max(0, d(a,p) - d(a,n) + margin)
- Contrastive: L = d² if same, max(0, margin - d)² if different

ArcFace vs CosFace:
- ArcFace: additive angular margin (θ + m)
- CosFace: multiplicative margin m
- Better angular discrimination

Hard negative mining:
- Easy negatives: already satisfied, low gradient
- Hard negatives: near decision boundary, high learning
- Strategy: mine top-K hardest per batch

Embedding space:
- Cosine similarity = dot product after L2 normalization
- Euclidean distance for non-normalized embeddings
```

#### **연구/실무 연결점**
- **face recognition**: ArcFace, SphereFace
- **re-id**: person re-identification
- **image retrieval**: similarity-based search
- **few-shot learning**: similarity-based classification

#### **GitHub 문서 제목 예시**
- `13_metric_learning_fundamentals.md`
- `13_triplet_arcface_contrastive_loss.md`
- `13_representation_learning_embedding.md`

#### **작은 과제**
1. **Triplet loss 구현**: PyTorch 로 triplet mining + loss
2. **ArcFace vs CosFace**: face recognition benchmark
3. **Re-ID experiment**: market1501 dataset으로 personal re-id
4. **Hard negative mining**: mining 전략 비교

#### **관련 키워드**
- **기본**: metric learning, triplet loss, contrastive loss, ArcFace, hard negative mining, embedding
- **후속**: contrastive learning, self-supervised learning, retrieval systems

#### **최종 점검 질문**
1. Triplet loss 의 triplet 구성 (anchor, positive, negative) 은?
2. ArcFace 의 additive margin 의 장점은?
3. Hard negative mining 이 왜 필요한가?
4. Cosine similarity 와 Euclidean distance 의 차이는?
5. Contrastive loss 와 Triplet loss 의 차이는?

---

### 2.7 Transformer in Vision

#### **왜 중요한가?**
- **CNN 의 한계 극복**: global attention, long-range dependency
- **ViT, Swin Transformer**: state-of-the-art performance
- **multimodal foundation models**의 기초 (CLIP, DALL-E)

#### **핵심 개념**
- **Vision Transformer (ViT)**:
  - **Patch embedding**: image → sequence of patches
  - **Self-attention**: global context modeling
  - **Positional encoding**: spatial information 추가
  - **Classification token**: [CLS] → final representation

- **Swin Transformer**:
  - **Hierarchical architecture**: pyramid structure
  - **Shifted windows**: local attention + cross-window
  - **Efficient**: linear complexity with window size

- **Vision transformers vs CNN**:
  - **Attention**: O(n²) complexity (full attention)
  - **Inductive bias**: CNN (locality, equivariance) vs Transformer (none)
  - **Data efficiency**: Transformer needs more data

- **Multi-scale attention**:
  - **Multi-scale ViT**: multiple resolution inputs
  - **Sparse attention**: linear complexity approximation

#### **자주 헷갈리는 포인트**
```
ViT patch embedding:
- Image: H×W×C → Patches: (H/P)×(W/P)×(P²C)
- P: patch size (e.g., 16×16)
- Linear projection + positional encoding

Self-attention formula:
Attention(Q,K,V) = softmax(QKᵀ/√d) V
- Q,K,V: query, key, value projections
- √d: scaling factor

Swin transformer window attention:
- Local windows: M×M patches
- Shifted windows: cross-window connections
- Complexity: O(N) instead of O(N²)

ViT vs CNN:
- ViT: global attention, no inductive bias
- CNN: local conv, equivariance, data-efficient
- ViT needs ImageNet-21k for good performance
```

#### **연구/실무 연결점**
- **foundation models**: CLIP, DINO, MAE
- **hybrid architectures**: CNN + Transformer (ConvNeXt)
- **efficient transformers**: linear attention, sparse attention

#### **GitHub 문서 제목 예시**
- `14_vision_transformer_fundamentals.md`
- `14_vit_swint_architectures.md`
- `14_transformer_vs_cnn.md`

#### **작은 과제**
1. **ViT implementation**: 간단한 transformer encoder 구현
2. **ViT vs ResNet**: ImageNet finetuning 비교
3. **Swin Transformer**: hierarchical architecture 구현
4. **Self-attention visualization**: attention map 시각화

#### **관련 키워드**
- **기본**: ViT, self-attention, patch embedding, Swin Transformer, hierarchical attention
- **후속**: CLIP, DINO, MAE, hybrid models, efficient transformers

#### **최종 점검 질문**
1. ViT 에서 patch embedding 의 역할은?
2. Self-attention 의 계산 복잡도는 왜 O(n²) 인가?
3. Swin Transformer 가 window-based 인 이유는?
4. ViT 에 positional encoding 이 필요한 이유는?
5. Transformer 와 CNN 의 inductive bias 차이는?

---

### 2.8 Diffusion & Multimodal Overview

#### **왜 중요한가?**
- **generative models**: image synthesis, restoration, enhancement
- **multimodal learning**: text-image alignment
- **foundation models**: large-scale pretraining

#### **핵심 개념**
- **Diffusion models**:
  - **Forward process**: noise addition ( gradual )
  - **Reverse process**: denoising (learned)
  - **DDPM, DDIM**: sampling efficiency
  - **Stable Diffusion**: latent diffusion (faster)

- **Multimodal models**:
  - **CLIP**: contrastive text-image learning
  - **BLIP**: image-captioning, visual question answering
  - **Flamingo**: multimodal language models
  - **DALL-E, Stable Diffusion**: text-to-image generation

- **Vision-language pretraining**:
  - **Contrastive learning**: matching pairs
  - **Masked modeling**: BERT-style pretraining
  - **Cross-modal attention**: fusing modalities

#### **자주 헷갈리는 포인트**
```
Diffusion process:
Forward: q(x₁:T|x₀) = ∏ N(xₜ|√(1-βₜ)xₜ₋₁, βₜI)
Reverse: p(x₀:T₋₁|x₀) = ∏ N(xₜ₋₁; μθ(xₜ,t), σₜI)
- t=0~T: time steps
- βₜ: noise schedule

Latent diffusion:
- VAE encoder → latent space
- Diffusion in latent space
- Faster: 256×256 latent vs 512×512 pixel

CLIP training:
- Contrastive loss: N×N matching matrix
- Image-text pairs
- Zero-shot transfer 가능

Transformer in diffusion:
- U-Net backbone (ResNet blocks)
- Cross-attention for conditioning (text)
```

#### **연구/실무 연결점**
- **image restoration**: super-resolution, inpainting, deblurring
- **conditional generation**: text-to-image, sketch-to-image
- **multimodal retrieval**: text-image search
- **domain adaptation**: generative data augmentation

#### **GitHub 문서 제목 예시**
- `15_diffusion_models_overview.md`
- `15_multimodal_vision_language_models.md`
- `15_clip_stable_diffusion_overview.md`

#### **작은 과제**
1. **CLIP inference**: zero-shot classification
2. **Diffusion basics**: DDPM 샘플링 구현
3. **Text-to-image**: Stable Diffusion 로 prompt 기반 생성
4. **Multimodal embedding**: image-text similarity 계산

#### **관련 키워드**
- **기본**: diffusion models, DDPM, latent diffusion, CLIP, multimodal, contrastive learning
- **후속**: generative models, text-to-image, foundation models

#### **최종 점검 질문**
1. Diffusion 모델의 forward 과정은?
2. Latent diffusion 가 빠른 이유는?
3. CLIP 의 contrastive learning 원리는?
4. Cross-attention 이 multimodal 에서 하는 일은?
5. Zero-shot transfer 가 CLIP 에서 가능한 이유는?

---

### 2.9 3D Vision & Point Cloud Basics

#### **왜 중요한가?**
- **3D understanding**: depth, reconstruction, pose estimation
- **autonomous driving**: LiDAR, 3D detection
- **robotics**: manipulation, navigation
- **AR/VR**: spatial understanding

#### **핵심 개념**
- **Depth estimation**:
  - **monocular depth**: single image → depth map (supervised/unsupervised)
  - **stereo depth**: dual camera → disparity → depth
  - **structure from motion**: multi-view 3D reconstruction

- **Point cloud processing**:
  - **Raw point cloud**: unordered, sparse, variable size
  - **PointNet**: set invariance, max pooling
  - **PointNet++**: hierarchical features
  - **Point Cloud CNN**: voxelization, sparse convolution

- **3D object detection**:
  - **LiDAR-based**: PointPillars, PV-RCNN
  - **Image-based**: monocular 3D detection
  - **Multi-modal**: camera + LiDAR fusion

- **3D reconstruction**:
  - **NeRF (Neural Radiance Fields)**: continuous 3D representation
  - **3D Gaussian Splatting**: fast rendering
  - **Multi-view stereo**: SfM → dense reconstruction

#### **자주 헷갈리는 포인트**
```python
# PointNet architecture:
# Input: N points × 3 (or 6 with normals)
# MLP per point → shared weights
# Max pooling → global feature → classification/regression
# Invariance: permutation (unordered point cloud)

# Point Cloud representations:
# 1. Raw points: N×D, unordered
# 2. Voxels: 3D grid, sparse (efficient for large scenes)
# 3. Point clouds: local patches, KPConv

# Sparse convolution:
# Only compute for non-empty voxels
# Efficient for sparse 3D data (LiDAR)
```

#### **연구/실무 연결점**
- **autonomous driving**: LiDAR point cloud, 3D detection
- **robotics**: 3D object manipulation
- **AR/VR**: spatial mapping, object placement
- **3D generative models**: shape completion, synthesis

#### **GitHub 문서 제목 예시**
- `16_3d_vision_depth_estimation.md`
- `16_point_cloud_processing_pointnet.md`
- `16_3d_object_detection_neRF.md`

#### **작은 과제**
1. **PointNet 구현**: PyTorch 로 point cloud classification
2. **Monocular depth estimation**: pretrained model inference
3. **Sparse convolution**: voxels 기반 sparse conv 구현
4. **NeRF basics**: simple NeRF rendering 구현

#### **관련 키워드**
- **기본**: depth estimation, monocular depth, stereo, point cloud, PointNet, NeRF, sparse convolution
- **후속**: 3D detection, LiDAR processing, 3D reconstruction, Gaussian splatting

#### **최종 점검 질문**
1. PointNet 의 permutation invariance 는 어떻게 구현되는가?
2. Sparse convolution 이 point cloud 에 유용한 이유는?
3. NeRF 가 continuous 3D representation 이며, 어떻게 작동하는가?
4. Monocular depth estimation 과 stereo depth 의 차이는?
5. PointPillars 가 point cloud 를 처리하는 방식은?

---

## 3. 핵심 응용/연구축 (Core Applications)

이제 **실제 연구/응용**으로 연결. 연구자는 **problem formulation**, 엔지니어는 **deployment constraints**를 이해해야 합니다.

---

### 3.1 Adverse Weather & Robust Perception

#### **왜 중요한가?**
- **real-world robustness**: weather condition 변화
- **safety-critical**: autonomous driving, surveillance
- **domain adaptation**, **generalization** 연구

#### **핵심 개념**
- **Adverse weather types**:
  - **Rain**: rain streaks, lens water droplets, reduced contrast
  - **Fog**: haze, low contrast, color shift
  - **Snow**: snowflakes, whiteout
  - **Low light**: night, tunnels, underexposure
  - **Motion blur**:高速 motion

- **Approaches**:
  - **Image enhancement**: dehazing, deraining, denoising
    - **Traditional**: guided filter, dark channel prior
    - **Deep**: DehazeNet, RainDrop, CDFNet
  - **Robust training**:
    - **Weather augmentation**: synthetic weather simulation
    - **Domain adaptation**: feature alignment
    - **Self-supervised**: weather-agnostic features
  - **Weather-aware models**:
    - **Weather classification + adaptation**
    - **Attention mechanisms**: weather-affected regions ignore

#### **자주 헷갈리는 포인트**
```
Image enhancement vs Robust learning:
- Enhancement: preprocess → clean image → downstream task
- Robust learning: weather-agnostic features, end-to-end
- Enhancement adds blur/noise, not always helpful

Synthetic weather:
- Rain streaks: directional blur + specular highlights
- Fog: haze simulation: I = J·t + A·(1-t)
- Real vs synthetic gap: sim-to-real transfer 필요

Domain adaptation:
- Feature alignment: MMD, CORAL, adversarial
- Test-time adaptation: online batch norm update
- Source-free DA: labeled source + unlabeled target

Weather-aware attention:
- Learn to ignore weather-affected regions
- Spatial attention + conditional modulation
- Example: attention maps highlight rain streaks
```

#### **연구/실무 연결점**
- **autonomous driving**: rain/fog에서 perception robustness
- **surveillance**: low-light, adverse condition
- **data augmentation**: weather simulation for training
- **evaluation**: weather-specific benchmarks

#### **GitHub 문서 제목 예시**
- `17_adverse_weather_robust_perception.md`
- `17_image_enhancement_deraining_dehazing.md`
- `17_domain_adaptation_weather_robustness.md`

#### **작은 과제**
1. **Deraining model inference**: RainFlowNet 또는 pretrained
2. **Dehazing 실험**: dark channel prior vs deep dehazing
3. **Synthetic weather augmentation**: fog/rain simulation 적용
4. **Domain adaptation**: source-target feature alignment

#### **관련 키워드**
- **기본**: adverse weather, deraining, dehazing, robust perception, domain adaptation
- **후속**: weather-agnostic features, test-time adaptation, real-world robustness

#### **최종 점검 질문**
1. Deraining 과 dehazing 의 차이와 접근법은?
2. Synthetic weather augmentation 의 real-world gap 는?
3. Domain adaptation 에서 feature alignment 는?
4. Weather-aware attention 이 어떻게 동작하는가?
5. Test-time adaptation 은 언제 유용한가?

---

### 3.2 Remote Sensing / Aerial / Maritime Vision

#### **왜 중요한가?**
- **aerial imagery**: satellite, drone, aircraft
- **maritime**: ship detection, sea surveillance
- **large-scale**, **multi-scale**, **rare objects**

#### **핵심 개념**
- **Aerial/Remote sensing characteristics**:
  - **Top-down view**: bird's eye perspective
  - **Scale variation**: km² to m²
  - **Multi-spectral**: RGB, NIR, SAR (Synthetic Aperture Radar)
  - **Anisotropic scaling**: objects orientation arbitrary
  - **Small objects**: vehicles, ships, buildings
  - **Background complexity**: natural scenes

- **Ship detection**:
  - **Ship characteristics**: elongated, arbitrary orientation
  - **Rotation-invariant detection**: rotated bounding boxes
  - **Sea-land separation**: maritime-specific background
  - **Small ship detection**: low resolution, occlusion

- **Applications**:
  - **Ship detection & tracking**: maritime surveillance
  - **Vehicle detection**: parking, traffic monitoring
  - **Land use classification**: satellite imagery
  - **Disaster monitoring**: flood, fire detection

#### **자주 헷갈리는 포인트**
```
Aerial image specifics:
- Anisotropic scaling: arbitrary rotation (0-360°)
- Small objects: ships, vehicles occupy few pixels
- High resolution: large images (2048×2048+)
- Background diversity: sea, land, urban, rural

Rotated object detection:
- Standard bbox: (x,y,w,h) vs Rotated bbox: (x,y,w,h,θ)
- IoU calculation for rotated boxes: O(N) vs O(1)
- Dataset: DOTAv1, HRSC2016

SAR imagery:
- Synthetic Aperture Radar: all-weather imaging
- Speckle noise: multiplicative noise
- Interpretation: different from optical imagery
```

#### **연구/실무 연결점**
- **maritime surveillance**: ship detection, AIS integration
- **disaster response**: flood, fire, damage assessment
- **agricultural monitoring**: crop health, yield estimation
- **urban planning**: land use, infrastructure

#### **GitHub 문서 제목 예시**
- `18_remote_sensing_aerial_vision.md`
- `18_maritime_ship_detection_rotated_boxes.md`
- `18_satellite_imagery_analysis.md`

#### **작은 과제**
1. **Remote sensing dataset**: DOTA, HRSC2016 dataset 탐색
2. **Rotated bbox**: oriented detection 구현 (SHP, Pseudo-rotated)
3. **Ship detection**: maritime-specific preprocessing
4. **Multi-scale analysis**: pyramid-based detection

#### **관련 키워드**
- **기본**: remote sensing, aerial vision, ship detection, small object, rotated boxes, multi-spectral
- **후속**: SAR imagery, maritime surveillance, land use classification

#### **최종 점검 질문**
1. Aerial imagery 의 특성 (scale variation, small objects) 은?
2. Rotated bounding box 의 필요성과 IoU 계산법은?
3. SAR imagery 의 speckle noise 는?
4. Maritime surveillance 에서 ship detection 의 어려움은?
5. Multi-spectral imaging 의 장점은?

---

### 3.3 Boundary-Sensitive Tasks

#### **왜 중요한가?**
- **fine-grained segmentation**: medical, inspection, precise localization
- **boundary accuracy**: IoU, contour F1
- **edge-aware** models

#### **핵심 개념**
- **Boundary detection**:
  - **Edge-based**: traditional Canny + refinement
  - **Deep boundary**: Baidu, HED (Holistically-Nested Edge Detection)
  - **Learning**: supervised, edge maps

- **Boundary-enhanced segmentation**:
  - **Boundary loss**: boundary-aware training
  - **Contour prediction**: auxiliary task
  - **Attention**: edge-focused attention

- **Evaluation metrics**:
  - **IoU (Dice coefficient)**: region overlap
  - **Boundary F1**: edge accuracy
  - **Hausdorff distance**: contour similarity

#### **자주헷갈리는 포인트**
```
Boundary-sensitive segmentation:
- Regular segmentation: region accuracy (IoU)
- Boundary-aware: edge accuracy (F1, HD)
- Joint learning: segmentation + boundary detection

Boundary loss types:
- Binary cross-entropy: edge map prediction
- Chamfer loss: point-to-point distance
- Hausdorff loss: max distance between contours

Applications:
- Medical: organ boundaries, tumor segmentation
- Inspection: crack detection, defect localization
- Precision tasks: map boundaries, building contours
```

#### **연구/실무 연결점**
- **medical imaging**: precise organ boundaries
- **defect inspection**: crack detection, boundary precision
- **map extraction**: road boundaries, building contours
- **quality evaluation**: boundary accuracy metrics

#### **GitHub 문서 제목 예시**
- `19_boundary_sensitive_segmentation.md`
- `19_edge_detection_boundary_aware_learning.md`

#### **작은 과제**
1. **HED (Holistically-Nested Edge Detection)**: edge detection 구현
2. **Boundary loss**: segmentation + boundary joint training
3. **Evaluation metrics**: IoU vs Boundary F1 계산
4. **Medical segmentation**: boundary-sensitive organ segmentation

#### **관련 키워드**
- **기본**: boundary detection, edge detection, HED, boundary loss, contour F1, Hausdorff distance
- **후속**: boundary-aware segmentation, edge enhancement, precise localization

#### **최종 점검 질문**
1. Boundary detection 과 segmentation 의 차이는?
2. Boundary loss 의 종류와 용도는?
3. Hausdorff distance 가 boundary similarity 에 유용한 이유는?
4. HED (Holistically-Nested Edge Detection) 의 원리는?
5. Boundary-aware segmentation 이 필요한 응용은?

---

### 3.4 Small Object Detection

#### **왜 중요한가?**
- **many real-world cases**: small vehicles, satellites, drones
- **detection limits**: very small objects (10×10 pixels)
- **feature pyramid**, **super-resolution** techniques

#### **핵심 개념**
- **Small object characteristics**:
  - **Few pixels**: 32×32 또는 16×16 이하
  - **Feature loss**: downsampling 에 feature 소실
  - **IoU sensitivity**: annotation uncertainty
  - **Background clutter**: small objects很容易被忽略

- **Detection strategies**:
  - **Feature Pyramid Networks (FPN)**: multi-scale features
  - **Crop-based detection**: region cropping + detection
  - **Super-resolution**: upsample small objects
  - **Anchor design**: small anchor ratios
  - **Loss weighting**: emphasize small objects

- **Datasets**:
  - **COCO**: small objects definition (< 32×32)
  - **VisDrone**: aerial, small vehicles, drones
  - **DOTA**: remote sensing, small rotated objects

#### **자주 헷갈리는 포인트**
```
FPN (Feature Pyramid Networks):
- Bottom-up pathway: feature extraction (backbone)
- Top-down pathway: high-level semantics + low-level details
- Lateral connections: feature fusion
- Result: multi-scale feature maps

Small object strategies:
1. High-resolution input: 1024×1024 → 512×512
2. FPN: multi-scale feature fusion
3. Crop-based: detect small ROIs separately
4. Anchor optimization: smaller anchors, more scales
5. Loss weighting: weight small objects higher

Challenges:
- Resolution vs computation trade-off
- False positives increase with higher res
- Annotation precision matters (small bbox error large %)
```

#### **연구/실무 연결점**
- **aerial/drone vision**: small vehicles, drones
- **remote sensing**: ships, planes, buildings
- **surveillance**: small faces, distant people
- **inspection**: small defects, cracks

#### **GitHub 문서 제목 예시**
- `20_small_object_detection_techniques.md`
- `20_fpn_crop_based_super_resolution.md`

#### **작은 과제**
1. **FPN 구현**: multi-scale feature fusion 구현
2. **Crop-based detection**: small object crop + detect
3. **Anchor design**: small object anchor tuning
4. **VisDrone dataset**: aerial small object detection

#### **관련 키워드**
- **기본**: small object detection, FPN, crop-based detection, super-resolution, anchor design
- **후속**: tiny object detection, feature enhancement, multi-scale detection

#### **최종 점검 질문**
1. Small object detection 의 주요 어려움은?
2. FPN 이 multi-scale detection 에 어떻게 기여하는가?
3. Crop-based detection 의 장단점은?
4. Small object 에 anchor design 이 중요한 이유는?
5. VisDrone dataset 의 small object 정의는?

---

### 3.5 Real-World Deployment Constraints

#### **왜 중요한가?**
- **model compression**, **efficiency**, **latency**
- **edge deployment**: mobile, embedded, IoT
- **resource constraints**: memory, compute, power

#### **핵심 개념**
- **Model compression techniques**:
  - **Quantization**: FP32 → INT8, mixed precision
  - **Pruning**: weight pruning, structured pruning
  - **Knowledge distillation**: teacher-student learning
  - **Low-rank decomposition**: SVD, tensor decomposition

- **Efficient architectures**:
  - **MobileNet**: depthwise separable convolution
  - **ShuffleNet**: channel shuffle, group convolution
  - **EfficientNet**: compound scaling
  - **NNAT (Neural Architecture Search)**: auto design

- **Deployment frameworks**:
  - **TensorRT**: NVIDIA GPU optimization
  - **ONNX Runtime**: cross-platform inference
  - **TFLite**: mobile/embedded
  - **OpenVINO**: Intel hardware optimization

- **Hardware considerations**:
  - **GPU vs CPU vs NPU vs FPGA**
  - **Memory bandwidth**: bottleneck analysis
  - **Latency vs accuracy trade-off**

#### **자주 헷갈리는 포인트**
```python
# Quantization types:
# Post-Training Quantization (PTQ): no retraining
# Quantization-Aware Training (QAT): simulate quantization training
# INT8: 8-bit integer, 4x compression vs FP32

# Pruning strategies:
# Unstructured: individual weights → sparse (not hardware friendly)
# Structured: channels, filters → dense (hardware efficient)
# Magnitude pruning: smallest |w| → prune
# GraSP, SNIP: gradient-based pruning

# Knowledge distillation:
# Soft targets: T·softmax(logits/T) → smoothed probabilities
# Student learns from teacher + true labels
# Temperature T > 1: softer distribution

# MobileNet depthwise separable:
# Standard: (H×W×C_in) × (K×K×C_in) → C_out
# DW: (H×W×C_in) × (K×K×1) → C_in (depthwise)
# PW: 1×1 conv for channel mixing
# Ratio: ~1/(K²) + 1/C_out vs 1
```

#### **연구/실무 연결점**
- **edge AI**: mobile, embedded, IoT deployment
- **real-time inference**: <10ms latency requirement
- **power-constrained**: battery-powered devices
- **multi-device**: cross-platform deployment

#### **GitHub 문서 제목 예시**
- `21_model_compression_quantization_pruning.md`
- `21_efficient_inference_deployment_strategies.md`
- `21_mobile_embedded_cv_deployment.md`

#### **작은 과제**
1. **Quantization experiment**: INT8 quantization 후 accuracy 비교
2. **Pruning 실험**: structured pruning으로 model size 줄이기
3. **Knowledge distillation**: teacher-student training
4. **TensorRT optimization**: GPU inference speedup

#### **관련 키워드**
- **기본**: quantization, pruning, knowledge distillation, mobile architectures, TensorRT, ONNX, TFLite
- **후속**: efficient inference, hardware-aware design, neural architecture search

#### **최종 점검 질문**
1. Post-training quantization 과 quantization-aware training 의 차이는?
2. Structured pruning 이 unstructured pruning 보다 유리한 이유는?
3. Knowledge distillation 에서 temperature T 의 역할은?
4. MobileNet 의 depthwise separable convolution 이 효율적인 이유는?
5. TensorRT 가 inference 를 가속하는 방법은?

---

### 3.6 Architecture Design for Domain-Specific Vision

#### **왜 중요한가?**
- **problem-specific design**: one-size-fits-all ≠ optimal
- **custom architectures**: 도메인 지식 반영
- **research innovation**: novel architecture design

#### **핵심 개념**
- **Design principles**:
  - **Task-specific**: segmentation vs detection vs classification
  - **Domain knowledge**: inductive biases for specific domains
  - **Trade-off**: accuracy vs speed vs memory vs power

- **Architecture patterns**:
  - **Multi-task learning**: shared backbone + task heads
  - **Modular design**: reusable blocks (attention, normalization)
  - **Conditional computation**: dynamic networks (Mixture of Experts)
  - **Attention mechanisms**: spatial, channel, temporal

- **Design process**:
  - **Problem analysis**: requirements, constraints
  - **Baseline**: standard arch (ResNet, U-Net)
  - **Modification**: domain-specific tweaks
  - **Ablation study**: each component impact
  - **Benchmark**: standard datasets, metrics

- **Case studies**:
  - **Medical imaging**: 3D U-Net, attention U-Net
  - **Aerial**: rotated detection, multi-scale
  - **Underwater**: dehazing, color correction
  - **Satellite**: multi-spectral fusion

#### **자주헫갈리는 포인트**
```
Multi-task learning design:
- Shared backbone: common features
- Task-specific heads: specialized processing
- Loss weighting: balancing multiple objectives
- Conflict: task gradients conflict (gradient surgery)

Attention design:
- Spatial attention: where to focus
- Channel attention: which features important
- Self-attention: long-range dependencies
- Lightweight attention: efficient variants

Design iteration:
1. Start simple → baseline
2. Add complexity → ablation
3. Analyze failure cases → targeted improvements
4. Benchmark → compare with SOTA

Domain-specific inductive biases:
- Medical: multi-scale, boundary-sensitive
- Aerial: rotation-invariant, small objects
- Underwater: color correction, dehazing
- Surveillance: multi-scale, tracking integration
```

#### **연구/실무 연결점**
- **custom research projects**: domain-specific architecture
- **production systems**: requirement-driven design
- **grant proposals**: methodology justification
- **thesis work**: novel architecture contributions

#### **GitHub 문서 제목 예시**
- `22_architecture_design_principles.md`
- `22_domain_specific_vision_architectures.md`
- `22_multi_task_learning_design.md`

#### **작은 과제**
1. **Custom architecture design**: domain-specific 문제 설계
2. **Multi-task learning**: joint segmentation + detection
3. **Ablation study**: component-by-component impact
4. **Design case study**: aerial small object detection architecture

#### **관련 키워드**
- **기본**: architecture design, multi-task learning, attention mechanisms, inductive bias, ablation study
- **후속**: neural architecture search, conditional computation, efficient design

#### **최종 점검 질문**
1. Multi-task learning 에서 loss weighting 은 왜 중요한가?
2. Attention mechanism 의 종류와 용도는?
3. Domain-specific inductive bias 는 왜 필요한가?
4. Architecture design 의 iteration process 는?
5. Ablation study 가 왜 중요한가?

---

## 4. 연구자 관점 분석

### **연구자로서의 핵심 역량**

1. **Problem Formulation**:
   - 실제 문제를 CV 문제로 어떻게 formalize 하는가?
   - **metric 정의**: accuracy, latency, robustness trade-off
   - **baseline 설정**: SOTA vs custom

2. **Literature Review & Gap Analysis**:
   - **논문 읽는 법**: abstract → intro → method → results → critique
   - **SOTA tracking**: arXiv weekly, CVPR/ICCV/ECCV proceedings
   - **Gap identification**: what's missing, what's suboptimal

3. **Hypothesis → Experiment**:
   - **ablation studies**: 각 component 의 영향 분리
   - **failure analysis**: 왜 실패하는가?
   - **statistical significance**: 반복 실험, confidence intervals

4. **Novelty Contribution**:
   - **methodological novelty**: new architecture, loss, training strategy
   - **application novelty**: new domain, new problem
   - **theoretical novelty**: new analysis, bound, guarantee

5. **Writing & Communication**:
   - **paper writing**: clear contribution, strong baseline, convincing results
   - **poster/presentation**: concise message, visual impact
   - **reproducibility**: code release, detailed experimental settings

### **연구자 필수 질문**
- "이 방법의 **이론적 근거**는 무엇인가?"
- "기존 방법의 **한계**는 어디인가?"
- "내 제안이 **어떤 gap**을 해결하는가?"
- "실험 설계가 **정확한 비교**를 하는가?"
- **generalization**: unseen domain 에서 성능 유지?

---

## 5. 엔지니어 관점 분석

### **엔지니어로서의 핵심 역량**

1. **System Integration**:
   - **pipeline design**: preprocessing → model → postprocessing
   - **API design**: model serving, latency SLA
   - **monitoring**: drift detection, performance tracking

2. **Performance Optimization**:
   - **latency profiling**: where is the bottleneck?
   - **memory optimization**: batching, quantization
   - **parallelization**: GPU, multi-CPU

3. **Deployment Pipeline**:
   - **CI/CD for ML**: automated testing, model registry
   - **A/B testing**: model version comparison
   - **rollback strategy**: failed deployment backup

4. **Scalability & Reliability**:
   - **load balancing**: multiple instances
   - **fault tolerance**: graceful degradation
   - **scaling**: horizontal vs vertical

5. **Cost-Efficiency**:
   - **inference cost**: per-request cost calculation
   - **cloud vs on-premise**: trade-off analysis
   - **model size vs accuracy**: business requirements

### **엔지니어 필수 질문**
- "이 모델의 **latency budget** 은 어떻게 충족하는가?"
- "GPU/CPU/NPU **선택 기준** 은?"
- "quantization 이 accuracy 에 미치는 영향은?"
- "실제 **deployment 환경** 은?"
- "monitoring 및 **drift detection** 전략은?"

---

## 6. 박사 지원 관점 분석

### **박사 지원 (특히 일본) 전략**

#### **일본 박사 지원 특징**
1. **Research Proposal 중심**:
   - 지원 전 **연구 계획서** 작성
   - **Potential Supervisor** 연락 필요 (事前連絡)
   - **Research Proposal** → Interview → Admission

2. **Lab System**:
   - **Research Group** (Lab) 중심
   - **Professor → Postdoc → PhD Students**
   - **Lab culture**, **research direction** 중요

3. **Required Documents**:
   - **Resume/CV**: publication record, technical skills
   - **Research Proposal**: 2-3 pages, specific contribution
   - **Letters of Recommendation**: 2-3 명
   - **Academic transcripts**: GPA, relevant courses
   - **English proficiency**: TOEFL/IELTS (일본어 가능하면 유리)

4. **Top CV Labs in Japan**:
   - **University of Tokyo**: Shuichiro Shimada, Kohtaro Ohno
   - **Kyoto University**: Shingo Muramatsu, Masatoshi Okutomi
   - **Osaka University**: Hideki Kashioka, Takanori Fujiwara
   - **Tokyo Institute of Technology**: Masaki Hayashi, Hiromi Ichikawa
   - **Waseda University**: Junichi Hasegawa, Masayuki Numao

#### **박사 지원 전략**
1. **Pre-reading**:
   - 지원하려는 Lab 의 **publications** 10-20 편 읽기
   - **research trends**, **methods**, **datasets** 분석
   - **gap identification**: potential contribution

2. **Contact Strategy**:
   - **cold email**: concise introduction, specific interest
   - **research proposal draft**: 구체적 아이디어 제시
   - **follow-up**: appropriate timeline (2-3 weeks)

3. **Research Proposal Structure**:
   - **Background**: current state of art
   - **Problem**: specific gap you identified
   - **Proposed solution**: your approach
   - **Expected contribution**: novelty, impact
   - **Timeline**: 3-4 years plan

4. **CV Optimization**:
   - **publications**: first-author emphasis
   - **technical skills**: specific frameworks, languages
   - **projects**: relevant to target lab
   - **awards**: scholarships, competitions

#### **박사 준비 Checklist**
- [ ] Target Lab research 방향 파악
- [ ] 관련 논문 10-20 편 읽기 (critical reading)
- [ ] Research Proposal 작성 (구체적 contribution)
- [ ] Professor 연락 (cold email, concise)
- [ ] Recommendation letters 요청
- [ ] TOEFL/IELTS 점수 (70+/6.0+ 목표)
- [ ] CV 정리 (publication 중심)

---

## 7. 6 개월 로드맵

### **Month 1-2: 기초 다지기 (Foundations)**
| Week | Focus | Tasks |
|------|-------|-------|
| 1-2 | Classical Vision | Filtering, edge/feature detection, stereo basics |
| 3-4 | CNN Fundamentals | Convolution, pooling, ResNet, DenseNet |

**Deliverables**:
- [ ] OpenCV 로 classical vision 구현 (3 projects)
- [ ] PyTorch 로 ResNet/DenseNet 구현
- [ ] CNN 이론 정리 (notes)

### **Month 3-4: Applied CV (중급)**
| Week | Focus | Tasks |
|------|-------|-------|
| 5-6 | Object Detection | YOLO, Faster R-CNN, metrics |
| 7-8 | Segmentation | U-Net, DeepLab, boundary-sensitive |

**Deliverables**:
- [ ] YOLOv8 inference + fine-tuning
- [ ] U-Net for medical segmentation
- [ ] Detection/Segmentation metrics 실험

### **Month 5-6: Advanced Topics (고급 진입)**
| Week | Focus | Tasks |
|------|-------|-------|
| 9-10 | Vision Transformers | ViT, Swin, attention visualization |
| 11-12 | Robust Perception | Adverse weather, domain adaptation |

**Deliverables**:
- [ ] ViT implementation + comparison
- [ ] Deraining/Dehazing 실험
- [ ] Domain adaptation 실험 (source-free DA)

### **6 개월 checkpoints**:
1. **Technical depth**: CNN, DETR, U-Net 이해 및 구현 가능
2. **Portfolio**: 6 개의 구현 프로젝트 (GitHub)
3. **Reading**: 20 편 이상 CV 논문 리뷰 (arXiv, CVPR, ICCV)
4. **Research direction**: 관심 영역 명확화 (detection/segmentation/robustness)

---

## 8. 1 년 로드맵

### **Year 1 Full Plan**

**Quarter 1-2 (Months 1-6)**: 기초 + 중급 (위 6 개월 로드맵)

**Quarter 3 (Months 7-9): Domain-Specific Focus**
| Focus | Tasks |
|-------|-------|
| Adverse Weather | Weather-robust models, synthetic weather augmentation |
| Remote Sensing | Aerial/maritime datasets, rotated detection |
| Small Objects | FPN, crop-based detection, anchor optimization |

**Quarter 4 (Months 10-12): Research & PhD Prep**
- **Literature review**: 30+ papers, gap identification
- **Research proposal**: specific contribution plan
- **Publication attempt**: workshop/arXiv submission
- **PhD applications**: Japan labs, cold email strategy

### **1 년 목표**:
1. **Publications**: 1 workshop paper 또는 arXiv preprint
2. **Specialization**: 2-3 domains 심화 (adverse weather, remote sensing, etc.)
3. **PhD applications**: 5-10 개의 일본 Lab 연락
4. **Portfolio**: 15+ GitHub projects, 3+ substantial implementations

---

## 9. 3 년 로드맵

### **PhD Timeline (3 Years)**

**Year 1: Foundation & Proposal**
- **Q1-2**: Literature review, skill building
- **Q3-4**: Research proposal, initial experiments
- **Milestone**: PhD admission, specific research direction

**Year 2: Deep Research**
- **Q1-2**: Core research, algorithm development
- **Q3-4**: Experimentation, results validation
- **Milestone**: 1-2 conference papers (CVPR, ICCV, ECCV)

**Year 3: Thesis & Career**
- **Q1-2**: Thesis writing, results consolidation
- **Q3**: Thesis submission, defense preparation
- **Q4**: Job search (academia/industry)
- **Milestone**: PhD completion, career placement

### **3 년 핵심 마일스톤**:
1. **Publications**: 2-3 conference papers (CVR, ICCV, ECCV, ICCVW)
2. **Dissertation**: 3-chapter thesis (3+ years of work)
3. **Network**: international collaborations, conference attendance
4. **Career**: postdoc positions or industry research roles

### **Research Career Path**:
- **Option A (Academia)**: PhD → Postdoc → Faculty
- **Option B (Industry)**: PhD → Research Scientist → Principal Engineer
- **Option C (Hybrid)**: PhD → Industry → Academia

---

## 📌 총정리: 학습 원칙

### **1. Learn by Doing**
- **Theory → Implementation**: 이론은 반드시 구현으로 확인
- **Reading → Coding**: 논문 읽기 → 구현 복습
- **Projects**: 각 주제별 1-2 개의 구현 프로젝트

### **2. Active Reading**
- **Paper reading**:
  - **Abstract → Intro**: 문제 정의, motivation
  - **Method**: 핵심 아이디어, novelty
  - **Experiments**: baseline, comparison, limitations
  - **Future**: 한계, 가능한 개선
- **Annotate**: critical thinking, potential improvements

### **3. Build Portfolio**
- **GitHub**: 모든 구현 코드 공개
- **Blog**: 학습 내용 정리, 공유
- **Open source**: contribution, collaboration

### **4. Research Mindset**
- **Question everything**: SOTA 의 한계는?
- **Critical analysis**: 왜 좋은 성능인가? 왜 안 되는 경우인가?
- **Novelty search**: gap identification

### **5. Career Planning**
- **PhD preparation**: Japan focus, cold email strategy
- **Skills portfolio**: technical depth + research output
- **Networking**: conferences, labs, collaborations

---

## 📚 추천 자료

### **Books**:
- **Computer Vision: Algorithms and Applications** (Szeliski)
- **Deep Learning** (Goodfellow, Bengio, Courville)
- **Pattern Recognition and Machine Learning** (Bishop)

### **Courses**:
- **CS231n** (Stanford): CNN for visual recognition
- **CS231n 2023** ( 최신 트렌드)
- **CVPR/ICCV tutorial videos**: arXiv YouTube

### **Datasets**:
- **General**: COCO, ImageNet, Cityscapes
- **Aerial**: DOTA, HRSC2016, VisDrone
- **Medical**: BraTS, CheXpert
- **Adverse Weather**: RainCityscapes, Foggy Cityscapes

### **Frameworks**:
- **PyTorch**: research, flexible
- **TensorFlow/Keras**: production, deployment
- **OpenCV**: classical vision, preprocessing
- **Detectron2**: detection, segmentation
- **MMDetection**: multi-framework detection

---

## ✅ 최종 점검 질문 (전체)

1. **고전 비전 vs 딥러닝**: 각 방법론의 적절한 사용 시점은?
2. **Architecture design**: ResNet, DenseNet, Transformer 각각의 장단점은?
3. **Detection vs Segmentation**: 각 task 의 핵심 차이와 접근법?
4. **Robustness**: adverse weather 에서 모델 robustness 확보 방법?
5. **Domain-specific**: 원격 탐사, 의료 영상 등 도메인별 설계 고려사항?
6. **Efficiency**: model compression, deployment 최적화 전략?
7. **Research skill**: 논문 읽기, gap identification, proposal 작성법?
8. **PhD preparation**: 일본 박사 지원 전략, lab 선택 기준?
9. **Career planning**: academia vs industry, 연구 커리어 path?
10. **Learning approach**: learn by doing, active reading, portfolio building?

---

**🎯 목표 달성**: 이 커리큘럼을 따라 6 개월 → 1 년 → 3 년으로 단계별 성장, CV 연구자로서의 역량 구축, 해외 박사 (특히 일본) 지원 준비 완료!

---

*Last updated: 2026-03-24*  
*Author: Jung-woojin (Computer Vision Researcher/Engineer)*
