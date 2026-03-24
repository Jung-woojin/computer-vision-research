# 리소스 & 구현

컴퓨터 비전을 위한 코드 구현, 데이터세트, 사전 학습 모델, 도구의 종합 컬렉션.

## 🔧 코드 구현

### 인기 컴퓨터 비전 라이브러리

#### OpenCV
```python
import cv2
import numpy as np

# 엣지 감지
edges = cv2.Canny(image, 100, 200)

# 특징 감지
orb = cv2.ORB_create()
keypoints, descriptors = orb.detectAndCompute(image, None)

# 물체 탐지
net = cv2.dnn.readNetFromCaffe('deploy.prototxt', 'res10.caffemodel')
net.setInput(cv2.dnn.blobFromImage(image))
detections = net.forward()

# 광유동
flow = cv2.calcOpticalFlowFarneback(prev_frame, next_frame, None, 0.5, 3, 15, 2, 7, 1.2, 0)
```

**설치:**
```bash
# pip
pip install opencv-contrib-python

# conda
conda install -c conda-forge opencv
```

#### PyTorch Vision
```python
import torch
import torchvision
from torchvision.models import detection
from torchvision import models

# 사전 학습 모델
model = models.resnet50(pretrained=True)

# 물체 탐지
model = detection.fasterrcnn_resnet50_fpn(pretrained=True)

# 분할
model = models.segmentation.deeplabv3_resnet50(pretrained=True)

# 데이터 로딩
from torchvision import transforms
transform = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
])
```

**설치:**
```bash
pip install torch torchvision
```

#### TensorFlow/Keras
```python
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import models, layers

# 사전 학습 모델 로드
model = tf.keras.applications.ResNet50(weights='imagenet', include_top=False)

# 물체 탐지
from tensorflow.keras.applications import MobileNetV2
model = MobileNetV2(weights='imagenet', include_top=False)

# 분할
from keras_segmentation.modelsdeeplab import DeepLabV3

# 데이터 증강
data_augmentation = keras.Sequential([
    layers.RandomFlip("horizontal"),
    layers.RandomRotation(0.1),
    layers.RandomContrast(0.1),
])
```

**설치:**
```bash
pip install tensorflow
```

#### Ultralytics YOLO
```python
from ultralytics import YOLO

# 모델 로드
model = YOLO('yolov8n.pt')

# 학습
results = model.train(data='coco8.yaml', epochs=100)

# 검증
metrics = model.val()

# 감지
results = model('image.jpg')
boxes = results[0].boxes
for box in boxes:
    x1, y1, x2, y2 = box.xyxy[0]
    conf = box.conf[0]
    cls = box.cls[0]

# 분할
model = YOLO('yolov8n-seg.pt')
results = model('image.jpg')
masks = results[0].masks

# 분류
model = YOLO('yolov8n-cls.pt')
results = model('image.jpg')
```

**설치:**
```bash
pip install ultralytics
```

#### MMDetection (OpenMMLab)
```python
from mmdet.apis import init_detector, inference_detector
from mmdet.utils import register_all_modules

register_all_modules()

# 탐지기 초기화
config = 'configs/faster_rcnn/faster_rcnn_r50_fpn_1x_coco.py'
checkpoint = 'https://download.openmmlab.com/mmdetection/v2.0/faster_rcnn/faster_rcnn_r50_fpn_1x_coco/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth'
model = init_detector(config, checkpoint, device='cuda:0')

# 추론
result = inference_detector(model, 'image.jpg')

# 시각화
model.show_result('image.jpg', result, out_file='result.jpg')
```

**설치:**
```bash
pip install mmdet
```

#### MMEngine & MMSegmentation
```python
# MMSegmentation 로 분할
from mmseg.apis import init_segmentor, inference_segmentor

config = 'configs/deeplabv3/deeplabv3_r50-d8_512x512_160k_cityscapes.py'
checkpoint = 'deeplabv3_r50-d8_512x512_160k_cityscapes-30a6d33a.pth'
model = init_segmentor(config, checkpoint, device='cuda:0')

# 추론
result = inference_segmentor(model, 'image.jpg')
```

**설치:**
```bash
pip install mmsegmentation
```

