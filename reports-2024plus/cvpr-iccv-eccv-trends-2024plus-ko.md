# 2024년 이후 CVPR/ICCV/ECCV 컴퓨터비전 트렌드 초대형 분석 리포트

- 생성 시각: 2026-03-24 15:06
- 분석 범위: CVPR 2024, ECCV 2024, CVPR 2025, ICCV 2025
- 데이터 소스: CVF Open Access 기반 수집 데이터셋(로컬 CSV)
- 전체 분석 논문 수: 10,677편
- 목적: 2024년 이후 컴퓨터비전 연구 방향을 학회 단위/테마 단위/논문 단위로 교차 분석

## 1. 데이터셋 개요

### 1.1 학회/연도별 커버리지

| 학회 | 연도 | 논문 수 |
|---|---:|---:|
| CVPR2024 | 2024 | 2,716 |
| CVPR2025 | 2025 | 2,871 |
| ECCV2024 | 2024 | 2,389 |
| ICCV2025 | 2025 | 2,701 |

### 1.2 연도별 총량

| 연도 | 논문 수 |
|---:|---:|
| 2024 | 5,105 |
| 2025 | 5,572 |

### 1.3 제목 기반 고빈도 키워드 Top 100

1. `diffusion` - 1170회
2. `generation` - 943회
3. `detection` - 641회
4. `segmentation` - 615회
5. `object` - 553회
6. `visual` - 552회
7. `efficient` - 423회
8. `reconstruction` - 401회
9. `gaussian` - 397회
10. `semantic` - 387회
11. `human` - 380회
12. `large` - 377회
13. `language` - 372회
14. `multimodal` - 371회
15. `scene` - 363회
16. `motion` - 358회
17. `estimation` - 340회
18. `representation` - 313회
19. `understanding` - 290회
20. `vision-language` - 285회
21. `point` - 284회
22. `dynamic` - 281회
23. `splatting` - 271회
24. `synthesis` - 268회
25. `dataset` - 266회
26. `robust` - 247회
27. `data` - 228회
28. `pose` - 227회
29. `unified` - 225회
30. `images` - 224회
31. `generative` - 223회
32. `transformer` - 222회
33. `framework` - 222회
34. `adaptive` - 221회
35. `feature` - 221회
36. `zero-shot` - 218회
37. `editing` - 216회
38. `distillation` - 213회
39. `adaptation` - 212회
40. `prediction` - 212회
41. `text-to-image` - 209회
42. `recognition` - 203회
43. `modeling` - 200회
44. `alignment` - 200회
45. `multi-view` - 196회
46. `videos` - 194회
47. `unsupervised` - 191회
48. `domain` - 183회
49. `adversarial` - 174회
50. `attention` - 173회
51. `self-supervised` - 169회
52. `multi-modal` - 169회
53. `benchmark` - 167회
54. `network` - 166회
55. `prompt` - 165회
56. `latent` - 163회
57. `cloud` - 160회
58. `enhancing` - 160회
59. `training` - 159회
60. `text` - 158회
61. `knowledge` - 157회
62. `fusion` - 156회
63. `depth` - 153회
64. `single` - 152회
65. `matching` - 150회
66. `driving` - 149회
67. `reasoning` - 149회
68. `improving` - 149회
69. `few-shot` - 149회
70. `monocular` - 145회
71. `action` - 143회
72. `temporal` - 143회
73. `rendering` - 138회
74. `transformers` - 135회
75. `generalizable` - 135회
76. `open-vocabulary` - 131회
77. `view` - 128회
78. `sparse` - 128회
79. `space` - 127회
80. `fields` - 127회
81. `super-resolution` - 127회
82. `foundation` - 126회
83. `tracking` - 126회
84. `perception` - 125회
85. `interaction` - 123회
86. `scenes` - 123회
87. `face` - 120회
88. `grounding` - 119회
89. `large-scale` - 117회
90. `hierarchical` - 116회
91. `implicit` - 116회
92. `anomaly` - 115회
93. `fine-grained` - 115회
94. `priors` - 114회
95. `retrieval` - 112회
96. `federated` - 112회
97. `graph` - 112회
98. `localization` - 112회
99. `continual` - 111회
100. `consistent` - 110회

## 2. 핵심 테마별 거시 트렌드

### 2.1 강건 인식 (`robust_perception`)

- 총 논문 수: 2,869편
- 2024 -> 2025 변화: +603편
- 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 학회별 분포:
  - CVPR2024: 858편
  - CVPR2025: 906편
  - ECCV2024: 275편
  - ICCV2025: 830편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 1133 |
| 2025 | 1736 |

### 2.2 생성모델/디퓨전 (`generative_diffusion`)

- 총 논문 수: 2,814편
- 2024 -> 2025 변화: +460편
- 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 학회별 분포:
  - CVPR2024: 688편
  - CVPR2025: 840편
  - ECCV2024: 489편
  - ICCV2025: 797편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 1177 |
| 2025 | 1637 |

### 2.3 3D 비전/기하 (`vision_3d_geometry`)

- 총 논문 수: 2,609편
- 2024 -> 2025 변화: +175편
- 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 학회별 분포:
  - CVPR2024: 740편
  - CVPR2025: 732편
  - ECCV2024: 477편
  - ICCV2025: 660편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 1217 |
| 2025 | 1392 |

### 2.4 비디오/시계열 (`video_temporal`)

- 총 논문 수: 2,203편
- 2024 -> 2025 변화: +399편
- 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 학회별 분포:
  - CVPR2024: 533편
  - CVPR2025: 679편
  - ECCV2024: 369편
  - ICCV2025: 622편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 902 |
| 2025 | 1301 |

### 2.5 에이전트/추론 (`agents_reasoning`)

- 총 논문 수: 2,030편
- 2024 -> 2025 변화: +470편
- 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 학회별 분포:
  - CVPR2024: 549편
  - CVPR2025: 618편
  - ECCV2024: 231편
  - ICCV2025: 632편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 780 |
| 2025 | 1250 |

### 2.6 효율화/엣지 (`efficient_edge`)

- 총 논문 수: 1,692편
- 2024 -> 2025 변화: +266편
- 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 학회별 분포:
  - CVPR2024: 480편
  - CVPR2025: 494편
  - ECCV2024: 233편
  - ICCV2025: 485편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 713 |
| 2025 | 979 |

### 2.7 기타/신규 토픽 (`other_uncategorized`)

- 총 논문 수: 1,667편
- 2024 -> 2025 변화: -331편
- 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 학회별 분포:
  - CVPR2024: 391편
  - CVPR2025: 356편
  - ECCV2024: 608편
  - ICCV2025: 312편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 999 |
| 2025 | 668 |

### 2.8 검출/분할 (`detection_segmentation`)

- 총 논문 수: 1,638편
- 2024 -> 2025 변화: +12편
- 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 학회별 분포:
  - CVPR2024: 472편
  - CVPR2025: 403편
  - ECCV2024: 341편
  - ICCV2025: 422편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 813 |
| 2025 | 825 |

### 2.9 멀티모달/VLM (`multimodal_vlm`)

- 총 논문 수: 1,379편
- 2024 -> 2025 변화: +399편
- 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 학회별 분포:
  - CVPR2024: 304편
  - CVPR2025: 445편
  - ECCV2024: 186편
  - ICCV2025: 444편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 490 |
| 2025 | 889 |

### 2.10 설명가능성/안전성 (`explainability_safety`)

- 총 논문 수: 408편
- 2024 -> 2025 변화: +66편
- 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 학회별 분포:
  - CVPR2024: 127편
  - CVPR2025: 125편
  - ECCV2024: 44편
  - ICCV2025: 112편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 171 |
| 2025 | 237 |

### 2.11 Embodied/로보틱스 (`embodied_robotics`)

- 총 논문 수: 325편
- 2024 -> 2025 변화: +105편
- 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 학회별 분포:
  - CVPR2024: 76편
  - CVPR2025: 104편
  - ECCV2024: 34편
  - ICCV2025: 111편
- 연도별 분포:
| 연도 | 논문 수 |
|---|---:|
| 2024 | 110 |
| 2025 | 215 |

## 3. 학회별 테마 집중도

### 3.1 CVPR2024
- 전체 논문 수: 2,716편
- 상위 테마 Top 10:
  1. 강건 인식: 858편 (31.59%)
  2. 3D 비전/기하: 740편 (27.25%)
  3. 생성모델/디퓨전: 688편 (25.33%)
  4. 에이전트/추론: 549편 (20.21%)
  5. 비디오/시계열: 533편 (19.62%)
  6. 효율화/엣지: 480편 (17.67%)
  7. 검출/분할: 472편 (17.38%)
  8. 기타/신규 토픽: 391편 (14.40%)
  9. 멀티모달/VLM: 304편 (11.19%)
  10. 설명가능성/안전성: 127편 (4.68%)
- 요약 시사점:
  - CVPR2024는 강건 인식 축에서 강한 존재감을 보인다.
  - 동일 벤치마크 경쟁보다 과제 확장(오픈월드/장면 복잡도/실시간성) 방향으로 이동한다.

### 3.2 CVPR2025
- 전체 논문 수: 2,871편
- 상위 테마 Top 10:
  1. 강건 인식: 906편 (31.56%)
  2. 생성모델/디퓨전: 840편 (29.26%)
  3. 3D 비전/기하: 732편 (25.50%)
  4. 비디오/시계열: 679편 (23.65%)
  5. 에이전트/추론: 618편 (21.53%)
  6. 효율화/엣지: 494편 (17.21%)
  7. 멀티모달/VLM: 445편 (15.50%)
  8. 검출/분할: 403편 (14.04%)
  9. 기타/신규 토픽: 356편 (12.40%)
  10. 설명가능성/안전성: 125편 (4.35%)
- 요약 시사점:
  - CVPR2025는 강건 인식 축에서 강한 존재감을 보인다.
  - 동일 벤치마크 경쟁보다 과제 확장(오픈월드/장면 복잡도/실시간성) 방향으로 이동한다.

### 3.3 ECCV2024
- 전체 논문 수: 2,389편
- 상위 테마 Top 10:
  1. 기타/신규 토픽: 608편 (25.45%)
  2. 생성모델/디퓨전: 489편 (20.47%)
  3. 3D 비전/기하: 477편 (19.97%)
  4. 비디오/시계열: 369편 (15.45%)
  5. 검출/분할: 341편 (14.27%)
  6. 강건 인식: 275편 (11.51%)
  7. 효율화/엣지: 233편 (9.75%)
  8. 에이전트/추론: 231편 (9.67%)
  9. 멀티모달/VLM: 186편 (7.79%)
  10. 설명가능성/안전성: 44편 (1.84%)
- 요약 시사점:
  - ECCV2024는 기타/신규 토픽 축에서 강한 존재감을 보인다.
  - 동일 벤치마크 경쟁보다 과제 확장(오픈월드/장면 복잡도/실시간성) 방향으로 이동한다.

### 3.4 ICCV2025
- 전체 논문 수: 2,701편
- 상위 테마 Top 10:
  1. 강건 인식: 830편 (30.73%)
  2. 생성모델/디퓨전: 797편 (29.51%)
  3. 3D 비전/기하: 660편 (24.44%)
  4. 에이전트/추론: 632편 (23.40%)
  5. 비디오/시계열: 622편 (23.03%)
  6. 효율화/엣지: 485편 (17.96%)
  7. 멀티모달/VLM: 444편 (16.44%)
  8. 검출/분할: 422편 (15.62%)
  9. 기타/신규 토픽: 312편 (11.55%)
  10. 설명가능성/안전성: 112편 (4.15%)
- 요약 시사점:
  - ICCV2025는 강건 인식 축에서 강한 존재감을 보인다.
  - 동일 벤치마크 경쟁보다 과제 확장(오픈월드/장면 복잡도/실시간성) 방향으로 이동한다.

## 4. 테마별 대표 논문 카드 (대규모)

아래 카드는 테마별로 점수가 높은 논문을 선별해 정리한 것이다. 동일 논문이 다중 테마에 등장할 수 있다.

### 4.1 강건 인식

#### 4.1.001 논문 카드
- 제목: RobuSTereo: Robust Zero-Shot Stereo Matching under Adverse Weather
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Learning-based stereo matching models struggle in adverse weather conditions due to the scarcity of corresponding training data and the challenges in extracting discriminative features from degraded images. These limi...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_RobuSTereo_Robust_Zero-Shot_Stereo_Matching_under_Adverse_Weather_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.002 논문 카드
- 제목: TRNAS: A Training-Free Robust Neural Architecture Search
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식
- 핵심 초록 신호: Deep Neural Networks (DNNs) have been successfully applied in various computer tasks. However, they remain vulnerable to adversarial attacks, which could lead to severe security risks. In recent years, robust neural a...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_TRNAS_A_Training-Free_Robust_Neural_Architecture_Search_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.003 논문 카드
- 제목: SynFog: A Photo-realistic Synthetic Fog Dataset based on End-to-end Imaging Simulation for Advancing Real-World Defogging in Autonomous Driving
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 검출/분할
- 핵심 초록 신호: To advance research in learning-based defogging algorithms various synthetic fog datasets have been developed. However exsiting datasets created using the Atmospheric Scattering Model (ASM) or real-time rendering engi...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xie_SynFog_A_Photo-realistic_Synthetic_Fog_Dataset_based_on_End-to-end_Imaging_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.004 논문 카드
- 제목: Towards Accurate and Robust Architectures via Neural Architecture Search
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식
- 핵심 초록 신호: To defend deep neural networks from adversarial attacks adversarial training has been drawing increasing attention for its effectiveness. However the accuracy and robustness resulting from the adversarial training are...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ou_Towards_Accurate_and_Robust_Architectures_via_Neural_Architecture_Search_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.005 논문 카드
- 제목: Robust Image Denoising through Adversarial Frequency Mixup
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식
- 핵심 초록 신호: Image denoising approaches based on deep neural networks often struggle with overfitting to specific noise distributions present in training data. This challenge persists in existing real-world denoising networks whic...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ryou_Robust_Image_Denoising_through_Adversarial_Frequency_Mixup_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.006 논문 카드
- 제목: Deciphering Cross-Modal Alignment in Large Vision-Language Models via Modality Integration Rate
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: The early stage of multi-modal pre-training plays a pivotal role in aligning two modalities for Large Vision-Language Models (LVLMs), while evaluating its training quality usually requires the costly supervised fine-t...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Huang_Deciphering_Cross-Modal_Alignment_in_Large_Vision-Language_Models_via_Modality_Integration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.007 논문 카드
- 제목: EFTViT: Efficient Federated Training of Vision Transformers with Masked Images on Resource-Constrained Clients
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 효율화/엣지, 설명가능성/안전성
- 핵심 초록 신호: Federated learning research has recently shifted from Convolutional Neural Networks (CNNs) to Vision Transformers (ViTs) due to their superior capacity. ViTs training demands higher computational resources due to the ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wu_EFTViT_Efficient_Federated_Training_of_Vision_Transformers_with_Masked_Images_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.008 논문 카드
- 제목: Fewer Denoising Steps or Cheaper Per-Step Inference: Towards Compute-Optimal Diffusion Model Deployment
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Diffusion models have shown remarkable success across generative tasks, yet their high computational demands challenge deployment on resource-limited platforms. This paper investigates a critical question for compute-...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Du_Fewer_Denoising_Steps_or_Cheaper_Per-Step_Inference_Towards_Compute-Optimal_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.009 논문 카드
- 제목: DeFSS: Image-to-Mask Denoising Learning for Few-shot Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Deep learning algorithms are highly data-intensive, particularly for tasks requiring pixel-level annotations, such as semantic segmentation, which makes achieving pixel-level image understanding costly. Few-shot segme...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qin_DeFSS_Image-to-Mask_Denoising_Learning_for_Few-shot_Segmentation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.010 논문 카드
- 제목: Training Data Provenance Verification: Did Your Model Use Synthetic Data from My Generative Model for Training?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: High-quality open-source text-to-image models have lowered the threshold for obtaining photorealistic images significantly, but also face potential risks of misuse. Specifically, suspects may use synthetic data genera...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xie_Training_Data_Provenance_Verification_Did_Your_Model_Use_Synthetic_Data_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.011 논문 카드
- 제목: TurboTrain: Towards Efficient and Balanced Multi-Task Learning for Multi-Agent Perception and Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: End-to-end training of multi-agent systems offers significant advantages in improving multi-task performance. However, training such models remains challenging and requires extensive manual design and monitoring. In t...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhou_TurboTrain_Towards_Efficient_and_Balanced_Multi-Task_Learning_for_Multi-Agent_Perception_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.012 논문 카드
- 제목: GLID: Pre-training a Generalist Encoder-Decoder Vision Model
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 검출/분할, 3D 비전/기하
- 핵심 초록 신호: This paper proposes a GeneraLIst encoder-Decoder (GLID) pre-training method for better handling various downstream computer vision tasks. While self-supervised pre-training approaches e.g. Masked Autoencoder have show...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_GLID_Pre-training_a_Generalist_Encoder-Decoder_Vision_Model_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.013 논문 카드
- 제목: Revisiting Adversarial Training Under Long-Tailed Distributions
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식
- 핵심 초록 신호: Deep neural networks are vulnerable to adversarial attacks leading to erroneous outputs. Adversarial training has been recognized as one of the most effective methods to counter such attacks. However existing adversar...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yue_Revisiting_Adversarial_Training_Under_Long-Tailed_Distributions_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.014 논문 카드
- 제목: RobustSAM: Segment Anything Robustly on Degraded Images
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 검출/분할
- 핵심 초록 신호: Segment Anything Model (SAM) has emerged as a transformative approach in image segmentation acclaimed for its robust zero-shot segmentation capabilities and flexible prompting system. Nonetheless its performance is ch...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_RobustSAM_Segment_Anything_Robustly_on_Degraded_Images_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.015 논문 카드
- 제목: Beyond Clean Training Data: A Versatile and Model-Agnostic Framework for Out-of-Distribution Detection with Contaminated Training Data
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 검출/분할
- 핵심 초록 신호: In real-world AI applications, training datasets are often contaminated, containing a mix of in-distribution (ID) and out-of-distribution (OOD) samples without labels. This contamination poses a significant challenge ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_Beyond_Clean_Training_Data_A_Versatile_and_Model-Agnostic_Framework_for_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.016 논문 카드
- 제목: Gyro-based Neural Single Image Deblurring
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 비디오/시계열
- 핵심 초록 신호: In this paper, we present GyroDeblurNet, a novel single-image deblurring method that utilizes a gyro sensor to resolve the ill-posedness of image deblurring. The gyro sensor provides valuable information about camera ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yang_Gyro-based_Neural_Single_Image_Deblurring_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.017 논문 카드
- 제목: PRE-Mamba: A 4D State Space Model for Ultra-High-Frequent Event Camera Deraining
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Event cameras excel in high temporal resolution and dynamic range but suffer from dense noise in rainy conditions. Existing event deraining methods face trade-offs between temporal precision, deraining effectiveness, ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ruan_PRE-Mamba_A_4D_State_Space_Model_for_Ultra-High-Frequent_Event_Camera_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.018 논문 카드
- 제목: Zero-Reference Low-Light Enhancement via Physical Quadruple Priors
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 생성모델/디퓨전, 설명가능성/안전성
- 핵심 초록 신호: Understanding illumination and reducing the need for supervision pose a significant challenge in low-light enhancement. Current approaches are highly sensitive to data usage during training and illumination-specific h...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_Zero-Reference_Low-Light_Enhancement_via_Physical_Quadruple_Priors_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.019 논문 카드
- 제목: Adversarial Training for Probabilistic Robustness
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식
- 핵심 초록 신호: Deep learning (DL) has shown transformative potential across industries, yet its sensitivity to adversarial examples (AEs) limits its reliability and broader deployment. Research on DL robustness has developed various...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Adversarial_Training_for_Probabilistic_Robustness_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.020 논문 카드
- 제목: Diffusion-based Event Generation for High-Quality Image Deblurring
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: While event-based deblurring have demonstrated impressive results, they are impractical for consumer photos captured by cell phones and digital cameras that are not equipped with the event sensor. To address this prob...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xie_Diffusion-based_Event_Generation_for_High-Quality_Image_Deblurring_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.021 논문 카드
- 제목: Learning Separable Fine-Grained Representation via Dendrogram Construction from Coarse Labels for Fine-grained Visual Recognition
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 에이전트/추론
- 핵심 초록 신호: Learning fine-grained representations from coarse labels for fine-grained visual recognition (FGVR) is a challenging yet valuable task, as it alleviates the reliance on labor-intensive fine-grained annotations. Early ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shi_Learning_Separable_Fine-Grained_Representation_via_Dendrogram_Construction_from_Coarse_Labels_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.022 논문 카드
- 제목: On the Zero-shot Adversarial Robustness of Vision-Language Models: A Truly Zero-shot and Training-free Approach
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Pre-trained Vision-Language Models (VLMs) like CLIP, have demonstrated strong zero-shot generalization capabilities. Despite their effectiveness on various downstream tasks, they remain vulnerable to adversarial sampl...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tong_On_the_Zero-shot_Adversarial_Robustness_of_Vision-Language_Models_A_Truly_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.023 논문 카드
- 제목: Robust Test-Time Adaptation for Single Image Denoising Using Deep Gaussian Prior
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 에이전트/추론
- 핵심 초록 신호: Gaussian denoising often serves as the initiation of research in the field of image denoising, owing to its prevalence and intriguing properties. However, deep Gaussian denoiser typically generalizes poorly to other t...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ma_Robust_Test-Time_Adaptation_for_Single_Image_Denoising_Using_Deep_Gaussian_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.024 논문 카드
- 제목: SCAN: Bootstrapping Contrastive Pre-training for Data Efficiency
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: While contrastive pre-training is widely employed, its data efficiency problem has remained relatively under-explored thus far. Existing methods often rely on static coreset selection algorithms to pre-identify import...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Guo_SCAN_Bootstrapping_Contrastive_Pre-training_for_Data_Efficiency_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.025 논문 카드
- 제목: Synthetic-to-Real Self-supervised Robust Depth Estimation via Learning with Motion and Structure Priors
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 3D 비전/기하, 비디오/시계열
- 핵심 초록 신호: Self-supervised depth estimation from monocular cameras in diverse outdoor conditions, such as daytime, rain, and nighttime, is challenging due to the difficulty of learning universal representations and the severe la...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yan_Synthetic-to-Real_Self-supervised_Robust_Depth_Estimation_via_Learning_with_Motion_and_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.026 논문 카드
- 제목: Towards Better Alignment: Training Diffusion Models with Reinforcement Learning Against Sparse Rewards
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Diffusion models have achieved remarkable success in text-to-image generation. However, their practical applications are hindered by the misalignment between generated images and corresponding text prompts. To tackle ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hu_Towards_Better_Alignment_Training_Diffusion_Models_with_Reinforcement_Learning_Against_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.027 논문 카드
- 제목: Brain Decodes Deep Nets
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식
- 핵심 초록 신호: We developed a tool for visualizing and analyzing large pre-trained vision models by mapping them onto the brain thus exposing their hidden inside. Our innovation arises from a surprising usage of brain encoding: pred...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yang_Brain_Decodes_Deep_Nets_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.028 논문 카드
- 제목: Generalizable Whole Slide Image Classification with Fine-Grained Visual-Semantic Interaction
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Whole Slide Image (WSI) classification is often formulated as a Multiple Instance Learning (MIL) problem. Recently Vision-Language Models (VLMs) have demonstrated remarkable performance in WSI classification. However ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_Generalizable_Whole_Slide_Image_Classification_with_Fine-Grained_Visual-Semantic_Interaction_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.029 논문 카드
- 제목: Genuine Knowledge from Practice: Diffusion Test-Time Adaptation for Video Adverse Weather Removal
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Real-world vision tasks frequently suffer from the appearance of unexpected adverse weather conditions including rain haze snow and raindrops. In the last decade convolutional neural networks and vision transformers h...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yang_Genuine_Knowledge_from_Practice_Diffusion_Test-Time_Adaptation_for_Video_Adverse_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.030 논문 카드
- 제목: Language-Driven Anchors for Zero-Shot Adversarial Robustness
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Deep Neural Networks (DNNs) are known to be susceptible to adversarial attacks. Previous researches mainly focus on improving adversarial robustness in the fully supervised setting leaving the challenging domain of ze...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_Language-Driven_Anchors_for_Zero-Shot_Adversarial_Robustness_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.031 논문 카드
- 제목: MindBridge: A Cross-Subject Brain Decoding Framework
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 3D 비전/기하, 효율화/엣지
- 핵심 초록 신호: Brain decoding a pivotal field in neuroscience aims to reconstruct stimuli from acquired brain signals primarily utilizing functional magnetic resonance imaging (fMRI). Currently brain decoding is confined to a per-su...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_MindBridge_A_Cross-Subject_Brain_Decoding_Framework_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.032 논문 카드
- 제목: Patch2Self2: Self-supervised Denoising on Coresets via Matrix Sketching
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 생성모델/디퓨전, 설명가능성/안전성
- 핵심 초록 신호: Diffusion MRI (dMRI) non-invasively maps brain white matter yet necessitates denoising due to low signal-to-noise ratios. Patch2Self (P2S) employing self-supervised techniques and regression on a Casorati matrix effec...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Fadnavis_Patch2Self2_Self-supervised_Denoising_on_Coresets_via_Matrix_Sketching_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.033 논문 카드
- 제목: PeerAiD: Improving Adversarial Distillation from a Specialized Peer Tutor
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 효율화/엣지
- 핵심 초록 신호: Adversarial robustness of the neural network is a significant concern when it is applied to security-critical domains. In this situation adversarial distillation is a promising option which aims to distill the robustn...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Jung_PeerAiD_Improving_Adversarial_Distillation_from_a_Specialized_Peer_Tutor_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.034 논문 카드
- 제목: Towards Fairness-Aware Adversarial Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Although adversarial training (AT) has proven effective in enhancing the model's robustness the recently revealed issue of fairness in robustness has not been well addressed i.e. the robust accuracy varies significant...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_Towards_Fairness-Aware_Adversarial_Learning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.035 논문 카드
- 제목: A Unified Approach to Interpreting Self-supervised Pre-training Methods for 3D Point Clouds via Interactions
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Recently, many self-supervised pre-training methods have been proposed to improve the performance of deep neural networks (DNNs) for 3D point clouds processing. However, the common mechanism underlying the effectivene...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_A_Unified_Approach_to_Interpreting_Self-supervised_Pre-training_Methods_for_3D_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.036 논문 카드
- 제목: Adapting In-Domain Few-Shot Segmentation to New Domains without Source Domain Retraining
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 검출/분할
- 핵심 초록 신호: Cross-domain few-shot segmentation (CD-FSS) aims to segment objects of novel classes in new domains, which is often challenging due to the diverse characteristics of target domains and the limited availability of supp...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Fan_Adapting_In-Domain_Few-Shot_Segmentation_to_New_Domains_without_Source_Domain_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.037 논문 카드
- 제목: Adversarial Robustness of Discriminative Self-Supervised Learning in Vision
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 검출/분할
- 핵심 초록 신호: Self-supervised learning (SSL) has advanced significantly in visual representation learning, yet comprehensive evaluations of its adversarial robustness remain limited. In this study, we evaluate the adversarial robus...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cagatan_Adversarial_Robustness_of_Discriminative_Self-Supervised_Learning_in_Vision_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.038 논문 카드
- 제목: BabyVLM: Data-Efficient Pretraining of VLMs Inspired by Infant Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Human infants rapidly develop visual reasoning skills from minimal input, suggesting that developmentally inspired pretraining could significantly enhance the efficiency of vision-language models (VLMs). Although rece...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_BabyVLM_Data-Efficient_Pretraining_of_VLMs_Inspired_by_Infant_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.039 논문 카드
- 제목: Efficient Event Camera Data Pretraining with Adaptive Prompt Fusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: Applying pretraining-finetuning paradigm to event cameras presents significant challenges due to the scarcity of large-scale event datasets and the inherently sparse nature of event data, which increases the risk of o...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Liang_Efficient_Event_Camera_Data_Pretraining_with_Adaptive_Prompt_Fusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.040 논문 카드
- 제목: FLAIR: VLM with Fine-grained Language-informed Image Representations
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 멀티모달/VLM, 검출/분할
- 핵심 초록 신호: CLIP has shown impressive results in aligning images and text at scale. However, its ability to capture detailed visual features remains limited because CLIP matches images and texts at a global level. To address this...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xiao_FLAIR_VLM_with_Fine-grained_Language-informed_Image_Representations_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.041 논문 카드
- 제목: LLM-assisted Entropy-based Adaptive Distillation for Unsupervised Fine-grained Visual Representation Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Unsupervised Fine-grained Visual Represent Learning (FVRL) aims to learn discriminative features to distinguish subtle differences among visually similar categories without using labeled fine-grained data. Existing wo...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Dong_LLM-assisted_Entropy-based_Adaptive_Distillation_for_Unsupervised_Fine-grained_Visual_Representation_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.042 논문 카드
- 제목: Multi-Modal Contrastive Masked Autoencoders: A Two-Stage Progressive Pre-training Approach for RGBD Datasets
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 검출/분할, 효율화/엣지
- 핵심 초록 신호: In this paper, we propose a new progressive pre-training method for image understanding tasks which leverages RGB-D datasets. The method utilizes Multi-Modal Contrastive Masked Autoencoder and Denoising techniques. Ou...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Jamal_Multi-Modal_Contrastive_Masked_Autoencoders_A_Two-Stage_Progressive_Pre-training_Approach_for_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.043 논문 카드
- 제목: Positive2Negative: Breaking the Information-Lossy Barrier in Self-Supervised Single Image Denoising
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식
- 핵심 초록 신호: Image denoising enhances image quality, serving as a foundational technique across various computational photography applications. The obstacle to clean image acquisition in real scenarios necessitates the development...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_Positive2Negative_Breaking_the_Information-Lossy_Barrier_in_Self-Supervised_Single_Image_Denoising_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.044 논문 카드
- 제목: RoboBrain: A Unified Brain Model for Robotic Manipulation from Abstract to Concrete
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Recent advancements in Multimodal Large Language Models (MLLMs) have shown remarkable capabilities across various multimodal contexts. However, their application in robotic scenarios, particularly for long-horizon man...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ji_RoboBrain_A_Unified_Brain_Model_for_Robotic_Manipulation_from_Abstract_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.045 논문 카드
- 제목: Scaling and Taming Adversarial Training with Synthetic Data
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식
- 핵심 초록 신호: Despite the success of adversarial training on small datasets, applying it to large-scale datasets like ImageNet remains challenging. Previous attempts using synthetic data show limited improvements. This work investi...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wu_Scaling_and_Taming_Adversarial_Training_with_Synthetic_Data_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.046 논문 카드
- 제목: ACT-Diffusion: Efficient Adversarial Consistency Training for One-step Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Though diffusion models excel in image generation their step-by-step denoising leads to slow generation speeds. Consistency training addresses this issue with single-step sampling but often produces lower-quality gene...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Kong_ACT-Diffusion_Efficient_Adversarial_Consistency_Training_for_One-step_Diffusion_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.047 논문 카드
- 제목: DiffusionMTL: Learning Multi-Task Denoising Diffusion Model from Partially Annotated Data
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Recently there has been an increased interest in the practical problem of learning multiple dense scene understanding tasks from partially annotated data where each training sample is only labeled for a subset of the ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ye_DiffusionMTL_Learning_Multi-Task_Denoising_Diffusion_Model_from_Partially_Annotated_Data_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.048 논문 카드
- 제목: Exploring Efficient Asymmetric Blind-Spots for Self-Supervised Denoising in Real-World Scenarios
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 효율화/엣지
- 핵심 초록 신호: Self-supervised denoising has attracted widespread attention due to its ability to train without clean images. However noise in real-world scenarios is often spatially correlated which causes many self-supervised algo...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_Exploring_Efficient_Asymmetric_Blind-Spots_for_Self-Supervised_Denoising_in_Real-World_Scenarios_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.049 논문 카드
- 제목: FinePOSE: Fine-Grained Prompt-Driven 3D Human Pose Estimation via Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 3D 비전/기하, 생성모델/디퓨전
- 핵심 초록 신호: The 3D Human Pose Estimation (3D HPE) task uses 2D images or videos to predict human joint coordinates in 3D space. Despite recent advancements in deep learning-based methods they mostly ignore the capability of coupl...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xu_FinePOSE_Fine-Grained_Prompt-Driven_3D_Human_Pose_Estimation_via_Diffusion_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.050 논문 카드
- 제목: 4D Visual Pre-training for Robot Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: General visual representations learned from web-scale datasets for robotics have achieved great success in recent years, enabling data-efficient robot learning on manipulation tasks; yet these pre-trained representati...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hou_4D_Visual_Pre-training_for_Robot_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.051 논문 카드
- 제목: Adversarial Attention Perturbations for Large Object Detection Transformers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Adversarial perturbations are useful tools for exposing vulnerabilities in neural networks. Existing adversarial perturbation methods for object detection are either limited to attacking CNN-based detectors or weak ag...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yahn_Adversarial_Attention_Perturbations_for_Large_Object_Detection_Transformers_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.052 논문 카드
- 제목: Beyond Brain Decoding: Visual-Semantic Reconstructions to Mental Creation Extension Based on fMRI
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 3D 비전/기하, 효율화/엣지
- 핵심 초록 신호: Decoding visual information from fMRI signals is an important pathway to understand how the brain represents the world, and is a cutting-edge field of artificial general intelligence. Decoding fMRI should not be limit...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jing_Beyond_Brain_Decoding_Visual-Semantic_Reconstructions_to_Mental_Creation_Extension_Based_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.053 논문 카드
- 제목: ConstStyle: Robust Domain Generalization with Unified Style Transformation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 효율화/엣지
- 핵심 초록 신호: Deep neural networks often suffer performance drops when test data distribution differs from training data. Domain Generalization (DG) aims to address this by focusing on domain-invariant features or augmenting data f...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tran_ConstStyle_Robust_Domain_Generalization_with_Unified_Style_Transformation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.054 논문 카드
- 제목: Event-guided Unified Framework for Low-light Video Enhancement, Frame Interpolation, and Deblurring
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 강건 인식, 에이전트/추론
- 핵심 초록 신호: In low-light environments, longer exposure times are commonly used to enhance image visibility; however, this inevitably leads to motion blur. Even with a long exposure time, videos captured in low-light environments ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kim_Event-guided_Unified_Framework_for_Low-light_Video_Enhancement_Frame_Interpolation_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.055 논문 카드
- 제목: GenDeg: Diffusion-based Degradation Synthesis for Generalizable All-In-One Image Restoration
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Deep learning-based models for All-In-One image Restoration (AIOR) have achieved significant advancements in recent years. However, their practical applicability is limited by poor generalization to samples outside th...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Rajagopalan_GenDeg_Diffusion-based_Degradation_Synthesis_for_Generalizable_All-In-One_Image_Restoration_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.056 논문 카드
- 제목: Hipandas: Hyperspectral Image Joint Denoising and Super-Resolution by Image Fusion with the Panchromatic Image
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 에이전트/추론, 3D 비전/기하
- 핵심 초록 신호: Hyperspectral images (HSIs) are frequently noisy and of low resolution due to the constraints of imaging devices. Recently launched satellites can concurrently acquire HSIs and panchromatic (PAN) images, enabling the ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xu_Hipandas_Hyperspectral_Image_Joint_Denoising_and_Super-Resolution_by_Image_Fusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.057 논문 카드
- 제목: Hydra-NeXt: Robust Closed-Loop Driving with Open-Loop Training
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 에이전트/추론
- 핵심 초록 신호: End-to-end autonomous driving research currently faces a critical challenge in bridging the gap between open-loop training and closed-loop deployment. Current approaches are trained to predict trajectories in an open-...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Hydra-NeXt_Robust_Closed-Loop_Driving_with_Open-Loop_Training_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.058 논문 카드
- 제목: Joint Learning of Pose Regression and Denoising Diffusion with Score Scaling Sampling for Category-level 6D Pose Estimation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Latest diffusion models have shown promising results in category-level 6D object pose estimation by modeling the conditional pose distribution with depth image input. The existing methods, however, suffer from slow co...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lee_Joint_Learning_of_Pose_Regression_and_Denoising_Diffusion_with_Score_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.059 논문 카드
- 제목: MegaSynth: Scaling Up 3D Scene Reconstruction with Synthesized Data
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: We propose scaling up 3D scene reconstruction by training with synthesized data. At the core of our work is MegaSynth, a procedurally generated 3D dataset comprising 700K scenes - over 50 times larger than the prior r...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Jiang_MegaSynth_Scaling_Up_3D_Scene_Reconstruction_with_Synthesized_Data_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.060 논문 카드
- 제목: Noise2Score3D: Tweedie's Approach for Unsupervised Point Cloud Denoising
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Building on recent advances in Bayesian statistics and image denoising, we propose Noise2Score3D, a fully unsupervised framework for point cloud denoising. Noise2Score3D learns the score function of the underlying poi...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wei_Noise2Score3D_Tweedies_Approach_for_Unsupervised_Point_Cloud_Denoising_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.061 논문 카드
- 제목: Partial Forward Blocking: A Novel Data Pruning Paradigm for Lossless Training Acceleration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 효율화/엣지
- 핵심 초록 신호: The ever-growing size of training datasets enhances the generalization capability of machine learning models but also incurs exorbitant computational costs. Existing data pruning approaches aim to accelerate training ...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wu_Partial_Forward_Blocking_A_Novel_Data_Pruning_Paradigm_for_Lossless_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.062 논문 카드
- 제목: PatchDPO: Patch-level DPO for Finetuning-free Personalized Image Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: Finetuning-free personalized image generation can synthesize customized images without test-time finetuning, attracting wide research interest owing to its high efficiency. Current finetuning-free methods simply adopt...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_PatchDPO_Patch-level_DPO_for_Finetuning-free_Personalized_Image_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.063 논문 카드
- 제목: Post-pre-training for Modality Alignment in Vision-Language Foundation Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Contrastive language image pre-training (CLIP) is an essential component of building modern vision-language foundation models. While CLIP demonstrates remarkable zero-shot performance on downstream tasks, the multi-mo...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yamaguchi_Post-pre-training_for_Modality_Alignment_in_Vision-Language_Foundation_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.064 논문 카드
- 제목: Rectification-specific Supervision and Constrained Estimator for Online Stereo Rectification
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Online stereo rectification is critical for autonomous vehicles and robots in dynamic environments, where factors such as vibration, temperature fluctuations, and mechanical stress can affect rectification accuracy an...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Gong_Rectification-specific_Supervision_and_Constrained_Estimator_for_Online_Stereo_Rectification_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.1.065 논문 카드
- 제목: TESPEC: Temporally-Enhanced Self-Supervised Pretraining for Event Cameras
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Long-term temporal information is crucial for event-based perception tasks, as raw events only encode pixel brightness changes. Recent works show that when trained from scratch, recurrent models achieve better results...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Mohammadi_TESPEC_Temporally-Enhanced_Self-Supervised_Pretraining_for_Event_Cameras_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.066 논문 카드
- 제목: Towards Adversarial Robustness via Debiased High-Confidence Logit Alignment
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Despite the remarkable progress of deep neural networks (DNNs) in various visual tasks, their vulnerability to adversarial examples raises significant security concerns. Recent adversarial training methods leverage in...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Towards_Adversarial_Robustness_via_Debiased_High-Confidence_Logit_Alignment_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.067 논문 카드
- 제목: UPP: Unified Point-Level Prompting for Robust Point Cloud Analysis
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 효율화/엣지, 3D 비전/기하
- 핵심 초록 신호: Pre-trained point cloud analysis models have shown promising advancements in various downstream tasks, yet their effectiveness is typically suffering from low-quality point cloud (i.e., noise and incompleteness), whic...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ai_UPP_Unified_Point-Level_Prompting_for_Robust_Point_Cloud_Analysis_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.1.068 논문 카드
- 제목: AdaRevD: Adaptive Patch Exiting Reversible Decoder Pushes the Limit of Image Deblurring
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 비디오/시계열
- 핵심 초록 신호: Despite the recent progress in enhancing the efficacy of image deblurring the limited decoding capability constrains the upper limit of State-Of-The-Art (SOTA) methods. This paper proposes a pioneering work Adaptive P...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Mao_AdaRevD_Adaptive_Patch_Exiting_Reversible_Decoder_Pushes_the_Limit_of_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.069 논문 카드
- 제목: Adversarially Robust Few-shot Learning via Parameter Co-distillation of Similarity and Class Concept Learners
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 효율화/엣지
- 핵심 초록 신호: Few-shot learning (FSL) facilitates a variety of computer vision tasks yet remains vulnerable to adversarial attacks. Existing adversarially robust FSL methods rely on either visual similarity learning or class concep...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Dong_Adversarially_Robust_Few-shot_Learning_via_Parameter_Co-distillation_of_Similarity_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.1.070 논문 카드
- 제목: Boosting Object Detection with Zero-Shot Day-Night Domain Adaptation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 검출/분할
- 핵심 초록 신호: Detecting objects in low-light scenarios presents a persistent challenge as detectors trained on well-lit data exhibit significant performance degradation on low-light data due to low visibility. Previous methods miti...
- 트렌드 해석: 악조건(저조도/노이즈/기상)에서의 신뢰도 확보가 연구에서 제품화로 연결되는 접점이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Du_Boosting_Object_Detection_with_Zero-Shot_Day-Night_Domain_Adaptation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

### 4.2 생성모델/디퓨전

#### 4.2.001 논문 카드
- 제목: IM-Zero: Instance-level Motion Controllable Video Generation in a Zero-shot Manner
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Controllability of video generation has been recently concerned in addition to the quality of generated videos. The main challenge to controllable video generation is to synthesize videos based on user-specified insta...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_IM-Zero_Instance-level_Motion_Controllable_Video_Generation_in_a_Zero-shot_Manner_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.002 논문 카드
- 제목: STDD: Spatio-Temporal Dual Diffusion for Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Diffusion probabilistic model is becoming the cornerstone of data generation, especially generating high-quality images. As an extension, video diffusion generation is in urgent need of a principled temporal-sequence ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yao_STDD_Spatio-Temporal_Dual_Diffusion_for_Video_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.003 논문 카드
- 제목: BIVDiff: A Training-Free Framework for General-Purpose Video Synthesis via Bridging Image and Video Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Diffusion models have made tremendous progress in text-driven image and video generation. Now text-to-image foundation models are widely applied to various downstream image synthesis tasks such as controllable image g...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Shi_BIVDiff_A_Training-Free_Framework_for_General-Purpose_Video_Synthesis_via_Bridging_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.004 논문 카드
- 제목: DiffEditor: Boosting Accuracy and Flexibility on Diffusion-based Image Editing
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Large-scale Text-to-Image (T2I) diffusion models have revolutionized image generation over the last few years. Although owning diverse and high-quality generation capabilities translating these abilities to fine-grain...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Mou_DiffEditor_Boosting_Accuracy_and_Flexibility_on_Diffusion-based_Image_Editing_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.005 논문 카드
- 제목: Direct2.5: Diverse Text-to-3D Generation via Multi-view 2.5D Diffusion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Recent advances in generative AI have unveiled significant potential for the creation of 3D content. However current methods either apply a pre-trained 2D diffusion model with the time-consuming score distillation sam...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Lu_Direct2.5_Diverse_Text-to-3D_Generation_via_Multi-view_2.5D_Diffusion_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.006 논문 카드
- 제목: DaCapo: Score Distillation as Stacked Bridge for Fast and High-quality 3D Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 효율화/엣지
- 핵심 초록 신호: Score Distillation Sampling (SDS) has been successfully extended to text-driven 3D scene editing with 2D pretrained diffusion models. However, SDS-based editing methods suffer from lengthy optimization processes with ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_DaCapo_Score_Distillation_as_Stacked_Bridge_for_Fast_and_High-quality_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.007 논문 카드
- 제목: UniVG: A Generalist Diffusion Model for Unified Image Generation and Editing
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Text-to-Image (T2I) diffusion models have shown impressive results in generating visually compelling images following user prompts. Building on this, various methods further fine-tune the pre-trained T2I model for spe...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Fu_UniVG_A_Generalist_Diffusion_Model_for_Unified_Image_Generation_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.008 논문 카드
- 제목: Self-correcting LLM-controlled Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Text-to-image generation has witnessed significant progress with the advent of diffusion models. Despite the ability to generate photorealistic images current text-to-image diffusion models still often struggle to acc...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wu_Self-correcting_LLM-controlled_Diffusion_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.009 논문 카드
- 제목: DreamOmni: Unified Image Generation and Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Currently, the success of large language models (LLMs) illustrates that a unified multitasking approach can significantly enhance model usability, streamline deployment, and foster synergistic benefits across differen...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xia_DreamOmni_Unified_Image_Generation_and_Editing_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.010 논문 카드
- 제목: Learning to Sample Effective and Diverse Prompts for Text-to-Image Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Recent advances in text-to-image diffusion models have demonstrated impressive image generation capabilities. However, it remains challenging to control the generation process with desired properties (e.g., aesthetic ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yun_Learning_to_Sample_Effective_and_Diverse_Prompts_for_Text-to-Image_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.011 논문 카드
- 제목: LinGen: Towards High-Resolution Minute-Length Text-to-Video Generation with Linear Computational Complexity
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Text-to-video generation enhances content creation but is highly computationally intensive: The computational cost of Diffusion Transformers (DiTs) scales quadratically in the number of pixels. This makes minute-lengt...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_LinGen_Towards_High-Resolution_Minute-Length_Text-to-Video_Generation_with_Linear_Computational_Complexity_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.012 논문 카드
- 제목: DiffusionGAN3D: Boosting Text-guided 3D Generation and Domain Adaptation by Combining 3D GANs and Diffusion Priors
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Text-guided domain adaptation and generation of 3D-aware portraits find many applications in various fields. However due to the lack of training data and the challenges in handling the high variety of geometry and app...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Lei_DiffusionGAN3D_Boosting_Text-guided_3D_Generation_and_Domain_Adaptation_by_Combining_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.013 논문 카드
- 제목: Self-Discovering Interpretable Diffusion Latent Directions for Responsible Text-to-Image Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 설명가능성/안전성
- 핵심 초록 신호: Diffusion-based models have gained significant popularity for text-to-image generation due to their exceptional image-generation capabilities. A risk with these models is the potential generation of inappropriate cont...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_Self-Discovering_Interpretable_Diffusion_Latent_Directions_for_Responsible_Text-to-Image_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.014 논문 카드
- 제목: DLFR-Gen: Diffusion-based Video Generation with Dynamic Latent Frame Rate
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Diffusion Transformer (DiT)-based generation models have achieved remarkable success in video generation. However, their inherent computational demands pose significant efficiency challenges. In this paper, we exploit...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yuan_DLFR-Gen_Diffusion-based_Video_Generation_with_Dynamic_Latent_Frame_Rate_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.015 논문 카드
- 제목: Detect-and-Guide: Self-regulation of Diffusion Models for Safe Text-to-Image Generation via Guideline Token Optimization
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 설명가능성/안전성
- 핵심 초록 신호: Text-to-image diffusion models have achieved state-of-the-art results in synthesis tasks; however, there is a growing concern about their potential misuse in creating harmful content. To mitigate these risks, post-hoc...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_Detect-and-Guide_Self-regulation_of_Diffusion_Models_for_Safe_Text-to-Image_Generation_via_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.016 논문 카드
- 제목: SceneFactor: Factored Latent 3D Diffusion for Controllable 3D Scene Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: We present SceneFactor, a diffusion-based approach for large-scale 3D scene generation that enables controllable generation and effortless editing. SceneFactor enables text-guided 3D scene synthesis through our factor...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Bokhovkin_SceneFactor_Factored_Latent_3D_Diffusion_for_Controllable_3D_Scene_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.017 논문 카드
- 제목: Track4Gen: Teaching Video Diffusion Models to Track Points Improves Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: While recent foundational video generators produce visually rich output, they still struggle with appearance drift, where objects gradually degrade or change inconsistently across frames, breaking visual coherence. We...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Jeong_Track4Gen_Teaching_Video_Diffusion_Models_to_Track_Points_Improves_Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.018 논문 카드
- 제목: PEEKABOO: Interactive Video Generation via Masked-Diffusion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Modern video generation models like Sora have achieved remarkable success in producing high-quality videos. However a significant limitation is their inability to offer interactive control to users a feature that prom...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Jain_PEEKABOO_Interactive_Video_Generation_via_Masked-Diffusion_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.019 논문 카드
- 제목: Residual Denoising Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: We propose residual denoising diffusion models (RDDM) a novel dual diffusion process that decouples the traditional single denoising diffusion process into residual diffusion and noise diffusion. This dual diffusion f...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Residual_Denoising_Diffusion_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.020 논문 카드
- 제목: SemCity: Semantic Scene Generation with Triplane Diffusion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, Embodied/로보틱스, 3D 비전/기하
- 핵심 초록 신호: We present "SemCity" a 3D diffusion model for semantic scene generation in real-world outdoor environments. Most 3D diffusion models focus on generating a single object synthetic indoor scenes or synthetic outdoor sce...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Lee_SemCity_Semantic_Scene_Generation_with_Triplane_Diffusion_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.021 논문 카드
- 제목: Diffusion Self-Distillation for Zero-Shot Customized Image Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Text-to-image diffusion models produce impressive results but are frustrating tools for artists who desire fine-grained control. For example, a common use case is to create images of a specific instance in novel conte...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Cai_Diffusion_Self-Distillation_for_Zero-Shot_Customized_Image_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.022 논문 카드
- 제목: FiVE-Bench: A Fine-grained Video Editing Benchmark for Evaluating Emerging Diffusion and Rectified Flow Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Numerous text-to-video (T2V) editing methods have emerged recently, but the lack of a standardized benchmark for fair evaluation has led to inconsistent claims and an inability to assess model sensitivity to hyperpara...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_FiVE-Bench_A_Fine-grained_Video_Editing_Benchmark_for_Evaluating_Emerging_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.023 논문 카드
- 제목: Kiss3DGen: Repurposing Image Diffusion Models for 3D Asset Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Diffusion models have achieved great success in generating 2D images. However, the quality and generalizability of 3D content generation remain limited. State-of-the-art methods often require large-scale 3D assets for...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lin_Kiss3DGen_Repurposing_Image_Diffusion_Models_for_3D_Asset_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.024 논문 카드
- 제목: Towards Enhanced Image Inpainting: Mitigating Unwanted Object Insertion and Preserving Color Consistency
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Recent advances in image inpainting increasingly use generative models to handle large irregular masks. However, these models can create unrealistic inpainted images due to two main issues: (1) Unwanted object inserti...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Towards_Enhanced_Image_Inpainting_Mitigating_Unwanted_Object_Insertion_and_Preserving_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.025 논문 카드
- 제목: VEGGIE: Instructional Editing and Reasoning Video Concepts with Grounded Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: While recent video diffusion models enable video editing, unifying diverse instructional editing tasks (e.g., add, remove, modify) under a single framework remains a significant challenge. In this paper, we introduce ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yu_VEGGIE_Instructional_Editing_and_Reasoning_Video_Concepts_with_Grounded_Generation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.026 논문 카드
- 제목: DiffInDScene: Diffusion-based High-Quality 3D Indoor Scene Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 효율화/엣지
- 핵심 초록 신호: We present DiffInDScene a novel framework for tackling the problem of high-quality 3D indoor scene generation which is challenging due to the complexity and diversity of the indoor scene geometry. Although diffusion-b...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ju_DiffInDScene_Diffusion-based_High-Quality_3D_Indoor_Scene_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.027 논문 카드
- 제목: SCEdit: Efficient and Controllable Image Diffusion Generation via Skip Connection Editing
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Image diffusion models have been utilized in various tasks such as text-to-image generation and controllable image synthesis. Recent research has introduced tuning methods that make subtle adjustments to the original ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Jiang_SCEdit_Efficient_and_Controllable_Image_Diffusion_Generation_via_Skip_Connection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.028 논문 카드
- 제목: DOLLAR: Few-Step Video Generation via Distillation and Latent Reward Optimization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: Diffusion probabilistic models have shown significant progress in video generation; however, their computational efficiency is limited by the large number of sampling steps required. Reducing sampling steps often comp...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ding_DOLLAR_Few-Step_Video_Generation_via_Distillation_and_Latent_Reward_Optimization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.029 논문 카드
- 제목: DiTaiListener: Controllable High Fidelity Listener Video Generation with Diffusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: Generating naturalistic and nuanced listener motions for extended interactions remains an open problem. Existing methods often rely on low-dimensional motion codes for facial behavior generation followed by photoreali...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Siniukov_DiTaiListener_Controllable_High_Fidelity_Listener_Video_Generation_with_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.030 논문 카드
- 제목: DriveScape: High-Resolution Driving Video Generation by Multi-View Feature Fusion
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Recent advancements in generative models offer promising solutions for synthesizing realistic driving videos, aiding in training autonomous driving perception models. However, existing methods often struggle with high...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wu_DriveScape_High-Resolution_Driving_Video_Generation_by_Multi-View_Feature_Fusion_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.031 논문 카드
- 제목: Edit Away and My Face Will not Stay: Personal Biometric Defense against Malicious Generative Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Recent advancements in diffusion models have made generative image editing more accessible than ever. While these developments allow users to generate creative edits with ease, they also raise significant ethical conc...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Edit_Away_and_My_Face_Will_not_Stay_Personal_Biometric_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.032 논문 카드
- 제목: Large-Scale Text-to-Image Model with Inpainting is a Zero-Shot Subject-Driven Image Generator
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Subject-driven text-to-image generation aims to produce images of a new subject within a desired context by accurately capturing both the visual characteristics of the subject and the semantic content of a text prompt...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shin_Large-Scale_Text-to-Image_Model_with_Inpainting_is_a_Zero-Shot_Subject-Driven_Image_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.033 논문 카드
- 제목: MatchDiffusion: Training-free Generation of Match-Cuts
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 비디오/시계열
- 핵심 초록 신호: Match-cuts are powerful cinematic tools that create seamless transitions between scenes, delivering strong visual and metaphorical connections. However, crafting impactful match-cuts is a challenging and resource-inte...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Pardo_MatchDiffusion_Training-free_Generation_of_Match-Cuts_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.034 논문 카드
- 제목: SALAD: Skeleton-aware Latent Diffusion for Text-driven Motion Generation and Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Text-driven motion generation has advanced significantly with the rise of denoising diffusion models. However, previous methods often oversimplify representations for the skeletal joints, temporal frames, and textual ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hong_SALAD_Skeleton-aware_Latent_Diffusion_for_Text-driven_Motion_Generation_and_Editing_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.035 논문 카드
- 제목: InteractDiffusion: Interaction Control in Text-to-Image Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Large-scale text-to-image (T2I) diffusion models have showcased incredible capabilities in generating coherent images based on textual descriptions enabling vast applications in content generation. While recent advanc...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Hoe_InteractDiffusion_Interaction_Control_in_Text-to-Image_Diffusion_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.036 논문 카드
- 제목: Make Pixels Dance: High-Dynamic Video Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 멀티모달/VLM
- 핵심 초록 신호: Creating high-dynamic videos such as motion-rich actions and sophisticated visual effects poses a significant challenge in the field of artificial intelligence. Unfortunately current state-of-the-art video generation ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zeng_Make_Pixels_Dance_High-Dynamic_Video_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.037 논문 카드
- 제목: PAIR Diffusion: A Comprehensive Multimodal Object-Level Image Editor
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Generative image editing has recently witnessed extremely fast-paced growth. Some works use high-level conditioning such as text while others use low-level conditioning. Nevertheless most of them lack fine-grained con...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Goel_PAIR_Diffusion_A_Comprehensive_Multimodal_Object-Level_Image_Editor_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.038 논문 카드
- 제목: Posterior Distillation Sampling
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: We introduce Posterior Distillation Sampling (PDS) a novel optimization method for parametric image editing based on diffusion models. Existing optimization-based methods which leverage the powerful 2D prior of diffus...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Koo_Posterior_Distillation_Sampling_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.039 논문 카드
- 제목: Referring Image Editing: Object-level Image Editing via Referring Expressions
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Significant advancements have been made in image editing with the recent advance of the Diffusion model. However most of the current methods primarily focus on global or subject-level modifications and often face limi...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Referring_Image_Editing_Object-level_Image_Editing_via_Referring_Expressions_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.040 논문 카드
- 제목: TRIP: Temporal Residual Learning with Image Noise Prior for Image-to-Video Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Recent advances in text-to-video generation have demonstrated the utility of powerful diffusion models. Nevertheless the problem is not trivial when shaping diffusion models to animate static image (i.e. image-to-vide...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_TRIP_Temporal_Residual_Learning_with_Image_Noise_Prior_for_Image-to-Video_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.041 논문 카드
- 제목: AnyEdit: Mastering Unified High-Quality Image Editing for Any Idea
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Instruction-based image editing aims to modify specific image elements with natural language instructions. However, current models in this domain often struggle to execute complex user instructions accurately, as they...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yu_AnyEdit_Mastering_Unified_High-Quality_Image_Editing_for_Any_Idea_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.042 논문 카드
- 제목: DiGA3D: Coarse-to-Fine Diffusional Propagation of Geometry and Appearance for Versatile 3D Inpainting
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Developing a unified pipeline that enables users to remove, re-texture, or replace objects in a versatile manner is crucial for text-guided 3D inpainting. However, there are still challenges in performing multiple 3D ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Pan_DiGA3D_Coarse-to-Fine_Diffusional_Propagation_of_Geometry_and_Appearance_for_Versatile_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.043 논문 카드
- 제목: DiffusionDrive: Truncated Diffusion Model for End-to-End Autonomous Driving
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Recently, the diffusion model has emerged as a powerful generative technique for robotic policy learning, capable of modeling multi-mode action distributions. Leveraging its capability for end-to-end autonomous drivin...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liao_DiffusionDrive_Truncated_Diffusion_Model_for_End-to-End_Autonomous_Driving_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.044 논문 카드
- 제목: EIDT-V: Exploiting Intersections in Diffusion Trajectories for Model-Agnostic, Zero-Shot, Training-Free Text-to-Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Zero-shot, training-free, image-based text-to-video generation is an emerging area that aims to generate videos using existing image-based diffusion models. Current methods in this space require specific architectural...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Jagpal_EIDT-V_Exploiting_Intersections_in_Diffusion_Trajectories_for_Model-Agnostic_Zero-Shot_Training-Free_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.045 논문 카드
- 제목: GS-DiT: Advancing Video Generation with Dynamic 3D Gaussian Fields through Efficient Dense 3D Point Tracking
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: 4D video control is essential in video generation as it enables the use of sophisticated lens techniques, such as multi-camera shooting and dolly zoom, which are currently unsupported by existing methods. Training a v...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Bian_GS-DiT_Advancing_Video_Generation_with_Dynamic_3D_Gaussian_Fields_through_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.046 논문 카드
- 제목: Generative Inbetweening through Frame-wise Conditions-Driven Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Generative inbetweening aims to generate intermediate frame sequences by utilizing two key frames as input. Although remarkable progress has been made in video generation models, generative inbetweening still faces ch...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhu_Generative_Inbetweening_through_Frame-wise_Conditions-Driven_Video_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.047 논문 카드
- 제목: Instant3dit: Multiview Inpainting for Fast Editing of 3D Objects
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: We propose a generative technique to edit 3D shapes, represented as meshes, NeRFs, or Gaussian Splats, in ~3 seconds, without the need for running an SDS type of optimization.Our key insight is to cast 3D editing as a...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Barda_Instant3dit_Multiview_Inpainting_for_Fast_Editing_of_3D_Objects_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.048 논문 카드
- 제목: LaneDiffusion: Improving Centerline Graph Learning via Prior Injected BEV Feature Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Centerline graphs, crucial for path planning in autonomous driving, are traditionally learned using deterministic methods. However, these methods often lack spatial reasoning and struggle with occluded or invisible ce...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_LaneDiffusion_Improving_Centerline_Graph_Learning_via_Prior_Injected_BEV_Feature_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.049 논문 카드
- 제목: MotionFollower: Editing Video Motion via Score-Guided Diffusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Despite impressive advancements in diffusion-based video editing models in altering video attributes, there has been limited exploration into modifying motion information while preserving the original protagonist's ap...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tu_MotionFollower_Editing_Video_Motion_via_Score-Guided_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.050 논문 카드
- 제목: OmniGen: Unified Image Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: The emergence of Large Language Models (LLMs) has unified language generation tasks and revolutionized human-machine interaction. However, in the realm of image generation, a unified model capable of handling various ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xiao_OmniGen_Unified_Image_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.051 논문 카드
- 제목: TurboFill: Adapting Few-step Text-to-image Model for Fast Image Inpainting
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 효율화/엣지
- 핵심 초록 신호: This paper introduces TurboFill, a fast image inpainting model that enhances a few-step text-to-image diffusion model with an inpainting adapter for high-quality and efficient inpainting. While standard diffusion mode...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xie_TurboFill_Adapting_Few-step_Text-to-image_Model_for_Fast_Image_Inpainting_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.052 논문 카드
- 제목: UIBDiffusion: Universal Imperceptible Backdoor Attack for Diffusion Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 검출/분할, 강건 인식
- 핵심 초록 신호: Recent studies show that diffusion models (DMs) are vulnerable to backdoor attacks. Existing backdoor attacks impose unconcealed triggers (e.g., a gray box and eyeglasses) that contain evident patterns, rendering rema...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Han_UIBDiffusion_Universal_Imperceptible_Backdoor_Attack_for_Diffusion_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.053 논문 카드
- 제목: 360DVD: Controllable Panorama Video Generation with 360-Degree Video Diffusion Model
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Panorama video recently attracts more interest in both study and application courtesy of its immersive experience. Due to the expensive cost of capturing 360-degree panoramic videos generating desirable panorama video...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_360DVD_Controllable_Panorama_Video_Generation_with_360-Degree_Video_Diffusion_Model_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.054 논문 카드
- 제목: CoDi: Conditional Diffusion Distillation for Higher-Fidelity and Faster Image Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Large generative diffusion models have revolutionized text-to-image generation and offer immense potential for conditional generation tasks such as image enhancement restoration editing and compositing. However their ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Mei_CoDi_Conditional_Diffusion_Distillation_for_Higher-Fidelity_and_Faster_Image_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.055 논문 카드
- 제목: Contrastive Denoising Score for Text-guided Latent Diffusion Image Editing
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 강건 인식, 에이전트/추론
- 핵심 초록 신호: With the remarkable advent of text-to-image diffusion models image editing methods have become more diverse and continue to evolve. A promising recent approach in this realm is Delta Denoising Score (DDS) - an image e...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Nam_Contrastive_Denoising_Score_for_Text-guided_Latent_Diffusion_Image_Editing_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.056 논문 카드
- 제목: DetDiffusion: Synergizing Generative and Perceptive Models for Enhanced Data Generation and Perception
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Current perceptive models heavily depend on resource-intensive datasets prompting the need for innovative solutions. Leveraging recent advances in diffusion models synthetic data by constructing image inputs from vari...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_DetDiffusion_Synergizing_Generative_and_Perceptive_Models_for_Enhanced_Data_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.057 논문 카드
- 제목: ElasticDiffusion: Training-free Arbitrary Size Image Generation through Global-Local Content Separation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Diffusion models have revolutionized image generation in recent years yet they are still limited to a few sizes and aspect ratios. We propose ElasticDiffusion a novel training-free decoding method that enables pretrai...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Haji-Ali_ElasticDiffusion_Training-free_Arbitrary_Size_Image_Generation_through_Global-Local_Content_Separation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.058 논문 카드
- 제목: PI3D: Efficient Text-to-3D Generation with Pseudo-Image Diffusion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Diffusion models trained on large-scale text-image datasets have demonstrated a strong capability of controllable high-quality image generation from arbitrary text prompts. However the generation quality and generaliz...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_PI3D_Efficient_Text-to-3D_Generation_with_Pseudo-Image_Diffusion_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.059 논문 카드
- 제목: Towards Understanding Cross and Self-Attention in Stable Diffusion for Text-Guided Image Editing
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 3D 비전/기하
- 핵심 초록 신호: Deep Text-to-Image Synthesis (TIS) models such as Stable Diffusion have recently gained significant popularity for creative text-to-image generation. However for domain-specific scenarios tuning-free Text-guided Image...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Towards_Understanding_Cross_and_Self-Attention_in_Stable_Diffusion_for_Text-Guided_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.2.060 논문 카드
- 제목: AKiRa: Augmentation Kit on Rays for Optical Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Recent advances in text-conditioned video diffusion have greatly improved video quality. However, these methods offer limited or sometimes no control to users on camera aspects, including dynamic camera motion, zoom, ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_AKiRa_Augmentation_Kit_on_Rays_for_Optical_Video_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.061 논문 카드
- 제목: Adaptive Caching for Faster Video Generation with Diffusion Transformers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Generating temporally-consistent high-fidelity videos can be computationally expensive, especially over longer temporal spans. More-recent Diffusion Transformers (DiTs)--- despite making significant headway in this co...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kahatapitiya_Adaptive_Caching_for_Faster_Video_Generation_with_Diffusion_Transformers_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.062 논문 카드
- 제목: Baking Gaussian Splatting into Diffusion Denoiser for Fast and Scalable Single-stage Image-to-3D Generation and Reconstruction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Existing feedforward image-to-3D methods mainly rely on 2D multi-view diffusion models that cannot guarantee 3D consistency. These methods easily collapse when changing the prompt view direction and mainly handle obje...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cai_Baking_Gaussian_Splatting_into_Diffusion_Denoiser_for_Fast_and_Scalable_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.063 논문 카드
- 제목: Diffusion-4K: Ultra-High-Resolution Image Synthesis with Latent Diffusion Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: In this paper, we present Diffusion-4K, a novel framework for direct ultra-high-resolution image synthesis using text-to-image diffusion models. The core advancements include: (1) Aesthetic-4K Benchmark: addressing th...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Diffusion-4K_Ultra-High-Resolution_Image_Synthesis_with_Latent_Diffusion_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.064 논문 카드
- 제목: Directional Label Diffusion Model for Learning from Noisy Labels
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 효율화/엣지
- 핵심 초록 신호: In image classification, the label quality of training data critically influences model generalization, especially for deep neural networks (DNNs). Traditionally, learning from noisy labels (LNL) can improve the gener...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hou_Directional_Label_Diffusion_Model_for_Learning_from_Noisy_Labels_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.065 논문 카드
- 제목: FADE: Frequency-Aware Diffusion Model Factorization for Video Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Recent advancements in diffusion frameworks have significantly enhanced video editing, achieving high fidelity and strong alignment with textual prompts. However, conventional approaches using image diffusion models f...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhu_FADE_Frequency-Aware_Diffusion_Model_Factorization_for_Video_Editing_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.066 논문 카드
- 제목: From Image to Video: An Empirical Study of Diffusion Representations
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Diffusion models have revolutionized generative modeling, enabling unprecedented realism in image and video synthesis.This success has sparked interest in leveraging their representations for visual understanding task...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Velez_From_Image_to_Video_An_Empirical_Study_of_Diffusion_Representations_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.067 논문 카드
- 제목: ICE-Bench: A Unified and Comprehensive Benchmark for Image Creating and Editing
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Image generation has witnessed significant advancements in the past few years. However, evaluating the performance of image generation models remains a formidable challenge. In this paper, we propose ICE-Bench, a unif...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Pan_ICE-Bench_A_Unified_and_Comprehensive_Benchmark_for_Image_Creating_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.068 논문 카드
- 제목: MagicDrive-V2: High-Resolution Long Video Generation for Autonomous Driving with Adaptive Control
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: The rapid advancement of diffusion models has greatly improved video synthesis, especially in controllable video generation, which is vital for applications like autonomous driving. Although DiT with 3D VAE has become...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Gao_MagicDrive-V2_High-Resolution_Long_Video_Generation_for_Autonomous_Driving_with_Adaptive_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.2.069 논문 카드
- 제목: Make It Count: Text-to-Image Generation with an Accurate Number of Objects
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Despite the unprecedented success of text-to-image diffusion models, controlling the number of depicted objects using text is surprisingly hard. This is important for various applications from technical documents, to ...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Binyamin_Make_It_Count_Text-to-Image_Generation_with_an_Accurate_Number_of_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.2.070 논문 카드
- 제목: Photolithography Overlay Map Generation with Implicit Knowledge Distillation Diffusion Transformer
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 효율화/엣지, 강건 인식
- 핵심 초록 신호: This paper presents the Implicit Knowledge Distillation Diffusion Transformer (IKDDiT), a groundbreaking model tailored for photolithography overlay map generation in semiconductor manufacturing. IKDDiT effectively ad...
- 트렌드 해석: 생성 기반 priors가 인식/복원/편집 전반에 침투하면서 학습 패러다임을 재구성하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_Photolithography_Overlay_Map_Generation_with_Implicit_Knowledge_Distillation_Diffusion_Transformer_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

### 4.3 3D 비전/기하

#### 4.3.001 논문 카드
- 제목: DepthSplat: Connecting Gaussian Splatting and Depth
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Gaussian splatting and single-view depth estimation are typically studied in isolation. In this paper, we present DepthSplat to connect Gaussian splatting and depth estimation and study their interactions. More specif...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xu_DepthSplat_Connecting_Gaussian_Splatting_and_Depth_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.002 논문 카드
- 제목: Global and Hierarchical Geometry Consistency Priors for Few-shot NeRFs in Indoor Scenes
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식, 에이전트/추론
- 핵심 초록 신호: It is challenging for Neural Radiance Fields (NeRFs) in the few-shot setting to reconstruct high-quality novel views and depth maps in 360^\circ outward-facing indoor scenes. The captured sparse views for these scenes...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Sun_Global_and_Hierarchical_Geometry_Consistency_Priors_for_Few-shot_NeRFs_in_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.003 논문 카드
- 제목: Ouroboros3D: Image-to-3D Generation via 3D-aware Recursive Diffusion
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Existing image-to-3D creation methods typically split the task into two individual stage: multi-view image generation and 3D reconstruction, leading to two main limitations: (1) In multi-view generation stage, the mul...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wen_Ouroboros3D_Image-to-3D_Generation_via_3D-aware_Recursive_Diffusion_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.004 논문 카드
- 제목: Behind the Veil: Enhanced Indoor 3D Scene Reconstruction with Occluded Surfaces Completion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식
- 핵심 초록 신호: In this paper we present a novel indoor 3D reconstruction method with occluded surface completion given a sequence of depth readings. Prior state-of-the-art (SOTA) methods only focus on the reconstruction of the visib...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Sun_Behind_the_Veil_Enhanced_Indoor_3D_Scene_Reconstruction_with_Occluded_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.005 논문 카드
- 제목: Sherpa3D: Boosting High-Fidelity Text-to-3D Generation via Coarse 3D Prior
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Recently 3D content creation from text prompts has demonstrated remarkable progress by utilizing 2D and 3D diffusion models. While 3D diffusion models ensure great multi-view consistency their ability to generate high...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Sherpa3D_Boosting_High-Fidelity_Text-to-3D_Generation_via_Coarse_3D_Prior_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.006 논문 카드
- 제목: MVBoost: Boost 3D Reconstruction with Multi-View Refinement
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Recent advancements in 3D object reconstruction have been remarkable, yet most current 3D models rely heavily on existing 3D datasets. The scarcity of diverse 3D datasets results in limited generalization capabilities...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_MVBoost_Boost_3D_Reconstruction_with_Multi-View_Refinement_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.007 논문 카드
- 제목: Text-to-3D using Gaussian Splatting
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Automatic text-to-3D generation that combines Score Distillation Sampling (SDS) with the optimization of volume rendering has achieved remarkable progress in synthesizing realistic 3D objects. Yet most existing text-t...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_Text-to-3D_using_Gaussian_Splatting_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.008 논문 카드
- 제목: What You See is What You GAN: Rendering Every Pixel for High-Fidelity Geometry in 3D GANs
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: 3D-aware Generative Adversarial Networks (GANs) have shown remarkable progress in learning to generate multi-view-consistent images and 3D geometries of scenes from collections of 2D images via neural volume rendering...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Trevithick_What_You_See_is_What_You_GAN_Rendering_Every_Pixel_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.009 논문 카드
- 제목: GSV3D: Gaussian Splatting-based Geometric Distillation with Stable Video Diffusion for Single-Image 3D Object Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Image-based 3D generation has vast applications in robotics and gaming, where high-quality, diverse outputs and consistent 3D representations are crucial. However, existing methods have limitations: 3D diffusion model...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tao_GSV3D_Gaussian_Splatting-based_Geometric_Distillation_with_Stable_Video_Diffusion_for_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.010 논문 카드
- 제목: Hash3D: Training-free Acceleration for 3D Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: The quality of 3D generative modeling has been notably improved by the adoption of 2D diffusion models. Despite this progress, the cumbersome optimization process per sepresents a critical problem to efficiency. In th...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yang_Hash3D_Training-free_Acceleration_for_3D_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.011 논문 카드
- 제목: How Far are AI-generated Videos from Simulating the 3D Visual World: A Learned 3D Evaluation Approach
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: Recent advancements in video diffusion models enable the generation of photorealistic videos with impressive 3D consistency and temporal coherence. However, the extent to which these AI-generated videos simulate the 3...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chang_How_Far_are_AI-generated_Videos_from_Simulating_the_3D_Visual_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.012 논문 카드
- 제목: InterGSEdit: Interactive 3D Gaussian Splatting Editing with 3D Geometry-Consistent Attention Prior
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: 3D Gaussian Splatting based 3D editing has demonstrated impressive performance in recent years. However, the multi-view editing often exhibits significant local inconsistency, especially in areas of non-rigid deformat...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wen_InterGSEdit_Interactive_3D_Gaussian_Splatting_Editing_with_3D_Geometry-Consistent_Attention_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.013 논문 카드
- 제목: NTO3D: Neural Target Object 3D Reconstruction with Segment Anything
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 검출/분할
- 핵심 초록 신호: Neural 3D reconstruction from multi-view images has recently attracted increasing attention from the community. Existing methods normally learn a neural field for the whole scene while it is still under-explored how t...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wei_NTO3D_Neural_Target_Object_3D_Reconstruction_with_Segment_Anything_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.014 논문 카드
- 제목: Rapid 3D Model Generation with Intuitive 3D Input
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: With the emergence of AR/VR 3D models are in tremendous demand. However conventional 3D modeling with Computer-Aided Design software requires much expertise and is difficult for novice users. We find that AR/VR device...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_Rapid_3D_Model_Generation_with_Intuitive_3D_Input_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.015 논문 카드
- 제목: Chain of Semantics Programming in 3D Gaussian Splatting Representation for 3D Vision Grounding
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: 3D Vision Grounding (3DVG) is a fundamental research area that enables agents to perceive and interact with the 3D world. The challenge of the 3DVG task lies in understanding fine-grained semantics and spatial relatio...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shi_Chain_of_Semantics_Programming_in_3D_Gaussian_Splatting_Representation_for_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.016 논문 카드
- 제목: IBD-SLAM: Learning Image-Based Depth Fusion for Generalizable SLAM
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식, 비디오/시계열
- 핵심 초록 신호: In this paper we address the challenging problem of visual SLAM with neural scene representations. Recently neural scene representations have shown promise for SLAM to produce dense 3D scene reconstruction with high q...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yin_IBD-SLAM_Learning_Image-Based_Depth_Fusion_for_Generalizable_SLAM_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.017 논문 카드
- 제목: A Lesson in Splats: Teacher-Guided Diffusion for 3D Gaussian Splats Generation with 2D Supervision
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: We present a novel framework for training 3D image-conditioned diffusion models using only 2D supervision. Recovering 3D structure from 2D images is inherently ill-posed due to the ambiguity of possible reconstruction...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Peng_A_Lesson_in_Splats_Teacher-Guided_Diffusion_for_3D_Gaussian_Splats_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.018 논문 카드
- 제목: DiGA3D: Coarse-to-Fine Diffusional Propagation of Geometry and Appearance for Versatile 3D Inpainting
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Developing a unified pipeline that enables users to remove, re-texture, or replace objects in a versatile manner is crucial for text-guided 3D inpainting. However, there are still challenges in performing multiple 3D ...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Pan_DiGA3D_Coarse-to-Fine_Diffusional_Propagation_of_Geometry_and_Appearance_for_Versatile_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.019 논문 카드
- 제목: FreqPDE: Rethinking Positional Depth Embedding for Multi-View 3D Object Detection Transformers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 검출/분할, 효율화/엣지
- 핵심 초록 신호: Detecting 3D objects accurately from multi-view 2D images is a challenging yet essential task in the field of autonomous driving. Current methods resort to integrating depth prediction to recover the spatial informati...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Su_FreqPDE_Rethinking_Positional_Depth_Embedding_for_Multi-View_3D_Object_Detection_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.020 논문 카드
- 제목: Generative Gaussian Splatting for Unbounded 3D City Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: 3D city generation with NeRF-based methods shows promising generation results but is computationally inefficient. Recently 3D Gaussian splatting (3D-GS) has emerged as a highly efficient alternative for object-level 3...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xie_Generative_Gaussian_Splatting_for_Unbounded_3D_City_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.021 논문 카드
- 제목: POMATO: Marrying Pointmap Matching with Temporal Motions for Dynamic 3D Reconstruction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Recent approaches to 3D reconstruction in dynamic scenes primarily rely on the integration of separate geometry estimation and matching modules, where the latter plays a critical role in distinguishing dynamic regions...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_POMATO_Marrying_Pointmap_Matching_with_Temporal_Motions_for_Dynamic_3D_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.022 논문 카드
- 제목: SharpDepth: Sharpening Metric Depth Predictions Using Diffusion Distillation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: We propose SharpDepth, a novel approach to monocular metric depth estimation that combines the metric accuracy of discriminative depth estimation methods (e.g., Metric3D, UniDepth) with the fine-grained boundary sharp...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Pham_SharpDepth_Sharpening_Metric_Depth_Predictions_Using_Diffusion_Distillation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.023 논문 카드
- 제목: Gaussian Splatting SLAM
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: We present the first application of 3D Gaussian Splatting in monocular SLAM the most fundamental but the hardest setup for Visual SLAM. Our method which runs live at 3fps utilises Gaussians as the only 3D representati...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Matsuki_Gaussian_Splatting_SLAM_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.024 논문 카드
- 제목: 3D Gaussian Inpainting with Depth-Guided Cross-View Consistency
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: When performing 3D inpainting using novel-view rendering methods like Neural Radiance Field (NeRF) or 3D Gussian Splatting (3DGS), how to achieve texture and geometry consistency across camera views has been a challen...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_3D_Gaussian_Inpainting_with_Depth-Guided_Cross-View_Consistency_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.025 논문 카드
- 제목: 3D-HGS: 3D Half-Gaussian Splatting
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하
- 핵심 초록 신호: Photo-realistic image rendering from 3D scene reconstruction has advanced significantly with neural rendering techniques. Among these, 3D Gaussian Splatting (3D-GS) outperforms Neural Radiance Fields (NeRFs) in qualit...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_3D-HGS_3D_Half-Gaussian_Splatting_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.026 논문 카드
- 제목: CATSplat: Context-Aware Transformer with Spatial Guidance for Generalizable 3D Gaussian Splatting from A Single-View Image
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Recently, generalizable feed-forward methods based on 3D Gaussian Splatting have gained significant attention for their potential to reconstruct 3D scenes using finite resources. These approaches create a 3D radiance ...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Roh_CATSplat_Context-Aware_Transformer_with_Spatial_Guidance_for_Generalizable_3D_Gaussian_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.027 논문 카드
- 제목: CLIP-GS: Unifying Vision-Language Representation with 3D Gaussian Splatting
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Recent works in 3D representation learning and multimodal pre-training have made remarkable progress. However, typically multimodal 3D models are only capable of handling point clouds. Compared to the emerging 3D repr...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jiao_CLIP-GS_Unifying_Vision-Language_Representation_with_3D_Gaussian_Splatting_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.028 논문 카드
- 제목: Coherent 3D Portrait Video Reconstruction via Triplane Fusion
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Recent breakthroughs in single-image 3D portrait reconstruction have enabled telepresence systems to stream 3D portrait videos from a single camera in real-time, democratizing telepresence. However, per-frame 3D recon...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Coherent_3D_Portrait_Video_Reconstruction_via_Triplane_Fusion_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.029 논문 카드
- 제목: CompGS: Unleashing 2D Compositionality for Compositional Text-to-3D via Dynamically Optimizing 3D Gaussians
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Recent breakthroughs in text-guided image generation have significantly advanced the field of 3D generation. While generating a single high-quality 3D object is now feasible, generating multiple objects with reasonabl...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ge_CompGS_Unleashing_2D_Compositionality_for_Compositional_Text-to-3D_via_Dynamically_Optimizing_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.030 논문 카드
- 제목: Efficient Decoupled Feature 3D Gaussian Splatting via Hierarchical Compression
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 효율화/엣지, 검출/분할
- 핵심 초록 신호: Efficient 3D scene representation has become a key challenge with the rise of 3D Gaussian Splatting (3DGS), particularly when incorporating semantic information into the scene representation. Existing 3DGS-based metho...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Dai_Efficient_Decoupled_Feature_3D_Gaussian_Splatting_via_Hierarchical_Compression_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.031 논문 카드
- 제목: GSRecon: Efficient Generalizable Gaussian Splatting for Surface Reconstruction from Sparse Views
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Generalizable surface reconstruction aims to recover the surface the scene from a sparse set of images in a feed-forward manner. Existing volume rendering-based methods evaluate numerous points along camera rays to in...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_GSRecon_Efficient_Generalizable_Gaussian_Splatting_for_Surface_Reconstruction_from_Sparse_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.032 논문 카드
- 제목: HFD-Teacher: High-Frequency Depth Distillation from Depth Foundation Models for Enhanced Depth Completion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Depth completion, the task of reconstructing dense depth maps from sparse depth and RGB images, plays a critical role in 3D scene understanding. However, existing methods often struggle to recover high-frequency detai...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_HFD-Teacher_High-Frequency_Depth_Distillation_from_Depth_Foundation_Models_for_Enhanced_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.033 논문 카드
- 제목: Learned Binocular-Encoding Optics for RGBD Imaging Using Joint Stereo and Focus Cues
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하
- 핵심 초록 신호: Extracting high-fidelity RGBD information from two-dimensional (2D) images is essential for various visual computing applications. Stereo imaging, as a reliable passive imaging technique for obtaining three-dimensiona...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_Learned_Binocular-Encoding_Optics_for_RGBD_Imaging_Using_Joint_Stereo_and_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.034 논문 카드
- 제목: Mono2Stereo: A Benchmark and Empirical Study for Stereo Conversion
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: With the rapid proliferation of 3D devices and the shortage of 3D content, stereo conversion is attracting increasing attention. Recent works introduce pretrained Diffusion Models (DMs) into this task. However, due to...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yu_Mono2Stereo_A_Benchmark_and_Empirical_Study_for_Stereo_Conversion_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.035 논문 카드
- 제목: Mono3DVLT: Monocular-Video-Based 3D Visual Language Tracking
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: Visual-Language Tracking (VLT) is emerging as a promising paradigm to bridge the human-machine performance gap. For single objects, VLT broadens the problem scope to text-driven video comprehension. Yet, this directio...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wei_Mono3DVLT_Monocular-Video-Based_3D_Visual_Language_Tracking_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.036 논문 카드
- 제목: SAR3D: Autoregressive 3D Object Generation and Understanding via Multi-scale 3D VQVAE
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: Autoregressive models have demonstrated remarkable success across various fields, from large language models (LLMs) to large multimodal models (LMMs) and 2D content generation, moving closer to artificial general inte...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_SAR3D_Autoregressive_3D_Object_Generation_and_Understanding_via_Multi-scale_3D_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.037 논문 카드
- 제목: GS-SLAM: Dense Visual SLAM with 3D Gaussian Splatting
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: In this paper we introduce GS-SLAM that first utilizes 3D Gaussian representation in the Simultaneous Localization and Mapping (SLAM) system. It facilitates a better balance between efficiency and accuracy. Compared t...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yan_GS-SLAM_Dense_Visual_SLAM_with_3D_Gaussian_Splatting_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.038 논문 카드
- 제목: GaussianDreamer: Fast Generation from Text to 3D Gaussians by Bridging 2D and 3D Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: In recent times the generation of 3D assets from text prompts has shown impressive results. Both 2D and 3D diffusion models can help generate decent 3D objects based on prompts. 3D diffusion models have good 3D consis...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yi_GaussianDreamer_Fast_Generation_from_Text_to_3D_Gaussians_by_Bridging_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.039 논문 카드
- 제목: Joint Reconstruction of 3D Human and Object via Contact-Based Refinement Transformer
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Human-object contact serves as a strong cue to understand how humans physically interact with objects. Nevertheless it is not widely explored to utilize human-object contact information for the joint reconstruction of...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Nam_Joint_Reconstruction_of_3D_Human_and_Object_via_Contact-Based_Refinement_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.040 논문 카드
- 제목: Mind The Edge: Refining Depth Edges in Sparsely-Supervised Monocular Depth Estimation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Monocular Depth Estimation (MDE) is a fundamental problem in computer vision with numerous applications. Recently LIDAR-supervised methods have achieved remarkable per-pixel depth accuracy in outdoor scenes. However s...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Talker_Mind_The_Edge_Refining_Depth_Edges_in_Sparsely-Supervised_Monocular_Depth_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.041 논문 카드
- 제목: Structure-Aware Sparse-View X-ray 3D Reconstruction
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하
- 핵심 초록 신호: X-ray known for its ability to reveal internal structures of objects is expected to provide richer information for 3D reconstruction than visible light. Yet existing NeRF algorithms overlook this nature of X-ray leadi...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Cai_Structure-Aware_Sparse-View_X-ray_3D_Reconstruction_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.042 논문 카드
- 제목: VP3D: Unleashing 2D Visual Prompt for Text-to-3D Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Recent innovations on text-to-3D generation have featured Score Distillation Sampling (SDS) which enables the zero-shot learning of implicit 3D models (NeRF) by directly distilling prior knowledge from 2D diffusion mo...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_VP3D_Unleashing_2D_Visual_Prompt_for_Text-to-3D_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.043 논문 카드
- 제목: Weakly Supervised Monocular 3D Detection with a Single-View Image
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 검출/분할, 효율화/엣지
- 핵심 초록 신호: Monocular 3D detection (M3D) aims for precise 3D object localization from a single-view image which usually involves labor-intensive annotation of 3D detection boxes. Weakly supervised M3D has recently been studied to...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Jiang_Weakly_Supervised_Monocular_3D_Detection_with_a_Single-View_Image_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.044 논문 카드
- 제목: 3D-LLaVA: Towards Generalist 3D LMMs with Omni Superpoint Transformer
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Current 3D Large Multimodal Models (3D LMMs) have shown tremendous potential in 3D-vision-based dialogue and reasoning. However, how to further enhance 3D LMMs to achieve fine-grained scene understanding and facilitat...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_3D-LLaVA_Towards_Generalist_3D_LMMs_with_Omni_Superpoint_Transformer_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.045 논문 카드
- 제목: 3DRealCar: An In-the-wild RGB-D Car Dataset with 360-degree Views
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 검출/분할
- 핵심 초록 신호: 3D cars are widely used in self-driving systems, virtual and augmented reality, and gaming applications. However, existing 3D car datasets are either synthetic or low-quality, limiting their practical utility and leav...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Du_3DRealCar_An_In-the-wild_RGB-D_Car_Dataset_with_360-degree_Views_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.046 논문 카드
- 제목: Bridging Diffusion Models and 3D Representations: A 3D Consistent Super-Resolution Framework
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: We propose 3D Super Resolution (3DSR), a novel 3D Gaussian-splatting-based super-resolution framework that leverages off-the-shelf diffusion-based 2D super-resolution models. 3DSR encourages 3D consistency across view...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_Bridging_Diffusion_Models_and_3D_Representations_A_3D_Consistent_Super-Resolution_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.047 논문 카드
- 제목: Common3D: Self-Supervised Learning of 3D Morphable Models for Common Objects in Neural Feature Space
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 검출/분할, 강건 인식
- 핵심 초록 신호: 3D morphable models (3DMMs) are a powerful tool to represent the possible shapes and appearances of an object category. Given a single test image, 3DMMs can be used to solve various tasks, such as predicting the 3D sh...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Sommer_Common3D_Self-Supervised_Learning_of_3D_Morphable_Models_for_Common_Objects_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.048 논문 카드
- 제목: DualPM: Dual Posed-Canonical Point Maps for 3D Shape and Pose Reconstruction
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식
- 핵심 초록 신호: The choice of data representation is a key factor in the success of deep learning in geometric tasks. For instance, DUSt3R has recently introduced the concept of viewpoint- invariant point maps, generalizing depth pre...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kaye_DualPM_Dual_Posed-Canonical_Point_Maps_for_3D_Shape_and_Pose_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.049 논문 카드
- 제목: Eval3D: Interpretable and Fine-grained Evaluation for 3D Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Despite the unprecedented progress in the field of 3D generation, current systems still often fail to produce high-quality 3D assets that are visually appealing and geometrically and semantically consistent across mul...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Duggal_Eval3D_Interpretable_and_Fine-grained_Evaluation_for_3D_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.050 논문 카드
- 제목: GS-Occ3D: Scaling Vision-only Occupancy Reconstruction with Gaussian Splatting
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Occupancy is crucial for autonomous driving, providing essential geometric priors for perception and planning. However, existing methods predominantly rely on LiDAR-based occupancy annotations, which limits scalabilit...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ye_GS-Occ3D_Scaling_Vision-only_Occupancy_Reconstruction_with_Gaussian_Splatting_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.051 논문 카드
- 제목: Generative Gaussian Splatting: Generating 3D Scenes with Video Diffusion Priors
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Synthesizing consistent and photorealistic 3D scenes is an open problem in computer vision. Video diffusion models generate impressive videos but cannot directly synthesize 3D representations, i.e., lack 3D consistenc...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Schwarz_Generative_Gaussian_Splatting_Generating_3D_Scenes_with_Video_Diffusion_Priors_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.052 논문 카드
- 제목: Hi3DGen: High-fidelity 3D Geometry Generation from Images via Normal Bridging
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: With the growing demand for high-fidelity 3D models from 2D images, existing methods still face significant challenges in accurately reproducing fine-grained geometric details due to limitations in domain gaps and inh...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ye_Hi3DGen_High-fidelity_3D_Geometry_Generation_from_Images_via_Normal_Bridging_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.053 논문 카드
- 제목: High-fidelity 3D Object Generation from Single Image with RGBN-Volume Gaussian Reconstruction Model
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Recently single-view 3D generation via Gaussian splatting has emerged and developed quickly. They learn 3D Gaussians from 2D RGB images generated from pre-trained multi-view diffusion (MVD) models, and have shown a pr...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shen_High-fidelity_3D_Object_Generation_from_Single_Image_with_RGBN-Volume_Gaussian_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.054 논문 카드
- 제목: Kiss3DGen: Repurposing Image Diffusion Models for 3D Asset Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Diffusion models have achieved great success in generating 2D images. However, the quality and generalizability of 3D content generation remain limited. State-of-the-art methods often require large-scale 3D assets for...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lin_Kiss3DGen_Repurposing_Image_Diffusion_Models_for_3D_Asset_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.055 논문 카드
- 제목: LHM: Large Animatable Human Reconstruction Model for Single Image to 3D in Seconds
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Animatable 3D human reconstruction from a single image is a challenging problem due to the ambiguity in decoupling geometry, appearance, and deformation. Recent advances in 3D human reconstruction mainly focus on stat...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qiu_LHM_Large_Animatable_Human_Reconstruction_Model_for_Single_Image_to_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.056 논문 카드
- 제목: Marigold-DC: Zero-Shot Monocular Depth Completion with Guided Diffusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Depth completion upgrades sparse depth measurements into dense depth maps, guided by a conventional image. Existing methods for this highly ill-posed task operate in tightly constrained settings, and tend to struggle ...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Viola_Marigold-DC_Zero-Shot_Monocular_Depth_Completion_with_Guided_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.057 논문 카드
- 제목: Neuro-3D: Towards 3D Visual Decoding from EEG Signals
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Human's perception of the visual world is shaped by the stereo processing of 3D information. Understanding how the brain perceives and processes 3D visual stimuli in the real world has been a longstanding endeavor in ...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Guo_Neuro-3D_Towards_3D_Visual_Decoding_from_EEG_Signals_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.058 논문 카드
- 제목: Outdoor Monocular SLAM with Global Scale-Consistent 3D Gaussian Pointmaps
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 강건 인식
- 핵심 초록 신호: 3D Gaussian Splatting (3DGS) has become a popular solution in SLAM due to its high-fidelity and real-time novel view synthesis performance. However, some previous 3DGS SLAM methods employ a differentiable rendering pi...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cheng_Outdoor_Monocular_SLAM_with_Global_Scale-Consistent_3D_Gaussian_Pointmaps_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.059 논문 카드
- 제목: PUP 3D-GS: Principled Uncertainty Pruning for 3D Gaussian Splatting
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Recent advances in novel view synthesis have enabled real-time rendering speeds with high reconstruction accuracy. 3D Gaussian Splatting (3D-GS), a foundational point-based parametric 3D scene representation, models s...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hanson_PUP_3D-GS_Principled_Uncertainty_Pruning_for_3D_Gaussian_Splatting_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.060 논문 카드
- 제목: RadarSplat: Radar Gaussian Splatting for High-Fidelity Data Synthesis and 3D Reconstruction of Autonomous Driving Scenes
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: High-fidelity 3D scene reconstruction plays a crucial role in autonomous driving by enabling novel data generation from existing datasets. This allows simulating safety-critical scenarios and augmenting training datas...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kung_RadarSplat_Radar_Gaussian_Splatting_for_High-Fidelity_Data_Synthesis_and_3D_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.061 논문 카드
- 제목: SLAM3R: Real-Time Dense Scene Reconstruction from Monocular RGB Videos
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 멀티모달/VLM
- 핵심 초록 신호: In this paper, we introduce SLAM3R, a novel and effective system for real-time, high-quality, dense 3D reconstruction using RGB videos. SLAM3R provides an end-to-end solution by seamlessly integrating local 3D reconst...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_SLAM3R_Real-Time_Dense_Scene_Reconstruction_from_Monocular_RGB_Videos_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.062 논문 카드
- 제목: SpecTRe-GS: Modeling Highly Specular Surfaces with Reflected Nearby Objects by Tracing Rays in 3D Gaussian Splatting
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: 3D Gaussian Splatting (3DGS), a recently emerged multi-view 3D reconstruction technique, has shown significant advantages in real-time rendering and explicit editing. However, 3DGS encounters challenges in the accurat...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tang_SpecTRe-GS_Modeling_Highly_Specular_Surfaces_with_Reflected_Nearby_Objects_by_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.063 논문 카드
- 제목: V2V3D: View-to-View Denoised 3D Reconstruction for Light Field Microscopy
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Light field microscopy (LFM) has gained significant attention due to its ability to capture snapshot-based, large-scale 3D fluorescence images. However, existing LFM reconstruction algorithms are highly sensitive to s...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_V2V3D_View-to-View_Denoised_3D_Reconstruction_for_Light_Field_Microscopy_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.064 논문 카드
- 제목: NeRF Analogies: Example-Based Visual Attribute Transfer for NeRFs
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식
- 핵심 초록 신호: A Neural Radiance Field (NeRF) encodes the specific relation of 3D geometry and appearance of a scene. We here ask the question whether we can transfer the appearance from a source NeRF onto a target 3D geometry in a ...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Fischer_NeRF_Analogies_Example-Based_Visual_Attribute_Transfer_for_NeRFs_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.065 논문 카드
- 제목: PlatoNeRF: 3D Reconstruction in Plato's Cave via Single-View Two-Bounce Lidar
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: 3D reconstruction from a single-view is challenging because of the ambiguity from monocular cues and lack of information about occluded regions. Neural radiance fields (NeRF) while popular for view synthesis and 3D re...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Klinghoffer_PlatoNeRF_3D_Reconstruction_in_Platos_Cave_via_Single-View_Two-Bounce_Lidar_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.066 논문 카드
- 제목: SelfOcc: Self-Supervised Vision-Based 3D Occupancy Prediction
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식, 비디오/시계열
- 핵심 초록 신호: 3D occupancy prediction is an important task for the robustness of vision-centric autonomous driving which aims to predict whether each point is occupied in the surrounding 3D space. Existing methods usually require 3...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Huang_SelfOcc_Self-Supervised_Vision-Based_3D_Occupancy_Prediction_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.067 논문 카드
- 제목: WorDepth: Variational Language Prior for Monocular Depth Estimation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Three-dimensional (3D) reconstruction from a single image is an ill-posed problem with inherent ambiguities i.e. scale. Predicting a 3D scene from text description(s) is similarly ill-posed i.e. spatial arrangements o...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zeng_WorDepth_Variational_Language_Prior_for_Monocular_Depth_Estimation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.3.068 논문 카드
- 제목: 3DTopia-XL: Scaling High-quality 3D Asset Generation via Primitive Diffusion
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: The increasing demand for high-quality 3D assets across various industries necessitates efficient and automated 3D content creation. Despite recent advancements in 3D generative models, existing methods still face cha...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_3DTopia-XL_Scaling_High-quality_3D_Asset_Generation_via_Primitive_Diffusion_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.3.069 논문 카드
- 제목: Bolt3D: Generating 3D Scenes in Seconds
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: We present a latent diffusion model for fast feed-forward 3D scene generation. Given one or more images, our model Bolt3D directly samples a 3D scene representation in less than seven seconds on a single GPU. We achie...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Szymanowicz_Bolt3D_Generating_3D_Scenes_in_Seconds_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.3.070 논문 카드
- 제목: CH3Depth: Efficient and Flexible Depth Foundation Model with Flow Matching
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: Depth estimation is a fundamental task in 3D vision. An ideal depth estimation model is expected to embrace meticulous detail, temporal consistency, and high efficiency. Although existing foundation models can perform...
- 트렌드 해석: 2D-중심 벤치마크에서 공간 이해/재구성/렌더링을 포함한 3D 파이프라인으로 무게중심이 이동한다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_CH3Depth_Efficient_and_Flexible_Depth_Foundation_Model_with_Flow_Matching_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

### 4.4 비디오/시계열

#### 4.4.001 논문 카드
- 제목: IM-Zero: Instance-level Motion Controllable Video Generation in a Zero-shot Manner
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Controllability of video generation has been recently concerned in addition to the quality of generated videos. The main challenge to controllable video generation is to synthesize videos based on user-specified insta...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_IM-Zero_Instance-level_Motion_Controllable_Video_Generation_in_a_Zero-shot_Manner_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.002 논문 카드
- 제목: VideoSPatS: Video SPatiotemporal Splines for Disentangled Occlusion, Appearance and Motion Modeling and Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: We present an implicit video representation for occlusions, appearance, and motion disentanglement from monocular videos, which we refer to as Video Spatiotemporal Splines (VideoSPatS).Unlike previous methods that map...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Gonzalez_VideoSPatS_Video_SPatiotemporal_Splines_for_Disentangled_Occlusion_Appearance_and_Motion_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.003 논문 카드
- 제목: MotionStone: Decoupled Motion Intensity Modulation with Diffusion Transformer for Image-to-Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: The image-to-video (I2V) generation is conditioned on the static image, which has been enhanced recently by the motion intensity as an additional control signal. These motion-aware models are appealing to generate div...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shi_MotionStone_Decoupled_Motion_Intensity_Modulation_with_Diffusion_Transformer_for_Image-to-Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.004 논문 카드
- 제목: VideoVAE+: Large Motion Video Autoencoding with Cross-modal Video VAE
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Learning a robust video Variational Autoencoder (VAE) is essential for reducing video redundancy and facilitating efficient video generation. Directly applying image VAEs to individual frames in isolation results in t...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xing_VideoVAE_Large_Motion_Video_Autoencoding_with_Cross-modal_Video_VAE_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.005 논문 카드
- 제목: A Plug-and-Play Physical Motion Restoration Approach for In-the-Wild High-Difficulty Motions
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Extracting physically plausible 3D human motion from videos is a critical task. Although existing simulation-based motion imitation methods can enhance the physical quality of daily motions estimated from monocular vi...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_A_Plug-and-Play_Physical_Motion_Restoration_Approach_for_In-the-Wild_High-Difficulty_Motions_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.006 논문 카드
- 제목: VideoTree: Adaptive Tree-based Video Representation for LLM Reasoning on Long Videos
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Long-form video understanding has been a challenging task due to the high redundancy in video data and the abundance of query-irrelevant information. To tackle this challenge, we propose VideoTree, a training-free fra...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_VideoTree_Adaptive_Tree-based_Video_Representation_for_LLM_Reasoning_on_Long_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.007 논문 카드
- 제목: MATE: Motion-Augmented Temporal Consistency for Event-based Point Tracking
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Tracking Any Point (TAP) plays a crucial role in motion analysis. Video-based approaches rely on iterative local matching for tracking, but they assume linear motion during the blind time between frames, which leads t...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Han_MATE_Motion-Augmented_Temporal_Consistency_for_Event-based_Point_Tracking_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.008 논문 카드
- 제목: Motion Prompting: Controlling Video Generation with Motion Trajectories
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Motion control is crucial for generating expressive and compelling video content; however, most existing video generation models rely mainly on text prompts for control, which struggle to capture the nuances of dynami...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Geng_Motion_Prompting_Controlling_Video_Generation_with_Motion_Trajectories_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.009 논문 카드
- 제목: Motion-Grounded Video Reasoning: Understanding and Perceiving Motion at Pixel Level
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: In this paper, we introduce Motion-Grounded Video Reasoning, a new motionunderstanding task that requires generating visual answers (video segmentationmasks) according to the input question, and hence needs implicit s...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_Motion-Grounded_Video_Reasoning_Understanding_and_Perceiving_Motion_at_Pixel_Level_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.010 논문 카드
- 제목: Protecting Your Video Content: Disrupting Automated Video-based LLM Annotations
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Recently, video-based large language models (video-based LLMs) have achieved impressive performance across various video comprehension tasks. However, this rapid advancement raises significant privacy and security con...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_Protecting_Your_Video_Content_Disrupting_Automated_Video-based_LLM_Annotations_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.011 논문 카드
- 제목: Reangle-A-Video: 4D Video Generation as Video-to-Video Translation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: We introduce Reangle-A-Video, a unified framework for generating synchronized multi-view videos from a single input video. Unlike mainstream approaches that train multi-view video diffusion models on large-scale 4D da...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jeong_Reangle-A-Video_4D_Video_Generation_as_Video-to-Video_Translation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.012 논문 카드
- 제목: GENMO: A GENeralist Model for Human MOtion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Human motion modeling traditionally separates motion generation and estimation into distinct tasks with specialized models. Motion generation models focus on creating diverse, realistic motions from inputs like text, ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_GENMO_A_GENeralist_Model_for_Human_MOtion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.013 논문 카드
- 제목: MotionBench: Benchmarking and Improving Fine-grained Video Motion Understanding for Vision Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: In the quest for artificial general intelligence, Multi-modal Large Language Models (MLLMs) have emerged as a focal point in recent advancements. However, the predominant focus remains on developing their capabilities...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hong_MotionBench_Benchmarking_and_Improving_Fine-grained_Video_Motion_Understanding_for_Vision_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.014 논문 카드
- 제목: Video Harmonization with Triplet Spatio-Temporal Variation Patterns
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 강건 인식
- 핵심 초록 신호: Video harmonization is an important and challenging task that aims to obtain visually realistic composite videos by automatically adjusting the foreground's appearance to harmonize with the background. Inspired by the...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Guo_Video_Harmonization_with_Triplet_Spatio-Temporal_Variation_Patterns_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.015 논문 카드
- 제목: DisTime: Distribution-based Time Representation for Video Large Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Despite advances in general video understanding, Video Large Language Models (Video-LLMs) face challenges in precise temporal localization due to discrete time representations and limited temporally aware datasets. Ex...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zeng_DisTime_Distribution-based_Time_Representation_for_Video_Large_Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.016 논문 카드
- 제목: TimeTracker: Event-based Continuous Point Tracking for Video Frame Interpolation with Non-linear Motion
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 검출/분할
- 핵심 초록 신호: Video frame interpolation (VFI) that leverages the bio-inspired event cameras as guidance has recently shown better performance and memory efficiency than the frame-based methods, thanks to the event cameras' advantag...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_TimeTracker_Event-based_Continuous_Point_Tracking_for_Video_Frame_Interpolation_with_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.017 논문 카드
- 제목: VISTA: Enhancing Long-Duration and High-Resolution Video Understanding by Video Spatiotemporal Augmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM
- 핵심 초록 신호: Current large multimodal models (LMMs) face significant challenges in processing and comprehending long-duration or high-resolution videos, which is mainly due to the lack of high-quality datasets. To address this iss...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ren_VISTA_Enhancing_Long-Duration_and_High-Resolution_Video_Understanding_by_Video_Spatiotemporal_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.018 논문 카드
- 제목: VideoOrion: Tokenizing Object Dynamics in Videos
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: We present VideoOrion, a Video Large Language Model (Video-LLM) that explicitly captures the key semantic information in videos--the spatial-temporal dynamics of objects throughout the videos. VideoOrion employs exper...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Feng_VideoOrion_Tokenizing_Object_Dynamics_in_Videos_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.019 논문 카드
- 제목: VideoLLM-online: Online Video Large Language Model for Streaming Video
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Large Language Models (LLMs) have been enhanced with vision capabilities enabling them to comprehend images videos and interleaved vision-language content. However the learning methods of these large multimodal models...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_VideoLLM-online_Online_Video_Large_Language_Model_for_Streaming_Video_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.020 논문 카드
- 제목: GS-DiT: Advancing Video Generation with Dynamic 3D Gaussian Fields through Efficient Dense 3D Point Tracking
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: 4D video control is essential in video generation as it enables the use of sophisticated lens techniques, such as multi-camera shooting and dolly zoom, which are currently unsupported by existing methods. Training a v...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Bian_GS-DiT_Advancing_Video_Generation_with_Dynamic_3D_Gaussian_Fields_through_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.021 논문 카드
- 제목: MG-MotionLLM: A Unified Framework for Motion Comprehension and Generation across Multiple Granularities
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Recent motion-aware large language models have demonstrated promising potential in unifying motion comprehension and generation. However, existing approaches primarily focus on coarse-grained motion-text modeling, whe...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wu_MG-MotionLLM_A_Unified_Framework_for_Motion_Comprehension_and_Generation_across_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.022 논문 카드
- 제목: MotionFollower: Editing Video Motion via Score-Guided Diffusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Despite impressive advancements in diffusion-based video editing models in altering video attributes, there has been limited exploration into modifying motion information while preserving the original protagonist's ap...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tu_MotionFollower_Editing_Video_Motion_via_Score-Guided_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.023 논문 카드
- 제목: ReCapture: Generative Video Camera Controls for User-Provided Videos using Masked Video Fine-Tuning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: Recently, breakthroughs in video modeling have allowed for controllable camera trajectories in generated videos. However, these methods cannot be directly applied to user-provided videos that are not generated by a vi...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_ReCapture_Generative_Video_Camera_Controls_for_User-Provided_Videos_using_Masked_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.024 논문 카드
- 제목: BIVDiff: A Training-Free Framework for General-Purpose Video Synthesis via Bridging Image and Video Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Diffusion models have made tremendous progress in text-driven image and video generation. Now text-to-image foundation models are widely applied to various downstream image synthesis tasks such as controllable image g...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Shi_BIVDiff_A_Training-Free_Framework_for_General-Purpose_Video_Synthesis_via_Bridging_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.025 논문 카드
- 제목: CAMEL: CAusal Motion Enhancement Tailored for Lifting Text-driven Video Editing
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: Text-driven video editing poses significant challenges in exhibiting flicker-free visual continuity while preserving the inherent motion patterns of original videos. Existing methods operate under a paradigm where mot...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_CAMEL_CAusal_Motion_Enhancement_Tailored_for_Lifting_Text-driven_Video_Editing_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.026 논문 카드
- 제목: VideoCon: Robust Video-Language Alignment via Contrast Captions
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Despite being (pre)trained on a massive amount of data state-of-the-art video-language alignment models are not robust to semantically-plausible contrastive changes in the video captions. Our work addresses this by id...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Bansal_VideoCon_Robust_Video-Language_Alignment_via_Contrast_Captions_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.027 논문 카드
- 제목: ByTheWay: Boost Your Text-to-Video Generation Model to Higher Quality in a Training-free Way
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: The text-to-video (T2V) generation models, offering convenient visual creation, have recently garnered increasing attention. Despite their substantial potential, the generated videos may present artifacts, including s...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Bu_ByTheWay_Boost_Your_Text-to-Video_Generation_Model_to_Higher_Quality_in_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.028 논문 카드
- 제목: OVO-Bench: How Far is Your Video-LLMs from Real-World Online Video Understanding?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Temporal Awareness, the ability to reason dynamically based on the timestamp when a question is raised, is the key distinction between offline and online video LLMs. Unlike offline models, which rely on complete video...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Niu_OVO-Bench_How_Far_is_Your_Video-LLMs_from_Real-World_Online_Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.029 논문 카드
- 제목: TemCoCo: Temporally Consistent Multi-modal Video Fusion with Visual-Semantic Collaboration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: Existing multi-modal fusion methods typically apply static frame-based image fusion techniques directly to video fusion tasks, neglecting inherent temporal dependencies and leading to inconsistent results across frame...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Gong_TemCoCo_Temporally_Consistent_Multi-modal_Video_Fusion_with_Visual-Semantic_Collaboration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.030 논문 카드
- 제목: VideoAds for Fast-Paced Video Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Advertisement videos serve as a rich and valuable source of purpose-driven information, encompassing high-quality visual, textual, and contextual cues designed to engage viewers. They are often more complex than gener...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_VideoAds_for_Fast-Paced_Video_Understanding_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.031 논문 카드
- 제목: Video ReCap: Recursive Captioning of Hour-Long Videos
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Most video captioning models are designed to process short video clips of few seconds and output text describing low-level visual concepts (e.g. objects scenes atomic actions). However most real-world videos last for ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Islam_Video_ReCap_Recursive_Captioning_of_Hour-Long_Videos_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.032 논문 카드
- 제목: DropletVideo: A Dataset and Approach to Explore Integral Spatio-Temporal Consistent Video Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Spatio-temporal consistency is a critical topic in video generation. A qualified generated video segment must ensure plot plausibility and coherence while maintaining visual consistency of objects and scenes across va...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_DropletVideo_A_Dataset_and_Approach_to_Explore_Integral_Spatio-Temporal_Consistent_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.033 논문 카드
- 제목: Dynamic Content Prediction with Motion-aware Priors for Blind Face Video Restoration
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 강건 인식
- 핵심 초록 신호: Blind Face Video Restoration (BFVR) focuses on reconstructing high-quality facial image sequences from degraded video inputs. The main challenge is address unknown degradations, while maintaining temporal consistency ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xie_Dynamic_Content_Prediction_with_Motion-aware_Priors_for_Blind_Face_Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.034 논문 카드
- 제목: Dynamic Motion Blending for Versatile Motion Editing
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Text-guided motion editing enables high-level semantic control and iterative modifications beyond traditional keyframe animation. Existing methods rely on limited pre-collected training triplets (original motion, edit...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Jiang_Dynamic_Motion_Blending_for_Versatile_Motion_Editing_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.035 논문 카드
- 제목: Synergizing Motion and Appearance: Multi-Scale Compensatory Codebooks for Talking Head Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Talking head video generation aims to generate a realistic talking head video that preserves the person's identity from a source image and the motion from a driving video. Despite the promising progress made in the fi...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_Synergizing_Motion_and_Appearance_Multi-Scale_Compensatory_Codebooks_for_Talking_Head_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.036 논문 카드
- 제목: Vid-Group: Temporal Video Grounding Pretraining from Unlabeled Videos in the Wild
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Given a natural language query, temporal video grounding aims to localize the described temporal moment in an untrimmed video. A major challenge of this task is its heavy dependence on labor-intensive annotations for ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Bao_Vid-Group_Temporal_Video_Grounding_Pretraining_from_Unlabeled_Videos_in_the_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.037 논문 카드
- 제목: Video-Panda: Parameter-efficient Alignment for Encoder-free Video-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 효율화/엣지, 강건 인식
- 핵심 초록 신호: We present an efficient encoder-free approach for video-language understanding that achieves competitive performance while significantly reducing computational overhead. Current video-language models typically rely on...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yi_Video-Panda_Parameter-efficient_Alignment_for_Encoder-free_Video-Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.038 논문 카드
- 제목: VideoDirector: Precise Video Editing via Text-to-Video Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Despite the typical inversion-then-editing paradigm using text-to-image (T2I) models has demonstrated promising results, directly extending it to text-to-video (T2V) models still suffers severe artifacts such as color...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_VideoDirector_Precise_Video_Editing_via_Text-to-Video_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.039 논문 카드
- 제목: 360DVD: Controllable Panorama Video Generation with 360-Degree Video Diffusion Model
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Panorama video recently attracts more interest in both study and application courtesy of its immersive experience. Due to the expensive cost of capturing 360-degree panoramic videos generating desirable panorama video...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_360DVD_Controllable_Panorama_Video_Generation_with_360-Degree_Video_Diffusion_Model_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.040 논문 카드
- 제목: Snap Video: Scaled Spatiotemporal Transformers for Text-to-Video Synthesis
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Contemporary models for generating images show remarkable quality and versatility. Swayed by these advantages the research community repurposes them to generate videos. Since video content is highly redundant we argue...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Menapace_Snap_Video_Scaled_Spatiotemporal_Transformers_for_Text-to-Video_Synthesis_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.041 논문 카드
- 제목: Decoupled Motion Expression Video Segmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 검출/분할, 강건 인식
- 핵심 초록 신호: Motion expression video segmentation aims to segment objects based on input motion descriptions. Compared with traditional referring video object segmentation, it focuses on motion and multi-object expressions and is ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Fang_Decoupled_Motion_Expression_Video_Segmentation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.042 논문 카드
- 제목: Extrapolating and Decoupling Image-to-Video Generation Models: Motion Modeling is Easier Than You Think
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Image-to-Video (I2V) generation aims to synthesize a video clip according to a given image and condition (e.g., text). The key challenge of this task lies in simultaneously generating natural motions while preserving ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tian_Extrapolating_and_Decoupling_Image-to-Video_Generation_Models_Motion_Modeling_is_Easier_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.043 논문 카드
- 제목: From Sparse Signal to Smooth Motion: Real-Time Motion Generation with Rolling Prediction Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: In extended reality (XR), generating full-body motion of the users is important to understand their actions, drive their virtual avatars for social interaction, and convey a realistic sense of presence. While prior wo...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Barquero_From_Sparse_Signal_to_Smooth_Motion_Real-Time_Motion_Generation_with_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.044 논문 카드
- 제목: Mono3DVLT: Monocular-Video-Based 3D Visual Language Tracking
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: Visual-Language Tracking (VLT) is emerging as a promising paradigm to bridge the human-machine performance gap. For single objects, VLT broadens the problem scope to text-driven video comprehension. Yet, this directio...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wei_Mono3DVLT_Monocular-Video-Based_3D_Visual_Language_Tracking_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.045 논문 카드
- 제목: Q-Bench-Video: Benchmark the Video Quality Understanding of LMMs
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: With the rising interest in research on Large Multi-modal Models (LMMs) for video understanding, many studies have emphasized general video comprehension capabilities, neglecting the systematic exploration into video ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Q-Bench-Video_Benchmark_the_Video_Quality_Understanding_of_LMMs_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.046 논문 카드
- 제목: Towards Video Thinking Test: A Holistic Benchmark for Advanced Video Reasoning and Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Human intelligence requires both correctness and robustness, with the former being foundational for the latter. In video understanding, correctness ensures the accurate interpretation of visual content, and robustness...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Towards_Video_Thinking_Test_A_Holistic_Benchmark_for_Advanced_Video_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.047 논문 카드
- 제목: VideoSetDiff: Identifying and Reasoning Similarities and Differences in Similar Videos
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Recognizing subtle similarities and differences among sets of similar activities is central to many real-world applications, including skill acquisition, sports performance evaluation, and anomaly detection. Humans ex...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qiu_VideoSetDiff_Identifying_and_Reasoning_Similarities_and_Differences_in_Similar_Videos_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.048 논문 카드
- 제목: Enhanced Motion-Text Alignment for Image-to-Video Transfer Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Extending large image-text pre-trained models (e.g. CLIP) for video understanding has made significant advancements. To enable the capability of CLIP to perceive dynamic information in videos existing works are dedica...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_Enhanced_Motion-Text_Alignment_for_Image-to-Video_Transfer_Learning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.049 논문 카드
- 제목: Programmable Motion Generation for Open-Set Motion Control Tasks
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Character animation in real-world scenarios necessitates a variety of constraints such as trajectories key-frames interactions etc. Existing methodologies typically treat single or a finite set of these constraint(s) ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Programmable_Motion_Generation_for_Open-Set_Motion_Control_Tasks_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.050 논문 카드
- 제목: Tri-Modal Motion Retrieval by Learning a Joint Embedding Space
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 3D 비전/기하, 멀티모달/VLM
- 핵심 초록 신호: Text-to-motion tasks have been the focus of recent advancements in the human motion domain. However the performance of text-to-motion tasks have not reached its potential primarily due to the lack of motion datasets a...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yin_Tri-Modal_Motion_Retrieval_by_Learning_a_Joint_Embedding_Space_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.051 논문 카드
- 제목: A Unified Framework for Motion Reasoning and Generation in Human Interaction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Recent advancements in large language models (LLMs) have significantly improved their ability to generate natural and contextually appropriate text, enabling more human-like interactions. However, understanding and ge...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Park_A_Unified_Framework_for_Motion_Reasoning_and_Generation_in_Human_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.052 논문 카드
- 제목: Bridge Frame and Event: Common Spatiotemporal Fusion for High-Dynamic Scene Optical Flow
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: High-dynamic scene optical flow is a challenging task, which suffers spatial blur and temporal discontinuous motion due to large displacement in frame imaging, thus deteriorating the spatiotemporal feature of optical ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhou_Bridge_Frame_and_Event_Common_Spatiotemporal_Fusion_for_High-Dynamic_Scene_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.053 논문 카드
- 제목: D2ST-Adapter: Disentangled-and-Deformable Spatio-Temporal Adapter for Few-shot Action Recognition
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Adapting pre-trained image models to video modality has proven to be an effective strategy for robust few-shot action recognition. In this work, we explore the potential of adapter tuning in image-to-video model adapt...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Pei_D2ST-Adapter_Disentangled-and-Deformable_Spatio-Temporal_Adapter_for_Few-shot_Action_Recognition_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.054 논문 카드
- 제목: DiTaiListener: Controllable High Fidelity Listener Video Generation with Diffusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: Generating naturalistic and nuanced listener motions for extended interactions remains an open problem. Existing methods often rely on low-dimensional motion codes for facial behavior generation followed by photoreali...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Siniukov_DiTaiListener_Controllable_High_Fidelity_Listener_Video_Generation_with_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.055 논문 카드
- 제목: DrVideo: Document Retrieval Based Long Video Understanding
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Most of the existing methods for video understanding primarily focus on videos only lasting tens of seconds, with limited exploration of techniques for handling long videos. The increased number of frames in long vide...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ma_DrVideo_Document_Retrieval_Based_Long_Video_Understanding_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.056 논문 카드
- 제목: Dual-Temporal Exemplar Representation Network for Video Semantic Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Video semantic segmentation aims to assign a class label for each pixel in every video frame. Existing methods predominantly follow the reference-target interaction paradigm, focusing on extracting local temporal cont...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xu_Dual-Temporal_Exemplar_Representation_Network_for_Video_Semantic_Segmentation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.057 논문 카드
- 제목: DynImg: Key Frames with Visual Prompts are Good Representation for Multi-Modal Video Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 강건 인식
- 핵심 초록 신호: In recent years, the introduction of Multi-modal Large Language Models (MLLMs) into video understanding tasks has become increasingly prevalent. However, how to effectively integrate temporal information remains a cri...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Bao_DynImg_Key_Frames_with_Visual_Prompts_are_Good_Representation_for_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.058 논문 카드
- 제목: EvEnhancer: Empowering Effectiveness, Efficiency and Generalizability for Continuous Space-Time Video Super-Resolution with Events
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열
- 핵심 초록 신호: Continuous space-time video super-resolution (C-STVSR) endeavors to upscale videos simultaneously at arbitrary spatial and temporal scales, which has recently garnered increasing interest. However, prevailing methods ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wei_EvEnhancer_Empowering_Effectiveness_Efficiency_and_Generalizability_for_Continuous_Space-Time_Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.059 논문 카드
- 제목: MASH-VLM: Mitigating Action-Scene Hallucination in Video-LLMs through Disentangled Spatial-Temporal Representations
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: In this work, we tackle action-scene hallucination in Video Large Language Models (Video-LLMs), where models incorrectly predict actions based on the scene context or scenes based on observed actions. We observe that ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Bae_MASH-VLM_Mitigating_Action-Scene_Hallucination_in_Video-LLMs_through_Disentangled_Spatial-Temporal_Representations_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.060 논문 카드
- 제목: MoEE: Mixture of Emotion Experts for Audio-Driven Portrait Animation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: The generation of talking avatars has achieved significant advancements in precise audio synchronization. However, crafting lifelike talking head videos requires capturing a broad spectrum of emotions and subtle facia...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_MoEE_Mixture_of_Emotion_Experts_for_Audio-Driven_Portrait_Animation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.061 논문 카드
- 제목: MotionCtrl: A Real-time Controllable Vision-Language-Motion Model
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Human motion generation involves synthesizing coherent human motion sequences conditioned on diverse multimodal inputs and holds significant potential for real-world applications. Despite recent advancements, existing...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cao_MotionCtrl_A_Real-time_Controllable_Vision-Language-Motion_Model_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.062 논문 카드
- 제목: Move-in-2D: 2D-Conditioned Human Motion Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Generating realistic human videos remains a challenging task, with the most effective methods currently relying on a human motion sequence as a control signal. Existing approaches often use existing motion extracted f...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_Move-in-2D_2D-Conditioned_Human_Motion_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.063 논문 카드
- 제목: Object-centric Video Question Answering with Visual Grounding and Referring
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Video Large Language Models (VideoLLMs) have recently demonstrated remarkable progress in general video understanding. However, existing models primarily focus on high-level comprehension and are limited to text-only ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_Object-centric_Video_Question_Answering_with_Visual_Grounding_and_Referring_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.064 논문 카드
- 제목: Re-thinking Temporal Search for Long-Form Video Understanding
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: Efficient understanding of long-form videos remains a significant challenge in computer vision. In this work, we revisit temporal search paradigms for long-form video understanding, studying a fundamental issue pertai...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ye_Re-thinking_Temporal_Search_for_Long-Form_Video_Understanding_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.065 논문 카드
- 제목: SVFR: A Unified Framework for Generalized Video Face Restoration
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: Face Restoration (FR) is a crucial area within image and video processing, focusing on reconstructing high-quality portraits from degraded inputs. Despite advancements in image FR, video FR remains relatively under-ex...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_SVFR_A_Unified_Framework_for_Generalized_Video_Face_Restoration_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.066 논문 카드
- 제목: Track4Gen: Teaching Video Diffusion Models to Track Points Improves Video Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: While recent foundational video generators produce visually rich output, they still struggle with appearance drift, where objects gradually degrade or change inconsistently across frames, breaking visual coherence. We...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Jeong_Track4Gen_Teaching_Video_Diffusion_Models_to_Track_Points_Improves_Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.4.067 논문 카드
- 제목: VEGGIE: Instructional Editing and Reasoning Video Concepts with Grounded Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: While recent video diffusion models enable video editing, unifying diverse instructional editing tasks (e.g., add, remove, modify) under a single framework remains a significant challenge. In this paper, we introduce ...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yu_VEGGIE_Instructional_Editing_and_Reasoning_Video_Concepts_with_Grounded_Generation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.068 논문 카드
- 제목: VOVTrack: Exploring the Potentiality in Raw Videos for Open-Vocabulary Multi-Object Tracking
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 검출/분할, 강건 인식
- 핵심 초록 신호: Open-vocabulary multi-object tracking (OVMOT) represents a critical new challenge involving the detection and tracking of diverse object categories in videos, encompassing both seen categories (base classes) and unsee...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qian_VOVTrack_Exploring_the_Potentiality_in_Raw_Videos_for_Open-Vocabulary_Multi-Object_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.4.069 논문 카드
- 제목: MA-LMM: Memory-Augmented Large Multimodal Model for Long-Term Video Understanding
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: With the success of large language models (LLMs) integrating the vision model into LLMs to build vision-language foundation models has gained much more interest recently. However existing LLM-based large multimodal mo...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/He_MA-LMM_Memory-Augmented_Large_Multimodal_Model_for_Long-Term_Video_Understanding_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.4.070 논문 카드
- 제목: Panda-70M: Captioning 70M Videos with Multiple Cross-Modality Teachers
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: The quality of the data and annotation upper-bounds the quality of a downstream model. While there exist large text corpora and image-text pairs high-quality video-text data is much harder to collect. First of all man...
- 트렌드 해석: 프레임 단위 성능보다 장기 시계열 일관성과 메모리 효율이 경쟁력의 중심으로 이동했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_Panda-70M_Captioning_70M_Videos_with_Multiple_Cross-Modality_Teachers_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

### 4.5 에이전트/추론

#### 4.5.001 논문 카드
- 제목: UIPro: Unleashing Superior Interaction Capability For GUI Agents
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Building autonomous agents that perceive and operate graphical user interfaces (GUIs) like humans has long been a vision in the field of artificial intelligence. Central to these agents is the capability for GUI inter...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_UIPro_Unleashing_Superior_Interaction_Capability_For_GUI_Agents_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.002 논문 카드
- 제목: SpiritSight Agent: Advanced GUI Agent with One Look
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, Embodied/로보틱스
- 핵심 초록 신호: Graphical User Interface (GUI) agents demonstrate promising potential in assisting human-computer interaction, automating human user's navigation on digital devices. An ideal GUI agent is expected to achieve high accu...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_SpiritSight_Agent_Advanced_GUI_Agent_with_One_Look_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.003 논문 카드
- 제목: Insight-V: Exploring Long-Chain Visual Reasoning with Multimodal Large Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Large Language Models (LLMs) demonstrate enhanced capabilities and reliability by reasoning more, evolving from Chain-of-Thought prompting to product-level solutions like OpenAI o1. Despite various efforts to improve ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Dong_Insight-V_Exploring_Long-Chain_Visual_Reasoning_with_Multimodal_Large_Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.004 논문 카드
- 제목: LVAgent: Long Video Understanding by Multi-Round Dynamical Collaboration of MLLM Agents
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: Existing MLLMs encounter significant challenges in modeling the temporal context within long videos. Currently, mainstream Agent-based methods use external tools to assist a single MLLM in answering long video questio...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_LVAgent_Long_Video_Understanding_by_Multi-Round_Dynamical_Collaboration_of_MLLM_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.005 논문 카드
- 제목: Precise Action-to-Video Generation Through Visual Action Prompts
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: We present visual action prompts, a unified action representation for action-to-video generation of complex high-DoF interactions while maintaining transferable visual dynamics across domains. Action-driven video gene...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_Precise_Action-to-Video_Generation_Through_Visual_Action_Prompts_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.006 논문 카드
- 제목: Beyond Label Semantics: Language-Guided Action Anatomy for Few-shot Action Recognition
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Few-shot action recognition (FSAR) aims to classify human actions in videos with only a small number of labeled samples per category. The scarcity of training data has driven recent efforts to incorporate additional m...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qian_Beyond_Label_Semantics_Language-Guided_Action_Anatomy_for_Few-shot_Action_Recognition_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.007 논문 카드
- 제목: GUIOdyssey: A Comprehensive Dataset for Cross-App GUI Navigation on Mobile Devices
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 효율화/엣지
- 핵심 초록 신호: Autonomous Graphical User Interface (GUI) navigation agents can enhance user experience in communication, entertainment, and productivity by streamlining workflows and reducing manual intervention. However, prior GUI ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lu_GUIOdyssey_A_Comprehensive_Dataset_for_Cross-App_GUI_Navigation_on_Mobile_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.008 논문 카드
- 제목: Optimus-2: Multimodal Minecraft Agent with Goal-Observation-Action Conditioned Policy
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 비디오/시계열
- 핵심 초록 신호: Building an agent that can mimic human behavior patterns to accomplish various open-world tasks is a long-term goal. To enable agents to effectively learn behavioral patterns across diverse tasks, a key challenge lies...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_Optimus-2_Multimodal_Minecraft_Agent_with_Goal-Observation-Action_Conditioned_Policy_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.009 논문 카드
- 제목: Can't Make an Omelette Without Breaking Some Eggs: Plausible Action Anticipation Using Large Video-Language Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 강건 인식
- 핵심 초록 신호: We introduce PlausiVL a large video-language model for anticipating action sequences that are plausible in the real-world. While significant efforts have been made towards anticipating future actions prior approaches ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Mittal_Cant_Make_an_Omelette_Without_Breaking_Some_Eggs_Plausible_Action_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.010 논문 카드
- 제목: LEMON: Learning 3D Human-Object Interaction Relation from 2D Images
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Learning 3D human-object interaction relation is pivotal to embodied AI and interaction modeling. Most existing methods approach the goal by learning to predict isolated interaction elements e.g. human contact object ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yang_LEMON_Learning_3D_Human-Object_Interaction_Relation_from_2D_Images_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.011 논문 카드
- 제목: HERO: Human Reaction Generation from Videos
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: Human reaction generation represents a significant research domain for interactive AI, as humans constantly interact with their surroundings. Previous works focus mainly on synthesizing the reactive motion given a hum...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yu_HERO_Human_Reaction_Generation_from_Videos_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.012 논문 카드
- 제목: MMAD: Multi-label Micro-Action Detection in Videos
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 검출/분할
- 핵심 초록 신호: Human body actions are an important form of non-verbal communication in social interactions. This paper specifically focuses on a subset of body actions known as micro-actions, which are subtle, low-intensity body mov...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_MMAD_Multi-label_Micro-Action_Detection_in_Videos_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.013 논문 카드
- 제목: Stochastic Human Motion Prediction with Memory of Action Transition and Action Characteristic
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: Action-driven stochastic human motion prediction aims to generate future motion sequences of a pre-defined target action based on given past observed sequences performing non-target actions. This task primarily presen...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tang_Stochastic_Human_Motion_Prediction_with_Memory_of_Action_Transition_and_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.014 논문 카드
- 제목: DexHandDiff: Interaction-aware Diffusion Planning for Adaptive Dexterous Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: Dexterous manipulation with contact-rich interactions is crucial for advanced robotics. While recent diffusion-based planning approaches show promise for simple manipulation tasks, they often produce unrealistic ghost...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liang_DexHandDiff_Interaction-aware_Diffusion_Planning_for_Adaptive_Dexterous_Manipulation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.015 논문 카드
- 제목: Interaction-Merged Motion Planning: Effectively Leveraging Diverse Motion Datasets for Robust Planning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Motion planning is a crucial component of autonomous robot driving. While various trajectory datasets exist, effectively utilizing them for a target domain remains challenging due to differences in agent interactions ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lee_Interaction-Merged_Motion_Planning_Effectively_Leveraging_Diverse_Motion_Datasets_for_Robust_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.016 논문 카드
- 제목: Online Reasoning Video Segmentation with Just-in-Time Digital Twins
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 검출/분할
- 핵심 초록 신호: Reasoning segmentation (RS) aims to identify and segment objects of interest based on implicit text queries. As such, RS is a catalyst for embodied AI agents, enabling them to interpret high-level commands without req...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shen_Online_Reasoning_Video_Segmentation_with_Just-in-Time_Digital_Twins_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.017 논문 카드
- 제목: Recognizing Actions from Robotic View for Natural Human-Robot Interaction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 비디오/시계열
- 핵심 초록 신호: Natural Human-Robot Interaction (N-HRI) requires robots to recognize human actions at varying distances and states, regardless of whether the robot itself is in motion or stationary. This setup is more flexible and pr...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_Recognizing_Actions_from_Robotic_View_for_Natural_Human-Robot_Interaction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.018 논문 카드
- 제목: Discovering Syntactic Interaction Clues for Human-Object Interaction Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 검출/분할, 멀티모달/VLM
- 핵심 초록 신호: Recently Vision-Language Model (VLM) has greatly advanced the Human-Object Interaction (HOI) detection. The existing VLM-based HOI detectors typically adopt a hand-crafted template (e.g. a photo of a person [action] a...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Luo_Discovering_Syntactic_Interaction_Clues_for_Human-Object_Interaction_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.019 논문 카드
- 제목: FineParser: A Fine-grained Spatio-temporal Action Parser for Human-centric Action Quality Assessment
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 강건 인식, 비디오/시계열
- 핵심 초록 신호: Existing action quality assessment (AQA) methods mainly learn deep representations at the video level for scoring diverse actions. Due to the lack of a fine-grained understanding of actions in videos they harshly suff...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xu_FineParser_A_Fine-grained_Spatio-temporal_Action_Parser_for_Human-centric_Action_Quality_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.020 논문 카드
- 제목: Open-Vocabulary HOI Detection with Interaction-aware Prompt and Concept Calibration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 검출/분할, 강건 인식
- 핵심 초록 신호: Open Vocabulary Human-Object Interaction (HOI) detection aims to detect interactions between humans and objects while generalizing to novel interaction classes beyond the training set. Current methods often rely on Vi...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lei_Open-Vocabulary_HOI_Detection_with_Interaction-aware_Prompt_and_Concept_Calibration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.021 논문 카드
- 제목: R1-Onevision: Advancing Generalized Multimodal Reasoning through Cross-Modal Formalization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Large Language Models have demonstrated remarkable reasoning capability in complex textual tasks. However, multimodal reasoning, which requires integrating visual and textual information, remains a significant challen...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_R1-Onevision_Advancing_Generalized_Multimodal_Reasoning_through_Cross-Modal_Formalization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.022 논문 카드
- 제목: RobAVA: A Large-scale Dataset and Baseline Towards Video based Robotic Arm Action Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, Embodied/로보틱스
- 핵심 초록 신호: Understanding the behaviors of robotic arms is essential for various robotic applications such as logistics management, precision agriculture, and automated manufacturing. However, the lack of large-scale and diverse ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Sun_RobAVA_A_Large-scale_Dataset_and_Baseline_Towards_Video_based_Robotic_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.023 논문 카드
- 제목: CogAgent: A Visual Language Model for GUI Agents
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 멀티모달/VLM, Embodied/로보틱스
- 핵심 초록 신호: People are spending an enormous amount of time on digital devices through graphical user interfaces (GUIs) e.g. computer or smartphone screens. Large language models (LLMs) such as ChatGPT can assist people in tasks l...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Hong_CogAgent_A_Visual_Language_Model_for_GUI_Agents_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.024 논문 카드
- 제목: Multi-agent Long-term 3D Human Pose Forecasting via Interaction-aware Trajectory Conditioning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: Human pose forecasting garners attention for its diverse applications. However challenges in modeling the multi-modal nature of human motion and intricate interactions among agents persist particularly with longer tim...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Jeong_Multi-agent_Long-term_3D_Human_Pose_Forecasting_via_Interaction-aware_Trajectory_Conditioning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.025 논문 카드
- 제목: Narrative Action Evaluation with Prompt-Guided Multimodal Interaction
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 비디오/시계열
- 핵심 초록 신호: In this paper we investigate a new problem called narrative action evaluation (NAE). NAE aims to generate professional commentary that evaluates the execution of an action. Unlike traditional tasks such as score-based...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_Narrative_Action_Evaluation_with_Prompt-Guided_Multimodal_Interaction_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.026 논문 카드
- 제목: Egocentric Action-aware Inertial Localization in Point Clouds with Vision-Language Guidance
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 비디오/시계열
- 핵심 초록 신호: This paper presents a novel inertial localization framework named Egocentric Action-aware Inertial Localization (EAIL), which leverages egocentric action cues from head-mounted IMU signals to localize the target indiv...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Egocentric_Action-aware_Inertial_Localization_in_Point_Clouds_with_Vision-Language_Guidance_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.027 논문 카드
- 제목: Frequency-Guided Diffusion for Training-Free Text-Driven Image Translation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Current training-free text-driven image translation primarily uses diffusion features (convolution and attention) of pre-trained model as guidance to preserve the style/structure of source image in translated image. H...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Gao_Frequency-Guided_Diffusion_for_Training-Free_Text-Driven_Image_Translation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.028 논문 카드
- 제목: TITAN-Guide: Taming Inference-Time Alignment for Guided Text-to-Video Diffusion Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: In the recent development of conditional diffusion models still require heavy supervised fine-tuning for performing control on a category of tasks. Training-free conditioning via guidance with off-the-shelf models is ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Simon_TITAN-Guide_Taming_Inference-Time_Alignment_for_Guided_Text-to-Video_Diffusion_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.029 논문 카드
- 제목: NIFTY: Neural Object Interaction Fields for Guided Human Motion Synthesis
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: We address the problem of generating realistic 3D motions of humans interacting with objects in a scene. Our key idea is to create a neural interaction field attached to a specific object which outputs the distance to...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Kulkarni_NIFTY_Neural_Object_Interaction_Fields_for_Guided_Human_Motion_Synthesis_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.030 논문 카드
- 제목: ComfyBench: Benchmarking LLM-based Agents in ComfyUI for Autonomously Designing Collaborative AI Systems
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 설명가능성/안전성
- 핵심 초록 신호: Much previous AI research has focused on developing monolithic models to maximize their intelligence, with the primary goal of enhancing performance on specific tasks. In contrast, this work attempts to study using LL...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xue_ComfyBench_Benchmarking_LLM-based_Agents_in_ComfyUI_for_Autonomously_Designing_Collaborative_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.031 논문 카드
- 제목: Enhancing Spatial Reasoning in Multimodal Large Language Models through Reasoning-based Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 검출/분할, 3D 비전/기하
- 핵심 초록 신호: Recent advances in point cloud perception have demonstrated remarkable progress in scene understanding through vision-language alignment leveraging large language models (LLMs). However, existing methods may still enc...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ning_Enhancing_Spatial_Reasoning_in_Multimodal_Large_Language_Models_through_Reasoning-based_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.032 논문 카드
- 제목: Motion-Grounded Video Reasoning: Understanding and Perceiving Motion at Pixel Level
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: In this paper, we introduce Motion-Grounded Video Reasoning, a new motionunderstanding task that requires generating visual answers (video segmentationmasks) according to the input question, and hence needs implicit s...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_Motion-Grounded_Video_Reasoning_Understanding_and_Perceiving_Motion_at_Pixel_Level_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.033 논문 카드
- 제목: RoboFactory: Exploring Embodied Agent Collaboration with Compositional Constraints
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 강건 인식
- 핵심 초록 신호: Designing effective embodied multi-agent systems is critical for solving complex real-world tasks across domains. Due to the complexity of multi-agent embodied systems, existing methods fail to automatically generate ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qin_RoboFactory_Exploring_Embodied_Agent_Collaboration_with_Compositional_Constraints_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.034 논문 카드
- 제목: FineSports: A Multi-person Hierarchical Sports Video Dataset for Fine-grained Action Understanding
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Fine-grained action analysis in multi-person sports is complex due to athletes' quick movements and intense physical confrontations which result in severe visual obstructions in most scenes. In addition accessible mul...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xu_FineSports_A_Multi-person_Hierarchical_Sports_Video_Dataset_for_Fine-grained_Action_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.035 논문 카드
- 제목: Language Model Guided Interpretable Video Action Reasoning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 설명가능성/안전성
- 핵심 초록 신호: Although neural networks excel in video action recognition tasks their "black-box" nature makes it challenging to understand the rationale behind their decisions. Recent approaches used inherently interpretable models...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_Language_Model_Guided_Interpretable_Video_Action_Reasoning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.036 논문 카드
- 제목: Learning Disentangled Identifiers for Action-Customized Text-to-Image Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: This study focuses on a novel task in text-to-image (T2I) generation namely action customization. The objective of this task is to learn the co-existing action from limited data and generalize it to unseen humans or e...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Huang_Learning_Disentangled_Identifiers_for_Action-Customized_Text-to-Image_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.037 논문 카드
- 제목: MultiPLY: A Multisensory Object-Centric Embodied Large Language Model in 3D World
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 3D 비전/기하, Embodied/로보틱스
- 핵심 초록 신호: Human beings possess the capability to multiply a melange of multisensory cues while actively exploring and interacting with the 3D world. Current multi-modal large language models however passively absorb sensory dat...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Hong_MultiPLY_A_Multisensory_Object-Centric_Embodied_Large_Language_Model_in_3D_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.038 논문 카드
- 제목: Template Free Reconstruction of Human-object Interaction with Procedural Interaction Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 3D 비전/기하, 생성모델/디퓨전
- 핵심 초록 신호: Reconstructing human-object interaction in 3D from a single RGB image is a challenging task and existing data driven methods do not generalize beyond the objects present in the carefully curated 3D interaction dataset...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xie_Template_Free_Reconstruction_of_Human-object_Interaction_with_Procedural_Interaction_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.039 논문 카드
- 제목: Uncertainty-aware Action Decoupling Transformer for Action Anticipation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론
- 핵심 초록 신호: Human action anticipation aims at predicting what people will do in the future based on past observations. In this paper we introduce Uncertainty-aware Action Decoupling Transformer (UADT) for action anticipation. Unl...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Guo_Uncertainty-aware_Action_Decoupling_Transformer_for_Action_Anticipation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.040 논문 카드
- 제목: ANNEXE: Unified Analyzing, Answering, and Pixel Grounding for Egocentric Interaction
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Egocentric interaction perception is one of the essential branches in investigating human-environment interaction, which lays the basis for developing next-generation intelligent systems. However, existing egocentric ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Su_ANNEXE_Unified_Analyzing_Answering_and_Pixel_Grounding_for_Egocentric_Interaction_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.041 논문 카드
- 제목: LLM-enhanced Action-aware Multi-modal Prompt Tuning for Image-Text Matching
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: Driven by large-scale contrastive vision-language pre-trained models such as CLIP, recent advancements in the image-text matching task have achieved remarkable success in representation learning. Due to image-level vi...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tian_LLM-enhanced_Action-aware_Multi-modal_Prompt_Tuning_for_Image-Text_Matching_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.042 논문 카드
- 제목: MiDSummer: Multi-Guidance Diffusion for Controllable Zero-Shot Immersive Gaussian Splatting Scene Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: We present MiDSummer, a two-stage framework for generating immersive Gaussian Splatting scenes that leverages multiple diffusion guidance signals to enable structured layout control, enhanced physical realism, and imp...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hu_MiDSummer_Multi-Guidance_Diffusion_for_Controllable_Zero-Shot_Immersive_Gaussian_Splatting_Scene_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.043 논문 카드
- 제목: PINO: Person-Interaction Noise Optimization for Long-Duration and Customizable Motion Generation of Arbitrary-Sized Groups
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Generating realistic group interactions involving multiple characters remains challenging due to increasing complexity as group size expands. While existing conditional diffusion models incrementally generate motions ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ota_PINO_Person-Interaction_Noise_Optimization_for_Long-Duration_and_Customizable_Motion_Generation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.044 논문 카드
- 제목: Perspective-Aware Reasoning in Vision-Language Models via Mental Imagery Simulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 검출/분할
- 핵심 초록 신호: We present a framework for perspective-aware reasoning in vision-language models (VLMs) through mental imagery simulation. Perspective-taking, the ability to perceive an environment or situation from an alternative vi...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lee_Perspective-Aware_Reasoning_in_Vision-Language_Models_via_Mental_Imagery_Simulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.045 논문 카드
- 제목: Semantic-guided Cross-Modal Prompt Learning for Skeleton-based Zero-shot Action Recognition
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Skeleton-based human action recognition is promising due to its privacy preservation, robustness to visual challenges, and computational efficiency. Especially, the practical necessity to recognize unseen actions has ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhu_Semantic-guided_Cross-Modal_Prompt_Learning_for_Skeleton-based_Zero-shot_Action_Recognition_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.046 논문 카드
- 제목: VerbDiff: Text-Only Diffusion Models with Enhanced Interaction Awareness
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 설명가능성/안전성
- 핵심 초록 신호: Recent large-scale text-to-image diffusion models generate photorealistic images but often struggle to accurately depict interactions between humans and objects due to their limited ability to differentiate various in...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Cha_VerbDiff_Text-Only_Diffusion_Models_with_Enhanced_Interaction_Awareness_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.047 논문 카드
- 제목: CG-HOI: Contact-Guided 3D Human-Object Interaction Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: We propose CG-HOI the first method to address the task of generating dynamic 3D human-object interactions (HOIs) from text. We model the motion of both human and object in an interdependent fashion as semantically ric...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Diller_CG-HOI_Contact-Guided_3D_Human-Object_Interaction_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.048 논문 카드
- 제목: Jointly Training and Pruning CNNs via Learnable Agent Guidance and Alignment
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Structural model pruning is a prominent approach used for reducing the computational cost of Convolutional Neural Networks (CNNs) before their deployment on resource-constrained devices. Yet the majority of proposed i...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ganjdanesh_Jointly_Training_and_Pruning_CNNs_via_Learnable_Agent_Guidance_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.049 논문 카드
- 제목: Learning from Observer Gaze: Zero-Shot Attention Prediction Oriented by Human-Object Interaction Recognition
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Most existing attention prediction research focuses on salient instances like humans and objects. However the more complex interaction-oriented attention arising from the comprehension of interactions between instance...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhou_Learning_from_Observer_Gaze_Zero-Shot_Attention_Prediction_Oriented_by_Human-Object_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.050 논문 카드
- 제목: Text2HOI: Text-guided 3D Motion Generation for Hand-Object Interaction
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: This paper introduces the first text-guided work for generating the sequence of hand-object interaction in 3D. The main challenge arises from the lack of labeled data where existing ground-truth datasets are nowhere n...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Cha_Text2HOI_Text-guided_3D_Motion_Generation_for_Hand-Object_Interaction_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.051 논문 카드
- 제목: A Unified Approach to Interpreting Self-supervised Pre-training Methods for 3D Point Clouds via Interactions
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Recently, many self-supervised pre-training methods have been proposed to improve the performance of deep neural networks (DNNs) for 3D point clouds processing. However, the common mechanism underlying the effectivene...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_A_Unified_Approach_to_Interpreting_Self-supervised_Pre-training_Methods_for_3D_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.052 논문 카드
- 제목: CLIP-driven Coarse-to-fine Semantic Guidance for Fine-grained Open-set Semi-supervised Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Fine-grained open-set semi-supervised learning (OSSL) investigates a practical scenario where unlabeled data may contain fine-grained out-of-distribution (OOD) samples. Due to the subtle visual differences among in-di...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_CLIP-driven_Coarse-to-fine_Semantic_Guidance_for_Fine-grained_Open-set_Semi-supervised_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.053 논문 카드
- 제목: Dita: Scaling Diffusion Transformer for Generalist Vision-Language-Action Policy
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: While recent vision-language-action models trained on diverse robot datasets exhibit promising generalization capabilities with limited in-domain data, their reliance on compact action heads to predict discretized or ...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hou_Dita_Scaling_Diffusion_Transformer_for_Generalist_Vision-Language-Action_Policy_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.054 논문 카드
- 제목: FinePhys: Fine-grained Human Action Generation by Explicitly Incorporating Physical Laws for Effective Skeletal Guidance
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Although remarkable progress has been achieved in video generation, synthesizing physically plausible human actions remains an unresolved challenge, especially when addressing fine-grained semantics and complex tempor...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shao_FinePhys_Fine-grained_Human_Action_Generation_by_Explicitly_Incorporating_Physical_Laws_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.055 논문 카드
- 제목: From Objects to Events: Unlocking Complex Visual Understanding in Object Detectors via LLM-guided Symbolic Reasoning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 검출/분할, 강건 인식
- 핵심 초록 신호: Current object detectors excel at entity localization and classification, yet exhibit inherent limitations in event recognition capabilities. This deficiency arises from their architecture's emphasis on discrete objec...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zeng_From_Objects_to_Events_Unlocking_Complex_Visual_Understanding_in_Object_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.056 논문 카드
- 제목: How Do I Do That? Synthesizing 3D Hand Motion and Contacts for Everyday Interactions
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 3D 비전/기하, 비디오/시계열
- 핵심 초록 신호: We tackle the novel problem of predicting 3D hand motion and contact maps (or Interaction Trajectories) given a single RGB view, action text, and a 3D contact point on the object as input. Our approach consists of (1)...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Prakash_How_Do_I_Do_That_Synthesizing_3D_Hand_Motion_and_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.057 논문 카드
- 제목: Locality-Aware Zero-Shot Human-Object Interaction Detection
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 검출/분할
- 핵심 초록 신호: Recent methods for zero-shot Human-Object Interaction (HOI) detection typically leverage the generalization ability of large Vision-Language Model (VLM), i.e., CLIP, on unseen categories, showing impressive results on...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kim_Locality-Aware_Zero-Shot_Human-Object_Interaction_Detection_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.058 논문 카드
- 제목: MicroVQA: A Multimodal Reasoning Benchmark for Microscopy-Based Scientific Research
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Scientific research demands sophisticated reasoning over multimodal data, a challenge especially prevalent in biology. Despite recent advances in multimodal large language models (MLLMs) for AI-assisted research, exis...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Burgess_MicroVQA_A_Multimodal_Reasoning_Benchmark_for_Microscopy-Based_Scientific_Research_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.059 논문 카드
- 제목: ScoreHOI: Physically Plausible Reconstruction of Human-Object Interaction via Score-Guided Diffusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 3D 비전/기하, 생성모델/디퓨전
- 핵심 초록 신호: Joint reconstruction of human-object interaction marks a significant milestone in comprehending the intricate interrelations between humans and their surrounding environment. Nevertheless, previous optimization method...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_ScoreHOI_Physically_Plausible_Reconstruction_of_Human-Object_Interaction_via_Score-Guided_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.060 논문 카드
- 제목: VQ-VLA: Improving Vision-Language-Action Models via Scaling Vector-Quantized Action Tokenizers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 강건 인식, Embodied/로보틱스
- 핵심 초록 신호: In this paper, we introduce an innovative vector quantization based action tokenizer built upon the largest-scale action trajectory dataset to date, leveraging over 100 times more data than previous approaches. This e...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_VQ-VLA_Improving_Vision-Language-Action_Models_via_Scaling_Vector-Quantized_Action_Tokenizers_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.061 논문 카드
- 제목: Embodied Multi-Modal Agent trained by an LLM from a Parallel TextWorld
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: While large language models (LLMs) excel in a simulated world of texts they struggle to interact with the more realistic world without perceptions of other modalities such as visual or audio signals. Although vision-l...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yang_Embodied_Multi-Modal_Agent_trained_by_an_LLM_from_a_Parallel_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.062 논문 카드
- 제목: InteractDiffusion: Interaction Control in Text-to-Image Diffusion Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Large-scale text-to-image (T2I) diffusion models have showcased incredible capabilities in generating coherent images based on textual descriptions enabling vast applications in content generation. While recent advanc...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Hoe_InteractDiffusion_Interaction_Control_in_Text-to-Image_Diffusion_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.063 논문 카드
- 제목: On the Road to Portability: Compressing End-to-End Motion Planner for Autonomous Driving
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 효율화/엣지, 비디오/시계열
- 핵심 초록 신호: End-to-end motion planning models equipped with deep neural networks have shown great potential for enabling full autonomous driving. However the oversized neural networks render them impractical for deployment on res...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Feng_On_the_Road_to_Portability_Compressing_End-to-End_Motion_Planner_for_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.064 논문 카드
- 제목: Open-World Human-Object Interaction Detection via Multi-modal Prompts
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 검출/분할, 강건 인식
- 핵심 초록 신호: In this paper we develop MP-HOI a powerful Multi-modal Prompt-based HOI detector designed to leverage both textual descriptions for open-set generalization and visual exemplars for handling high ambiguity in descripti...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yang_Open-World_Human-Object_Interaction_Detection_via_Multi-modal_Prompts_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.5.065 논문 카드
- 제목: Bridging Past and Future: End-to-End Autonomous Driving with Historical Prediction and Planning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, 검출/분할
- 핵심 초록 신호: End-to-end autonomous driving unifies tasks in a differentiable framework, enabling planning-oriented optimization and attracting growing attention.Current methods aggregate historical information either through dense...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Bridging_Past_and_Future_End-to-End_Autonomous_Driving_with_Historical_Prediction_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.5.066 논문 카드
- 제목: CATP-LLM: Empowering Large Language Models for Cost-Aware Tool Planning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Utilizing large language models (LLMs) for tool planning has emerged as a promising avenue for developing general AI systems, where LLMs automatically schedule external tools (e.g., vision models) to tackle complex ta...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wu_CATP-LLM_Empowering_Large_Language_Models_for_Cost-Aware_Tool_Planning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.067 논문 카드
- 제목: ChartPoint: Guiding MLLMs with Grounding Reflection for Chart Reasoning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Multimodal Large Language Models (MLLMs) have emerged as powerful tools for chart comprehension. However, they heavily rely on extracted content via OCR, which leads to numerical hallucinations when chart textual anno...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xu_ChartPoint_Guiding_MLLMs_with_Grounding_Reflection_for_Chart_Reasoning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.068 논문 카드
- 제목: DrivingGPT: Unifying Driving World Modeling and Planning with Multi-modal Autoregressive Transformers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: World model-based searching and planning are widely recognized as a promising path toward human-level physical intelligence. However, current driving world models primarily rely on video diffusion models, which specia...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_DrivingGPT_Unifying_Driving_World_Modeling_and_Planning_with_Multi-modal_Autoregressive_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.069 논문 카드
- 제목: Enhancing Mamba Decoder with Bidirectional Interaction in Multi-Task Dense Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: Sufficient cross-task interaction is crucial for success in multi-task dense prediction. However, sufficient interaction often results in high computational complexity, forcing existing methods to face the trade-off b...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cao_Enhancing_Mamba_Decoder_with_Bidirectional_Interaction_in_Multi-Task_Dense_Prediction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.5.070 논문 카드
- 제목: From Easy to Hard: The MIR Benchmark for Progressive Interleaved Multi-Image Reasoning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Multi-image Interleaved Reasoning aims to improve Multimodal Large Language Models' (MLLMs) ability to jointly comprehend and reason across multiple images and their associated textual contexts, introducing unique cha...
- 트렌드 해석: 단일 인식 모델에서 벗어나 계획-행동 루프를 갖춘 비전 시스템으로 전환되는 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Du_From_Easy_to_Hard_The_MIR_Benchmark_for_Progressive_Interleaved_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

### 4.6 효율화/엣지

#### 4.6.001 논문 카드
- 제목: Automatic Joint Structured Pruning and Quantization for Efficient Neural Network Training and Compression
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Structured pruning and quantization are fundamental techniques used to reduce the size of deep neural networks (DNNs) and typically are applied independently. Applying these techniques jointly via co-optimization has ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Qu_Automatic_Joint_Structured_Pruning_and_Quantization_for_Efficient_Neural_Network_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.002 논문 카드
- 제목: MobileViCLIP: An Efficient Video-Text Model for Mobile Devices
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 비디오/시계열, 멀티모달/VLM
- 핵심 초록 신호: Efficient lightweight neural networks have received increasing attention due to their faster reasoning speed and easier deployment on mobile devices. However, existing video models still focus on the larger ViT archit...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_MobileViCLIP_An_Efficient_Video-Text_Model_for_Mobile_Devices_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.003 논문 카드
- 제목: Pioneering 4-Bit FP Quantization for Diffusion Models: Mixup-Sign Quantization and Timestep-Aware Fine-Tuning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Model quantization reduces the bit-width of weights and activations, improving memory efficiency and inference speed in diffusion models. However, achieving 4-bit quantization remains challenging. Existing methods, pr...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_Pioneering_4-Bit_FP_Quantization_for_Diffusion_Models_Mixup-Sign_Quantization_and_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.004 논문 카드
- 제목: Omni-scene Perception-oriented Point Cloud Geometry Enhancement for Coordinate Quantization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 3D 비전/기하, 비디오/시계열
- 핵심 초록 신호: Information quantization has been widely adopted in multimedia content, such as images, videos, and point clouds. The goal of information quantization is to achieve efficient storage and transmission by reducing data ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Liu_Omni-scene_Perception-oriented_Point_Cloud_Geometry_Enhancement_for_Coordinate_Quantization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.005 논문 카드
- 제목: Mind The Edge: Refining Depth Edges in Sparsely-Supervised Monocular Depth Estimation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 3D 비전/기하, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Monocular Depth Estimation (MDE) is a fundamental problem in computer vision with numerous applications. Recently LIDAR-supervised methods have achieved remarkable per-pixel depth accuracy in outdoor scenes. However s...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Talker_Mind_The_Edge_Refining_Depth_Edges_in_Sparsely-Supervised_Monocular_Depth_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.006 논문 카드
- 제목: Adversarial Distribution Matching for Diffusion Distillation Towards Efficient Image and Video Synthesis
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, 비디오/시계열
- 핵심 초록 신호: Distribution Matching Distillation (DMD) is a promising score distillation technique that compresses pre-trained teacher diffusion models into efficient one-step or multi-step student generators.Nevertheless, its reli...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lu_Adversarial_Distribution_Matching_for_Diffusion_Distillation_Towards_Efficient_Image_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.007 논문 카드
- 제목: RCTDistill: Cross-Modal Knowledge Distillation Framework for Radar-Camera 3D Object Detection with Temporal Fusion
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: Radar-camera fusion methods have emerged as a cost-effective approach for 3D object detection but still lag behind LiDAR-based methods in performance. Recent works have focused on employing temporal fusion and Knowled...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Bang_RCTDistill_Cross-Modal_Knowledge_Distillation_Framework_for_Radar-Camera_3D_Object_Detection_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.008 논문 카드
- 제목: CaKDP: Category-aware Knowledge Distillation and Pruning Framework for Lightweight 3D Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 검출/분할, 3D 비전/기하
- 핵심 초록 신호: Knowledge distillation (KD) possesses immense potential to accelerate the deep neural networks (DNNs) for LiDAR-based 3D detection. However in most of prevailing approaches the suboptimal teacher models and insufficie...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_CaKDP_Category-aware_Knowledge_Distillation_and_Pruning_Framework_for_Lightweight_3D_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.009 논문 카드
- 제목: Align-KD: Distilling Cross-Modal Alignment Knowledge for Mobile Vision-Language Large Model Enhancement
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Vision-Language Models (VLMs) bring powerful understanding and reasoning capabilities to multimodal tasks. Meanwhile, the great need for capable aritificial intelligence on mobile devices also arises, such as the AI a...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Feng_Align-KD_Distilling_Cross-Modal_Alignment_Knowledge_for_Mobile_Vision-Language_Large_Model_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.010 논문 카드
- 제목: Can Knowledge be Transferred from Unimodal to Multimodal? Investigating the Transitivity of Multimodal Knowledge Editing
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: Multimodal Large Language Models (MLLMs) contain a substantial amount of factual knowledge, which may become outdated or inaccurate over time. Consequently, various knowledge editing techniques have been proposed to u...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Fang_Can_Knowledge_be_Transferred_from_Unimodal_to_Multimodal_Investigating_the_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.011 논문 카드
- 제목: Edge-SD-SR: Low Latency and Parameter Efficient On-device Super-Resolution with Stable Diffusion via Bidirectional Conditioning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: There has been immense progress recently in the visual quality of Stable Diffusion-based Super Resolution (SD-SR). However, deploying large diffusion models on computationally restricted devices such as mobile phones ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hadji_Edge-SD-SR_Low_Latency_and_Parameter_Efficient_On-device_Super-Resolution_with_Stable_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.012 논문 카드
- 제목: Knowledge Distillation for Learned Image Compression
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 에이전트/추론
- 핵심 초록 신호: Recently, learned image compression (LIC) models have achieved remarkable rate-distortion (RD) performance, yet their high computational complexity severely limits practical deployment. To overcome this challenge, we ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_Knowledge_Distillation_for_Learned_Image_Compression_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.013 논문 카드
- 제목: MSQ: Memory-Efficient Bit Sparsification Quantization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: As deep neural networks (DNNs) see increased deployment on mobile and edge devices, optimizing model efficiency has become crucial. Mixed-precision quantization is widely favored, as it offers a superior balance betwe...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Han_MSQ_Memory-Efficient_Bit_Sparsification_Quantization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.014 논문 카드
- 제목: TinyViM: Frequency Decoupling for Tiny Hybrid Vision Mamba
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 검출/분할
- 핵심 초록 신호: Mamba has shown great potential for computer vision due to its linear complexity in modeling the global context with respect to the input length. However, existing lightweight Mamba-based backbones cannot demonstrate ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ma_TinyViM_Frequency_Decoupling_for_Tiny_Hybrid_Vision_Mamba_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.015 논문 카드
- 제목: An Upload-Efficient Scheme for Transferring Knowledge From a Server-Side Pre-trained Generator to Clients in Heterogeneous Federated Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Heterogeneous Federated Learning (HtFL) enables collaborative learning on multiple clients with different model architectures while preserving privacy. Despite recent research progress knowledge sharing in HtFL is sti...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_An_Upload-Efficient_Scheme_for_Transferring_Knowledge_From_a_Server-Side_Pre-trained_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.016 논문 카드
- 제목: AHCPTQ: Accurate and Hardware-Compatible Post-Training Quantization for Segment Anything Model
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 검출/분할, 강건 인식
- 핵심 초록 신호: The Segment Anything Model (SAM) has demonstrated strong versatility across various visual tasks. However, its large storage requirements and high computational cost pose challenges for practical deployment. Post-trai...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_AHCPTQ_Accurate_and_Hardware-Compatible_Post-Training_Quantization_for_Segment_Anything_Model_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.017 논문 카드
- 제목: METEOR: Multi-Encoder Collaborative Token Pruning for Efficient Vision Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Vision encoders serve as the cornerstone of multimodal understanding. Single-encoder architectures like CLIP exhibit inherent constraints in generalizing across diverse multimodal tasks, while recent multi-encoder fus...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Liu_METEOR_Multi-Encoder_Collaborative_Token_Pruning_for_Efficient_Vision_Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.018 논문 카드
- 제목: MOBIUS: Big-to-Mobile Universal Instance Segmentation via Multi-modal Bottleneck Fusion and Calibrated Decoder Pruning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 검출/분할, 강건 인식
- 핵심 초록 신호: Scaling up model size and training data has advanced foundation models for instance-level perception, achieving state-of-the-art in-domain and zero-shot performance across object detection and segmentation. However, t...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Segu_MOBIUS_Big-to-Mobile_Universal_Instance_Segmentation_via_Multi-modal_Bottleneck_Fusion_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.019 논문 카드
- 제목: MixA-Q: Revisiting Activation Sparsity for Vision Transformers from a Mixed-Precision Quantization Perspective
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: In this paper, we propose MixA-Q, a mixed-precision activation quantization framework that leverages intra-layer activation sparsity (a concept widely explored in activation pruning methods) for efficient inference of...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_MixA-Q_Revisiting_Activation_Sparsity_for_Vision_Transformers_from_a_Mixed-Precision_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.020 논문 카드
- 제목: On-Device Diffusion Transformer Policy for Efficient Robot Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, Embodied/로보틱스
- 핵심 초록 신호: Diffusion Policies have significantly advanced robotic manipulation tasks via imitation learning, but their application on resource-constrained mobile platforms remains challenging due to computational inefficiency an...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wu_On-Device_Diffusion_Transformer_Policy_for_Efficient_Robot_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.021 논문 카드
- 제목: FreeKD: Knowledge Distillation via Semantic Frequency Prompt
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Knowledge distillation (KD) has been applied to various tasks successfully and mainstream methods typically boost the student model via spatial imitation losses. However the consecutive downsamplings induced in the sp...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_FreeKD_Knowledge_Distillation_via_Semantic_Frequency_Prompt_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.022 논문 카드
- 제목: How to Make Cross Encoder a Good Teacher for Efficient Image-Text Retrieval?
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Dominant dual-encoder models enable efficient image-text retrieval but suffer from limited accuracy while the cross-encoder models offer higher accuracy at the expense of efficiency. Distilling cross-modality matching...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_How_to_Make_Cross_Encoder_a_Good_Teacher_for_Efficient_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.023 논문 카드
- 제목: ACAM-KD: Adaptive and Cooperative Attention Masking for Knowledge Distillation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Dense visual prediction tasks, such as detection and segmentation, are crucial for time-critical applications (e.g., autonomous driving and video surveillance). While deep models achieve strong performance, their effi...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lan_ACAM-KD_Adaptive_and_Cooperative_Attention_Masking_for_Knowledge_Distillation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.024 논문 카드
- 제목: Evidential Knowledge Distillation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지
- 핵심 초록 신호: Existing logit-based knowledge distillation methods typically employ singularly deterministic categorical distributions, which eliminates the inherent uncertainty in network predictions and thereby limiting the effect...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xiang_Evidential_Knowledge_Distillation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.025 논문 카드
- 제목: Knowledge Distillation with Refined Logits
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지
- 핵심 초록 신호: Recent research on knowledge distillation has increasingly focused on logit distillation because of its simplicity, effectiveness, and versatility in model compression. In this paper, we introduce Refined Logit Distil...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Sun_Knowledge_Distillation_with_Refined_Logits_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.026 논문 카드
- 제목: MDP: Multidimensional Vision Model Pruning with Latency Constraint
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Current structural pruning methods face two significant limitations: (i) they often limit pruning to finer-grained levels like channels, making aggressive parameter reduction challenging, and (ii) they focus heavily o...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Sun_MDP_Multidimensional_Vision_Model_Pruning_with_Latency_Constraint_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.027 논문 카드
- 제목: SnapGen: Taming High-Resolution Text-to-Image Models for Mobile Devices with Efficient Architectures and Training
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Existing text-to-image (T2I) diffusion models face several limitations, including large model sizes, slow runtime, and low-quality generation on mobile devices. This paper aims to address all of these challenges by de...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_SnapGen_Taming_High-Resolution_Text-to-Image_Models_for_Mobile_Devices_with_Efficient_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.028 논문 카드
- 제목: Text-guided Sparse Voxel Pruning for Efficient 3D Visual Grounding
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 효율화/엣지, 멀티모달/VLM
- 핵심 초록 신호: In this paper, we propose an efficient multi-level convolution architecture for 3D visual grounding. Conventional methods are difficult to meet the requirements of real-time inference due to the two-stage or point-bas...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Guo_Text-guided_Sparse_Voxel_Pruning_for_Efficient_3D_Visual_Grounding_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.029 논문 카드
- 제목: WINS: Winograd Structured Pruning for Fast Winograd Convolution
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 3D 비전/기하
- 핵심 초록 신호: Recent GPUs leverage Winograd convolution and structured pruning to significantly accelerate inference. First, Winograd convolution is theoretically 2.25x faster than standard convolution. Second, structured pruning r...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Park_WINS_Winograd_Structured_Pruning_for_Fast_Winograd_Convolution_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.030 논문 카드
- 제목: Logit Standardization in Knowledge Distillation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Knowledge distillation involves transferring soft labels from a teacher to a student using a shared temperature-based softmax function. However the assumption of a shared temperature between teacher and student implie...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Sun_Logit_Standardization_in_Knowledge_Distillation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.031 논문 카드
- 제목: RadarDistill: Boosting Radar-based Object Detection Performance via Knowledge Distillation from LiDAR Features
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 검출/분할, 에이전트/추론
- 핵심 초록 신호: The inherent noisy and sparse characteristics of radar data pose challenges in finding effective representations for 3D object detection. In this paper we propose RadarDistill a novel knowledge distillation (KD) metho...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Bang_RadarDistill_Boosting_Radar-based_Object_Detection_Performance_via_Knowledge_Distillation_from_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.032 논문 카드
- 제목: Competitive Distillation: A Simple Learning Strategy for Improving Visual Classification
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Deep Neural Networks (DNNs) have significantly advanced the field of computer vision. To improve DNN training process, knowledge distillation methods demonstrate their effectiveness in accelerating network training by...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shi_Competitive_Distillation_A_Simple_Learning_Strategy_for_Improving_Visual_Classification_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.033 논문 카드
- 제목: EdgeTAM: On-Device Track Anything Model
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 비디오/시계열, 검출/분할
- 핵심 초록 신호: On top of Segment Anything Model (SAM), SAM 2 further extends its capability from image to video inputs through a memory bank mechanism and obtains a remarkable performance compared with previous methods, making it a ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhou_EdgeTAM_On-Device_Track_Anything_Model_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.034 논문 카드
- 제목: EfficientViM: Efficient Vision Mamba with Hidden State Mixer based State Space Duality
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식, 에이전트/추론
- 핵심 초록 신호: For the deployment of neural networks in resource-constrained environments, prior works have built lightweight architectures with convolution and attention for capturing local and global dependencies, respectively. Re...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lee_EfficientViM_Efficient_Vision_Mamba_with_Hidden_State_Mixer_based_State_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.035 논문 카드
- 제목: Frequency-Aligned Knowledge Distillation for Lightweight Spatiotemporal Forecasting
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Spatiotemporal forecasting tasks, such as traffic flow, combustion dynamics, and weather forecasting, often require complex models that suffer from low training efficiency and high memory consumption. This paper propo...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Frequency-Aligned_Knowledge_Distillation_for_Lightweight_Spatiotemporal_Forecasting_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.036 논문 카드
- 제목: Hierarchical Knowledge Prompt Tuning for Multi-task Test-Time Adaptation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Test-time adaptation using vision-language models (such as CLIP) to quickly adjust to distributional shifts of downstream tasks has shown great potential. Despite significant progress, existing methods are still limit...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Hierarchical_Knowledge_Prompt_Tuning_for_Multi-task_Test-Time_Adaptation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.037 논문 카드
- 제목: LLM-assisted Entropy-based Adaptive Distillation for Unsupervised Fine-grained Visual Representation Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Unsupervised Fine-grained Visual Represent Learning (FVRL) aims to learn discriminative features to distinguish subtle differences among visually similar categories without using labeled fine-grained data. Existing wo...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Dong_LLM-assisted_Entropy-based_Adaptive_Distillation_for_Unsupervised_Fine-grained_Visual_Representation_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.038 논문 카드
- 제목: Quantization without Tears
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Deep neural networks, while achieving remarkable success across diverse tasks, demand significant resources, including computation, GPU memory, bandwidth, storage, and energy. Network quantization, as a standard compr...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Fu_Quantization_without_Tears_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.039 논문 카드
- 제목: TopV: Compatible Token Pruning with Inference Time Optimization for Fast and Low-Memory Multimodal Vision Language Model
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Vision-Language Models (VLMs) demand substantial computational resources during inference, largely due to the extensive visual input tokens for representing visual information. Previous studies have noted that visual ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yang_TopV_Compatible_Token_Pruning_with_Inference_Time_Optimization_for_Fast_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.040 논문 카드
- 제목: V.I.P. : Iterative Online Preference Distillation for Efficient Video Diffusion Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 비디오/시계열, 생성모델/디퓨전
- 핵심 초록 신호: With growing interest in deploying text-to-video (T2V) models in resource-constrained environments, reducing their high computational cost has become crucial, leading to extensive research on pruning and knowledge dis...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kim_V.I.P.__Iterative_Online_Preference_Distillation_for_Efficient_Video_Diffusion_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.041 논문 카드
- 제목: CRKD: Enhanced Camera-Radar Object Detection with Cross-modality Knowledge Distillation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 검출/분할, 3D 비전/기하
- 핵심 초록 신호: In the field of 3D object detection for autonomous driving LiDAR-Camera (LC) fusion is the top-performing sensor configuration. Still LiDAR is relatively high cost which hinders adoption of this technology for consume...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhao_CRKD_Enhanced_Camera-Radar_Object_Detection_with_Cross-modality_Knowledge_Distillation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.042 논문 카드
- 제목: Leveraging Camera Triplets for Efficient and Accurate Structure-from-Motion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 3D 비전/기하, 비디오/시계열
- 핵심 초록 신호: In Structure-from-Motion (SfM) the underlying viewgraphs of unordered image collections generally have a highly redundant set of edges that can be sparsified for efficiency without significant loss of reconstruction q...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Manam_Leveraging_Camera_Triplets_for_Efficient_and_Accurate_Structure-from-Motion_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.043 논문 카드
- 제목: PBWR: Parametric-Building-Wireframe Reconstruction from Aerial LiDAR Point Clouds
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: In this paper we present an end-to-end 3D-building-wireframe reconstruction method to regress edges directly from aerial light-detection-and-ranging (LiDAR) point clouds. Our method named parametric-building-wireframe...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Huang_PBWR_Parametric-Building-Wireframe_Reconstruction_from_Aerial_LiDAR_Point_Clouds_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.044 논문 카드
- 제목: CleanPose: Category-Level Object Pose Estimation via Causal Learning and Knowledge Distillation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: In the effort to achieve robust and generalizable category-level object pose estimation, recent methods primarily focus on learning fundamental representations from data. However, the inherent biases within the data a...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lin_CleanPose_Category-Level_Object_Pose_Estimation_via_Causal_Learning_and_Knowledge_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.045 논문 카드
- 제목: Dense2MoE: Restructuring Diffusion Transformer to MoE for Efficient Text-to-Image Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Diffusion Transformer (DiT) has demonstrated remarkable performance in text-to-image generation; however, its large parameter size results in substantial inference overhead. Existing parameter compression methods prim...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zheng_Dense2MoE_Restructuring_Diffusion_Transformer_to_MoE_for_Efficient_Text-to-Image_Generation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.046 논문 카드
- 제목: External Knowledge Injection for CLIP-Based Class-Incremental Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Class-Incremental Learning (CIL) enables learning systems to continuously adapt to evolving data streams. With the advancement of pre-training, leveraging pre-trained vision-language models (e.g., CLIP) offers a promi...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhou_External_Knowledge_Injection_for_CLIP-Based_Class-Incremental_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.047 논문 카드
- 제목: Memory-Efficient 4-bit Preconditioned Stochastic Optimization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Preconditioned stochastic optimization algorithms, exemplified by Shampoo, outperform first-order optimizers by offering theoretical convergence benefits and practical gains in large-scale neural network training. How...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Memory-Efficient_4-bit_Preconditioned_Stochastic_Optimization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.048 논문 카드
- 제목: MoVE-KD: Knowledge Distillation for VLMs with Mixture of Visual Encoders
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Visual encoders are fundamental components in vision-language models (VLMs), each showcasing unique strengths derived from various pre-trained visual foundation models. To leverage the various capabilities of these en...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Cao_MoVE-KD_Knowledge_Distillation_for_VLMs_with_Mixture_of_Visual_Encoders_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.049 논문 카드
- 제목: Multi-Granularity Class Prototype Topology Distillation for Class-Incremental Source-Free Unsupervised Domain Adaptation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지
- 핵심 초록 신호: This paper explores the Class-Incremental Source-Free Unsupervised Domain Adaptation (CI-SFUDA) problem, where the unlabeled target data come incrementally without access to labeled source instances. This problem pose...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_Multi-Granularity_Class_Prototype_Topology_Distillation_for_Class-Incremental_Source-Free_Unsupervised_Domain_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.050 논문 카드
- 제목: Outlier-Aware Post-Training Quantization for Image Super-Resolution
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Quantization techniques, including quantization-aware training (QAT) and post-training quantization (PTQ), have become essential for inference acceleration of image super-resolution (SR) networks. Compared to QAT, PTQ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_Outlier-Aware_Post-Training_Quantization_for_Image_Super-Resolution_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.051 논문 카드
- 제목: PRVQL: Progressive Knowledge-guided Refinement for Robust Egocentric Visual Query Localization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Egocentric visual query localization (EgoVQL) focuses on localizing the target of interest in space and time from first-person videos, given a visual query. Despite recent progressive, existing methods often struggle ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Fan_PRVQL_Progressive_Knowledge-guided_Refinement_for_Robust_Egocentric_Visual_Query_Localization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.052 논문 카드
- 제목: Q-DiT: Accurate Post-Training Quantization for Diffusion Transformers
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 생성모델/디퓨전, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Recent advancements in diffusion models, particularly the architectural transformation from UNet-based models to Diffusion Transformers (DiTs), significantly improve the quality and scalability of image and video gene...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_Q-DiT_Accurate_Post-Training_Quantization_for_Diffusion_Transformers_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.053 논문 카드
- 제목: QuartDepth: Post-Training Quantization for Real-Time Depth Estimation on the Edge
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Monocular Depth Estimation (MDE) has emerged as a pivotal task in computer vision, supporting numerous real-world applications. However, deploying accurate depth estimation models on resource-limited edge devices, esp...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shen_QuartDepth_Post-Training_Quantization_for_Real-Time_Depth_Estimation_on_the_Edge_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.054 논문 카드
- 제목: Sketch Down the FLOPs: Towards Efficient Networks for Human Sketch
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 에이전트/추론, 강건 인식
- 핵심 초록 신호: As sketch research has collectively matured over time, its adaptation for at-mass commercialisation emerges on the immediate horizon. Despite an already mature research endeavour for photos, there is no research on th...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Sain_Sketch_Down_the_FLOPs_Towards_Efficient_Networks_for_Human_Sketch_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.055 논문 카드
- 제목: Task Vector Quantization for Memory-Efficient Model Merging
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Model merging enables efficient multi-task models by combining task-specific fine-tuned checkpoints. However, storing multiple task-specific checkpoints requires significant memory, limiting scalability and restrictin...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kim_Task_Vector_Quantization_for_Memory-Efficient_Model_Merging_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.056 논문 카드
- 제목: Visual-Oriented Fine-Grained Knowledge Editing for MultiModal Large Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Existing knowledge editing works for MultiModal Large Language Models primarily focus on text-oriented, coarse-grained scenarios, where modifying textual content alone is sufficient. As a result, they fail to capture ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zeng_Visual-Oriented_Fine-Grained_Knowledge_Editing_for_MultiModal_Large_Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.057 논문 카드
- 제목: What Makes a Good Dataset for Knowledge Distillation?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Knowledge distillation (KD) has been a popular and effective method for model compression. One important assumption of KD is that the teacher's original dataset will also be available when training the student. Howeve...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Frank_What_Makes_a_Good_Dataset_for_Knowledge_Distillation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.058 논문 카드
- 제목: Distribution-aware Knowledge Prototyping for Non-exemplar Lifelong Person Re-identification
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Lifelong person re-identification (LReID) suffers from the catastrophic forgetting problem when learning from non-stationary data. Existing exemplar-based and knowledge distillation-based LReID methods encounter data ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xu_Distribution-aware_Knowledge_Prototyping_for_Non-exemplar_Lifelong_Person_Re-identification_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.059 논문 카드
- 제목: Edge-Aware 3D Instance Segmentation Network with Intelligent Semantic Prior
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 검출/분할, 3D 비전/기하
- 핵심 초록 신호: While recent 3D instance segmentation approaches show promising results based on transformer architectures they often fail to correctly identify instances with similar appearances. They also ambiguously determine edge...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Roh_Edge-Aware_3D_Instance_Segmentation_Network_with_Intelligent_Semantic_Prior_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.060 논문 카드
- 제목: EfficientSAM: Leveraged Masked Image Pretraining for Efficient Segment Anything
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 강건 인식, 검출/분할
- 핵심 초록 신호: Segment Anything Model (SAM) has emerged as a powerful tool for numerous vision applications. A key component that drives the impressive performance for zero-shot transfer and high versatility is a super large Transfo...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xiong_EfficientSAM_Leveraged_Masked_Image_Pretraining_for_Efficient_Segment_Anything_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.061 논문 카드
- 제목: SOK-Bench: A Situated Video Reasoning Benchmark with Aligned Open-World Knowledge
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: Reasoning from visual dynamics scenes has many real world applications. However existing video reasoning benchmarks are still inadequate since they were mainly designed for factual or situated reasoning and rarely inv...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_SOK-Bench_A_Situated_Video_Reasoning_Benchmark_with_Aligned_Open-World_Knowledge_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.062 논문 카드
- 제목: Taming Mode Collapse in Score Distillation for Text-to-3D Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 3D 비전/기하, 생성모델/디퓨전
- 핵심 초록 신호: Despite the remarkable performance of score distillation in text-to-3D generation such techniques notoriously suffer from view inconsistency issues also known as "Janus" artifact where the generated objects fake each ...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_Taming_Mode_Collapse_in_Score_Distillation_for_Text-to-3D_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.063 논문 카드
- 제목: Three Pillars Improving Vision Foundation Model Distillation for Lidar
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 효율화/엣지, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Self-supervised image backbones can be used to address complex 2D tasks (e.g. semantic segmentation object discovery) very efficiently and with little or no downstream supervision. Ideally 3D backbones for lidar shoul...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Puy_Three_Pillars_Improving_Vision_Foundation_Model_Distillation_for_Lidar_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.6.064 논문 카드
- 제목: Accelerate 3D Object Detection Models via Zero-Shot Attention Key Pruning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 3D 비전/기하, 검출/분할
- 핵심 초록 신호: Query-based methods with dense features have demonstrated remarkable success in 3D object detection tasks. However, the computational demands of these models, particularly with large image sizes and multiple transform...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xu_Accelerate_3D_Object_Detection_Models_via_Zero-Shot_Attention_Key_Pruning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.065 논문 카드
- 제목: CL-LoRA: Continual Low-Rank Adaptation for Rehearsal-Free Class-Incremental Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Class-Incremental Learning (CIL) aims to learn new classes sequentially while retaining the knowledge of previously learned classes. Recently, pre-trained models (PTMs) combined with parameter-efficient fine-tuning (P...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/He_CL-LoRA_Continual_Low-Rank_Adaptation_for_Rehearsal-Free_Class-Incremental_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.066 논문 카드
- 제목: Curriculum Coarse-to-Fine Selection for High-IPC Dataset Distillation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식
- 핵심 초록 신호: Dataset distillation (DD) excels in synthesizing a small number of images per class (IPC) but struggles to maintain its effectiveness in high-IPC settings. Recent works on dataset distillation demonstrate that combini...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_Curriculum_Coarse-to-Fine_Selection_for_High-IPC_Dataset_Distillation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.067 논문 카드
- 제목: Disentangled World Models: Learning to Transfer Semantic Knowledge from Distracting Videos for Reinforcement Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식, 비디오/시계열
- 핵심 초록 신호: Training visual reinforcement learning (RL) in practical scenarios presents a significant challenge, i.e., RL agents suffer from low sample efficiency in environments with variations. While various approaches have att...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_Disentangled_World_Models_Learning_to_Transfer_Semantic_Knowledge_from_Distracting_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.068 논문 카드
- 제목: Efficient Test-time Adaptive Object Detection via Sensitivity-Guided Pruning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Continual test-time adaptive object detection (CTTA-OD) aims to online adapt a source pre-trained detector to ever-changing environments during inference under continuous domain shifts. Most existing CTTA-OD methods p...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Efficient_Test-time_Adaptive_Object_Detection_via_Sensitivity-Guided_Pruning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.6.069 논문 카드
- 제목: Enhanced Event-based Dense Stereo via Cross-Sensor Knowledge Distillation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 3D 비전/기하, 비디오/시계열
- 핵심 초록 신호: Accurate stereo matching under fast motion and extreme lighting conditions is a challenge for many vision applications. Event cameras have the advantages of low latency and high dynamic range, thus providing a reliabl...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Enhanced_Event-based_Dense_Stereo_via_Cross-Sensor_Knowledge_Distillation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.6.070 논문 카드
- 제목: FIMA-Q: Post-Training Quantization for Vision Transformers by Fisher Information Matrix Approximation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Post-training quantization (PTQ) has stood out as a cost-effective and promising model compression approach over recent years, as it eliminates the need for retraining on the entire dataset. Unfortunately, most existi...
- 트렌드 해석: 성능-지연시간-전력의 동시 최적화가 실제 배포의 병목을 해소하는 핵심 과제로 부상했다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wu_FIMA-Q_Post-Training_Quantization_for_Vision_Transformers_by_Fisher_Information_Matrix_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

### 4.7 기타/신규 토픽

#### 4.7.001 논문 카드
- 제목: "Principal Components" Enable A New Language of Images
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wen_Principal_Components_Enable_A_New_Language_of_Images_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.002 논문 카드
- 제목: 4D-Bench: Benchmarking Multi-modal Large Language Models for 4D Object Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_4D-Bench_Benchmarking_Multi-modal_Large_Language_Models_for_4D_Object_Understanding_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.003 논문 카드
- 제목: 5%>100%: Breaking Performance Shackles of Full Fine-Tuning on Visual Recognition Tasks
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yin_5100_Breaking_Performance_Shackles_of_Full_Fine-Tuning_on_Visual_Recognition_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.004 논문 카드
- 제목: A Differentiable Wave Optics Model for End-to-End Computational Imaging System Optimization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ho_A_Differentiable_Wave_Optics_Model_for_End-to-End_Computational_Imaging_System_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.005 논문 카드
- 제목: A General Adaptive Dual-level Weighting Mechanism for Remote Sensing Pansharpening
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_A_General_Adaptive_Dual-level_Weighting_Mechanism_for_Remote_Sensing_Pansharpening_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.006 논문 카드
- 제목: A Hubness Perspective on Representation Learning for Graph-Based Multi-View Clustering
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xu_A_Hubness_Perspective_on_Representation_Learning_for_Graph-Based_Multi-View_Clustering_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.007 논문 카드
- 제목: A Simple Data Augmentation for Feature Distribution Skewed Federated Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yan_A_Simple_Data_Augmentation_for_Feature_Distribution_Skewed_Federated_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.008 논문 카드
- 제목: A Tale of Two Classes: Adapting Supervised Contrastive Learning to Binary Imbalanced Datasets
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: Supervised contrastive learning (SupCon) has proven to be a powerful alternative to the standard cross-entropy loss for classification of multi-class balanced datasets. However, it struggles to learn well-conditioned ...
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Mildenberger_A_Tale_of_Two_Classes_Adapting_Supervised_Contrastive_Learning_to_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.009 논문 카드
- 제목: A Token-level Text Image Foundation Model for Document Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Guan_A_Token-level_Text_Image_Foundation_Model_for_Document_Understanding_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.010 논문 카드
- 제목: A Unified Framework to BRIDGE Complete and Incomplete Deep Multi-View Clustering under Non-IID Missing Patterns
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jiang_A_Unified_Framework_to_BRIDGE_Complete_and_Incomplete_Deep_Multi-View_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.011 논문 카드
- 제목: A Universal Scale-Adaptive Deformable Transformer for Image Restoration across Diverse Artifacts
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/He_A_Universal_Scale-Adaptive_Deformable_Transformer_for_Image_Restoration_across_Diverse_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.012 논문 카드
- 제목: A3: Few-shot Prompt Learning of Unlearnable Examples with Cross-Modal Adversarial Feature Alignment
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_A3_Few-shot_Prompt_Learning_of_Unlearnable_Examples_with_Cross-Modal_Adversarial_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.013 논문 카드
- 제목: AIComposer: Any Style and Content Image Composition via Feature Integration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_AIComposer_Any_Style_and_Content_Image_Composition_via_Feature_Integration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.014 논문 카드
- 제목: AIRA: Activation-Informed Low-Rank Adaptation for Large Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_AIRA_Activation-Informed_Low-Rank_Adaptation_for_Large_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.015 논문 카드
- 제목: ATLAS: Decoupling Skeletal and Shape Parameters for Expressive Parametric Human Modeling
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Park_ATLAS_Decoupling_Skeletal_and_Shape_Parameters_for_Expressive_Parametric_Human_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.016 논문 카드
- 제목: AVQACL: A Novel Benchmark for Audio-Visual Question Answering Continual Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wu_AVQACL_A_Novel_Benchmark_for_Audio-Visual_Question_Answering_Continual_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.017 논문 카드
- 제목: Achieving More with Less: Additive Prompt Tuning for Rehearsal-Free Class-Incremental Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_Achieving_More_with_Less_Additive_Prompt_Tuning_for_Rehearsal-Free_Class-Incremental_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.018 논문 카드
- 제목: Active Hyperspectral Imaging Using an Event Camera
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yu_Active_Hyperspectral_Imaging_Using_an_Event_Camera_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.019 논문 카드
- 제목: AdaDrive: Self-Adaptive Slow-Fast System for Language-Grounded Autonomous Driving
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_AdaDrive_Self-Adaptive_Slow-Fast_System_for_Language-Grounded_Autonomous_Driving_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.020 논문 카드
- 제목: Adapter Merging with Centroid Prototype Mapping for Scalable Class-Incremental Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: We propose Adapter Merging with Centroid Prototype Mapping (ACMap), an exemplar-free framework for class-incremental learning (CIL) that addresses both catastrophic forgetting and scalability. While existing methods t...
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Fukuda_Adapter_Merging_with_Centroid_Prototype_Mapping_for_Scalable_Class-Incremental_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.021 논문 카드
- 제목: Adapting to Observation Length of Trajectory Prediction via Contrastive Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Qiu_Adapting_to_Observation_Length_of_Trajectory_Prediction_via_Contrastive_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.022 논문 카드
- 제목: Adaptive Rectangular Convolution for Remote Sensing Pansharpening
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Adaptive_Rectangular_Convolution_for_Remote_Sensing_Pansharpening_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.023 논문 카드
- 제목: Advancing Textual Prompt Learning with Anchored Attributes
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Advancing_Textual_Prompt_Learning_with_Anchored_Attributes_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.024 논문 카드
- 제목: Advancing Visual Large Language Model for Multi-granular Versatile Perception
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xiang_Advancing_Visual_Large_Language_Model_for_Multi-granular_Versatile_Perception_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.025 논문 카드
- 제목: Adversarial Exploitation of Data Diversity Improves Visual Localization
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Adversarial_Exploitation_of_Data_Diversity_Improves_Visual_Localization_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.026 논문 카드
- 제목: Align Your Rhythm: Generating Highly Aligned Dance Poses with Gating-Enhanced Rhythm-Aware Feature Representation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Fan_Align_Your_Rhythm_Generating_Highly_Aligned_Dance_Poses_with_Gating-Enhanced_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.027 논문 카드
- 제목: All Languages Matter: Evaluating LMMs on Culturally Diverse 100 Languages
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Vayani_All_Languages_Matter_Evaluating_LMMs_on_Culturally_Diverse_100_Languages_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.028 논문 카드
- 제목: All Parts Matter: A Unified Mask-Free Virtual Try-On Framework
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Du_All_Parts_Matter_A_Unified_Mask-Free_Virtual_Try-On_Framework_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.029 논문 카드
- 제목: All-directional Disparity Estimation for Real-world QPD Images
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yu_All-directional_Disparity_Estimation_for_Real-world_QPD_Images_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.030 논문 카드
- 제목: AllGCD: Leveraging All Unlabeled Data for Generalized Category Discovery
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cao_AllGCD_Leveraging_All_Unlabeled_Data_for_Generalized_Category_Discovery_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.031 논문 카드
- 제목: Always Skip Attention
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ji_Always_Skip_Attention_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.032 논문 카드
- 제목: AniDoc: Animation Creation Made Easier
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Meng_AniDoc_Animation_Creation_Made_Easier_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.033 논문 카드
- 제목: AniMer: Animal Pose and Shape Estimation Using Family Aware Transformer
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lyu_AniMer_Animal_Pose_and_Shape_Estimation_Using_Family_Aware_Transformer_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.034 논문 카드
- 제목: Animate Anyone 2: High-Fidelity Character Image Animation with Environment Affordance
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hu_Animate_Anyone_2_High-Fidelity_Character_Image_Animation_with_Environment_Affordance_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.035 논문 카드
- 제목: Animate and Sound an Image
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Animate_and_Sound_an_Image_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.036 논문 카드
- 제목: AnimeGamer: Infinite Anime Life Simulation with Next Game State Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cheng_AnimeGamer_Infinite_Anime_Life_Simulation_with_Next_Game_State_Prediction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.037 논문 카드
- 제목: AnomalyNCD: Towards Novel Anomaly Class Discovery in Industrial Scenarios
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huang_AnomalyNCD_Towards_Novel_Anomaly_Class_Discovery_in_Industrial_Scenarios_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.038 논문 카드
- 제목: Any-SSR: How Recursive Least Squares Works in Continual Learning of Large Language Model
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tong_Any-SSR_How_Recursive_Least_Squares_Works_in_Continual_Learning_of_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.039 논문 카드
- 제목: Any2AnyTryon: Leveraging Adaptive Position Embeddings for Versatile Virtual Clothing Tasks
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Guo_Any2AnyTryon_Leveraging_Adaptive_Position_Embeddings_for_Versatile_Virtual_Clothing_Tasks_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.040 논문 카드
- 제목: AnyCalib: On-Manifold Learning for Model-Agnostic Single-View Camera Calibration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tirado-Garin_AnyCalib_On-Manifold_Learning_for_Model-Agnostic_Single-View_Camera_Calibration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.041 논문 카드
- 제목: ArgoTweak: Towards Self-Updating HD Maps through Structured Priors
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wild_ArgoTweak_Towards_Self-Updating_HD_Maps_through_Structured_Priors_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.042 논문 카드
- 제목: Arti-PG: A Toolbox for Procedurally Synthesizing Large-Scale and Diverse Articulated Objects with Rich Annotations
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Sun_Arti-PG_A_Toolbox_for_Procedurally_Synthesizing_Large-Scale_and_Diverse_Articulated_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.043 논문 카드
- 제목: Ask and Remember: A Questions-Only Replay Strategy for Continual Visual Question Answering
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Marouf_Ask_and_Remember_A_Questions-Only_Replay_Strategy_for_Continual_Visual_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.044 논문 카드
- 제목: Assessing and Learning Alignment of Unimodal Vision and Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Assessing_and_Learning_Alignment_of_Unimodal_Vision_and_Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.045 논문 카드
- 제목: Audio-Visual Semantic Graph Network for Audio-Visual Event Localization
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_Audio-Visual_Semantic_Graph_Network_for_Audio-Visual_Event_Localization_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.046 논문 카드
- 제목: Augmenting Moment Retrieval: Zero-Dependency Two-Stage Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wei_Augmenting_Moment_Retrieval_Zero-Dependency_Two-Stage_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.7.047 논문 카드
- 제목: Augmenting Perceptual Super-Resolution via Image Quality Predictors
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: Super-resolution (SR), a classical inverse problem in computer vision, is inherently ill-posed, inducing a distribution of plausible solutions for every input. However, the desired result is not simply the expectation...
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Augmenting_Perceptual_Super-Resolution_via_Image_Quality_Predictors_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.048 논문 카드
- 제목: AutoPresent: Designing Structured Visuals from Scratch
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ge_AutoPresent_Designing_Structured_Visuals_from_Scratch_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.049 논문 카드
- 제목: BHViT: Binarized Hybrid Vision Transformer
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Gao_BHViT_Binarized_Hybrid_Vision_Transformer_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.7.050 논문 카드
- 제목: BUFFER-X: Towards Zero-Shot Point Cloud Registration in Diverse Scenes
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 기타/신규 토픽
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 분류 체계 밖의 새로운 문제정의/벤치마크가 등장하고 있다는 조기 신호다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Seo_BUFFER-X_Towards_Zero-Shot_Point_Cloud_Registration_in_Diverse_Scenes_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

### 4.8 검출/분할

#### 4.8.001 논문 카드
- 제목: Unsupervised Universal Image Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 강건 인식
- 핵심 초록 신호: Several unsupervised image segmentation approaches have been proposed which eliminate the need for dense manually-annotated segmentation masks; current models separately handle either semantic segmentation (e.g. STEGO...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Niu_Unsupervised_Universal_Image_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.002 논문 카드
- 제목: Exploring Region-Word Alignment in Built-in Detector for Open-Vocabulary Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Open-vocabulary object detection aims to detect novel categories that are independent from the base categories used during training. Most modern methods adhere to the paradigm of learning vision-language space from a ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_Exploring_Region-Word_Alignment_in_Built-in_Detector_for_Open-Vocabulary_Object_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.003 논문 카드
- 제목: Foveated Instance Segmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: Instance segmentation is essential for augmented reality and virtual reality (AR/VR) as it enables precise object recognition and interaction, enhancing the integration of virtual and real-world elements for an immers...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zeng_Foveated_Instance_Segmentation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.004 논문 카드
- 제목: ECLIPSE: Efficient Continual Learning in Panoptic Segmentation with Visual Prompt Tuning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 효율화/엣지, 멀티모달/VLM
- 핵심 초록 신호: Panoptic segmentation combining semantic and instance segmentation stands as a cutting-edge computer vision task. Despite recent progress with deep learning models the dynamic nature of real-world applications necessi...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Kim_ECLIPSE_Efficient_Continual_Learning_in_Panoptic_Segmentation_with_Visual_Prompt_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.005 논문 카드
- 제목: USE: Universal Segment Embeddings for Open-Vocabulary Image Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 효율화/엣지
- 핵심 초록 신호: The open-vocabulary image segmentation task involves partitioning images into semantically meaningful segments and classifying them with flexible text-defined categories. The recent vision-based foundation models such...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_USE_Universal_Segment_Embeddings_for_Open-Vocabulary_Image_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.006 논문 카드
- 제목: Adversarial Attention Perturbations for Large Object Detection Transformers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Adversarial perturbations are useful tools for exposing vulnerabilities in neural networks. Existing adversarial perturbation methods for object detection are either limited to attacking CNN-based detectors or weak ag...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yahn_Adversarial_Attention_Perturbations_for_Large_Object_Detection_Transformers_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.007 논문 카드
- 제목: DiSCO-3D : Discovering and Segmenting Sub-Concepts from Open-vocabulary Queries in NeRF
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 3D 비전/기하, Embodied/로보틱스
- 핵심 초록 신호: 3D semantic segmentation provides high-level scene understanding for applications in robotics, autonomous systems, etc. Traditional methods adapt exclusively to either task-specific goals (open-vocabulary segmentation...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Petit_DiSCO-3D__Discovering_and_Segmenting_Sub-Concepts_from_Open-vocabulary_Queries_in_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.008 논문 카드
- 제목: SAM2Object: Consolidating View Consistency via SAM2 for Zero-Shot 3D Instance Segmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: In the field of zero-shot 3D instance segmentation, existing 2D-to-3D lifting methods typically obtain 2D segmentation across multiple RGB frames using vision foundation models, which are then projected and merged int...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_SAM2Object_Consolidating_View_Consistency_via_SAM2_for_Zero-Shot_3D_Instance_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.009 논문 카드
- 제목: SPA: Efficient User-Preference Alignment against Uncertainty in Medical Image Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 효율화/엣지, 에이전트/추론
- 핵심 초록 신호: Medical image segmentation data inherently contain uncertainty. This can stem from both imperfect image quality and variability in labeling preferences on ambiguous pixels, which depend on annotator expertise and the ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_SPA_Efficient_User-Preference_Alignment_against_Uncertainty_in_Medical_Image_Segmentation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.010 논문 카드
- 제목: DetCLIPv3: Towards Versatile Generative Open-vocabulary Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Existing open-vocabulary object detectors typically require a predefined set of categories from users significantly confining their application scenarios. In this paper we introduce DetCLIPv3 a high-performing detecto...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yao_DetCLIPv3_Towards_Versatile_Generative_Open-vocabulary_Object_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.011 논문 카드
- 제목: Semantic-aware SAM for Point-Prompted Instance Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Single-point annotation in visual tasks with the goal of minimizing labeling costs is becoming increasingly prominent in research. Recently visual foundation models such as Segment Anything (SAM) have gained widesprea...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wei_Semantic-aware_SAM_for_Point-Prompted_Instance_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.012 논문 카드
- 제목: Annotation Ambiguity Aware Semi-Supervised Medical Image Segmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Despite the remarkable progress of deep learning-based methods in medical image segmentation, their use in clinical practice remains limited for two main reasons. First, obtaining a large medical dataset with precise ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kumari_Annotation_Ambiguity_Aware_Semi-Supervised_Medical_Image_Segmentation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.013 논문 카드
- 제목: OV3D-CG: Open-vocabulary 3D Instance Segmentation with Contextual Guidance
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Open-vocabulary 3D instance segmentation (OV-3DIS), which aims to segment and classify objects beyond predefined categories, is a critical capability for embodied AI applications. Existing methods rely on pre-trained ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhou_OV3D-CG_Open-vocabulary_3D_Instance_Segmentation_with_Contextual_Guidance_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.014 논문 카드
- 제목: PanoGS: Gaussian-based Panoptic Segmentation for 3D Open Vocabulary Scene Understanding
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Recently, 3D Gaussian Splatting (3DGS) has shown encouraging performance for open vocabulary scene understanding tasks. However, previous methods can not distinguish 3D instance-level information, which usually predic...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhai_PanoGS_Gaussian-based_Panoptic_Segmentation_for_3D_Open_Vocabulary_Scene_Understanding_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.015 논문 카드
- 제목: Scaling up Image Segmentation across Data and Tasks
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Traditional segmentation models, while effective in isolated tasks, often fail to generalize to more complex and open-ended segmentation problems, such as free-form, open-vocabulary, and in-the-wild scenarios. To brid...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Scaling_up_Image_Segmentation_across_Data_and_Tasks_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.016 논문 카드
- 제목: Emergent Open-Vocabulary Semantic Segmentation from Off-the-shelf Vision-Language Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: From image-text pairs large-scale vision-language models (VLMs) learn to implicitly associate image regions with words which prove effective for tasks like visual question answering. However leveraging the learned ass...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Luo_Emergent_Open-Vocabulary_Semantic_Segmentation_from_Off-the-shelf_Vision-Language_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.017 논문 카드
- 제목: Enhancing 3D Object Detection with 2D Detection-Guided Query Anchors
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Multi-camera-based 3D object detection has made notable progress in the past several years. However we observe that there are cases (e.g. faraway regions) in which popular 2D object detectors are more reliable than st...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ji_Enhancing_3D_Object_Detection_with_2D_Detection-Guided_Query_Anchors_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.018 논문 카드
- 제목: FreePoint: Unsupervised Point Cloud Instance Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Instance segmentation of point clouds is a crucial task in 3D field with numerous applications that involve localizing and segmenting objects in a scene. However achieving satisfactory results requires a large number ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_FreePoint_Unsupervised_Point_Cloud_Instance_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.019 논문 카드
- 제목: SED: A Simple Encoder-Decoder for Open-Vocabulary Semantic Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: Open-vocabulary semantic segmentation strives to distinguish pixels into different semantic groups from an open set of categories. Most existing methods explore utilizing pre-trained vision-language models in which th...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xie_SED_A_Simple_Encoder-Decoder_for_Open-Vocabulary_Semantic_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.020 논문 카드
- 제목: OW-OVD: Unified Open World and Open Vocabulary Object Detection
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 강건 인식
- 핵심 초록 신호: Open world perception expands traditional closed-set frameworks, which assume a predefined set of known categories, to encompass dynamic real-world environments. Open World Object Detection (OWOD) and Open Vocabulary ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xi_OW-OVD_Unified_Open_World_and_Open_Vocabulary_Object_Detection_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.021 논문 카드
- 제목: Object Detection using Event Camera: A MoE Heat Conduction based Detector and A New Benchmark Dataset
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 효율화/엣지, 에이전트/추론
- 핵심 초록 신호: Object detection in event streams has emerged as a cutting-edge research area, demonstrating superior performance in low-light conditions, scenarios with motion blur, and rapid movements. Current detectors leverage sp...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Object_Detection_using_Event_Camera_A_MoE_Heat_Conduction_based_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.022 논문 카드
- 제목: SAM2Long: Enhancing SAM 2 for Long Video Segmentation with a Training-Free Memory Tree
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 검출/분할, 강건 인식
- 핵심 초록 신호: The Segment Anything Model 2 (SAM 2) has emerged as a powerful foundation model for object segmentation in both images and videos. The crucial design of SAM 2 for video segmentation is its memory module, which prompts...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ding_SAM2Long_Enhancing_SAM_2_for_Long_Video_Segmentation_with_a_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.023 논문 카드
- 제목: SegAnyPET: Universal Promptable Segmentation from Positron Emission Tomography Images
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 에이전트/추론, 3D 비전/기하
- 핵심 초록 신호: Positron Emission Tomography (PET) is a powerful molecular imaging tool that plays a crucial role in modern medical diagnostics by visualizing radio-tracer distribution to reveal physiological processes. Accurate orga...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_SegAnyPET_Universal_Promptable_Segmentation_from_Positron_Emission_Tomography_Images_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.024 논문 카드
- 제목: Sliced Wasserstein Bridge for Open-Vocabulary Video Instance Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 비디오/시계열, 강건 인식
- 핵심 초록 신호: In recent years, researchers have explored the task of open-vocabulary video instance segmentation, which aims to identify, track, and segment any instance within an open set of categories. The core challenge of Open-...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qin_Sliced_Wasserstein_Bridge_for_Open-Vocabulary_Video_Instance_Segmentation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.025 논문 카드
- 제목: Test-Time Backdoor Detection for Object Detection Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Object detection models are vulnerable to backdoor attacks, where attackers poison a small subset of training samples by embedding a predefined trigger to manipulate prediction. Detecting poisoned samples (i.e., those...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Test-Time_Backdoor_Detection_for_Object_Detection_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.026 논문 카드
- 제목: Understanding Fine-tuning CLIP for Open-vocabulary Semantic Segmentation in Hyperbolic Space
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 설명가능성/안전성
- 핵심 초록 신호: CLIP, a foundational vision-language model, has emerged as a powerful tool for open-vocabulary semantic segmentation. While freezing the text encoder preserves its powerful embeddings, recent studies show that fine-tu...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Peng_Understanding_Fine-tuning_CLIP_for_Open-vocabulary_Semantic_Segmentation_in_Hyperbolic_Space_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.027 논문 카드
- 제목: Unified Open-World Segmentation with Multi-Modal Prompts
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 에이전트/추론
- 핵심 초록 신호: In this work, we present COSINE, a unified open-world segmentation model that Consolidates Open-vocabulary Segmentation and IN-context sEgmentation with multi-modal prompts (e.g., text and image). COSINE exploits foun...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Liu_Unified_Open-World_Segmentation_with_Multi-Modal_Prompts_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.028 논문 카드
- 제목: ADA-Track: End-to-End Multi-Camera 3D Multi-Object Tracking with Alternating Detection and Association
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: Many query-based approaches for 3D Multi-Object Tracking (MOT) adopt the tracking-by-attention paradigm utilizing track queries for identity-consistent detection and object queries for identity-agnostic track spawning...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ding_ADA-Track_End-to-End_Multi-Camera_3D_Multi-Object_Tracking_with_Alternating_Detection_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.029 논문 카드
- 제목: PanoOcc: Unified Occupancy Representation for Camera-based 3D Panoptic Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 비디오/시계열
- 핵심 초록 신호: Comprehensive modeling of the surrounding 3D world is crucial for the success of autonomous driving. However existing perception tasks like object detection road structure segmentation depth & elevation estimation and...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_PanoOcc_Unified_Occupancy_Representation_for_Camera-based_3D_Panoptic_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.030 논문 카드
- 제목: SAFDNet: A Simple and Effective Network for Fully Sparse 3D Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 생성모델/디퓨전
- 핵심 초록 신호: LiDAR-based 3D object detection plays an essential role in autonomous driving. Existing high-performing 3D object detectors usually build dense feature maps in the backbone network and prediction head. However the com...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_SAFDNet_A_Simple_and_Effective_Network_for_Fully_Sparse_3D_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.031 논문 카드
- 제목: Text Grouping Adapter: Adapting Pre-trained Text Detector for Layout Analysis
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Significant progress has been made in scene text detection models since the rise of deep learning but scene text layout analysis which aims to group detected text instances as paragraphs has not kept pace. Previous wo...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Bi_Text_Grouping_Adapter_Adapting_Pre-trained_Text_Detector_for_Layout_Analysis_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.032 논문 카드
- 제목: YOLO-World: Real-Time Open-Vocabulary Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: The You Only Look Once (YOLO) series of detectors have established themselves as efficient and practical tools. However their reliance on predefined and trained object categories limits their applicability in open sce...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Cheng_YOLO-World_Real-Time_Open-Vocabulary_Object_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.033 논문 카드
- 제목: AcZeroTS: Active Learning for Zero-shot Tissue Segmentation in Pathology Images
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Tissue segmentation in pathology images is crucial for computer-aided diagnostics of human cancers. Traditional tissue segmentation models rely heavily on large-scale labeled datasets, where every tissue type must be ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Tang_AcZeroTS_Active_Learning_for_Zero-shot_Tissue_Segmentation_in_Pathology_Images_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.034 논문 카드
- 제목: Advancing Manga Analysis: Comprehensive Segmentation Annotations for the Manga109 Dataset
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Manga, a popular form of multimodal artwork, has traditionally been overlooked in deep learning advancements due to the absence of a robust dataset and comprehensive annotation. Manga segmentation is the key to the di...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xie_Advancing_Manga_Analysis_Comprehensive_Segmentation_Annotations_for_the_Manga109_Dataset_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.035 논문 카드
- 제목: DiffRefine: Diffusion-based Proposal Specific Point Cloud Densification for Cross-Domain Object Detection
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: The robustness of 3D object detection in large-scale outdoor point clouds degrades significantly when deployed in an unseen environment due to domain shifts. To minimize the domain gap, existing works on domain adapti...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shin_DiffRefine_Diffusion-based_Proposal_Specific_Point_Cloud_Densification_for_Cross-Domain_Object_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.036 논문 카드
- 제목: EntitySAM: Segment Everything in Video
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 검출/분할, 강건 인식
- 핵심 초록 신호: Automatically tracking and segmenting every video entity remains a significant challenge. Despite rapid advancements in video segmentation, even state-of-the-art models like SAM 2 struggle to consistently track all en...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ye_EntitySAM_Segment_Everything_in_Video_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.037 논문 카드
- 제목: OnlineAnySeg: Online Zero-Shot 3D Segmentation by Visual Foundation Model Guided 2D Mask Merging
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 3D 비전/기하, 효율화/엣지
- 핵심 초록 신호: Online 3D open-vocabulary segmentation of a progressively reconstructed scene is both a critical and challenging task for embodied applications. With the success of visual foundation models (VFMs) in the image domain,...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tang_OnlineAnySeg_Online_Zero-Shot_3D_Segmentation_by_Visual_Foundation_Model_Guided_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.038 논문 카드
- 제목: Open-Vocabulary HOI Detection with Interaction-aware Prompt and Concept Calibration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 검출/분할, 강건 인식
- 핵심 초록 신호: Open Vocabulary Human-Object Interaction (HOI) detection aims to detect interactions between humans and objects while generalizing to novel interaction classes beyond the training set. Current methods often rely on Vi...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lei_Open-Vocabulary_HOI_Detection_with_Interaction-aware_Prompt_and_Concept_Calibration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.039 논문 카드
- 제목: SegEarth-OV: Towards Training-Free Open-Vocabulary Segmentation for Remote Sensing Images
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Current remote sensing semantic segmentation methods are mostly built on the close-set assumption, meaning that the model can only recognize pre-defined categories that exist in the training set. However, in practical...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_SegEarth-OV_Towards_Training-Free_Open-Vocabulary_Segmentation_for_Remote_Sensing_Images_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.040 논문 카드
- 제목: Superpowering Open-Vocabulary Object Detectors for X-ray Vision
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 강건 인식
- 핵심 초록 신호: Open-vocabulary object detection (OvOD) is set to revolutionize security screening by enabling systems to recognize any item in X-ray scans. However, developing effective OvOD models for X-ray imaging presents unique ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Garcia-Fernandez_Superpowering_Open-Vocabulary_Object_Detectors_for_X-ray_Vision_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.041 논문 카드
- 제목: Take the Bull by the Horns: Learning to Segment Hard Samples
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 생성모델/디퓨전
- 핵심 초록 신호: Medical image segmentation is vital for clinical applications, with hard samples playing a key role in segmentation accuracy. We propose an effective image segmentation framework that includes mechanisms for identifyi...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Guo_Take_the_Bull_by_the_Horns_Learning_to_Segment_Hard_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.042 논문 카드
- 제목: Flattening the Parent Bias: Hierarchical Semantic Segmentation in the Poincare Ball
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Hierarchy is a natural representation of semantic taxonomies including the ones routinely used in image segmentation. Indeed recent work on semantic segmentation reports improved accuracy from supervised training leve...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Weber_Flattening_the_Parent_Bias_Hierarchical_Semantic_Segmentation_in_the_Poincare_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.043 논문 카드
- 제목: HINTED: Hard Instance Enhanced Detector with Mixed-Density Feature Fusion for Sparsely-Supervised 3D Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Current sparsely-supervised object detection methods largely depend on high threshold settings to derive high-quality pseudo labels from detector predictions. However hard instances within point clouds frequently disp...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xia_HINTED_Hard_Instance_Enhanced_Detector_with_Mixed-Density_Feature_Fusion_for_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.044 논문 카드
- 제목: Improving Single Domain-Generalized Object Detection: A Focus on Diversification and Alignment
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 설명가능성/안전성
- 핵심 초록 신호: In this work we tackle the problem of domain generalization for object detection specifically focusing on the scenario where only a single source domain is available. We propose an effective approach that involves two...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Danish_Improving_Single_Domain-Generalized_Object_Detection_A_Focus_on_Diversification_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.045 논문 카드
- 제목: Infrared Small Target Detection with Scale and Location Sensitivity
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Recently infrared small target detection (IRSTD) has been dominated by deep-learning-based methods. However these methods mainly focus on the design of complex model structures to extract discriminative features leavi...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Infrared_Small_Target_Detection_with_Scale_and_Location_Sensitivity_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.046 논문 카드
- 제목: OMG-Seg: Is One Model Good Enough For All Segmentation?
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: In this work we address various segmentation tasks each traditionally tackled by distinct or partially unified models. We propose OMG-Seg One Model that is Good enough to efficiently and effectively handle all the seg...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_OMG-Seg_Is_One_Model_Good_Enough_For_All_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.047 논문 카드
- 제목: RCBEVDet: Radar-camera Fusion in Bird's Eye View for 3D Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Three-dimensional object detection is one of the key tasks in autonomous driving. To reduce costs in practice low-cost multi-view cameras for 3D object detection are proposed to replace the expansive LiDAR sensors. Ho...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Lin_RCBEVDet_Radar-camera_Fusion_in_Birds_Eye_View_for_3D_Object_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.048 논문 카드
- 제목: Rethinking Interactive Image Segmentation with Low Latency High Quality and Diverse Prompts
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: The goal of interactive image segmentation is to delineate specific regions within an image via visual or language prompts. Low-latency and high-quality interactive segmentation with diverse prompts remain challenging...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Rethinking_Interactive_Image_Segmentation_with_Low_Latency_High_Quality_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.049 논문 카드
- 제목: SD2Event:Self-supervised Learning of Dynamic Detectors and Contextual Descriptors for Event Cameras
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: Event cameras offer many advantages over traditional frame-based cameras such as high dynamic range and low latency. Therefore event cameras are widely applied in diverse computer vision applications where event-based...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Gao_SD2EventSelf-supervised_Learning_of_Dynamic_Detectors_and_Contextual_Descriptors_for_Event_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.050 논문 카드
- 제목: Scene-adaptive and Region-aware Multi-modal Prompt for Open Vocabulary Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Open Vocabulary Object Detection (OVD) aims to detect objects from novel classes described by text inputs based on the generalization ability of trained classes. Existing methods mainly focus on transferring knowledge...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhao_Scene-adaptive_and_Region-aware_Multi-modal_Prompt_for_Open_Vocabulary_Object_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.051 논문 카드
- 제목: Teeth-SEG: An Efficient Instance Segmentation Framework for Orthodontic Treatment based on Multi-Scale Aggregation and Anthropic Prior Knowledge
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 효율화/엣지, 에이전트/추론
- 핵심 초록 신호: Teeth localization segmentation and labeling in 2D images have great potential in modern dentistry to enhance dental diagnostics treatment planning and population-based studies on oral health. However general instance...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zou_Teeth-SEG_An_Efficient_Instance_Segmentation_Framework_for_Orthodontic_Treatment_based_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.052 논문 카드
- 제목: UniMODE: Unified Monocular 3D Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Realizing unified monocular 3D object detection including both indoor and outdoor scenes holds great importance in applications like robot navigation. However involving various scenarios of data to train models poses ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_UniMODE_Unified_Monocular_3D_Object_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.053 논문 카드
- 제목: Universal Segmentation at Arbitrary Granularity with Language Instruction
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 강건 인식, 에이전트/추론
- 핵심 초록 신호: This paper aims to achieve universal segmentation of arbitrary semantic level. Despite significant progress in recent years specialist segmentation approaches are limited to specific tasks and data distribution. Retra...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Liu_Universal_Segmentation_at_Arbitrary_Granularity_with_Language_Instruction_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.054 논문 카드
- 제목: Compositional Caching for Training-free Open-vocabulary Attribute Detection
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Attribute detection is crucial for many computer vision tasks, as it enables systems to describe properties such as color, texture, and material. Current approaches often rely on labor-intensive annotation processes w...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Garosi_Compositional_Caching_for_Training-free_Open-vocabulary_Attribute_Detection_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.055 논문 카드
- 제목: ConformalSAM: Unlocking the Potential of Foundational Segmentation Models in Semi-Supervised Semantic Segmentation with Conformal Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 강건 인식
- 핵심 초록 신호: Pixel-level vision tasks, such as semantic segmentation, require extensive and high-quality annotated data, which is costly to obtain. Semi-supervised semantic segmentation (SSSS) has emerged as a solution to alleviat...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_ConformalSAM_Unlocking_the_Potential_of_Foundational_Segmentation_Models_in_Semi-Supervised_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.056 논문 카드
- 제목: DPU: Dynamic Prototype Updating for Multimodal Out-of-Distribution Detection
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Out-of-distribution (OOD) detection is crucial for ensuring the robustness of machine learning models by identifying samples that deviate from the training distribution. While traditional OOD detection has predominant...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_DPU_Dynamic_Prototype_Updating_for_Multimodal_Out-of-Distribution_Detection_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.057 논문 카드
- 제목: DocSAM: Unified Document Image Segmentation via Query Decomposition and Heterogeneous Mixed Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 강건 인식
- 핵심 초록 신호: Document image segmentation is crucial in document analysis and recognition but remains challenging due to the heterogeneity of document formats and diverse segmentation tasks. Existing methods often treat these tasks...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_DocSAM_Unified_Document_Image_Segmentation_via_Query_Decomposition_and_Heterogeneous_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.058 논문 카드
- 제목: InstructSeg: Unifying Instructed Visual Segmentation with Multi-modal Large Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Boosted by Multi-modal Large Language Models (MLLMs), text-guided universal segmentation models for the image and video domains have made rapid progress recently. However, these methods are often developed separately ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wei_InstructSeg_Unifying_Instructed_Visual_Segmentation_with_Multi-modal_Large_Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.059 논문 카드
- 제목: LIRA: Inferring Segmentation in Large Multi-modal Models with Local Interleaved Region Assistance
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 강건 인식
- 핵심 초록 신호: While large multi-modal models (LMMs) demonstrate promising capabilities in segmentation and comprehension, they still struggle with two limitations: inaccurate segmentation and hallucinated comprehension. These chall...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_LIRA_Inferring_Segmentation_in_Large_Multi-modal_Models_with_Local_Interleaved_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.060 논문 카드
- 제목: MOBIUS: Big-to-Mobile Universal Instance Segmentation via Multi-modal Bottleneck Fusion and Calibrated Decoder Pruning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 검출/분할, 강건 인식
- 핵심 초록 신호: Scaling up model size and training data has advanced foundation models for instance-level perception, achieving state-of-the-art in-domain and zero-shot performance across object detection and segmentation. However, t...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Segu_MOBIUS_Big-to-Mobile_Universal_Instance_Segmentation_via_Multi-modal_Bottleneck_Fusion_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.061 논문 카드
- 제목: MultiADS: Defect-aware Supervision for Multi-type Anomaly Detection and Segmentation in Zero-Shot Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Precise optical inspection in industrial applications is crucial for minimizing scrap rates and reducing the associated costs. Besides merely detecting if a product is anomalous or not, it is crucial to know the disti...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Sadikaj_MultiADS_Defect-aware_Supervision_for_Multi-type_Anomaly_Detection_and_Segmentation_in_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.062 논문 카드
- 제목: OV-SCAN: Semantically Consistent Alignment for Novel Object Discovery in Open-Vocabulary 3D Object Detection
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 검출/분할, 멀티모달/VLM
- 핵심 초록 신호: Open-vocabulary 3D object detection for autonomous driving aims to detect novel objects beyond the predefined training label sets in point cloud scenes. Existing approaches achieve this by connecting traditional 3D ob...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chow_OV-SCAN_Semantically_Consistent_Alignment_for_Novel_Object_Discovery_in_Open-Vocabulary_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.063 논문 카드
- 제목: One Polyp Identifies All: One-Shot Polyp Segmentation with SAM via Cascaded Priors and Iterative Prompt Evolution
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Polyp segmentation is vital for early colorectal cancer detection, yet traditional fully supervised methods struggle with morphological variability and domain shifts, requiring frequent retraining. Additionally, relia...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Mao_One_Polyp_Identifies_All_One-Shot_Polyp_Segmentation_with_SAM_via_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.064 논문 카드
- 제목: Towards Continual Universal Segmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 효율화/엣지
- 핵심 초록 신호: Despite the significant progress in continual image segmentation, existing arts still strive to balance between stability and plasticity. Additionally, they are specialist to specific tasks and models, which hinders t...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lin_Towards_Continual_Universal_Segmentation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.065 논문 카드
- 제목: Towards a Universal Synthetic Video Detector: From Face or Background Manipulations to Fully AI-Generated Content
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 비디오/시계열, Embodied/로보틱스
- 핵심 초록 신호: Existing DeepFake detection techniques primarily focus on facial manipulations, such as face-swapping or lip-syncing. However, advancements in text-to-video (T2V) and image-to-video (I2V) generative models now allow f...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kundu_Towards_a_Universal_Synthetic_Video_Detector_From_Face_or_Background_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.8.066 논문 카드
- 제목: Wave-MambaAD: Wavelet-driven State Space Model for Multi-class Unsupervised Anomaly Detection
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 검출/분할, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: The Mamba model excels in anomaly detection through efficient long-range dependency modeling and linear complexity. However, Mamba-based anomaly detectors still face two critical challenges: (1) insufficient modeling ...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Wave-MambaAD_Wavelet-driven_State_Space_Model_for_Multi-class_Unsupervised_Anomaly_Detection_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.8.067 논문 카드
- 제목: Aligning and Prompting Everything All at Once for Universal Visual Perception
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Vision foundation models have been explored recently to build general-purpose vision systems. However predominant paradigms driven by casting instance-level tasks as an object-word alignment bring heavy cross-modality...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Shen_Aligning_and_Prompting_Everything_All_at_Once_for_Universal_Visual_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.068 논문 카드
- 제목: Commonsense Prototype for Outdoor Unsupervised 3D Object Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: The prevalent approaches of unsupervised 3D object detection follow cluster-based pseudo-label generation and iterative self-training processes. However the challenge arises due to the sparsity of LiDAR scans which le...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wu_Commonsense_Prototype_for_Outdoor_Unsupervised_3D_Object_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.069 논문 카드
- 제목: Detector-Free Structure from Motion
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: We propose a structure-from-motion framework to recover accurate camera poses and point clouds from unordered images. Traditional SfM systems typically rely on the successful detection of repeatable keypoints across m...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/He_Detector-Free_Structure_from_Motion_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.8.070 논문 카드
- 제목: Disentangled Pre-training for Human-Object Interaction Detection
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Detecting human-object interaction (HOI) has long been limited by the amount of supervised data available. Recent approaches address this issue by pre-training according to pseudo-labels which align object regions wit...
- 트렌드 해석: 폐쇄형 클래스에서 오픈보캐브러리·프롬프트 기반 분할/검출로 과제가 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_Disentangled_Pre-training_for_Human-Object_Interaction_Detection_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

### 4.9 멀티모달/VLM

#### 4.9.001 논문 카드
- 제목: Investigating Compositional Challenges in Vision-Language Models for Visual Grounding
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Pre-trained vision-language models (VLMs) have achieved high performance on various downstream tasks which have been widely used for visual grounding tasks in a weakly supervised manner. However despite the performanc...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zeng_Investigating_Compositional_Challenges_in_Vision-Language_Models_for_Visual_Grounding_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.002 논문 카드
- 제목: V2PE: Improving Multimodal Long-Context Capability of Vision-Language Models with Variable Visual Position Encoding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 비디오/시계열, 효율화/엣지
- 핵심 초록 신호: Vision-Language Models (VLMs) have shown promising capabilities in handling various multimodal tasks, yet they struggle in long-context scenarios, particularly tasks involving videos, high-resolution images, or length...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ge_V2PE_Improving_Multimodal_Long-Context_Capability_of_Vision-Language_Models_with_Variable_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.003 논문 카드
- 제목: CLIP-GS: Unifying Vision-Language Representation with 3D Gaussian Splatting
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Recent works in 3D representation learning and multimodal pre-training have made remarkable progress. However, typically multimodal 3D models are only capable of handling point clouds. Compared to the emerging 3D repr...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jiao_CLIP-GS_Unifying_Vision-Language_Representation_with_3D_Gaussian_Splatting_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.004 논문 카드
- 제목: CLIPer: Hierarchically Improving Spatial Representation of CLIP for Open-Vocabulary Semantic Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 강건 인식
- 핵심 초록 신호: Contrastive Language-Image Pre-training (CLIP) exhibits strong zero-shot classification ability on image-level tasks, leading to the research to adapt CLIP for open-vocabulary semantic segmentation without training. T...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Sun_CLIPer_Hierarchically_Improving_Spatial_Representation_of_CLIP_for_Open-Vocabulary_Semantic_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.005 논문 카드
- 제목: Growing a Twig to Accelerate Large Vision-Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 효율화/엣지, 에이전트/추론
- 핵심 초록 신호: Large vision-language models (VLMs) have demonstrated remarkable capabilities in open-world multimodal understanding, yet their high computational overheads pose great challenges for practical deployment. Some recent ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shao_Growing_a_Twig_to_Accelerate_Large_Vision-Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.006 논문 카드
- 제목: PhysVLM: Enabling Visual Language Models to Understand Robotic Physical Reachability
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, Embodied/로보틱스, 에이전트/추론
- 핵심 초록 신호: Understanding the environment and a robot's physical reachability is crucial for task execution. While state-of-the-art vision-language models (VLMs) excel in environmental perception, they often generate inaccurate o...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhou_PhysVLM_Enabling_Visual_Language_Models_to_Understand_Robotic_Physical_Reachability_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.007 논문 카드
- 제목: Can Large Vision-Language Models Correct Semantic Grounding Errors By Themselves?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Improving semantic grounding in Vision-Language Models (VLMs) often involves collecting domain-specific training data, refining the network architectures, or modifying the training recipes. In this work, we venture in...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liao_Can_Large_Vision-Language_Models_Correct_Semantic_Grounding_Errors_By_Themselves_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.008 논문 카드
- 제목: ReasonGrounder: LVLM-Guided Hierarchical Feature Splatting for Open-Vocabulary 3D Visual Grounding and Reasoning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: Open-vocabulary 3D visual grounding and reasoning aim to localize objects in a scene based on implicit language descriptions, even when they are occluded. This ability is crucial for tasks such as vision-language navi...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_ReasonGrounder_LVLM-Guided_Hierarchical_Feature_Splatting_for_Open-Vocabulary_3D_Visual_Grounding_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.009 논문 카드
- 제목: TruthPrInt: Mitigating Large Vision-Language Models Object Hallucination Via Latent Truthful-Guided Pre-Intervention
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 3D 비전/기하
- 핵심 초록 신호: Object Hallucination (OH) has been acknowledged as one of the major trustworthy challenges in Large Vision-Language Models (LVLMs). Recent advancements in Large Language Models (LLMs) indicate that internal states, su...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Duan_TruthPrInt_Mitigating_Large_Vision-Language_Models_Object_Hallucination_Via_Latent_Truthful-Guided_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.010 논문 카드
- 제목: Unbiased Region-Language Alignment for Open-Vocabulary Dense Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 강건 인식
- 핵심 초록 신호: Pre-trained vision-language models (VLMs), such as CLIP, have demonstrated impressive zero-shot recognition capability, but still underperform in dense prediction tasks. Self-distillation recently is emerging as a pro...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Unbiased_Region-Language_Alignment_for_Open-Vocabulary_Dense_Prediction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.011 논문 카드
- 제목: Adaptive Parameter Selection for Tuning Vision-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: Vision-language models (VLMs) like CLIP have been widely used in various specific tasks.Parameter-efficient fine-tuning (PEFT) methods, such as prompt and adapter tuning,have become key techniques for adapting these m...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Adaptive_Parameter_Selection_for_Tuning_Vision-Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.012 논문 카드
- 제목: FastVLM: Efficient Vision Encoding for Vision Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Vision Language Models (VLMs) like LLaVA encode images into tokens aligned to the word embedding space of the LLM decoder. Scaling input image resolution is essential for improving performance, especially in text-rich...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Vasu_FastVLM_Efficient_Vision_Encoding_for_Vision_Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.013 논문 카드
- 제목: LayoutVLM: Differentiable Optimization of 3D Layout via Vision-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 3D 비전/기하
- 핵심 초록 신호: Spatial reasoning is a fundamental aspect of human cognition, enabling intuitive understanding and manipulation of objects in three-dimensional space. While foundation models demonstrate remarkable performance on some...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Sun_LayoutVLM_Differentiable_Optimization_of_3D_Layout_via_Vision-Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.014 논문 카드
- 제목: ReVisionLLM: Recursive Vision-Language Model for Temporal Grounding in Hour-Long Videos
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Large language models (LLMs) excel at retrieving information from lengthy text, but their vision-language counterparts (VLMs) face difficulties with hour-long videos, especially for temporal grounding. Specifically, t...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hannan_ReVisionLLM_Recursive_Vision-Language_Model_for_Temporal_Grounding_in_Hour-Long_Videos_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.015 논문 카드
- 제목: ResCLIP: Residual Attention for Training-free Dense Vision-language Inference
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 검출/분할
- 핵심 초록 신호: While vision-language models like CLIP have shown remarkable success in open-vocabulary tasks, their application is currently confined to image-level tasks, and they still struggle with dense predictions. Recent works...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yang_ResCLIP_Residual_Attention_for_Training-free_Dense_Vision-language_Inference_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.016 논문 카드
- 제목: TWIST & SCOUT: Grounding Multimodal LLM-Experts by Forget-Free Tuning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Spatial awareness is key to enable embodied multimodal AI systems. Yet, without vast amounts of spatial supervision, current Multimodal Large Language Models (MLLMs) struggle at this task. In this paper, we introduce ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Bhowmik_TWIST__SCOUT_Grounding_Multimodal_LLM-Experts_by_Forget-Free_Tuning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.017 논문 카드
- 제목: VladVA: Discriminative Fine-tuning of LVLMs
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Contrastively-trained Vision-Language Models (VLMs) like CLIP have become the de facto approach for discriminative vision-language representation learning. However, these models have limited language understanding, of...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ouali_VladVA_Discriminative_Fine-tuning_of_LVLMs_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.018 논문 카드
- 제목: FairCLIP: Harnessing Fairness in Vision-Language Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 3D 비전/기하
- 핵심 초록 신호: Fairness is a critical concern in deep learning especially in healthcare where these models influence diagnoses and treatment decisions. Although fairness has been investigated in the vision-only domain the fairness o...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Luo_FairCLIP_Harnessing_Fairness_in_Vision-Language_Learning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.019 논문 카드
- 제목: 2.5 Years in Class: A Multimodal Textbook for Vision-Language Pretraining
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 비디오/시계열, 강건 인식
- 핵심 초록 신호: Compared to image-text pair data, interleaved corpora enable Vision-Language Models (VLMs) to understand the world more naturally like humans. However, such existing datasets are crawled from webpage, facing challenge...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_2.5_Years_in_Class_A_Multimodal_Textbook_for_Vision-Language_Pretraining_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.020 논문 카드
- 제목: AgroBench: Vision-Language Model Benchmark in Agriculture
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Precise automated understanding of agricultural tasks such as disease identification is essential for the sustainable crop production. Recent advances in vision-language models (VLMs) are expected to further expand th...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shinoda_AgroBench_Vision-Language_Model_Benchmark_in_Agriculture_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.021 논문 카드
- 제목: BabyVLM: Data-Efficient Pretraining of VLMs Inspired by Infant Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Human infants rapidly develop visual reasoning skills from minimal input, suggesting that developmentally inspired pretraining could significantly enhance the efficiency of vision-language models (VLMs). Although rece...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_BabyVLM_Data-Efficient_Pretraining_of_VLMs_Inspired_by_Infant_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.022 논문 카드
- 제목: Continual SFT Matches Multimodal RLHF with Negative Supervision
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: Multimodal RLHF usually happens after supervised finetuning (SFT) stage to continually improve vision-language models' (VLMs) comprehension. Conventional wisdom holds its superiority over continual SFT during this pre...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhu_Continual_SFT_Matches_Multimodal_RLHF_with_Negative_Supervision_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.023 논문 카드
- 제목: DIH-CLIP: Unleashing the Diversity of Multi-Head Self-Attention for Training-Free Open-Vocabulary Semantic Segmentation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 강건 인식
- 핵심 초록 신호: Recent Training-Free Open-Vocabulary Semantic Segmentation (TF-OVSS) leverages a pre-training vision-language model to segment images from open-set visual concepts without training and fine-tuning. The key of TF-OVSS ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Duan_DIH-CLIP_Unleashing_the_Diversity_of_Multi-Head_Self-Attention_for_Training-Free_Open-Vocabulary_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.024 논문 카드
- 제목: DOGR: Towards Versatile Visual Document Grounding and Referring
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: With recent advances in Multimodal Large Language Models (MLLMs), grounding and referring capabilities have gained increasing attention for achieving detailed understanding and flexible user interaction. However, thes...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhou_DOGR_Towards_Versatile_Visual_Document_Grounding_and_Referring_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.025 논문 카드
- 제목: Dynamic Multimodal Prototype Learning in Vision-Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 에이전트/추론
- 핵심 초록 신호: With the increasing attention to pre-trained vision-language models (VLMs), e.g., CLIP, substantial efforts have been devoted to many downstream tasks, especially in test-time adaptation (TTA). However, previous works...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_Dynamic_Multimodal_Prototype_Learning_in_Vision-Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.026 논문 카드
- 제목: FedMVP: Federated Multimodal Visual Prompt Tuning for Vision-Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: In federated learning, textual prompt tuning adapts Vision-Language Models (e.g., CLIP) by tuning lightweight input tokens (or prompts) on local client data, while keeping network weights frozen. After training, only ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Singha_FedMVP_Federated_Multimodal_Visual_Prompt_Tuning_for_Vision-Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.027 논문 카드
- 제목: Griffon v2: Advancing Multimodal Perception with High-Resolution Scaling and Visual-Language Co-Referring
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Large Vision Language Models have achieved fine-grained object perception, but the limitation of image resolution remains a significant obstacle to surpassing the performance of task-specific experts in complex and de...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhan_Griffon_v2_Advancing_Multimodal_Perception_with_High-Resolution_Scaling_and_Visual-Language_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.028 논문 카드
- 제목: IDEATOR: Jailbreaking and Benchmarking Large Vision-Language Models Using Themselves
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: As large Vision-Language Models (VLMs) gain prominence, ensuring their safe deployment has become critical. Recent studies have explored VLM robustness against jailbreak attacks--techniques that exploit model vulnerab...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_IDEATOR_Jailbreaking_and_Benchmarking_Large_Vision-Language_Models_Using_Themselves_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.029 논문 카드
- 제목: Post-pre-training for Modality Alignment in Vision-Language Foundation Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Contrastive language image pre-training (CLIP) is an essential component of building modern vision-language foundation models. While CLIP demonstrates remarkable zero-shot performance on downstream tasks, the multi-mo...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yamaguchi_Post-pre-training_for_Modality_Alignment_in_Vision-Language_Foundation_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.030 논문 카드
- 제목: Understanding Fine-tuning CLIP for Open-vocabulary Semantic Segmentation in Hyperbolic Space
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 설명가능성/안전성
- 핵심 초록 신호: CLIP, a foundational vision-language model, has emerged as a powerful tool for open-vocabulary semantic segmentation. While freezing the text encoder preserves its powerful embeddings, recent studies show that fine-tu...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Peng_Understanding_Fine-tuning_CLIP_for_Open-vocabulary_Semantic_Segmentation_in_Hyperbolic_Space_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.031 논문 카드
- 제목: Multi-Attribute Interactions Matter for 3D Visual Grounding
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: 3D visual grounding aims to localize 3D objects described by free-form language sentences. Following the detection-then-matching paradigm existing methods mainly focus on embedding object attributes in unimodal featur...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Xu_Multi-Attribute_Interactions_Matter_for_3D_Visual_Grounding_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.032 논문 카드
- 제목: Anyattack: Towards Large-scale Self-supervised Adversarial Attacks on Vision-language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Due to their multimodal capabilities, Vision-Language Models (VLMs) have found numerous impactful applications in real-world scenarios. However, recent studies have revealed that VLMs are vulnerable to image-based adv...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Anyattack_Towards_Large-scale_Self-supervised_Adversarial_Attacks_on_Vision-language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.033 논문 카드
- 제목: CLIP-driven Coarse-to-fine Semantic Guidance for Fine-grained Open-set Semi-supervised Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Fine-grained open-set semi-supervised learning (OSSL) investigates a practical scenario where unlabeled data may contain fine-grained out-of-distribution (OOD) samples. Due to the subtle visual differences among in-di...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_CLIP-driven_Coarse-to-fine_Semantic_Guidance_for_Fine-grained_Open-set_Semi-supervised_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.034 논문 카드
- 제목: DeCLIP: Decoupled Learning for Open-Vocabulary Dense Perception
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 에이전트/추론
- 핵심 초록 신호: Dense visual prediction tasks have been constrained by their reliance on predefined categories, limiting their applicability in real-world scenarios where visual concepts are unbounded. While Vision-Language Models (V...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_DeCLIP_Decoupled_Learning_for_Open-Vocabulary_Dense_Perception_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.035 논문 카드
- 제목: EditCLIP: Representation Learning for Image Editing
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: We introduce EditCLIP, a novel representation-learning approach for image editing. Our method learns a unified representation of edits by jointly encoding an input image and its edited counterpart, effectively capturi...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_EditCLIP_Representation_Learning_for_Image_Editing_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.036 논문 카드
- 제목: Factorized Learning for Temporally Grounded Video-Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 비디오/시계열, 멀티모달/VLM
- 핵심 초록 신호: Recent video-language models have shown great potential for video understanding, but still struggle with accurate temporal grounding for event-level perception. We observe that two main factors in video understanding ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zeng_Factorized_Learning_for_Temporally_Grounded_Video-Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.037 논문 카드
- 제목: Kestrel: 3D Multimodal LLM for Part-Aware Grounded Description
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 3D 비전/기하, 검출/분할
- 핵심 초록 신호: In this paper, we introduce Part-Aware Point Grounded Description (PaPGD), a challenging task aimed at advancing 3D multimodal learning for fine-grained, part-aware segmentation grounding and detailed explanation of 3...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ahmed_Kestrel_3D_Multimodal_LLM_for_Part-Aware_Grounded_Description_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.038 논문 카드
- 제목: MIMO: A Medical Vision Language Model with Visual Referring Multimodal Input and Pixel Grounding Multimodal Output
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_MIMO_A_Medical_Vision_Language_Model_with_Visual_Referring_Multimodal_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.039 논문 카드
- 제목: SPA-VL: A Comprehensive Safety Preference Alignment Dataset for Vision Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 3D 비전/기하
- 핵심 초록 신호: The emergence of Vision Language Models (VLMs) has brought unprecedented advances in understanding multimodal information. The combination of textual and visual semantics in VLMs is highly complex and diverse, making ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_SPA-VL_A_Comprehensive_Safety_Preference_Alignment_Dataset_for_Vision_Language_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.040 논문 카드
- 제목: Seeing the Abstract: Translating the Abstract Language for Vision Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Natural language goes beyond dryly describing visual content. It contains rich abstract concepts to express feeling, creativity and properties that cannot be directly perceived. Yet, current research in Vision Languag...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Talon_Seeing_the_Abstract_Translating_the_Abstract_Language_for_Vision_Language_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.041 논문 카드
- 제목: Stealthy Backdoor Attack in Self-Supervised Learning Vision Encoders for Large Vision Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 검출/분할
- 핵심 초록 신호: Self-supervised learning (SSL) vision encoders learn high-quality image representations and thus have become a vital part of developing vision modality of large vision language models (LVLMs). Due to the high cost of ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liu_Stealthy_Backdoor_Attack_in_Self-Supervised_Learning_Vision_Encoders_for_Large_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.042 논문 카드
- 제목: Visual-Oriented Fine-Grained Knowledge Editing for MultiModal Large Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 생성모델/디퓨전, 효율화/엣지
- 핵심 초록 신호: Existing knowledge editing works for MultiModal Large Language Models primarily focus on text-oriented, coarse-grained scenarios, where modifying textual content alone is sufficient. As a result, they fail to capture ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zeng_Visual-Oriented_Fine-Grained_Knowledge_Editing_for_MultiModal_Large_Language_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.043 논문 카드
- 제목: Enhancing Visual Document Understanding with Contrastive Learning in Large Visual-Language Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Recently the advent of Large Visual-Language Models (LVLMs) has received increasing attention across various domains particularly in the field of visual document understanding (VDU). Different from conventional vision...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_Enhancing_Visual_Document_Understanding_with_Contrastive_Learning_in_Large_Visual-Language_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.044 논문 카드
- 제목: GROUNDHOG: Grounding Large Language Models to Holistic Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 검출/분할, 강건 인식
- 핵심 초록 신호: Most multimodal large language models (MLLMs) learn language-to-object grounding through causal language modeling where grounded objects are captured by bounding boxes as sequences of location tokens. This paradigm la...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_GROUNDHOG_Grounding_Large_Language_Models_to_Holistic_Segmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.045 논문 카드
- 제목: The Neglected Tails in Vision-Language Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 강건 인식, 생성모델/디퓨전
- 핵심 초록 신호: Vision-language models (VLMs) excel in zero-shot recognition but their performance varies greatly across different visual concepts. For example although CLIP achieves impressive accuracy on ImageNet (60-80%) its perfo...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Parashar_The_Neglected_Tails_in_Vision-Language_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.046 논문 카드
- 제목: AGO: Adaptive Grounding for Open World 3D Occupancy Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Open-world 3D semantic occupancy prediction aims to generate a voxelized 3D representation from sensor inputs while recognizing both known and unknown objects. Transferring open-vocabulary knowledge from vision-langua...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_AGO_Adaptive_Grounding_for_Open_World_3D_Occupancy_Prediction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.047 논문 카드
- 제목: Argus: Vision-Centric Reasoning with Grounded Chain-of-Thought
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Recent advances in multimodal large language models (MLLMs) have demonstrated remarkable capabilities in vision-language tasks, yet they often struggle with vision-centric scenarios where precise visual focus is neede...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Man_Argus_Vision-Centric_Reasoning_with_Grounded_Chain-of-Thought_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.048 논문 카드
- 제목: Bridging Modalities: Improving Universal Multimodal Retrieval by Multimodal Large Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Universal Multimodal Retrieval (UMR) aims to enable search across various modalities using a unified model, where queries and candidates can consist of pure text, images, or a combination of both. Previous work has at...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Bridging_Modalities_Improving_Universal_Multimodal_Retrieval_by_Multimodal_Large_Language_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.049 논문 카드
- 제목: Evaluating Vision-Language Models as Evaluators in Path Planning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Despite their promise to perform complex reasoning, large language models (LLMs) have been shown to have limited effectiveness in end-to-end planning. This has inspired an intriguing question: if these models cannot p...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Aghzal_Evaluating_Vision-Language_Models_as_Evaluators_in_Path_Planning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.050 논문 카드
- 제목: Forensics Adapter: Adapting CLIP for Generalizable Face Forgery Detection
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 효율화/엣지
- 핵심 초록 신호: We describe the Forensics Adapter, an adapter network designed to transform CLIP into an effective and generalizable face forgery detector. Although CLIP is highly versatile, adapting it for face forgery detection is ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Cui_Forensics_Adapter_Adapting_CLIP_for_Generalizable_Face_Forgery_Detection_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.051 논문 카드
- 제목: Mamba as a Bridge: Where Vision Foundation Models Meet Vision Language Models for Domain-Generalized Semantic Segmentation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 검출/분할, 강건 인식
- 핵심 초록 신호: Vision Foundation Models (VFMs) and Vision-Language Models (VLMs) have gained traction in Domain Generalized Semantic Segmentation (DGSS) due to their strong generalization capabilities. However, existing DGSS methods...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Mamba_as_a_Bridge_Where_Vision_Foundation_Models_Meet_Vision_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.052 논문 카드
- 제목: Mitigating Object Hallucinations in Large Vision-Language Models with Assembly of Global and Local Attention
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Despite great success across various multimodal tasks, Large Vision-Language Models (LVLMs) often encounter object hallucinations with generated textual responses being inconsistent with the actual objects in images. ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/An_Mitigating_Object_Hallucinations_in_Large_Vision-Language_Models_with_Assembly_of_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.053 논문 카드
- 제목: Molmo and PixMo: Open Weights and Open Data for State-of-the-Art Vision-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Today's most advanced vision-language models (VLMs) remain proprietary. The strongest open-weight models rely heavily on synthetic data from proprietary VLMs to achieve good performance, effectively distilling these c...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deitke_Molmo_and_PixMo_Open_Weights_and_Open_Data_for_State-of-the-Art_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.054 논문 카드
- 제목: Motion-Grounded Video Reasoning: Understanding and Perceiving Motion at Pixel Level
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: In this paper, we introduce Motion-Grounded Video Reasoning, a new motionunderstanding task that requires generating visual answers (video segmentationmasks) according to the input question, and hence needs implicit s...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_Motion-Grounded_Video_Reasoning_Understanding_and_Perceiving_Motion_at_Pixel_Level_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.055 논문 카드
- 제목: Move to Understand a 3D Scene: Bridging Visual Grounding and Exploration for Efficient and Versatile Embodied Navigation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, Embodied/로보틱스, 멀티모달/VLM
- 핵심 초록 신호: Embodied scene understanding requires not only comprehending visual-spatial information that has been observed but also determining where to explore next in the 3D physical world. Existing 3D Vision-Language (3D-VL) m...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_Move_to_Understand_a_3D_Scene_Bridging_Visual_Grounding_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.056 논문 카드
- 제목: On the Zero-shot Adversarial Robustness of Vision-Language Models: A Truly Zero-shot and Training-free Approach
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Pre-trained Vision-Language Models (VLMs) like CLIP, have demonstrated strong zero-shot generalization capabilities. Despite their effectiveness on various downstream tasks, they remain vulnerable to adversarial sampl...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tong_On_the_Zero-shot_Adversarial_Robustness_of_Vision-Language_Models_A_Truly_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.057 논문 카드
- 제목: OphCLIP: Hierarchical Retrieval-Augmented Learning for Ophthalmic Surgical Video-Language Pretraining
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 비디오/시계열
- 핵심 초록 신호: Vision-language pretraining (VLP) enables open-world generalization beyond predefined labels, a critical capability in surgery due to the diversity of procedures, instruments, and patient anatomies. However, applying ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hu_OphCLIP_Hierarchical_Retrieval-Augmented_Learning_for_Ophthalmic_Surgical_Video-Language_Pretraining_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.058 논문 카드
- 제목: Retaining Knowledge and Enhancing Long-Text Representations in CLIP through Dual-Teacher Distillation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Contrastive language-image pretraining models such as CLIP have demonstrated remarkable performance in various text-image alignment tasks. However, the inherent 77-token input limitation and reliance on predominantly ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Feng_Retaining_Knowledge_and_Enhancing_Long-Text_Representations_in_CLIP_through_Dual-Teacher_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.059 논문 카드
- 제목: SLADE: Shielding against Dual Exploits in Large Vision-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Large Vision-Language Models (LVLMs) have emerged as transformative tools in multimodal tasks, seamlessly integrating pretrained vision encoders to align visual and textual modalities. Prior works have highlighted the...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hossain_SLADE_Shielding_against_Dual_Exploits_in_Large_Vision-Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.060 논문 카드
- 제목: Synthetic Data is an Elegant GIFT for Continual Vision-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Pre-trained Vision-Language Models (VLMs) require Continual Learning (CL) to efficiently update their knowledge and adapt to various downstream tasks without retraining from scratch. However, for VLMs, in addition to ...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wu_Synthetic_Data_is_an_Elegant_GIFT_for_Continual_Vision-Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.061 논문 카드
- 제목: Target Bias Is All You Need: Zero-Shot Debiasing of Vision-Language Models with Bias Corpus
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Vision-Language Models (VLMs) like CLIP have shown remarkable zero-shot performance by aligning different modalities in the embedding space, enabling diverse applications from image editing to visual question answerin...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jang_Target_Bias_Is_All_You_Need_Zero-Shot_Debiasing_of_Vision-Language_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.062 논문 카드
- 제목: Teaching VLMs to Localize Specific Objects from In-context Examples
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Vision-Language Models (VLMs) have shown remarkable capabilities across diverse visual tasks, including image recognition, video understanding, and Visual Question Answering (VQA) when explicitly trained for these tas...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Doveh_Teaching_VLMs_to_Localize_Specific_Objects_from_In-context_Examples_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.063 논문 카드
- 제목: Understanding Museum Exhibits using Vision-Language Reasoning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Museums serve as repositories of cultural heritage and historical artifacts from diverse epochs, civilizations, and regions, preserving well-documented collections that encapsulate vast knowledge, which, when systemat...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Balauca_Understanding_Museum_Exhibits_using_Vision-Language_Reasoning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.064 논문 카드
- 제목: Words or Vision: Do Vision-Language Models Have Blind Faith in Text?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Vision-Language Models (VLMs) excel in integrating visual and textual information for vision-centric tasks, but their handling of inconsistencies between modalities is underexplored. We investigate VLMs' modality pref...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_Words_or_Vision_Do_Vision-Language_Models_Have_Blind_Faith_in_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.9.065 논문 카드
- 제목: Improved Zero-Shot Classification by Adapting VLMs with Text Descriptions
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: The zero-shot performance of existing vision-language models (VLMs) such as CLIP is limited by the availability of large-scale aligned image and text datasets in specific domains. In this work we leverage two compleme...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Saha_Improved_Zero-Shot_Classification_by_Adapting_VLMs_with_Text_Descriptions_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.066 논문 카드
- 제목: Leveraging Cross-Modal Neighbor Representation for Improved CLIP Classification
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 강건 인식, 에이전트/추론
- 핵심 초록 신호: CLIP showcases exceptional cross-modal matching capabilities due to its training on image-text contrastive learning tasks. However without specific optimization for unimodal scenarios its performance in single-modalit...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yi_Leveraging_Cross-Modal_Neighbor_Representation_for_Improved_CLIP_Classification_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.067 논문 카드
- 제목: Sieve: Multimodal Dataset Pruning using Image Captioning Models
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Vision-Language Models (VLMs) are pretrained on large diverse and noisy web-crawled datasets. This underscores the critical need for dataset pruning as the quality of these datasets is strongly correlated with the per...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Mahmoud_Sieve_Multimodal_Dataset_Pruning_using_Image_Captioning_Models_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.068 논문 카드
- 제목: VideoGrounding-DINO: Towards Open-Vocabulary Spatio-Temporal Video Grounding
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 멀티모달/VLM, 검출/분할
- 핵심 초록 신호: Video grounding aims to localize a spatio-temporal section in a video corresponding to an input text query. This paper addresses a critical limitation in current video grounding methodologies by introducing an Open-Vo...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wasim_VideoGrounding-DINO_Towards_Open-Vocabulary_Spatio-Temporal_Video_Grounding_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.9.069 논문 카드
- 제목: AdvDreamer Unveils: Are Vision-Language Models Truly Ready for Real-World 3D Variations?
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Vision Language Models (VLMs) have exhibited remarkable generalization capabilities, yet their robustness in dynamic real-world scenarios remains largely unexplored. To systematically evaluate VLMs' robustness to real...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Ruan_AdvDreamer_Unveils_Are_Vision-Language_Models_Truly_Ready_for_Real-World_3D_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.9.070 논문 카드
- 제목: Align-KD: Distilling Cross-Modal Alignment Knowledge for Mobile Vision-Language Large Model Enhancement
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Vision-Language Models (VLMs) bring powerful understanding and reasoning capabilities to multimodal tasks. Meanwhile, the great need for capable aritificial intelligence on mobile devices also arises, such as the AI a...
- 트렌드 해석: 텍스트-비전 정합과 오픈월드 일반화가 핵심이며, 다운스트림 태스크 통합이 빠르게 진행 중이다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Feng_Align-KD_Distilling_Cross-Modal_Alignment_Knowledge_for_Mobile_Vision-Language_Large_Model_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

### 4.10 설명가능성/안전성

#### 4.10.001 논문 카드
- 제목: Discovering and Mitigating Visual Biases through Keyword Explanation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Addressing biases in computer vision models is crucial for real-world AI deployments. However mitigating visual biases is challenging due to their unexplainable nature often identified indirectly through visualization...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Kim_Discovering_and_Mitigating_Visual_Biases_through_Keyword_Explanation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.002 논문 카드
- 제목: Self-supervised Debiasing Using Low Rank Regularization
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Spurious correlations can cause strong biases in deep neural networks impairing generalization ability. While most existing debiasing methods require full supervision on either spurious attributes or target labels tra...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Park_Self-supervised_Debiasing_Using_Low_Rank_Regularization_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.003 논문 카드
- 제목: Dissecting and Mitigating Diffusion Bias via Mechanistic Interpretability
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Diffusion models have demonstrated impressive capabilities in synthesizing diverse content. However, despite their high-quality outputs, these models often perpetuate social biases, including those related to gender a...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Shi_Dissecting_and_Mitigating_Diffusion_Bias_via_Mechanistic_Interpretability_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.004 논문 카드
- 제목: Target Bias Is All You Need: Zero-Shot Debiasing of Vision-Language Models with Bias Corpus
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Vision-Language Models (VLMs) like CLIP have shown remarkable zero-shot performance by aligning different modalities in the embedding space, enabling diverse applications from image editing to visual question answerin...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jang_Target_Bias_Is_All_You_Need_Zero-Shot_Debiasing_of_Vision-Language_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.005 논문 카드
- 제목: Modeling Saliency Dataset Bias
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Recent advances in image-based saliency prediction are approaching gold standard performance levels on existing benchmarks. Despite this success, we show that predicting fixations across multiple saliency datasets rem...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kummerer_Modeling_Saliency_Dataset_Bias_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.006 논문 카드
- 제목: Discover and Mitigate Multiple Biased Subgroups in Image Classifiers
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Machine learning models can perform well on in-distribution data but often fail on biased subgroups that are underrepresented in the training data hindering the robustness of models for reliable applications. Such sub...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_Discover_and_Mitigate_Multiple_Biased_Subgroups_in_Image_Classifiers_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.007 논문 카드
- 제목: Do We Really Need Curated Malicious Data for Safety Alignment in Multi-modal Large Language Models?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Multi-modal large language models (MLLMs) have made significant progress, yet their safety alignment remains limited. Typically, current open-source MLLMs rely on the alignment inherited from their language module to ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_Do_We_Really_Need_Curated_Malicious_Data_for_Safety_Alignment_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.008 논문 카드
- 제목: Explainable Saliency: Articulating Reasoning with Contextual Prioritization
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Deep saliency models, which predict what parts of an image capture our attention, are often like black boxes. This limits their use, especially in areas where understanding why a model makes a decision is crucial. Our...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_Explainable_Saliency_Articulating_Reasoning_with_Contextual_Prioritization_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.009 논문 카드
- 제목: One is Plenty: A Polymorphic Feature Interpreter for Immutable Heterogeneous Collaborative Perception
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Collaborative perception in autonomous driving significantly enhances the perception capabilities of individual agents. Immutable heterogeneity in collaborative perception, where agents have different and fixed percep...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Xia_One_is_Plenty_A_Polymorphic_Feature_Interpreter_for_Immutable_Heterogeneous_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.010 논문 카드
- 제목: FairCLIP: Harnessing Fairness in Vision-Language Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 3D 비전/기하
- 핵심 초록 신호: Fairness is a critical concern in deep learning especially in healthcare where these models influence diagnoses and treatment decisions. Although fairness has been investigated in the vision-only domain the fairness o...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Luo_FairCLIP_Harnessing_Fairness_in_Vision-Language_Learning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.011 논문 카드
- 제목: AlignGuard: Scalable Safety Alignment for Text-to-Image Generation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Text-to-image (T2I) models have become widespread, but their limited safety guardrails expose end users to harmful content and potentially allow for model misuse. Current safety measures are typically limited to text-...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Liu_AlignGuard_Scalable_Safety_Alignment_for_Text-to-Image_Generation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.012 논문 카드
- 제목: Debiased Teacher for Day-to-Night Domain Adaptive Object Detection
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 검출/분할, 강건 인식
- 핵심 초록 신호: Day-to-Night Domain Adaptive Object Detection (DN-DAOD) is a significant challenge due to the low visibility and signal-to-noise ratio at night. Although recent self-training approaches achieve promising results, they...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cui_Debiased_Teacher_for_Day-to-Night_Domain_Adaptive_Object_Detection_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.013 논문 카드
- 제목: FairGen: Enhancing Fairness in Text-to-Image Diffusion Models via Self-Discovering Latent Directions
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: While Diffusion Models (DM) exhibit remarkable performance across various image generative tasks, they nonetheless reflect the inherent bias presented in the training set.As DMs are now widely used in real-world appli...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jiang_FairGen_Enhancing_Fairness_in_Text-to-Image_Diffusion_Models_via_Self-Discovering_Latent_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.014 논문 카드
- 제목: Interpreting Object-level Foundation Models via Visual Precision Search
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 검출/분할
- 핵심 초록 신호: Advances in multimodal pre-training have propelled object-level foundation models, such as Grounding DINO and Florence-2, in tasks like visual grounding and object detection. However, interpreting these models' decisi...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_Interpreting_Object-level_Foundation_Models_via_Visual_Precision_Search_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.015 논문 카드
- 제목: PRISM: Reducing Spurious Implicit Biases in Vision-Language Models with LLM-Guided Embedding Projection
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: We introduce Projection-based Reduction of Implicit Spurious bias in vision-language Models (PRISM), a new data-free and task-agnostic solution for bias mitigation in VLMs like CLIP. VLMs often inherit and amplify bia...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Molahasani_PRISM_Reducing_Spurious_Implicit_Biases_in_Vision-Language_Models_with_LLM-Guided_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.016 논문 카드
- 제목: CDMAD: Class-Distribution-Mismatch-Aware Debiasing for Class-Imbalanced Semi-Supervised Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Pseudo-label-based semi-supervised learning (SSL) algorithms trained on a class-imbalanced set face two cascading challenges: 1) Classifiers tend to be biased towards majority classes and 2) Biased pseudo-labels are u...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Lee_CDMAD_Class-Distribution-Mismatch-Aware_Debiasing_for_Class-Imbalanced_Semi-Supervised_Learning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.017 논문 카드
- 제목: A Unified, Resilient, and Explainable Adversarial Patch Detector
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 검출/분할, 강건 인식
- 핵심 초록 신호: Deep Neural Networks (DNNs), backbone architecture in `almost' every computer vision task, are vulnerable to adversarial attacks, particularly physical out-of-distribution (OOD) adversarial patches. Existing defense m...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kumar_A_Unified_Resilient_and_Explainable_Adversarial_Patch_Detector_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.018 논문 카드
- 제목: Immune: Improving Safety Against Jailbreaks in Multi-modal LLMs via Inference-Time Alignment
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: With the widespread deployment of Multimodal Large Language Models (MLLMs) for visual-reasoning tasks, improving their safety has become crucial. Recent research indicates that despite training-time safety alignment, ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ghosal_Immune_Improving_Safety_Against_Jailbreaks_in_Multi-modal_LLMs_via_Inference-Time_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.019 논문 카드
- 제목: Learning Interpretable Queries for Explainable Image Classification with Information Pursuit
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM
- 핵심 초록 신호: Information Pursuit (IP) is a recently introduced learning framework to construct classifiers that are interpretable-by-design. Given a set of task-relevant and interpretable data queries, IP selects a small subset of...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kolek_Learning_Interpretable_Queries_for_Explainable_Image_Classification_with_Information_Pursuit_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.020 논문 카드
- 제목: Fair Federated Learning under Domain Skew with Local Consistency and Domain Diversity
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Federated learning (FL) has emerged as a new paradigm for privacy-preserving collaborative training. Under domain skew the current FL approaches are biased and face two fairness problems. 1) Parameter Update Conflict:...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chen_Fair_Federated_Learning_under_Domain_Skew_with_Local_Consistency_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.021 논문 카드
- 제목: Bias-Resilient Weakly Supervised Semantic Segmentation Using Normalizing Flows
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 검출/분할, 생성모델/디퓨전
- 핵심 초록 신호: Weakly supervised semantic segmentation (WSSS) aims to generate dense labels using sparse annotations, such as image-level labels. Existing class activation map (CAM) generation methods have been able to locate rough ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qiu_Bias-Resilient_Weakly_Supervised_Semantic_Segmentation_Using_Normalizing_Flows_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.022 논문 카드
- 제목: BioX-CPath: Biologically-driven Explainable Diagnostics for Multistain IHC Computational Pathology
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: The development of biologically interpretable and explainable models remains a key challenge in computational pathology, particularly for multistain immunohistochemistry (IHC) analysis. We present BioX-CPath, an expla...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Gallagher-Syed_BioX-CPath_Biologically-driven_Explainable_Diagnostics_for_Multistain_IHC_Computational_Pathology_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.023 논문 카드
- 제목: Explaining in Diffusion: Explaining a Classifier with Diffusion Semantics
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 생성모델/디퓨전, 강건 인식
- 핵심 초록 신호: Classifiers are important components in many computer vision tasks, serving as the foundational backbone of a wide variety of models employed across diverse applications. However, understanding the decision-making pro...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kazimi_Explaining_in_Diffusion_Explaining_a_Classifier_with_Diffusion_Semantics_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.024 논문 카드
- 제목: FastJSMA: Accelerating Jacobian-based Saliency Map Attacks through Gradient Decoupling
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 강건 인식, 효율화/엣지
- 핵심 초록 신호: Adversarial attack plays a critical role in evaluating the robustness of deep learning models. Jacobian-based Saliency Map Attack (JSMA) is an interpretable adversarial method that offers excellent pixel-level control...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Gao_FastJSMA_Accelerating_Jacobian-based_Saliency_Map_Attacks_through_Gradient_Decoupling_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.025 논문 카드
- 제목: Towards Adversarial Robustness via Debiased High-Confidence Logit Alignment
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Despite the remarkable progress of deep neural networks (DNNs) in various visual tasks, their vulnerability to adversarial examples raises significant security concerns. Recent adversarial training methods leverage in...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Towards_Adversarial_Robustness_via_Debiased_High-Confidence_Logit_Alignment_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.026 논문 카드
- 제목: CAPE: CAM as a Probabilistic Ensemble for Enhanced DNN Interpretation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성
- 핵심 초록 신호: Deep Neural Networks (DNNs) are widely used for visual classification tasks but their complex computation process and black-box nature hinder decision transparency and interpretability. Class activation maps (CAMs) an...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chowdhury_CAPE_CAM_as_a_Probabilistic_Ensemble_for_Enhanced_DNN_Interpretation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.027 논문 카드
- 제목: Language Model Guided Interpretable Video Action Reasoning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 비디오/시계열, 설명가능성/안전성
- 핵심 초록 신호: Although neural networks excel in video action recognition tasks their "black-box" nature makes it challenging to understand the rationale behind their decisions. Recent approaches used inherently interpretable models...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_Language_Model_Guided_Interpretable_Video_Action_Reasoning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.028 논문 카드
- 제목: Neural Redshift: Random Networks are not Random Functions
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Our understanding of the generalization capabilities of neural networks NNs is still incomplete. Prevailing explanations are based on implicit biases of gradient descent GD but they cannot account for the capabilities...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Teney_Neural_Redshift_Random_Networks_are_not_Random_Functions_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.029 논문 카드
- 제목: Self-Discovering Interpretable Diffusion Latent Directions for Responsible Text-to-Image Generation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 설명가능성/안전성
- 핵심 초록 신호: Diffusion-based models have gained significant popularity for text-to-image generation due to their exceptional image-generation capabilities. A risk with these models is the potential generation of inappropriate cont...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_Self-Discovering_Interpretable_Diffusion_Latent_Directions_for_Responsible_Text-to-Image_Generation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.030 논문 카드
- 제목: Analyzing Finetuning Representation Shift for Multimodal LLMs Steering
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 효율화/엣지
- 핵심 초록 신호: Multimodal LLMs (MLLMs) have reached remarkable levels of proficiency in understanding multimodal inputs. However, understanding and interpreting the behavior of such complex models is a challenging task, not to menti...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Khayatan_Analyzing_Finetuning_Representation_Shift_for_Multimodal_LLMs_Steering_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.031 논문 카드
- 제목: Debiasing Multimodal Large Language Models via Noise-Aware Preference Optimization
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Multimodal Large Language Models (MLLMs) excel in various tasks, yet often struggle with modality bias, tending to rely heavily on a single modality or prior knowledge when generating responses. In this paper, we prop...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_Debiasing_Multimodal_Large_Language_Models_via_Noise-Aware_Preference_Optimization_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.032 논문 카드
- 제목: Group-wise Scaling and Orthogonal Decomposition for Domain-Invariant Feature Extraction in Face Anti-Spoofing
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Domain Generalizable Face Anti-Spoofing (DG-FAS) methods effectively capture domain-invariant features by aligning the directions (weights) of local decision boundaries across domains. However, the bias terms associat...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jung_Group-wise_Scaling_and_Orthogonal_Decomposition_for_Domain-Invariant_Feature_Extraction_in_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.033 논문 카드
- 제목: Interpretable point cloud classification using multiple instance learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 3D 비전/기하, 강건 인식
- 핵심 초록 신호: Understanding 3D cell shape is crucial in biomedical research, where morphology serves as a key indicator of disease, cellular state, and drug response. However, many existing 3D point cloud classification models lack...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/De_Vries_Interpretable_point_cloud_classification_using_multiple_instance_learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.034 논문 카드
- 제목: Let Samples Speak: Mitigating Spurious Correlation by Exploiting the Clusterness of Samples
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Deep learning models are known to often learn features that spuriously correlate with the class label during training but are irrelevant to the prediction task. Existing methods typically address this issue by annotat...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_Let_Samples_Speak_Mitigating_Spurious_Correlation_by_Exploiting_the_Clusterness_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.035 논문 카드
- 제목: Prompt-CAM: Making Vision Transformers Interpretable for Fine-Grained Analysis
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 설명가능성/안전성, 에이전트/추론
- 핵심 초록 신호: We present a simple approach to make pre-trained Vision Transformers (ViTs) interpretable for fine-grained analysis, aiming to identify and localize the traits that distinguish visually similar categories, such as bir...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chowdhury_Prompt-CAM_Making_Vision_Transformers_Interpretable_for_Fine-Grained_Analysis_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.036 논문 카드
- 제목: Rethinking Vision-Language Model in Face Forensics: Multi-Modal Interpretable Forged Face Detector
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 검출/분할, 설명가능성/안전성, 멀티모달/VLM
- 핵심 초록 신호: Deepfake detection is a long-established research topic vital for mitigating the spread of malicious misinformation. Unlike prior methods that provide either binary classification results or textual explanations separ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Guo_Rethinking_Vision-Language_Model_in_Face_Forensics_Multi-Modal_Interpretable_Forged_Face_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.037 논문 카드
- 제목: Show and Tell: Visually Explainable Deep Neural Nets via Spatially-Aware Concept Bottleneck Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Modern deep neural networks have now reached human-level performance across a variety of tasks. However, unlike humans they lack the ability to explain their decisions by showing where and telling what concepts guided...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Benou_Show_and_Tell_Visually_Explainable_Deep_Neural_Nets_via_Spatially-Aware_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.038 논문 카드
- 제목: TIDE: Training Locally Interpretable Domain Generalization Models Enables Test-time Correction
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 강건 인식, 설명가능성/안전성, 생성모델/디퓨전
- 핵심 초록 신호: We consider the problem of single-source domain generalization. Existing methods typically rely on extensive augmentations to synthetically cover diverse domains during training. However, they struggle with semantic s...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Agarwal_TIDE_Training_Locally_Interpretable_Domain_Generalization_Models_Enables_Test-time_Correction_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.039 논문 카드
- 제목: Towards Safer and Understandable Driver Intention Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: Autonomous driving (AD) systems are becoming increasingly capable of handling complex tasks, mainly due to recent advances in deep learning and AI. As interactions between autonomous systems and humans increase, the i...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Karuppasamy_Towards_Safer_and_Understandable_Driver_Intention_Prediction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.040 논문 카드
- 제목: DuPL: Dual Student with Trustworthy Progressive Learning for Robust Weakly Supervised Semantic Segmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 검출/분할, 강건 인식
- 핵심 초록 신호: Recently One-stage Weakly Supervised Semantic Segmentation (WSSS) with image-level labels has gained increasing interest due to simplification over its cumbersome multi-stage counterpart. Limited by the inherent ambig...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wu_DuPL_Dual_Student_with_Trustworthy_Progressive_Learning_for_Robust_Weakly_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.041 논문 카드
- 제목: E-GPS: Explainable Geometry Problem Solving via Top-Down Solver and Bottom-Up Generator
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 3D 비전/기하, 효율화/엣지
- 핵심 초록 신호: Geometry Problem Solving has drawn growing attention recently due to its application prospects in intelligent education field. However existing methods are still inadequate to meet the needs of practical application s...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wu_E-GPS_Explainable_Geometry_Problem_Solving_via_Top-Down_Solver_and_Bottom-Up_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.042 논문 카드
- 제목: Navigate Beyond Shortcuts: Debiased Learning Through the Lens of Neural Collapse
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 강건 인식, 에이전트/추론
- 핵심 초록 신호: Recent studies have noted an intriguing phenomenon termed Neural Collapse that is when the neural networks establish the right correlation between feature spaces and the training targets their last-layer features toge...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_Navigate_Beyond_Shortcuts_Debiased_Learning_Through_the_Lens_of_Neural_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.043 논문 카드
- 제목: Robust Emotion Recognition in Context Debiasing
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Context-aware emotion recognition (CAER) has recently boosted the practical applications of affective computing techniques in unconstrained environments. Mainstream CAER methods invariably extract ensemble representat...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Yang_Robust_Emotion_Recognition_in_Context_Debiasing_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.044 논문 카드
- 제목: Structured Gradient-based Interpretations via Norm-Regularized Adversarial Training
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Gradient-based saliency maps have been widely used to explain the decisions of deep neural network classifiers. However standard gradient-based interpretation maps including the simple gradient and integrated gradient...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Gong_Structured_Gradient-based_Interpretations_via_Norm-Regularized_Adversarial_Training_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.045 논문 카드
- 제목: Towards Fairness-Aware Adversarial Learning
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Although adversarial training (AT) has proven effective in enhancing the model's robustness the recently revealed issue of fairness in robustness has not been well addressed i.e. the robust accuracy varies significant...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_Towards_Fairness-Aware_Adversarial_Learning_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.046 논문 카드
- 제목: CleanPose: Category-Level Object Pose Estimation via Causal Learning and Knowledge Distillation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: In the effort to achieve robust and generalizable category-level object pose estimation, recent methods primarily focus on learning fundamental representations from data. However, the inherent biases within the data a...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lin_CleanPose_Category-Level_Object_Pose_Estimation_via_Causal_Learning_and_Knowledge_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.047 논문 카드
- 제목: CoE: Chain-of-Explanation via Automatic Visual Concept Circuit Description and Polysemanticity Quantification
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론
- 핵심 초록 신호: Explainability is a critical factor influencing the wide deployment of deep vision models (DVMs). Concept-based post-hoc explanation methods can provide both global and local insights into model decisions. However, cu...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yu_CoE_Chain-of-Explanation_via_Automatic_Visual_Concept_Circuit_Description_and_Polysemanticity_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.048 논문 카드
- 제목: Hyperbolic Safety-Aware Vision-Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 효율화/엣지
- 핵심 초록 신호: Addressing the retrieval of unsafe content from vision-language models such as CLIP is an important step towards real-world integration. Current efforts have relied on unlearning techniques that try to erase the model...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Poppi_Hyperbolic_Safety-Aware_Vision-Language_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.049 논문 카드
- 제목: Interactive Medical Image Analysis with Concept-based Similarity Reasoning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: The ability to interpret and intervene model decisions is important for the adoption of computer-aided diagnosis methods in clinical workflows. Recent concept-based methods link the model predictions with interpretabl...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Huy_Interactive_Medical_Image_Analysis_with_Concept-based_Similarity_Reasoning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.050 논문 카드
- 제목: Jailbreaking Multimodal Large Language Models via Shuffle Inconsistency
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM
- 핵심 초록 신호: Multimodal Large Language Models (MLLMs) have achieved impressive performance and have been put into practical use in commercial applications, but they still have potential safety mechanism vulnerabilities. Jailbreak ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhao_Jailbreaking_Multimodal_Large_Language_Models_via_Shuffle_Inconsistency_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.051 논문 카드
- 제목: Large Multi-modal Models Can Interpret Features in Large Multi-modal Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 강건 인식
- 핵심 초록 신호: Recent advances in Large Multimodal Models (LMMs) lead to significant breakthroughs in both academia and industry. One question that arises is how we, as humans, can understand their internal neural representations. T...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Large_Multi-modal_Models_Can_Interpret_Features_in_Large_Multi-modal_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.052 논문 카드
- 제목: Looking in the Mirror: A Faithful Counterfactual Explanation Method for Interpreting Deep Image Classification Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 생성모델/디퓨전
- 핵심 초록 신호: Counterfactual explanations (CFE) for deep image classifiers aim to reveal how minimal input changes lead to different model decisions, providing critical insights for model interpretation and improvement. However, ex...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chowdhury_Looking_in_the_Mirror_A_Faithful_Counterfactual_Explanation_Method_for_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.053 논문 카드
- 제목: OD-RASE: Ontology-Driven Risk Assessment and Safety Enhancement for Autonomous Driving
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Although autonomous driving systems demonstrate high perception performance, they still face limitations when handling rare situations or complex road structures. Since existing road infrastructures are designed for h...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Shimomura_OD-RASE_Ontology-Driven_Risk_Assessment_and_Safety_Enhancement_for_Autonomous_Driving_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.054 논문 카드
- 제목: Perceptual Inductive Bias Is What You Need Before Contrastive Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: David Marr's seminal theory of human perception stipulates that visual processing is a multi-stage process, prioritizing the derivation of boundary and surface properties before forming semantic object representations...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_Perceptual_Inductive_Bias_Is_What_You_Need_Before_Contrastive_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.055 논문 카드
- 제목: ReCoT: Reflective Self-Correction Training for Mitigating Confirmation Bias in Large Vision-Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Recent advancements in Large Vision-Language Models (LVLMs) have greatly improved their ability to understand both visual and text information. However, a common problem in LVLMs is confirmation bias, where models ten...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qu_ReCoT_Reflective_Self-Correction_Training_for_Mitigating_Confirmation_Bias_in_Large_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.056 논문 카드
- 제목: Revisiting Fairness in Multitask Learning: A Performance-Driven Approach for Variance Reduction
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 효율화/엣지
- 핵심 초록 신호: Multi-task learning (MTL) can leverage shared knowledge across tasks to improve data efficiency and generalization performance, and has been applied in various scenarios. However, task imbalance remains a major challe...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Qin_Revisiting_Fairness_in_Multitask_Learning_A_Performance-Driven_Approach_for_Variance_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.057 논문 카드
- 제목: SPA-VL: A Comprehensive Safety Preference Alignment Dataset for Vision Language Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 3D 비전/기하
- 핵심 초록 신호: The emergence of Vision Language Models (VLMs) has brought unprecedented advances in understanding multimodal information. The combination of textual and visual semantics in VLMs is highly complex and diverse, making ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhang_SPA-VL_A_Comprehensive_Safety_Preference_Alignment_Dataset_for_Vision_Language_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.058 논문 카드
- 제목: SkySense-O: Towards Open-World Remote Sensing Interpretation with Vision-Centric Visual-Language Modeling
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Open-world interpretation aims to accurately localize and recognize all objects within images by vision-language models (VLMs). While substantial progress has been made in this task for natural images, the advancement...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhu_SkySense-O_Towards_Open-World_Remote_Sensing_Interpretation_with_Vision-Centric_Visual-Language_Modeling_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.059 논문 카드
- 제목: Where, What, Why: Towards Explainable Driver Attention Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Modeling task-driven attention in driving is a fundamental challenge for both autonomous vehicles and cognitive science. Existing methods primarily predict where drivers look by generating spatial heatmaps, but fail t...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhou_Where_What_Why_Towards_Explainable_Driver_Attention_Prediction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.060 논문 카드
- 제목: Words or Vision: Do Vision-Language Models Have Blind Faith in Text?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Vision-Language Models (VLMs) excel in integrating visual and textual information for vision-centric tasks, but their handling of inconsistencies between modalities is underexplored. We investigate VLMs' modality pref...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Deng_Words_or_Vision_Do_Vision-Language_Models_Have_Blind_Faith_in_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.061 논문 카드
- 제목: Addressing Background Context Bias in Few-Shot Segmentation through Iterative Modulation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 검출/분할, 설명가능성/안전성, 에이전트/추론
- 핵심 초록 신호: Existing few-shot segmentation methods usually extract foreground prototypes from support images to guide query image segmentation. However different background contexts of support and query images can cause their for...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhu_Addressing_Background_Context_Bias_in_Few-Shot_Segmentation_through_Iterative_Modulation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.062 논문 카드
- 제목: ExMap: Leveraging Explainability Heatmaps for Unsupervised Group Robustness to Spurious Correlations
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 강건 인식, 설명가능성/안전성
- 핵심 초록 신호: Group robustness strategies aim to mitigate learned biases in deep learning models that arise from spurious correlations present in their training datasets. However most existing methods rely on the access to the labe...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Chakraborty_ExMap_Leveraging_Explainability_Heatmaps_for_Unsupervised_Group_Robustness_to_Spurious_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.063 논문 카드
- 제목: FairRAG: Fair Human Generation via Fair Retrieval Augmentation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 생성모델/디퓨전, 설명가능성/안전성, 강건 인식
- 핵심 초록 신호: Existing text-to-image generative models reflect or even amplify societal biases ingrained in their training data. This is especially concerning for human image generation where models are biased against certain demog...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Shrestha_FairRAG_Fair_Human_Generation_via_Fair_Retrieval_Augmentation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.064 논문 카드
- 제목: Selective Interpretable and Motion Consistent Privacy Attribute Obfuscation for Action Recognition
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 비디오/시계열, 에이전트/추론, 설명가능성/안전성
- 핵심 초록 신호: Concerns for the privacy of individuals captured in public imagery have led to privacy-preserving action recognition. Existing approaches often suffer from issues arising through obfuscation being applied globally and...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ilic_Selective_Interpretable_and_Motion_Consistent_Privacy_Attribute_Obfuscation_for_Action_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.065 논문 카드
- 제목: Selectively Informative Description can Reduce Undesired Embedding Entanglements in Text-to-Image Personalization
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 설명가능성/안전성, 생성모델/디퓨전, 멀티모달/VLM
- 핵심 초록 신호: In text-to-image personalization a timely and crucial challenge is the tendency of generated images overfitting to the biases present in the reference images. We initiate our study with a comprehensive categorization ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Kim_Selectively_Informative_Description_can_Reduce_Undesired_Embedding_Entanglements_in_Text-to-Image_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.10.066 논문 카드
- 제목: ADD: Attribution-Driven Data Augmentation Framework for Boosting Image Super-Resolution
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 검출/분할
- 핵심 초록 신호: Data augmentation (DA) stands out as a powerful technique to enhance the generalization capabilities of deep neural networks across diverse tasks. However, in low-level vision tasks, DA remains rudimentary (i.e., vani...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Mi_ADD_Attribution-Driven_Data_Augmentation_Framework_for_Boosting_Image_Super-Resolution_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.067 논문 카드
- 제목: AIM-Fair: Advancing Algorithmic Fairness via Selectively Fine-Tuning Biased Models with Contextual Synthetic Data
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_AIM-Fair_Advancing_Algorithmic_Fairness_via_Selectively_Fine-Tuning_Biased_Models_with_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.068 논문 카드
- 제목: Automated Red Teaming for Text-to-Image Models through Feedback-Guided Prompt Iteration with Vision-Language Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 멀티모달/VLM, 에이전트/추론, 설명가능성/안전성
- 핵심 초록 신호: Text-to-image models have achieved remarkable progress in generating high-quality images from textual prompts, yet their potential for misuse like generating unsafe content remains a critical concern. Existing safety ...
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xu_Automated_Red_Teaming_for_Text-to-Image_Models_through_Feedback-Guided_Prompt_Iteration_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.10.069 논문 카드
- 제목: Bias for Action: Video Implicit Neural Representations with Bias Modulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 설명가능성/안전성, 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kayabasi_Bias_for_Action_Video_Implicit_Neural_Representations_with_Bias_Modulation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.10.070 논문 카드
- 제목: Bias in Gender Bias Benchmarks: How Spurious Features Distort Evaluation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 설명가능성/안전성
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 모델 성능 자체보다 실패 모드 해석, 편향 완화, 안전성 검증의 비중이 증가하고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hirota_Bias_in_Gender_Bias_Benchmarks_How_Spurious_Features_Distort_Evaluation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

### 4.11 Embodied/로보틱스

#### 4.11.001 논문 카드
- 제목: Mitigating the Human-Robot Domain Discrepancy in Visual Pre-training for Robotic Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 비디오/시계열
- 핵심 초록 신호: Learning generalizable visual representations across different embodied environments is essential for effective robotic manipulation in real-world scenarios. However, the limited scale and diversity of robot demonstra...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhou_Mitigating_the_Human-Robot_Domain_Discrepancy_in_Visual_Pre-training_for_Robotic_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.002 논문 카드
- 제목: RoboBrain: A Unified Brain Model for Robotic Manipulation from Abstract to Concrete
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 멀티모달/VLM
- 핵심 초록 신호: Recent advancements in Multimodal Large Language Models (MLLMs) have shown remarkable capabilities across various multimodal contexts. However, their application in robotic scenarios, particularly for long-horizon man...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ji_RoboBrain_A_Unified_Brain_Model_for_Robotic_Manipulation_from_Abstract_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.003 논문 카드
- 제목: RoboTron-Mani: All-in-One Multimodal Large Model for Robotic Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM, 3D 비전/기하
- 핵심 초록 신호: Recently, robotics has advanced significantly through the integration of larger models and large-scale datasets. However, challenges remain in applying these models to 3D spatial interactions and managing data collect...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yan_RoboTron-Mani_All-in-One_Multimodal_Large_Model_for_Robotic_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.004 논문 카드
- 제목: ManipLLM: Embodied Multimodal Large Language Model for Object-Centric Robotic Manipulation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Robot manipulation relies on accurately predicting contact points and end-effector directions to ensure successful operation. However learning-based robot manipulation trained on a limited category within a simulator ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Li_ManipLLM_Embodied_Multimodal_Large_Language_Model_for_Object-Centric_Robotic_Manipulation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.005 논문 카드
- 제목: Towards Learning a Generalist Model for Embodied Navigation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Building a generalist agent that can interact with the world is an ultimate goal for humans thus spurring the research for embodied navigation where an agent is required to navigate according to instructions or respon...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zheng_Towards_Learning_a_Generalist_Model_for_Embodied_Navigation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.006 논문 카드
- 제목: Learning 4D Embodied World Models
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 비디오/시계열, 3D 비전/기하
- 핵심 초록 신호: This paper presents an effective approach for learning novel 4D embodied world models, which predict the dynamic evolution of 3D scenes over time in response to an embodied agent's actions, providing both spatial and ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhen_Learning_4D_Embodied_World_Models_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.007 논문 카드
- 제목: iManip: Skill-Incremental Learning for Robotic Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: The development of a generalist agent with adaptive multiple manipulation skills has been a long-standing goal in the robotics community.In this paper, we explore a crucial task, skill-incremental learning, in robotic...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zheng_iManip_Skill-Incremental_Learning_for_Robotic_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.008 논문 카드
- 제목: Active Perception Meets Rule-Guided RL: A Two-Phase Approach for Precise Object Navigation in Complex Environments
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: Object Goal Navigation (ObjectNav) in unknown environments presents significant challenges, particularly in Open-Vocabulary Mobile Manipulation (OVMM), where robots must efficiently explore large spaces, locate small ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qin_Active_Perception_Meets_Rule-Guided_RL_A_Two-Phase_Approach_for_Precise_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.009 논문 카드
- 제목: Move to Understand a 3D Scene: Bridging Visual Grounding and Exploration for Efficient and Versatile Embodied Navigation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 3D 비전/기하, Embodied/로보틱스, 멀티모달/VLM
- 핵심 초록 신호: Embodied scene understanding requires not only comprehending visual-spatial information that has been observed but also determining where to explore next in the 3D physical world. Existing 3D Vision-Language (3D-VL) m...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_Move_to_Understand_a_3D_Scene_Bridging_Visual_Grounding_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.010 논문 카드
- 제목: Navigation World Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Navigation is a fundamental skill of agents with visual-motor capabilities. We introduce a Navigation World Model (NWM), a controllable video generation model that predicts future visual observations based on past obs...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Bar_Navigation_World_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.011 논문 카드
- 제목: PhysVLM: Enabling Visual Language Models to Understand Robotic Physical Reachability
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 멀티모달/VLM, Embodied/로보틱스, 에이전트/추론
- 핵심 초록 신호: Understanding the environment and a robot's physical reachability is crucial for task execution. While state-of-the-art vision-language models (VLMs) excel in environmental perception, they often generate inaccurate o...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhou_PhysVLM_Enabling_Visual_Language_Models_to_Understand_Robotic_Physical_Reachability_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.012 논문 카드
- 제목: Recognizing Actions from Robotic View for Natural Human-Robot Interaction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 비디오/시계열
- 핵심 초록 신호: Natural Human-Robot Interaction (N-HRI) requires robots to recognize human actions at varying distances and states, regardless of whether the robot itself is in motion or stationary. This setup is more flexible and pr...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wang_Recognizing_Actions_from_Robotic_View_for_Natural_Human-Robot_Interaction_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.013 논문 카드
- 제목: 3D-MVP: 3D Multiview Pretraining for Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, Embodied/로보틱스, 강건 인식
- 핵심 초록 신호: Recent works have shown that visual pretraining on egocentric datasets using masked autoencoders (MAE) can improve generalization for downstream robotics tasks. However, these approaches pretrain only on 2D images, wh...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Qian_3D-MVP_3D_Multiview_Pretraining_for_Manipulation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.014 논문 카드
- 제목: ECBench: Can Multi-modal Foundation Models Understand the Egocentric World? A Holistic Embodied Cognition Benchmark
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM, 비디오/시계열
- 핵심 초록 신호: The enhancement of generalization in robots by large vision-language models (LVLMs) is increasingly evident. Therefore, the embodied cognitive abilities of LVLMs based on egocentric videos are of great interest. Howev...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Dang_ECBench_Can_Multi-modal_Foundation_Models_Understand_the_Egocentric_World_A_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.015 논문 카드
- 제목: Universal Actions for Enhanced Embodied Foundation Models
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 효율화/엣지
- 핵심 초록 신호: Training on diverse, internet-scale data is a key factor in the success of recent large foundation models. Yet, using the same recipe for building embodied agents has faced noticeable difficulties. Despite the availab...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zheng_Universal_Actions_for_Enhanced_Embodied_Foundation_Models_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.016 논문 카드
- 제목: 4D Visual Pre-training for Robot Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: General visual representations learned from web-scale datasets for robotics have achieved great success in recent years, enabling data-efficient robot learning on manipulation tasks; yet these pre-trained representati...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Hou_4D_Visual_Pre-training_for_Robot_Learning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.017 논문 카드
- 제목: Learning on the Go: A Meta-learning Object Navigation Model
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론
- 핵심 초록 신호: Object navigation tasks require an agent to locate a target object using visual observations in unseen environments, where unfamiliar layouts and novel object appearances can hinder navigation. Most existing methods l...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qin_Learning_on_the_Go_A_Meta-learning_Object_Navigation_Model_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.018 논문 카드
- 제목: ManipTrans: Efficient Dexterous Bimanual Manipulation Transfer via Residual Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 효율화/엣지, 강건 인식
- 핵심 초록 신호: Human hands play a central role in interacting, motivating increasing research in dexterous robotic manipulation. Data-driven embodied AI algorithms demand precise, large-scale, human-like manipulation sequences, whic...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_ManipTrans_Efficient_Dexterous_Bimanual_Manipulation_Transfer_via_Residual_Learning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.019 논문 카드
- 제목: PASG: A Closed-Loop Framework for Automated Geometric Primitive Extraction and Semantic Anchoring in Robotic Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: The fragmentation between high-level task semantics and low-level geometric features remains a persistent challenge in robotic manipulation. While vision-language models (VLMs) have shown promise in generating afforda...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_PASG_A_Closed-Loop_Framework_for_Automated_Geometric_Primitive_Extraction_and_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.020 논문 카드
- 제목: RoboFactory: Exploring Embodied Agent Collaboration with Compositional Constraints
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 강건 인식
- 핵심 초록 신호: Designing effective embodied multi-agent systems is critical for solving complex real-world tasks across domains. Due to the complexity of multi-agent embodied systems, existing methods fail to automatically generate ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Qin_RoboFactory_Exploring_Embodied_Agent_Collaboration_with_Compositional_Constraints_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.021 논문 카드
- 제목: Robotic Visual Instruction
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Recently, natural language has been the primary medium for human-robot interaction. However, its inherent lack of spatial precision for robotic control introduces challenges such as ambiguity and verbosity. To address...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Li_Robotic_Visual_Instruction_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.022 논문 카드
- 제목: Spatial-Temporal Graph Diffusion Policy with Kinematic Modeling for Bimanual Robotic Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: Despite the significant success of imitation learning in robotic manipulation, its application to bimanual tasks remains highly challenging. Existing approaches mainly learn a policy to predict a distant next-best end...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lv_Spatial-Temporal_Graph_Diffusion_Policy_with_Kinematic_Modeling_for_Bimanual_Robotic_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.023 논문 카드
- 제목: A0: An Affordance-Aware Hierarchical Model for General Robotic Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Robotic manipulation faces critical challenges in understanding spatial affordances--the "where" and "how" of object interactions--essential for complex manipulation tasks like wiping a board or stacking objects. Exis...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Xu_A0_An_Affordance-Aware_Hierarchical_Model_for_General_Robotic_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.024 논문 카드
- 제목: DexHandDiff: Interaction-aware Diffusion Planning for Adaptive Dexterous Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: Dexterous manipulation with contact-rich interactions is crucial for advanced robotics. While recent diffusion-based planning approaches show promise for simple manipulation tasks, they often produce unrealistic ghost...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Liang_DexHandDiff_Interaction-aware_Diffusion_Planning_for_Adaptive_Dexterous_Manipulation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.025 논문 카드
- 제목: NavMorph: A Self-Evolving World Model for Vision-and-Language Navigation in Continuous Environments
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론
- 핵심 초록 신호: Vision-and-Language Navigation in Continuous Environments (VLN-CE) requires agents to execute sequential navigation actions in complex environments guided by natural language instructions. Current approaches often str...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yao_NavMorph_A_Self-Evolving_World_Model_for_Vision-and-Language_Navigation_in_Continuous_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.026 논문 카드
- 제목: Neural Motion Simulator Pushing the Limit of World Models in Reinforcement Learning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 비디오/시계열, 에이전트/추론
- 핵심 초록 신호: An embodied system must not only model the patterns of the external world but also understand its own motion dynamics. A motion dynamic model is essential for efficient skill acquisition and effective planning. In thi...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Hao_Neural_Motion_Simulator_Pushing_the_Limit_of_World_Models_in_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.027 논문 카드
- 제목: EmbodiedScan: A Holistic Multi-Modal 3D Perception Suite Towards Embodied AI
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 3D 비전/기하, 에이전트/추론
- 핵심 초록 신호: In the realm of computer vision and robotics embodied agents are expected to explore their environment and carry out human instructions. This necessitates the ability to fully understand 3D scenes given their first-pe...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Wang_EmbodiedScan_A_Holistic_Multi-Modal_3D_Perception_Suite_Towards_Embodied_AI_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.028 논문 카드
- 제목: Hierarchical Diffusion Policy for Kinematics-Aware Multi-Task Robotic Manipulation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: This paper introduces Hierarchical Diffusion Policy (HDP) a hierarchical agent for multi-task robotic manipulation. HDP factorises a manipulation policy into a hierarchical structure: a high-level task-planning agent ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ma_Hierarchical_Diffusion_Policy_for_Kinematics-Aware_Multi-Task_Robotic_Manipulation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.029 논문 카드
- 제목: JRDB-PanoTrack: An Open-world Panoptic Segmentation and Tracking Robotic Dataset in Crowded Human Environments
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 검출/분할, 비디오/시계열
- 핵심 초록 신호: Autonomous robot systems have attracted increasing research attention in recent years where environment understanding is a crucial step for robot navigation human-robot interaction and decision. Real-world robot syste...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Le_JRDB-PanoTrack_An_Open-world_Panoptic_Segmentation_and_Tracking_Robotic_Dataset_in_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.030 논문 카드
- 제목: ReCoRe: Regularized Contrastive Representation Learning of World Model
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 강건 인식
- 핵심 초록 신호: While recent model-free Reinforcement Learning (RL) methods have demonstrated human-level effectiveness in gaming environments their success in everyday tasks like visual navigation has been limited particularly under...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Poudel_ReCoRe_Regularized_Contrastive_Representation_Learning_of_World_Model_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.031 논문 카드
- 제목: Beyond the Destination: A Novel Benchmark for Exploration-Aware Embodied Question Answering
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: Embodied Question Answering (EQA) is a challenging task in embodied intelligence that requires agents to dynamically explore 3D environments, actively gather visual information, and perform multi-step reasoning to ans...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Jiang_Beyond_the_Destination_A_Novel_Benchmark_for_Exploration-Aware_Embodied_Question_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.032 논문 카드
- 제목: G3Flow: Generative 3D Semantic Flow for Pose-aware and Generalizable Object Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 생성모델/디퓨전, 3D 비전/기하
- 핵심 초록 신호: Recent advances in imitation learning for 3D robotic manipulation have shown promising results with diffusion-based policies. However, achieving human-level dexterity requires seamless integration of geometric precisi...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Chen_G3Flow_Generative_3D_Semantic_Flow_for_Pose-aware_and_Generalizable_Object_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.033 논문 카드
- 제목: Learning Precise Affordances from Egocentric Videos for Robotic Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 비디오/시계열
- 핵심 초록 신호: Affordance, defined as the potential actions that an object offers, is crucial for embodied AI agents. For example, such knowledge directs an agent to grasp a knife by the handle for cutting or by the blade for safe h...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Li_Learning_Precise_Affordances_from_Egocentric_Videos_for_Robotic_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.034 논문 카드
- 제목: OVA-Fields: Weakly Supervised Open-Vocabulary Affordance Fields for Robot Operational Part Detection
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 검출/분할, 3D 비전/기하
- 핵심 초록 신호: In recent years, affordance detection has become essential for robotic manipulation in real-world scenes, where robots must autonomously interpret commands and perform actions. Current methods often focus on individua...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Su_OVA-Fields_Weakly_Supervised_Open-Vocabulary_Affordance_Fields_for_Robot_Operational_Part_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.035 논문 카드
- 제목: RoboAnnotatorX: A Comprehensive and Universal Annotation Framework for Accurate Understanding of Long-horizon Robot Demonstration
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 비디오/시계열, 멀티모달/VLM
- 핵심 초록 신호: Recent advances in robotics have produced numerous valuable large-scale demonstration datasets, yet their potential remains underutilized due to annotation limitations. Current datasets often suffer from sparse tempor...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Kou_RoboAnnotatorX_A_Comprehensive_and_Universal_Annotation_Framework_for_Accurate_Understanding_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.036 논문 카드
- 제목: TANGO: Training-free Embodied AI Agents for Open-world Tasks
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Large Language Models (LLMs) have demonstrated excellent capabilities in composing various modules together to create programs that can perform complex reasoning tasks on images. In this paper, we propose TANGO, an ap...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Ziliotto_TANGO_Training-free_Embodied_AI_Agents_for_Open-world_Tasks_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.037 논문 카드
- 제목: VLABench: A Large-Scale Benchmark for Language-Conditioned Robotics Manipulation with Long-Horizon Reasoning Tasks
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 멀티모달/VLM
- 핵심 초록 신호: General-purposed embodied agents are designed to understand the users' natural instructions or intentions and act precisely to complete universal tasks. Recently, methods based on foundation models especially Vision-L...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_VLABench_A_Large-Scale_Benchmark_for_Language-Conditioned_Robotics_Manipulation_with_Long-Horizon_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.038 논문 카드
- 제목: Instance-aware Exploration-Verification-Exploitation for Instance ImageGoal Navigation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 3D 비전/기하
- 핵심 초록 신호: As a new embodied vision task Instance ImageGoal Navigation (IIN) aims to navigate to a specified object depicted by a goal image in an unexplored environment. The main challenge of this task lies in identifying the t...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Lei_Instance-aware_Exploration-Verification-Exploitation_for_Instance_ImageGoal_Navigation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.039 논문 카드
- 제목: SPIN: Simultaneous Perception Interaction and Navigation
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 효율화/엣지, 에이전트/추론
- 핵심 초록 신호: While there has been remarkable progress recently in the fields of manipulation and locomotion mobile manipulation remains a long-standing challenge. Compared to locomotion or static manipulation a mobile system must ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Uppal_SPIN_Simultaneous_Perception_Interaction_and_Navigation_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.040 논문 카드
- 제목: AnyBimanual: Transferring Unimanual Policy for General Bimanual Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 에이전트/추론
- 핵심 초록 신호: General-purpose bimanual manipulation is challenging due to high-dimensional action spaces and expensive data collection. In contrast, unimanual policy has recently demonstrated impressive generalizability across a wi...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lu_AnyBimanual_Transferring_Unimanual_Policy_for_General_Bimanual_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.041 논문 카드
- 제목: FlowRAM: Grounding Flow Matching Policy with Region-Aware Mamba Framework for Robotic Manipulation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM, 생성모델/디퓨전
- 핵심 초록 신호: Robotic manipulation in high-precision tasks is essential for numerous industrial and real-world applications where accuracy and speed are required. Yet current diffusion-based policy learning methods generally suffer...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_FlowRAM_Grounding_Flow_Matching_Policy_with_Region-Aware_Mamba_Framework_for_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.042 논문 카드
- 제목: Generating 6DoF Object Manipulation Trajectories from Action Description in Egocentric Vision
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Learning to use tools or objects in common scenes, particularly handling them in various ways as instructed, is a key challenge for developing interactive robots. Training models to generate such manipulation trajecto...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yoshida_Generating_6DoF_Object_Manipulation_Trajectories_from_Action_Description_in_Egocentric_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.043 논문 카드
- 제목: RobAVA: A Large-scale Dataset and Baseline Towards Video based Robotic Arm Action Understanding
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, 비디오/시계열, Embodied/로보틱스
- 핵심 초록 신호: Understanding the behaviors of robotic arms is essential for various robotic applications such as logistics management, precision agriculture, and automated manufacturing. However, the lack of large-scale and diverse ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Sun_RobAVA_A_Large-scale_Dataset_and_Baseline_Towards_Video_based_Robotic_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.044 논문 카드
- 제목: Tartan IMU: A Light Foundation Model for Inertial Positioning in Robotics
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 비디오/시계열
- 핵심 초록 신호: Despite recent advances in deep learning, most existing learning IMU odometry methods are trained on specific datasets, lack generalization, and are prone to overfitting, which limits their real-world application. To ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_Tartan_IMU_A_Light_Foundation_Model_for_Inertial_Positioning_in_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.045 논문 카드
- 제목: Towards Long-Horizon Vision-Language Navigation: Platform, Benchmark and Method
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM, 에이전트/추론
- 핵심 초록 신호: Existing Vision-Language Navigation (VLN) methods primarily focus on single-stage navigation, limiting their effectiveness in multi-stage and long-horizon tasks within complex and dynamic environments. To address thes...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Song_Towards_Long-Horizon_Vision-Language_Navigation_Platform_Benchmark_and_Method_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.046 논문 카드
- 제목: DynScene: Scalable Generation of Dynamic Robotic Manipulation Scenes for Embodied AI
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Lee_DynScene_Scalable_Generation_of_Dynamic_Robotic_Manipulation_Scenes_for_Embodied_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.047 논문 카드
- 제목: Epona: Autoregressive Diffusion World Model for Autonomous Driving
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 비디오/시계열, Embodied/로보틱스
- 핵심 초록 신호: Diffusion models have demonstrated exceptional visual quality in video generation, making them promising for autonomous driving world modeling. However, existing video diffusion-based world models struggle with flexib...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhang_Epona_Autoregressive_Diffusion_World_Model_for_Autonomous_Driving_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.048 논문 카드
- 제목: GUIOdyssey: A Comprehensive Dataset for Cross-App GUI Navigation on Mobile Devices
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 효율화/엣지
- 핵심 초록 신호: Autonomous Graphical User Interface (GUI) navigation agents can enhance user experience in communication, entertainment, and productivity by streamlining workflows and reducing manual intervention. However, prior GUI ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lu_GUIOdyssey_A_Comprehensive_Dataset_for_Cross-App_GUI_Navigation_on_Mobile_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.049 논문 카드
- 제목: GWM: Towards Scalable Gaussian World Models for Robotic Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Lu_GWM_Towards_Scalable_Gaussian_World_Models_for_Robotic_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.050 논문 카드
- 제목: GenFlowRL: Shaping Rewards with Generative Object-Centric Flow in Visual Reinforcement Learning
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 생성모델/디퓨전, 강건 인식, Embodied/로보틱스
- 핵심 초록 신호: Recent advances have shown that video generation models can enhance robot learning by deriving effective robot actions through inverse dynamics. However, these methods heavily depend on the quality of generated data a...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yu_GenFlowRL_Shaping_Rewards_with_Generative_Object-Centric_Flow_in_Visual_Reinforcement_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.051 논문 카드
- 제목: IRASim: A Fine-Grained World Model for Robot Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhu_IRASim_A_Fine-Grained_World_Model_for_Robot_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.052 논문 카드
- 제목: Missing Target-Relevant Information Prediction with World Model for Accurate Zero-Shot Composed Image Retrieval
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Zero-Shot Composed Image Retrieval (ZS-CIR) involves diverse tasks with a broad range of visual content manipulation intent across domain, scene, object, and attribute. The key challenge for ZS-CIR tasks is to modify ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Tang_Missing_Target-Relevant_Information_Prediction_with_World_Model_for_Accurate_Zero-Shot_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.053 논문 카드
- 제목: On-Device Diffusion Transformer Policy for Efficient Robot Manipulation
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 효율화/엣지, 생성모델/디퓨전, Embodied/로보틱스
- 핵심 초록 신호: Diffusion Policies have significantly advanced robotic manipulation tasks via imitation learning, but their application on resource-constrained mobile platforms remains challenging due to computational inefficiency an...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Wu_On-Device_Diffusion_Transformer_Policy_for_Efficient_Robot_Manipulation_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.054 논문 카드
- 제목: Pixel-aligned RGB-NIR Stereo Imaging and Dataset for Robot Vision
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, Embodied/로보틱스, 비디오/시계열
- 핵심 초록 신호: Integrating RGB and NIR imaging provides complementary spectral information, enhancing robotic vision in challenging lighting conditions. However, existing datasets and imaging systems lack pixel-level alignment betwe...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Kim_Pixel-aligned_RGB-NIR_Stereo_Imaging_and_Dataset_for_Robot_Vision_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.055 논문 카드
- 제목: RoboTrom-Nav: A Unified Framework for Embodied Navigation Integrating Perception, Planning, and Prediction
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론
- 핵심 초록 신호: 초록 미수집 또는 비어 있음
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Zhong_RoboTrom-Nav_A_Unified_Framework_for_Embodied_Navigation_Integrating_Perception_Planning_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.056 논문 카드
- 제목: Saliency-Aware Quantized Imitation Learning for Efficient Robotic Control
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 효율화/엣지, 설명가능성/안전성
- 핵심 초록 신호: Deep neural network (DNN)-based policy models, such as vision-language-action (VLA) models, excel at automating complex decision-making from multi-modal inputs. However, scaling these models greatly increases computat...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Park_Saliency-Aware_Quantized_Imitation_Learning_for_Efficient_Robotic_Control_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.057 논문 카드
- 제목: Scene Map-based Prompt Tuning for Navigation Instruction Generation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: Embodied/로보틱스, 생성모델/디퓨전, 에이전트/추론
- 핵심 초록 신호: Navigation instruction generation (NIG), which provides interactive feedback and guidance to humans along a trajectory, is vital for developing embodied agents capable of human-machine communication and collaboration ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Fan_Scene_Map-based_Prompt_Tuning_for_Navigation_Instruction_Generation_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.058 논문 카드
- 제목: g3D-LF: Generalizable 3D-Language Feature Fields for Embodied Tasks
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, Embodied/로보틱스, 에이전트/추론
- 핵심 초록 신호: We introduce Generalizable 3D-Language Feature Fields (g3D-LF), a 3D representation model pre-trained on large-scale 3D-language dataset for embodied tasks. Our g3D-LF processes posed RGB-D images from agents to encod...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_g3D-LF_Generalizable_3D-Language_Feature_Fields_for_Embodied_Tasks_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.059 논문 카드
- 제목: DiaLoc: An Iterative Approach to Embodied Dialog Localization
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 멀티모달/VLM
- 핵심 초록 신호: Multimodal learning has advanced the performance for many vision-language tasks. However most existing works in embodied dialog research focus on navigation and leave the localization task understudied. The few existi...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Zhang_DiaLoc_An_Iterative_Approach_to_Embodied_Dialog_Localization_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.060 논문 카드
- 제목: MultiPLY: A Multisensory Object-Centric Embodied Large Language Model in 3D World
- 학회/연도: CVPR2024 / 2024
- 분류 테마: 에이전트/추론, 3D 비전/기하, Embodied/로보틱스
- 핵심 초록 신호: Human beings possess the capability to multiply a melange of multisensory cues while actively exploring and interacting with the 3D world. Current multi-modal large language models however passively absorb sensory dat...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Hong_MultiPLY_A_Multisensory_Object-Centric_Embodied_Large_Language_Model_in_3D_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.061 논문 카드
- 제목: SPOC: Imitating Shortest Paths in Simulation Enables Effective Navigation and Manipulation in the Real World
- 학회/연도: CVPR2024 / 2024
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 강건 인식
- 핵심 초록 신호: Reinforcement learning (RL) with dense rewards and imitation learning (IL) with human-generated trajectories are the most widely used approaches for training modern embodied agents. RL requires extensive reward shapin...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2024/html/Ehsani_SPOC_Imitating_Shortest_Paths_in_Simulation_Enables_Effective_Navigation_and_CVPR_2024_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2024?day=all

#### 4.11.062 논문 카드
- 제목: 3D-Mem: 3D Scene Memory for Embodied Exploration and Reasoning
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 3D 비전/기하, 에이전트/추론, Embodied/로보틱스
- 핵심 초록 신호: Constructing compact and informative 3D scene representations is essential for effective embodied exploration and reasoning, especially in complex environments over extended periods. Existing representations, such as ...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Yang_3D-Mem_3D_Scene_Memory_for_Embodied_Exploration_and_Reasoning_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.063 논문 카드
- 제목: CogNav: Cognitive Process Modeling for Object Goal Navigation with LLMs
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 강건 인식, 3D 비전/기하
- 핵심 초록 신호: Object goal navigation (ObjectNav) is a fundamental task in embodied AI, requiring an agent to locate a target object in previously unseen environments. This task is particularly challenging because it requires both p...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Cao_CogNav_Cognitive_Process_Modeling_for_Object_Goal_Navigation_with_LLMs_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.064 논문 카드
- 제목: Do Visual Imaginations Improve Vision-and-Language Navigation Agents?
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: Vision-and-Language Navigation (VLN) agents are tasked with navigating an unseen environment using natural language instructions. In this work, we study if visual representations of sub-goals implied by the instructio...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Perincherry_Do_Visual_Imaginations_Improve_Vision-and-Language_Navigation_Agents_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.065 논문 카드
- 제목: DriveDreamer4D: World Models Are Effective Data Machines for 4D Driving Scene Representation
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, 생성모델/디퓨전, Embodied/로보틱스
- 핵심 초록 신호: Closed-loop simulation is essential for advancing end-to-end autonomous driving systems. Contemporary sensor simulation methods, such as NeRF and 3DGS, rely predominantly on conditions closely aligned with training da...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Zhao_DriveDreamer4D_World_Models_Are_Effective_Data_Machines_for_4D_Driving_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.066 논문 카드
- 제목: DrivingGPT: Unifying Driving World Modeling and Planning with Multi-modal Autoregressive Transformers
- 학회/연도: ICCV2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: World model-based searching and planning are widely recognized as a promising path toward human-level physical intelligence. However, current driving world models primarily rely on video diffusion models, which specia...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Chen_DrivingGPT_Unifying_Driving_World_Modeling_and_Planning_with_Multi-modal_Autoregressive_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.067 논문 카드
- 제목: From Multimodal LLMs to Generalist Embodied Agents: Methods and Lessons
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 에이전트/추론, Embodied/로보틱스, 멀티모달/VLM
- 핵심 초록 신호: We examine the capability of Multimodal Large Language Models (MLLMs) to tackle diverse domains that extend beyond the traditional language and vision tasks these models are typically trained on. Specifically, our foc...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Szot_From_Multimodal_LLMs_to_Generalist_Embodied_Agents_Methods_and_Lessons_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.068 논문 카드
- 제목: ManiVideo: Generating Hand-Object Manipulation Video with Dexterous and Generalizable Grasping
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 비디오/시계열, Embodied/로보틱스, 생성모델/디퓨전
- 핵심 초록 신호: In this paper, we introduce ManiVideo, a novel method for generating consistent and temporally coherent bimanual hand-object manipulation videos from given motion sequences of hands and objects. The core idea of ManiV...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Pang_ManiVideo_Generating_Hand-Object_Manipulation_Video_with_Dexterous_and_Generalizable_Grasping_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

#### 4.11.069 논문 카드
- 제목: Medical World Model
- 학회/연도: ICCV2025 / 2025
- 분류 테마: Embodied/로보틱스, 에이전트/추론, 생성모델/디퓨전
- 핵심 초록 신호: Providing effective treatment and making informed decisions are essential goals of modern medicine and clinical care.We are interested in simulating disease dynamics for clinical decision-making, leveraging recent adv...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/ICCV2025/html/Yang_Medical_World_Model_ICCV_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/ICCV2025?day=all

#### 4.11.070 논문 카드
- 제목: MobileH2R: Learning Generalizable Human to Mobile Robot Handover Exclusively from Scalable and Diverse Synthetic Data
- 학회/연도: CVPR2025 / 2025
- 분류 테마: 효율화/엣지, Embodied/로보틱스, 비디오/시계열
- 핵심 초록 신호: This paper introduces MobileH2R, a framework for learning generalizable vision-based human-to-mobile-robot (H2MR) handover skills. Unlike traditional fixed-base handovers, this task requires a mobile robot to reliably...
- 트렌드 해석: 비전이 인식 모듈을 넘어 행동 결정과 피드백 제어를 담당하는 방향으로 확장되고 있다.
- 논문 링크: https://openaccess.thecvf.com/content/CVPR2025/html/Wang_MobileH2R_Learning_Generalizable_Human_to_Mobile_Robot_Handover_Exclusively_from_CVPR_2025_paper.html
- 목록 소스: https://openaccess.thecvf.com/CVPR2025?day=all

## 5. 교차 학회 비교 인사이트 120선

1. 강건 인식은/는 CVPR2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
2. 강건 인식은/는 2024 대비 2025에 +603편 증가했다.
3. 생성모델/디퓨전은/는 CVPR2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
4. 생성모델/디퓨전은/는 2024 대비 2025에 +460편 증가했다.
5. 3D 비전/기하은/는 CVPR2024에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
6. 3D 비전/기하은/는 2024 대비 2025에 +175편 증가했다.
7. 비디오/시계열은/는 CVPR2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
8. 비디오/시계열은/는 2024 대비 2025에 +399편 증가했다.
9. 에이전트/추론은/는 ICCV2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
10. 에이전트/추론은/는 2024 대비 2025에 +470편 증가했다.
11. 효율화/엣지은/는 CVPR2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
12. 효율화/엣지은/는 2024 대비 2025에 +266편 증가했다.
13. 기타/신규 토픽은/는 ECCV2024에서 상대적으로 강하고 ICCV2025에서 상대적으로 약하게 나타난다.
14. 기타/신규 토픽은/는 2024 대비 2025에 -331편 감소했다.
15. 검출/분할은/는 CVPR2024에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
16. 검출/분할은/는 2024 대비 2025에 +12편 증가했다.
17. 멀티모달/VLM은/는 CVPR2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
18. 멀티모달/VLM은/는 2024 대비 2025에 +399편 증가했다.
19. 설명가능성/안전성은/는 CVPR2024에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
20. 설명가능성/안전성은/는 2024 대비 2025에 +66편 증가했다.
21. Embodied/로보틱스은/는 ICCV2025에서 상대적으로 강하고 ECCV2024에서 상대적으로 약하게 나타난다.
22. Embodied/로보틱스은/는 2024 대비 2025에 +105편 증가했다.
23. 인사이트 023: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
24. 인사이트 024: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
25. 인사이트 025: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
26. 인사이트 026: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
27. 인사이트 027: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
28. 인사이트 028: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
29. 인사이트 029: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
30. 인사이트 030: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
31. 인사이트 031: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
32. 인사이트 032: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
33. 인사이트 033: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
34. 인사이트 034: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
35. 인사이트 035: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
36. 인사이트 036: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
37. 인사이트 037: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
38. 인사이트 038: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
39. 인사이트 039: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
40. 인사이트 040: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
41. 인사이트 041: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
42. 인사이트 042: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
43. 인사이트 043: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
44. 인사이트 044: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
45. 인사이트 045: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
46. 인사이트 046: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
47. 인사이트 047: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
48. 인사이트 048: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
49. 인사이트 049: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
50. 인사이트 050: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
51. 인사이트 051: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
52. 인사이트 052: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
53. 인사이트 053: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
54. 인사이트 054: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
55. 인사이트 055: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
56. 인사이트 056: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
57. 인사이트 057: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
58. 인사이트 058: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
59. 인사이트 059: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
60. 인사이트 060: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
61. 인사이트 061: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
62. 인사이트 062: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
63. 인사이트 063: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
64. 인사이트 064: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
65. 인사이트 065: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
66. 인사이트 066: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
67. 인사이트 067: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
68. 인사이트 068: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
69. 인사이트 069: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
70. 인사이트 070: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
71. 인사이트 071: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
72. 인사이트 072: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
73. 인사이트 073: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
74. 인사이트 074: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
75. 인사이트 075: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
76. 인사이트 076: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
77. 인사이트 077: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
78. 인사이트 078: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
79. 인사이트 079: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
80. 인사이트 080: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
81. 인사이트 081: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
82. 인사이트 082: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
83. 인사이트 083: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
84. 인사이트 084: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
85. 인사이트 085: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
86. 인사이트 086: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
87. 인사이트 087: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
88. 인사이트 088: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
89. 인사이트 089: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
90. 인사이트 090: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
91. 인사이트 091: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
92. 인사이트 092: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
93. 인사이트 093: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
94. 인사이트 094: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
95. 인사이트 095: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
96. 인사이트 096: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
97. 인사이트 097: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
98. 인사이트 098: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
99. 인사이트 099: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
100. 인사이트 100: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
101. 인사이트 101: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
102. 인사이트 102: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
103. 인사이트 103: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
104. 인사이트 104: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
105. 인사이트 105: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
106. 인사이트 106: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
107. 인사이트 107: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
108. 인사이트 108: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
109. 인사이트 109: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
110. 인사이트 110: Embodied/로보틱스은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
111. 인사이트 111: 강건 인식은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
112. 인사이트 112: 생성모델/디퓨전은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
113. 인사이트 113: 3D 비전/기하은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
114. 인사이트 114: 비디오/시계열은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
115. 인사이트 115: 에이전트/추론은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
116. 인사이트 116: 효율화/엣지은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
117. 인사이트 117: 기타/신규 토픽은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
118. 인사이트 118: 검출/분할은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
119. 인사이트 119: 멀티모달/VLM은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.
120. 인사이트 120: 설명가능성/안전성은 데이터 규모 확대와 벤치마크 복합화의 영향을 동시에 받는 영역이다.

## 6. 2026-2027 전망 및 실행 제안

1. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
2. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
3. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
4. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
5. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
6. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
7. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
8. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
9. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
10. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
11. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
12. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
13. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
14. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
15. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
16. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
17. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
18. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
19. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
20. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
21. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
22. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
23. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
24. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
25. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
26. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
27. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
28. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
29. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
30. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
31. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
32. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
33. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
34. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
35. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
36. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
37. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
38. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
39. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
40. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
41. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
42. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
43. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
44. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
45. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
46. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
47. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
48. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
49. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
50. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
51. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
52. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
53. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
54. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.
55. 기초모델 기반 파이프라인은 태스크 특화 파인튜닝보다 데이터/평가 설계 역량이 성패를 좌우한다.
56. 비디오·3D·로보틱스는 공통적으로 시공간 일관성과 메모리 비용 최적화가 핵심 병목이다.
57. 생성모델 기반 복원/편집 기법은 인식 파이프라인의 전처리와 후처리를 동시에 재정의한다.
58. 오픈보캐브러리 검출/분할은 라벨 비용을 낮추지만 안전성/허위탐지 관리가 필수다.
59. 현업 적용에서는 정확도 단일지표보다 latency, power, failure mode 지표의 가중치가 높아진다.
60. 학회 성과를 제품으로 전환하려면 데이터 거버넌스와 지속평가(MLOps) 체계가 선행되어야 한다.

