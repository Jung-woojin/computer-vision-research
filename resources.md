# Resources & Implementations

Comprehensive collection of code implementations, datasets, pretrained models, and tools for computer vision.

## 🔧 Code Implementations

### Popular Computer Vision Libraries

#### OpenCV
```python
import cv2
import numpy as np

# Edge Detection
edges = cv2.Canny(image, 100, 200)

# Feature Detection
orb = cv2.ORB_create()
keypoints, descriptors = orb.detectAndCompute(image, None)

# Object Detection
net = cv2.dnn.readNetFromCaffe('deploy.prototxt', 'res10.caffemodel')
net.setInput(cv2.dnn.blobFromImage(image))
detections = net.forward()

# Optical Flow
flow = cv2.calcOpticalFlowFarneback(prev_frame, next_frame, None, 0.5, 3, 15, 2, 7, 1.2, 0)
```

**Installation:**
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

# Pre-trained models
model = models.resnet50(pretrained=True)

# Object Detection
model = detection.fasterrcnn_resnet50_fpn(pretrained=True)

# Segmentation
model = models.segmentation.deeplabv3_resnet50(pretrained=True)

# Data loading
from torchvision import transforms
transform = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
])
```

**Installation:**
```bash
pip install torch torchvision
```

#### TensorFlow/Keras
```python
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import models, layers

# Load pre-trained model
model = tf.keras.applications.ResNet50(weights='imagenet', include_top=False)

# Object Detection
from tensorflow.keras.applications import MobileNetV2
model = MobileNetV2(weights='imagenet', include_top=False)

# Segmentation
from keras_segmentation.modelsdeeplab import DeepLabV3

# Data augmentation
data_augmentation = keras.Sequential([
    layers.RandomFlip("horizontal"),
    layers.RandomRotation(0.1),
    layers.RandomContrast(0.1),
])
```

**Installation:**
```bash
pip install tensorflow
```

#### Ultralytics YOLO
```python
from ultralytics import YOLO

# Load model
model = YOLO('yolov8n.pt')

# Train
results = model.train(data='coco8.yaml', epochs=100)

# Validate
metrics = model.val()

# Detect
results = model('image.jpg')
boxes = results[0].boxes
for box in boxes:
    x1, y1, x2, y2 = box.xyxy[0]
    conf = box.conf[0]
    cls = box.cls[0]

# Segment
model = YOLO('yolov8n-seg.pt')
results = model('image.jpg')
masks = results[0].masks

# Classification
model = YOLO('yolov8n-cls.pt')
results = model('image.jpg')
```

**Installation:**
```bash
pip install ultralytics
```

#### MMDetection (OpenMMLab)
```python
from mmdet.apis import init_detector, inference_detector
from mmdet.utils import register_all_modules

register_all_modules()

# Initialize detector
config = 'configs/faster_rcnn/faster_rcnn_r50_fpn_1x_coco.py'
checkpoint = 'https://download.openmmlab.com/mmdetection/v2.0/faster_rcnn/faster_rcnn_r50_fpn_1x_coco/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth'
model = init_detector(config, checkpoint, device='cuda:0')

# Inference
result = inference_detector(model, 'image.jpg')

# Visualize
model.show_result('image.jpg', result, out_file='result.jpg')
```

**Installation:**
```bash
pip install mmdet
```

#### MMEngine & MMSegmentation
```python
# Segmentation with MMSegmentation
from mmseg.apis import init_segmentor, inference_segmentor

config = 'configs/deeplabv3/deeplabv3_r50-d8_512x512_160k_cityscapes.py'
checkpoint = 'deeplabv3_r50-d8_512x512_160k_cityscapes-30a6d33a.pth'
model = init_segmentor(config, checkpoint, device='cuda:0')

# Inference
result = inference_segmentor(model, 'image.jpg')
```

**Installation:**
```bash
pip install mmsegmentation
```

#### Detectron2
```python
from detectron2.config import get_cfg
from detectron2.engine import DefaultPredictor
from detectron2 import modeling
from detectron2.evaluation import COCOEvaluator, DatasetEvaluators