#### Detectron2
```python
from detectron2.config import get_cfg
from detectron2.engine import DefaultPredictor
from detectron2 import modeling
from detectron2.evaluation import COCOEvaluator, DatasetEvaluators

# 모델 구성 및 로드
cfg = get_cfg()
cfg.merge_from_file(model_zoo.get_config_file("COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml"))
cfg.MODEL.WEIGHTS = model_zoo.get_checkpoint_url("COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml")
cfg.MODEL.ROI_HEADS.SCORE_THRESH_TEST = 0.5
cfg.DATASETS.TEST = ("coco_2014_val",)

predictor = DefaultPredictor(cfg)

# 추론
outputs = predictor(image)
instances = outputs["instances"]
boxes = instances.pred_boxes.tensor.numpy()
scores = instances.scores.numpy()
classes = instances.pred_classes.numpy()
```

**설치:**
```bash
pip install detectron2
```

#### Segment Anything Model (SAM)
```python
import cv2
import numpy as np
from segment_anything import sam_model_registry, SamAutomaticMaskGenerator, SamPredictor

# 모델 로드
sam = sam_model_registry["vit_h"](checkpoint="sam_vit_h_4b8939.pth")
sam.to(device='cuda')

# 마스크 생성기 (자동 마스크)
mask_generator = SamAutomaticMaskGenerator(
    model=sam,
    points_per_side=32,
    pred_iou_thresh=0.88,
    stability_score_thresh=0.95,
    crop_n_layers=1,
)

masks = mask_generator.generate(image)

# 예측 모드
predictor = SamPredictor(sam)
predictor.set_image(image)

# 포인트 프롬프트
input_points = np.array([[100, 100], [200, 200]])
input_labels = np.array([1, 1])
masks, scores, logits = predictor.predict(
    point_coords=input_points,
    point_labels=input_labels,
    multimask_output=True,
)

# 박스 프롬프트
input_box = np.array([0, 0, 512, 512])
masks, scores, logits = predictor.predict(
    point_coords=None,
    point_labels=None,
    box=input_box,
    multimask_output=True,
)
```

**설치:**
```bash
pip install git+https://github.com/facebookresearch/segment-anything.git
```

## 📦 데이터세트

### 물체 탐지

**COCO (Common Objects in Context)**
- **URL**: https://cocodataset.org
- **이미지**: 330K 학습, 5K 검증
- **클래스**: 80 클래스
- **주석**: 바운딩 박스, 분할,关键点
- **주요 특징**: 현실 세계 장면, 다양한 물체

**PASCAL VOC**
- **URL**: http://host.robots.ox.ac.uk/pascal/VOC
- **이미지**: ~10K (연도별 상이)
- **클래스**: 20 클래스
- **연도**: 2005-2012 (VOC 2012 가 가장 일반적)
- **주요 특징**: 고전 벤치마크, 잘 정립됨

**OpenImages**
- **URL**: https://storage.googleapis.com/openimages/web/index.html
- **이미지**: 9M+ 이미지
- **클래스**: 600+ 클래스
- **주석**: 바운딩 박스, 분할
- **주요 특징**: 대규모, 다양한 카테고리

**DOTA (Datasets for Object DEtection in Aerial images)**
- **URL**: https://dota-v2.github.io
- **이미지**: 2,806 공중 이미지
- **물체**: 188K 물체, 15 클래스
- **주요 특징**: 공중 이미지, 방향 바운딩 박스

### 이미지 분할

**ADE20K**
- **URL**: http://sceneparsing.csail.mit.edu
- **이미지**: 20K 이미지
- **클래스**: 150 클래스
- **주석**: 의미론적 분할
- **주요 특징**: 다양한 장면, 상세 주석

**Cityscapes**
- **URL**: https://www.cityscapes-dataset.com
- **이미지**: 5K 세밀 주석, 20K 거친 주석
- **클래스**: 30 클래스
- **주요 특징**: 도시 거리 장면, 운전 중심

**PASCAL VOC 분할**
- **URL**: http://host.robots.ox.ac.uk/pascal/VOC
- **이미지**: 2,913 이미지
- **클래스**: 21 클래스 (배경 포함)
- **주요 특징**: 고전 벤치마크, 확립된 표준

**COCO 인스턴스 분할**
- **URL**: https://cocodataset.org
- **이미지**: 330K 학습
- **클래스**: 80 클래스
- **주석**: 인스턴스 분할
- **주요 특징**: 밀집 주석, 현실 세계

**LIP (Large-scale Person Internal Parsing)**
- **URL**: https://liangchunghao.github.io/LIP
- **이미지**: 50K 이미지
- **클래스**: 20 클래스
- **주요 특징**: 인간 신체 분할

### 광유동

**Sintel**
- **URL**: https://sintel.is-tue.mpg.de
- **시퀀스**: 33 학습, 32 테스트
- **주요 특징**: 합성, 가혹한 조건
- **지표**: EPE (End Point Error)

