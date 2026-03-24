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

## 4. Technical Deep-Dive: Structure and Bottlenecks

This chapter avoids paper-by-paper listing and focuses on measurable shifts in research structure from 10,677 papers.

### 4.1 Growth, Share Shift, and Momentum

Definitions:
- `g(t) = N_2025(t)/N_2024(t) - 1`
- `DeltaShare(t) = share_2025(t) - share_2024(t)`
- `Momentum(t) = log(1 + N_2025(t)) * g(t)`

| Theme | 2024 | 2025 | Growth | Share Shift (pp) | Momentum |
|---|---:|---:|---:|---:|---:|
| Multimodal/VLM | 490 | 889 | +81.4% | +6.36 | +5.530 |
| Embodied/Robotics | 110 | 215 | +95.5% | +1.70 | +5.131 |
| Agents/Reasoning | 780 | 1,250 | +60.3% | +7.15 | +4.297 |
| Robust Perception | 1,133 | 1,736 | +53.2% | +8.96 | +3.970 |
| Video/Temporal | 902 | 1,301 | +44.2% | +5.68 | +3.172 |
| Generative/Diffusion | 1,177 | 1,637 | +39.1% | +6.32 | +2.893 |
| Efficiency/Edge | 713 | 979 | +37.3% | +3.60 | +2.570 |
| Explainability/Safety | 171 | 237 | +38.6% | +0.90 | +2.112 |
| 3D Vision/Geometry | 1,217 | 1,392 | +14.4% | +1.14 | +1.041 |
| Detection/Segmentation | 813 | 825 | +1.5% | -1.12 | +0.099 |
| Other/Emerging | 999 | 668 | -33.1% | -7.58 | -2.156 |

Key takeaways:
1. Large-volume themes (Robust, Generative, 3D) remain the core portfolio.
2. High-growth themes (Embodied, Multimodal/VLM, Agents) are likely to expand in 2026 CFP scopes.
3. Decline of Other/Emerging share indicates a transition from topic exploration to topic consolidation.

### 4.2 Conference Specialization via LQ

Definition: `LQ(conf, theme) = (theme share within conf)/(theme share global)`
- `LQ > 1`: over-indexed specialization
- `LQ < 1`: under-indexed exposure

- CVPR specialization Top 5:
  1. Explainability/Safety (LQ=1.11, 252 papers)
  2. Robust Perception (LQ=1.11, 1,764 papers)
  3. Efficiency/Edge (LQ=1.04, 974 papers)
  4. Agents/Reasoning (LQ=1.03, 1,167 papers)
  5. 3D Vision/Geometry (LQ=1.01, 1,472 papers)
- ECCV specialization Top 5:
  1. Other/Emerging (LQ=2.18, 608 papers)
  2. Detection/Segmentation (LQ=1.24, 341 papers)
  3. 3D Vision/Geometry (LQ=1.09, 477 papers)
  4. Generative/Diffusion (LQ=1.04, 489 papers)
  5. Video/Temporal (LQ=1.00, 369 papers)
- ICCV specialization Top 5:
  1. Embodied/Robotics (LQ=1.24, 111 papers)
  2. Multimodal/VLM (LQ=1.16, 444 papers)
  3. Agents/Reasoning (LQ=1.13, 632 papers)
  4. Robust Perception (LQ=1.05, 830 papers)
  5. Efficiency/Edge (LQ=1.04, 485 papers)

Implications:
1. Submission strategy should adapt by venue: problem framing and evaluation protocol must be venue-specific.
2. CVPR favors scale and rapid diffusion; ECCV tends to reward tighter methodological grounding; ICCV often favors long-horizon integration.

### 4.3 Theme Coupling Network

Definitions:
- `PMI(a,b) = log(P(a,b)/(P(a)P(b)))`
- `Coupling(a,b) = cooccur(a,b)/min(N(a),N(b))`