# Configure and load model
cfg = get_cfg()
cfg.merge_from_file(model_zoo.get_config_file("COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml"))
cfg.MODEL.WEIGHTS = model_zoo.get_checkpoint_url("COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml")
cfg.MODEL.ROI_HEADS.SCORE_THRESH_TEST = 0.5
cfg.DATASETS.TEST = ("coco_2014_val",)

predictor = DefaultPredictor(cfg)

# Inference
outputs = predictor(image)
instances = outputs["instances"]
boxes = instances.pred_boxes.tensor.numpy()
scores = instances.scores.numpy()
classes = instances.pred_classes.numpy()
```

**Installation:**
```bash
pip install detectron2
```

#### Segment Anything Model (SAM)
```python
import cv2
import numpy as np
from segment_anything import sam_model_registry, SamAutomaticMaskGenerator, SamPredictor

# Load model
sam = sam_model_registry["vit_h"](checkpoint="sam_vit_h_4b8939.pth")
sam.to(device='cuda')

# Mask Generator (automatic masks)
mask_generator = SamAutomaticMaskGenerator(
    model=sam,
    points_per_side=32,
    pred_iou_thresh=0.88,
    stability_score_thresh=0.95,
    crop_n_layers=1,
)

masks = mask_generator.generate(image)

# Predictive mode
predictor = SamPredictor(sam)
predictor.set_image(image)

# Point prompts
input_points = np.array([[100, 100], [200, 200]])
input_labels = np.array([1, 1])
masks, scores, logits = predictor.predict(
    point_coords=input_points,
    point_labels=input_labels,
    multimask_output=True,
)