**KITTI**
- **URL**: http://www.cvlibs.net/datasets/kitti/eval_flow.php
- **이미지**: 200 학습, 194 테스트
- **주요 특징**: 현실 세계 운전 장면
- **지표**: EPE, 1-pixel

**Middlebury**
- **URL**: http://vision.middlebury.edu/flow/
- **데이터세트**: 여러 벤치마크 데이터세트
- **주요 특징**: 높은 정확도, 현실 세계
- **지표**: EPE, 5-pixel error

### 이미지 강화

**SOTS (Stacked Outdoor Test Sets)**
- **URL**: https://xiaoyu-deng.github.io/dncnn_dehaze/
- **데이터세트**: 안개, 안개, 비, 눈
- **주요 특징**: 강화를 위한 페어 데이터

**LOL (Low-Light)**
- **URL**: https://pengchenglab.github.io/lol/
- **이미지**: 500 학습, 100 테스트
- **주요 특징**: 저조도 강화
- **지표**: PSNR, SSIM

### 원격 감지

**UC Merced Land Use**
- **URL**: https://ist.ucmerced.edu/page/land-use-classification
- **이미지**: 2,100 공중 이미지
- **클래스**: 21 토지 이용 클래스
- **주요 특징**: 고전 원격 감지 데이터세트

**EuroSAT**
- **URL**: https://github.com/phelber/eurosat
- **이미지**: 27K 이미지
- **클래스**: 10 클래스
- **주요 특징**: 위성 이미지, Sentinel-2

**LEVIR-CD**
- **URL**: https://changecapture.github.io
- **이미지**: 637 이미지 페어
- **주요 특징**: 변화 탐지, 도시 지역

## 🤖 사전 학습 모델

### 물체 탐지

**COCO 사전 학습:**
- **YOLOv8**: ultralytics/yolov8n.pt, ultralytics/yolov8s.pt
- **Faster R-CNN**: COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml
- **DETR**: facebook/detr-resnet-50
- **Co-DETR**: mmdetection/configs/detectors

**커스텀 학습:**
```python
# Ultralytics
from ultralytics import YOLO
model = YOLO('yolov8n.pt')
model.train(data='custom.yaml', epochs=100, imgsz=640)

# MMDetection
# config/config.py 편집
# model = dict(
#     backbone=dict(pretrained='path/to/pretrained.pth')
# )
```

### 이미지 분류

**ImageNet 사전 학습:**
- **ResNet**: torchvision.models.resnet50(pretrained=True)
- **EfficientNet**: timm.create_model('efficientnet_b0', pretrained=True)
- **ViT**: timm.create_model('vit_base_patch16_224', pretrained=True)
- **ConvNeXt**: timm.create_model('convnext_base', pretrained=True)

### 의미론적 분할

**ADE20K 사전 학습:**
- **DeepLab v3+**: openmmlab/deeplabv3_r50-d8_512x512_160k_cityscapes.py
- **SegFormer**: open-mmlab/segformer/segformer_b4_512x512_160k_ade20k.py
- **U-Net**: 의료 이미징 특화

**Cityscapes 사전 학습:**
- **DeepLab v3+**: deeplabv3_r50-d8_512x512_160k_cityscapes.py
- **BiSeNet v2**: bisenetv2_cityscapes.py

### 광유동

**Sintel 사전 학습:**
- **RAFT**: nianticlabs/raft/raft-things.pt
- **PWC-Net**: deepmind/pwc-net
- **LiteFlowNet3**: nvidia/litelynet3

## 🧰 도구 & 유틸리티

### 모델 평가

**COCO 평가:**
```python
from pycocotools.coco import COCO
from pycocotools.cocoeval import COCOeval

# 주석 로드
coco_gt = COCO('annotations_instances_val2017.json')

# 탐지 로드
coco_dt = coco_gt.loadRes('results_instances_val2017.json')

# 평가
cocoeval = COCOeval(coco_gt, coco_dt, 'bbox')
cocoeval.evaluate()
cocoeval.accumulate()
cocoeval.summarize()
```

**성능 지표:**
```python
from torchvision.ops import nms, box_iou

# IoU 계산
def calculate_iou(box1, box2):
    intersection = box_intersection(box1, box2)
    union = box_union(box1, box2)
    return intersection / union

# 비최대값 억제
def apply_nms(boxes, scores, threshold=0.5):
    keep = nms(boxes, scores, threshold)
    return boxes[keep]

# 정밀도/재현율
def compute_metrics(preds, gts, iou_threshold=0.5):
    tp = sum(1 for pred, gt in zip(preds, gts) 
             if box_iou(pred['bbox'], gt['bbox']) > iou_threshold)
    fp = len(preds) - tp
    fn = len(gts) - tp
    
    precision = tp / (tp + fp)
    recall = tp / (tp + fn)
    f1 = 2 * precision * recall / (precision + recall)
    
    return {'precision': precision, 'recall': recall, 'f1': f1}
```