| Rank | Theme A | Theme B | Co-Occur | PMI | Coupling |
|---:|---|---|---:|---:|---:|
| 1 | Agents/Reasoning | Embodied/Robotics | 121 | 0.672 | 0.372 |
| 2 | Efficiency/Edge | Robust Perception | 637 | 0.337 | 0.376 |
| 3 | Explainability/Safety | Robust Perception | 150 | 0.313 | 0.368 |
| 4 | Agents/Reasoning | Multimodal/VLM | 356 | 0.306 | 0.258 |
| 5 | Agents/Reasoning | Video/Temporal | 512 | 0.201 | 0.252 |
| 6 | Generative/Diffusion | Video/Temporal | 649 | 0.111 | 0.295 |
| 7 | Agents/Reasoning | Generative/Diffusion | 586 | 0.091 | 0.289 |
| 8 | Multimodal/VLM | Robust Perception | 390 | 0.051 | 0.283 |
| 9 | Generative/Diffusion | Robust Perception | 782 | 0.034 | 0.278 |
| 10 | Detection/Segmentation | Multimodal/VLM | 212 | 0.002 | 0.154 |
| 11 | Efficiency/Edge | Multimodal/VLM | 218 | -0.002 | 0.158 |
| 12 | Detection/Segmentation | Robust Perception | 434 | -0.014 | 0.265 |

Implications:
1. Generative-Robust and 3D-Video couplings are structural, not transient.
2. Multimodal/VLM creates higher downstream value when connected to Detection/Segmentation and Agents.
3. Bridge themes likely offer better long-term impact than isolated single-theme SOTA work.

### 4.4 Stack Transition: Algorithm to System

| Stack Group | 2024 Coverage | 2025 Coverage | Delta |
|---|---:|---:|---:|
| Foundation-VLM | 425 | 587 | +162 |
| Generation | 878 | 968 | +90 |
| 3D-Geometry | 901 | 1,018 | +117 |
| Video-Temporal | 606 | 828 | +222 |
| Deployment | 409 | 444 | +35 |
| Safety | 256 | 293 | +37 |

Implications:
1. Foundation-VLM + Generation dominates, collapsing boundaries between recognition, retrieval, and synthesis.
2. Joint growth of 3D and Video signals demand for dynamic scene/world modeling.
3. Deployment growth lags behind modeling growth, exposing a productization gap.

### 4.5 Compute Intensity vs Deployment Readiness

Definition:
- Heavy ratio: fraction of papers with compute-heavy keywords
- Deploy ratio: fraction of papers with deployment keywords
- Gap index: `Gap = Heavy - Deploy` (higher means harder to operationalize)

| Theme | Heavy Ratio | Deploy Ratio | Gap Index |
|---|---:|---:|---:|
| 3D Vision/Geometry | 63.3% | 7.4% | +56.0%p |
| Generative/Diffusion | 55.9% | 6.4% | +49.5%p |
| Video/Temporal | 54.8% | 7.0% | +47.8%p |
| Agents/Reasoning | 34.1% | 5.3% | +28.9%p |
| Multimodal/VLM | 31.3% | 5.7% | +25.5%p |
| Detection/Segmentation | 30.7% | 5.9% | +24.8%p |
| Embodied/Robotics | 29.2% | 5.2% | +24.0%p |
| Robust Perception | 30.4% | 7.6% | +22.8%p |
| Explainability/Safety | 20.8% | 4.2% | +16.7%p |
| Other/Emerging | 8.1% | 0.9% | +7.2%p |
| Efficiency/Edge | 29.0% | 44.8% | -15.8%p |

Implications:
1. Generative/3D/Video tracks carry high compute debt.
2. Without concurrent runtime optimization, paper-level progress will not map to deployment KPIs.
3. 2026 competitiveness shifts to multi-objective optimization: accuracy, latency, cost, safety.

### 4.6 Methodological Failure Patterns

1. Benchmark overfitting: repeated optimization on narrow leaderboards underestimates domain shift risk.
2. Missing cost disclosure: incomplete FLOPs/latency/memory/energy reporting blocks fair comparison.
3. Safety under-specification: open-world settings often under-report false positives/hallucinations/bias.
4. Module coupling debt: added generative priors improve scores but complicate diagnostics and stability.
5. Long-horizon fragility: many video/agent pipelines still lack robust drift-recovery evaluation.