# Box prompts
input_box = np.array([0, 0, 512, 512])
masks, scores, logits = predictor.predict(
    point_coords=None,
    point_labels=None,
    box=input_box,
    multimask_output=True,
)
```

**Installation:**
```bash
pip install git+https://github.com/facebookresearch/segment-anything.git
```

## 📦 Datasets

### Object Detection

**COCO (Common Objects in Context)**
- **URL**: https://cocodataset.org
- **Images**: 330K training, 5K validation
- **Classes**: 80 classes
- **Annotations**: Bounding boxes, segmentation, keypoints
- **Key Features**: Real-world scenes, diverse objects

**PASCAL VOC**
- **URL**: http://host.robots.ox.ac.uk/pascal/VOC
- **Images**: ~10K (varies by year)
- **Classes**: 20 classes
- **Years**: 2005-2012 (VOC 2012 most common)
- **Key Features**: Classic benchmark, well-established

**OpenImages**
- **URL**: https://storage.googleapis.com/openimages/web/index.html
- **Images**: 9M+ images
- **Classes**: 600+ classes
- **Annotations**: Bounding boxes, segmentation
- **Key Features**: Large-scale, diverse categories

**DOTA (Datasets for Object DEtection in Aerial images)**
- **URL**: https://dota-v2.github.io
- **Images**: 2,806 aerial images
- **Objects**: 188K objects, 15 classes
- **Key Features**: Aerial imagery, oriented bounding boxes

### Image Segmentation

**ADE20K**
- **URL**: http://sceneparsing.csail.mit.edu
- **Images**: 20K images
- **Classes**: 150 classes
- **Annotations**: Semantic segmentation
- **Key Features**: Diverse scenes, detailed annotations

**Cityscapes**
- **URL**: https://www.cityscapes-dataset.com
- **Images**: 5K finely annotated, 20K coarsely annotated
- **Classes**: 30 classes
- **Key Features**: Urban street scenes, driving focus

**PASCAL VOC Segmentation**
- **URL**: http://host.robots.ox.ac.uk/pascal/VOC
- **Images**: 2,913 images
- **Classes**: 21 classes (including background)
- **Key Features**: Classic benchmark, established standard

**COCO Instance Segmentation**
- **URL**: https://cocodataset.org
- **Images**: 330K training
- **Classes**: 80 classes
- **Annotations**: Instance segmentation
- **Key Features**: Dense annotations, real-world

**LIP (Large-scale Person Internal Parsing)**
- **URL**: https://liangchunghao.github.io/LIP
- **Images**: 50K images
- **Classes**: 20 classes
- **Key Features**: Human body parsing

### Optical Flow

**Sintel**
- **URL**: https://sintel.is-tue.mpg.de
- **Sequences**: 33 training, 32 testing
- **Key Features**: Synthetic, challenging conditions
- **Metrics**: EPE (End Point Error)

**KITTI**
- **URL**: http://www.cvlibs.net/datasets/kitti/eval_flow.php
- **Images**: 200 training, 194 testing
- **Key Features**: Real-world driving scenes
- **Metrics**: EPE, 1-pixel

**Middlebury**
- **URL**: http://vision.middlebury.edu/flow/
- **Datasets**: Multiple benchmark datasets
- **Key Features**: High accuracy, real-world
- **Metrics**: EPE, 5-pixel error

### Image Enhancement

**SOTS (Stacked Outdoor Test Sets)**
- **URL**: https://xiaoyu-deng.github.io/dncnn_dehaze/
- **Datasets**: Haze, fog, rain, snow
- **Key Features**: Paired data for enhancement

**LOL (Low-Light)**
- **URL**: https://pengchenglab.github.io/lol/
- **Images**: 500 training, 100 testing
- **Key Features**: Low-light enhancement
- **Metrics**: PSNR, SSIM

### Remote Sensing

**UC Merced Land Use**
- **URL**: https://ist.ucmerced.edu/page/land-use-classification
- **Images**: 2,100 aerial images
- **Classes**: 21 land use classes
- **Key Features**: Classic remote sensing dataset

**EuroSAT**
- **URL**: https://github.com/phelber/eurosat
- **Images**: 27K images
- **Classes**: 10 classes
- **Key Features**: Satellite imagery, Sentinel-2

**LEVIR-CD**
- **URL**: https://changecapture.github.io
- **Images**: 637 image pairs
- **Key Features**: Change detection, urban areas

## 🤖 Pretrained Models

### Object Detection

**COCO Pretrained:**
- **YOLOv8**: ultralytics/yolov8n.pt, ultralytics/yolov8s.pt
- **Faster R-CNN**: COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml
- **DETR**: facebook/detr-resnet-50
- **Co-DETR**: mmdetection/configs/detectors

**Custom Training:**
```python
# Ultralytics
from ultralytics import YOLO
model = YOLO('yolov8n.pt')
model.train(data='custom.yaml', epochs=100, imgsz=640)

# MMDetection
# Edit config/config.py
# model = dict(
#     backbone=dict(pretrained='path/to/pretrained.pth')
# )
```

### Image Classification

**ImageNet Pretrained:**
- **ResNet**: torchvision.models.resnet50(pretrained=True)
- **EfficientNet**: timm.create_model('efficientnet_b0', pretrained=True)
- **ViT**: timm.create_model('vit_base_patch16_224', pretrained=True)
- **ConvNeXt**: timm.create_model('convnext_base', pretrained=True)

### Semantic Segmentation

**ADE20K Pretrained:**
- **DeepLab v3+**: openmmlab/deeplabv3_r50-d8_512x512_160k_cityscapes.py
- **SegFormer**: open-mmlab/segformer/segformer_b4_512x512_160k_ade20k.py
- **U-Net**: Medical imaging specialized

**Cityscapes Pretrained:**
- **DeepLab v3+**: deeplabv3_r50-d8_512x512_160k_cityscapes.py
- **BiSeNet v2**: bisenetv2_cityscapes.py

### Optical Flow

**Sintel Pretrained:**
- **RAFT**: nianticlabs/raft/raft-things.pt
- **PWC-Net**: deepmind/pwc-net
- **LiteFlowNet3**: nvidia/litelynet3

## 🧰 Tools & Utilities

### Model Evaluation

**COCO Evaluation:**
```python
from pycocotools.coco import COCO
from pycocotools.cocoeval import COCOeval