### 모델 압축

**양자화:**
```python
# PyTorch 양자화
import torch.quantization as quantization

model = models.resnet18()
model.fuse_model()
model.qconfig = quantization.get_default_qconfig('fbgemm')
prepared_model = quantization.prepare(model)

# 양자화 학습
prepared_model.train()
for data, target in train_loader:
    loss = loss_fn(prepared_model(data), target)
    loss.backward()
    optimizer.step()

# 양자화 변환
quantized_model = quantization.convert(prepared_model)
```

**프루닝:**
```python
# 채널 프루닝
from torch.nn.utils import prune

prune.l1_unstructured(model.layer2.conv1, name='weight', amount=0.5)
prune.remove(model.layer2.conv1, name='weight')
```

**지식 증류:**
```python
class DistillationLoss(nn.Module):
    def __init__(self, temperature=2.0):
        super().__init__()
        self.temperature = temperature
        self.criterion = nn.KLDivLoss(reduction='batchmean')
    
    def forward(self, student_logits, teacher_logits, targets):
        student = F.log_softmax(student_logits / self.temperature, dim=1)
        teacher = F.softmax(teacher_logits / self.temperature, dim=1)
        
        distillation_loss = self.criterion(student, teacher)
        teacher_loss = F.cross_entropy(student_logits, targets)
        
        return distillation_loss + teacher_loss
```

## 📊 벤치마크 & 리더보드

### 공식 리더보드

**COCO 리더보드:**
- **탐지**: http://cocodataset.org/#leaderboard
- **분할**: http://cocodataset.org/#leaderboard
- **추적**: http://cocodataset.org/#leaderboard

**PASCAL VOC 리더보드:**
- **URL**: http://host.robots.ox.ac.uk/pascal/VPC/voc2012
- **지표**: mAP, AP, mIoU

**KITTI 리더보드:**
- **탐지**: http://www.cvlibs.net/datasets/kitti/eval_boundingbox.php
- **광유동**: http://www.cvlibs.net/datasets/kitti/eval_flow.php
- **스테레오**: http://www.cvlibs.net/datasets/kitti/eval_stereo_flow.php

### 커뮤니티 벤치마크

**PapersWithCode:**
- **URL**: https://paperswithcode.com/sota
- **카테고리**: 탐지, 분할, 분류
- **업데이트**: 새로운 SOTA 방법으로 정기 업데이트

**MMLab 리더보드:**
- **URL**: https://openmmlab.com/app
- **메서드**: OpenMMLab 구현
- **지표**: 표준화된 벤치마크

## 🚀 배포

### ONNX 내보내기
```python
import onnx
from torchvision.models import detection

# 모델 로드
model = detection.faster_rcnn_resnet50_fpn(pretrained=True)
model.eval()

# ONNX 로 내보내기
example = torch.rand(1, 3, 640, 640)
torch.onnx.export(
    model,
    example,
    'faster_rcnn.onnx',
    export_params=True,
    opset_version=11,
    do_constant_folding=True,
    input_names=['input'],
    output_names=['output'],
    dynamic_axes={'input': {0: 'batch_size'}, 'output': {0: 'batch_size'}}
)

# ONNX 모델 검증
onnx_model = onnx.load('faster_rcnn.onnx')
onnx.checker.check_model(onnx_model)
```

### TensorRT 최적화
```python
import tensorrt as trt
import torch

# ONNX 를 TensorRT 로 변환
logger = trt.Logger(trt.Logger.WARNING)
network = parser.parse_onnx_file('model.onnx')
builder = trt.Builder(logger)
config = builder.create_builder_config()
config.max_workspace_size = 1 << 30

plan = builder.build_cuda_engine(network)
with open('model.engine', 'wb') as f:
    f.write(bytes(plan.serialize()))
```

### 모바일 배포

**TensorFlow Lite:**
```python
import tensorflow as tf

# TFLite 로 변환
converter = tf.lite.TFLiteConverter.from_keras_model(model)
converter.optimizations = [tf.lite.Optimize.DEFAULT]
tflite_model = converter.convert()

with open('model.tflite', 'wb') as f:
    f.write(tflite_model)
```