### 4.7 Priority Rules for Research Teams

1. Prioritize bridge combinations: Generative x Robust, 3D x Video, VLM x Detection.
2. Use dual-objective design: accuracy gains must be paired with runtime/cost constraints.
3. Standardize a 4-layer eval protocol: in-domain, out-of-domain, adverse condition, long-horizon.
4. Require explicit failure taxonomy in every milestone.
5. Package reproducibility assets early: code, checkpoints, preprocessing, and logs.

## 5. 2026-2027 Research Agenda for Direction Setting

### 5.1 Priority Tracks (Impact x Feasibility)

| Track | Technical Objective | Expected Impact | Execution Risk | Priority |
|---|---|---|---|---:|
| T1: Generative-Robust Integration | Joint restoration and recognition under adverse inputs | Very High | Medium-High | 1 |
| T2: Video-3D World Modeling | Long-horizon consistent dynamic scene reasoning | Very High | High | 2 |
| T3: Open-World VLM Detection | Reduce label cost while preserving transferability | High | Medium | 3 |
| T4: Agentic Vision Loop | Planning-action-verification with uncertainty feedback | High | High | 4 |
| T5: Deployment Optimization Layer | Reduce latency/cost with bounded accuracy loss | High | Medium | 5 |

### 5.2 Testable Hypotheses and Protocols

1. T1 hypothesis: feature-space regularization with generative priors beats input-level restoration for robustness-cost tradeoff.
- Experiment: same backbone, restoration-first vs feature-regularized pipeline
- Metrics: mAP/IoU, corruption error, latency
- Success: robustness +3pp with <=15% latency overhead

2. T2 hypothesis: explicit+implicit hybrid 3D representation lowers long-horizon drift.
- Experiment: explicit-only vs implicit-only vs hybrid
- Metrics: trajectory error, temporal consistency, FPS
- Success: >=20% drift reduction with real-time threshold

3. T3 hypothesis: hard-negative visual-language mining outperforms prompt-only tuning in open-vocab detection.
- Experiment: prompt augmentation vs hard-negative curriculum
- Metrics: open-vocab mAP, false-positive rate, bias gap
- Success: mAP +2pp and FPR -10%

4. T4 hypothesis: uncertainty-aware planning reduces compounding error in agent loops.
- Experiment: planner with and without uncertainty channel
- Metrics: task success rate, recovery steps, cost per episode
- Success: success +8pp and recovery steps -15%

5. T5 hypothesis: joint distillation+quantization training dominates sequential compression.
- Experiment: sequential pipeline vs joint optimization
- Metrics: accuracy delta, latency, memory, power
- Success: <=1pp accuracy loss with >=30% latency reduction

### 5.3 Quarter-by-Quarter Execution Template

1. Q2 2026: lock common evaluation harness (accuracy + robustness + efficiency + safety).
2. Q3 2026: run T1/T3 in parallel; stabilize data and safety validation stack.
3. Q4 2026: expand T2/T4 for long-horizon integration.
4. Q1 2027: execute T5 and produce deployment-grade runtime profile.
5. Q2 2027: submit integrated-system paper with failure analysis and cost disclosure.

## 6. Decision Rules and Reporting Standard

### 6.1 Project Selection Rules

1. Down-rank ideas without data/evaluation assets.
2. Reject single-metric SOTA projects without deployment path.
3. Prefer high-coupling bridge themes from Section 4.3.
4. Do not start open-world projects without safety protocol.
5. Keep only themes that can target at least two venue styles.

### 6.2 Minimum Paper Design Checklist

- Problem framing: benchmark gain vs new failure mode mitigation
- Method decomposition: isolate accuracy gains vs cost increases
- Evaluation: accuracy + robustness + efficiency + safety (mandatory)
- Reproducibility: code, seed, environment, checkpoint, preprocessing
- Failure taxonomy: top-k failure types and mitigation mapping

### 6.3 Final Position

The main shift after 2024 is from isolated model competition to systems competition under multi-constraints.
The strongest forward strategy is to design an integrated stack: problem definition, evaluation protocol, deployment path, and failure governance.