# Load annotations
coco_gt = COCO('annotations_instances_val2017.json')

# Load detections
coco_dt = coco_gt.loadRes('results_instances_val2017.json')

# Evaluation
cocoeval = COCOeval(coco_gt, coco_dt, 'bbox')
cocoeval.evaluate()
cocoeval.accumulate()
cocoeval.summarize()
```

**Performance Metrics:**
```python
from torchvision.ops import nms, box_iou

# Calculate IoU
def calculate_iou(box1, box2):
    intersection = box_intersection(box1, box2)
    union = box_union(box1, box2)
    return intersection / union

# Non-maximum suppression
def apply_nms(boxes, scores, threshold=0.5):
    keep = nms(boxes, scores, threshold)
    return boxes[keep]

# Precision/Recall
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

### Model Compression

**Quantization:**
```python
# PyTorch Quantization
import torch.quantization as quantization

model = models.resnet18()
model.fuse_model()
model.qconfig = quantization.get_default_qconfig('fbgemm')
prepared_model = quantization.prepare(model)

# Quantization training
prepared_model.train()
for data, target in train_loader:
    loss = loss_fn(prepared_model(data), target)
    loss.backward()
    optimizer.step()

# Convert to quantized
quantized_model = quantization.convert(prepared_model)
```

**Pruning:**
```python
# Channel pruning
from torch.nn.utils import prune

prune.l1_unstructured(model.layer2.conv1, name='weight', amount=0.5)
prune.remove(model.layer2.conv1, name='weight')
```

**Knowledge Distillation:**
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

## 📊 Benchmarks & Leaderboards

### Official Leaderboards

**COCO Leaderboard:**
- **Detection**: http://cocodataset.org/#leaderboard
- **Segmentation**: http://cocodataset.org/#leaderboard
- **Detection**: http://cocodataset.org/#leaderboard

**PASCAL VOC Leaderboard:**
- **URL**: http://host.robots.ox.ac.uk/pascal/VPC/voc2012
- **Metrics**: mAP, AP, mIoU

**KITTI Leaderboard:**
- **Detection**: http://www.cvlibs.net/datasets/kitti/eval_boundingbox.php
- **Flow**: http://www.cvlibs.net/datasets/kitti/eval_flow.php
- **Stereo**: http://www.cvlibs.net/datasets/kitti/eval_stereo_flow.php

### Community Benchmarks

**PapersWithCode:**
- **URL**: https://paperswithcode.com/sota
- **Categories**: Detection, Segmentation, Classification
- **Updates**: Regularly updated with new SOTA methods

**MMLab Leaderboard:**
- **URL**: https://openmmlab.com/app
- **Methods**: OpenMMLab implementations
- **Metrics**: Standardized benchmarks

## 🚀 Deployment

### ONNX Export
```python
import onnx
from torchvision.models import detection

# Load model
model = detection.faster_rcnn_resnet50_fpn(pretrained=True)
model.eval()

# Export to ONNX
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

# Validate ONNX model
onnx_model = onnx.load('faster_rcnn.onnx')
onnx.checker.check_model(onnx_model)
```

### TensorRT Optimization
```python
import tensorrt as trt
import torch

# Convert ONNX to TensorRT
logger = trt.Logger(trt.Logger.WARNING)
network = parser.parse_onnx_file('model.onnx')
builder = trt.Builder(logger)
config = builder.create_builder_config()
config.max_workspace_size = 1 << 30

plan = builder.build_cuda_engine(network)
with open('model.engine', 'wb') as f:
    f.write(bytes(plan.serialize()))
```

### Mobile Deployment