**Core ML (iOS):**
```python
import coremltools as ct

# Core ML 로 변환
mlmodel = ct.convert(model, input_names=['image'], 
                     output_names=['detections'])
mlmodel.save('model.mlmodel')
```

## 🎓 학습 리소스

### 과정

**Stanford CS231n:**
- **URL**: https://cs231n.stanford.edu
- **주제**: 시각 인식을 위한 CNN
- **레벨**: 고급

**MIT 6.S191:**
- **URL**: https://www.youtube.com/playlist?list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI
- **주제**: 컴퓨터 비전을 위한 딥러닝
- **레벨**: 중급

**Fast.ai:**
- **URL**: https://course.fast.ai
- **주제**: 실용 딥러닝
- **레벨**: 모든 레벨

### 책

**"Computer Vision: Algorithms and Applications" (Szeliski)**
- **URL**: https://szeliski.org/Book/
- **레벨**: 종합적, 학술적

**"Deep Learning for Computer Vision" (Rajalingappaa Shanmugamani)**
- **URL**: https://www.packtpub.com
- **레벨**: 실용적, 구현 중심

### 튜토리얼

**PyTorch 튜토리얼:**
- **URL**: https://pytorch.org/tutorials/
- **주제**: 물체 탐지, 분할, GANs

**TensorFlow 튜토리얼:**
- **URL**: https://www.tensorflow.org/tutorials
- **주제**: CNNs, 탐지, 분할

## 🔗 온라인 리소스

### GitHub 저장소

**물체 탐지:**
- **ultralytics/yolov8**: 최신 YOLO 구현
- **open-mmlab/mmdetection**: MMDetection toolkit
- **facebookresearch/detectron2**: Facebook 탐지 프레임워크

**분할:**
- **open-mmlab/mmsegmentation**: MMSegmentation toolkit
- **lukemelas/EfficientNet-PyTorch**: EfficientNet 변형
- **cs-cv-robot/Segment-Anything**: SAM 구현

**딥러닝:**
- **pytorch/pytorch**: PyTorch 프레임워크
- **tensorflow/tensorflow**: TensorFlow 프레임워크
- **keras-team/keras**: Keras 라이브러리

### 커뮤니티

**Discord:**
- **PyTorch Discord**: https://discord.com/invite/torch
- **Computer Vision**: https://discord.gg/vision

**Reddit:**
- **r/computervision**: 일반 CV 토론
- **r/deeplearning**: 딥러닝 주제
- **r/MachineLearning**: ML 연구

### 논문

**arXiv:**
- **URL**: https://arxiv.org/list/cs.CV/recent
- **카테고리**: 모든 컴퓨터 비전 논문

**Papers With Code:**
- **URL**: https://paperswithcode.com
- **기능**: 코드 구현 링크된 논문
- **SOTA**: state-of-the-art 결과 추적

## 📝 모범 사례

### 버전 관리
```python
# conda 환경 사용
conda create -n cv_env python=3.9
conda activate cv_env

# 의존성 고정
pip install opencv-python==4.8.0.74
pip install torch==2.0.0
pip install torchvision==0.15.0
pip freeze > requirements.txt
```

### 코드 조직
```
project/
├── configs/           # 구성 파일
├── data/              # 데이터세트
├── models/            # 모델 정의
├── utils/             # 유틸리티 함수
├── train.py           # 학습 스크립트
├── evaluate.py        # 평가
├── inference.py       # 추론
├── requirements.txt   # 의존성
├── README.md          # 문서화
└── experiments/       # 결과 및 로그
```

### 디버깅

**모델 디버깅:**
```python
import torch.nn as nn

class DebuggableModule(nn.Module):
    def forward(self, x):
        print(f"입력 크기: {x.shape}")
        x = super().forward(x)
        print(f"출력 크기: {x.shape}")
        return x

# 레이어 출력 디버깅에 사용
```

**성능 프로파일링:**
```python
import torch.profiler

with torch.profiler.profile(
    activities=[torch.profiler.ProfilerActivity.CPU,
                torch.profiler.ProfilerActivity.CUDA],
    schedule=torch.profiler.schedule(wait=1, warmup=1, active=3),
    record_shapes=True
) as prof:
    for data, target in train_loader:
        output = model(data)
        loss = criterion(output, target)
        loss.backward()
        optimizer.step()
        
        prof.step()

print(prof.key_averages().table(sort_by="cpu_time_total"))
```

---

*문서 업데이트: 2026 년 3 월*
*2020-2024 년 최신 도구 및 리소스 포함*