**TensorFlow Lite:**
```python
import tensorflow as tf

# Convert to TFLite
converter = tf.lite.TFLiteConverter.from_keras_model(model)
converter.optimizations = [tf.lite.Optimize.DEFAULT]
tflite_model = converter.convert()

with open('model.tflite', 'wb') as f:
    f.write(tflite_model)
```

**Core ML (iOS):**
```python
import coremltools as ct

# Convert to Core ML
mlmodel = ct.convert(model, input_names=['image'], 
                     output_names=['detections'])
mlmodel.save('model.mlmodel')
```

## 🎓 Learning Resources

### Courses

**Stanford CS231n:**
- **URL**: https://cs231n.stanford.edu
- **Topic**: CNN for Visual Recognition
- **Level**: Advanced

**MIT 6.S191:**
- **URL**: https://www.youtube.com/playlist?list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI
- **Topic**: Deep Learning for Computer Vision
- **Level**: Intermediate

**Fast.ai:**
- **URL**: https://course.fast.ai
- **Topic**: Practical Deep Learning
- **Level**: All levels

### Books

**"Computer Vision: Algorithms and Applications" (Szeliski)**
- **URL**: https://szeliski.org/Book/
- **Level**: Comprehensive, academic

**"Deep Learning for Computer Vision" (Rajalingappaa Shanmugamani)**
- **URL**: https://www.packtpub.com
- **Level**: Practical, implementation-focused

### Tutorials

**PyTorch Tutorials:**
- **URL**: https://pytorch.org/tutorials/
- **Topics**: Object detection, segmentation, GANs

**TensorFlow Tutorials:**
- **URL**: https://www.tensorflow.org/tutorials
- **Topics**: CNNs, detection, segmentation

## 🔗 Online Resources

### GitHub Repositories

**Object Detection:**
- **ultralytics/yolov8**: Latest YOLO implementation
- **open-mmlab/mmdetection**: MMDetection toolkit
- **facebookresearch/detectron2**: Facebook's detection framework

**Segmentation:**
- **open-mmlab/mmsegmentation**: MMSegmentation toolkit
- **lukemelas/EfficientNet-PyTorch**: EfficientNet variants
- **cs-cv-robot/Segment-Anything**: SAM implementation

**Deep Learning:**
- **pytorch/pytorch**: PyTorch framework
- **tensorflow/tensorflow**: TensorFlow framework
- **keras-team/keras**: Keras library

### Communities

**Discord:**
- **PyTorch Discord**: https://discord.com/invite/torch
- **Computer Vision**: https://discord.gg/vision

**Reddit:**
- **r/computervision**: General CV discussions
- **r/deeplearning**: Deep learning topics
- **r/MachineLearning**: ML research

### Papers

**arXiv:**
- **URL**: https://arxiv.org/list/cs.CV/recent
- **Categories**: All computer vision papers

**Papers With Code:**
- **URL**: https://paperswithcode.com
- **Features**: Papers linked to code implementations
- **SOTA**: State-of-the-art results tracking

## 📝 Best Practices

### Version Control
```python
# Use conda environments
conda create -n cv_env python=3.9
conda activate cv_env

# Pin dependencies
pip install opencv-python==4.8.0.74
pip install torch==2.0.0
pip install torchvision==0.15.0
pip freeze > requirements.txt
```

### Code Organization
```
project/
├── configs/           # Configuration files
├── data/              # Datasets
├── models/            # Model definitions
├── utils/             # Utility functions
├── train.py           # Training script
├── evaluate.py        # Evaluation
├── inference.py       # Inference
├── requirements.txt   # Dependencies
├── README.md          # Documentation
└── experiments/       # Results and logs
```

### Debugging

**Model Debugging:**
```python
import torch.nn as nn

class DebuggableModule(nn.Module):
    def forward(self, x):
        print(f"Input shape: {x.shape}")
        x = super().forward(x)
        print(f"Output shape: {x.shape}")
        return x

# Use for debugging layer outputs
```

**Performance Profiling:**
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

*Document updated: March 2026*
*Includes latest tools and resources from 2020-2024*
