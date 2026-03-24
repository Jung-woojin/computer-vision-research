# Remote Sensing & Maritime Vision (원격탐사 & 해양 비전)

원격탐사, 항공 영상, 해양 애플리케이션을 위한 컴퓨터 비전은 고유한 요구사항과 도전을 가집니다. 이 문서는 위성, 드론, 선박 감지를 위한 특수 기법을 다룹니다.

## 📚 개요

**원격탐사 애플리케이션:**
- **위성 영상**: 지구 관측
- **항공 영상**: 드론 감시, 매핑
- **해양**: 선박 감지, 항구 모니터링
- **농업**: 작물 모니터링, 토지 이용
- **재난 대응**: 홍수, 화재 평가
- **도시 계획**: 인프라 개발

**주요 도전 과제:**
- **소형 객체**: 선박, 차량이 매우 작게 보임
- **다중 스케일**: 다른 해상도 (0.3m - 1km/pixel)
- **비등방성**: 다른 방향의 객체
- **구름**: 가림, 품질 변동
- **실시간**: 안전 애플리케이션을 위한 시기적 감지

## 🔷 Satellite Imagery

### Image Characteristics

**Resolution Types:**
- **High resolution**: < 1m/pixel (e.g., WorldView-3, 0.31m)
- **Medium resolution**: 1-10m/pixel (e.g., Sentinel-2, 10m)
- **Low resolution**: > 10m/pixel (e.g., MODIS, 250m)

**Spectral Bands:**
- **Visible**: RGB, multispectral
- **Near-infrared**: Vegetation analysis
- **Short-wave infrared**: Soil, mineral analysis
- **Thermal**: Temperature measurements
- **Hyperspectral**: Hundreds of spectral bands

### Small Object Detection

**Key Problem:** Small objects (ships, cars) are often < 32×32 pixels

**YOLOv5/v8 for Small Objects:**
```python
class YOLOv8SmallOptimized:
    def __init__(self):
        super().__init__()
        # High-resolution input
        self.input_size = 1280
        
        # Add small object detection layer
        self.p2_layer = nn.Conv2d(256, 128, 3, stride=2, padding=1)
        
        # Feature pyramid for multiple scales
        self.fpn = FeaturePyramid(
            channels=[256, 512, 1024],
            small_object_focus=True
        )
    
    def forward(self, x):
        # Preserve high resolution
        features = self.backbone(x)
        
        # Enhanced small object features
        p2 = self.p2_layer(features[0])
        features = self.fpn(features, p2)
        
        predictions = self.head(features, scale='small')
        return predictions
```

**Key Techniques:**
1. **High-resolution input**: 1280×1280
2. **Additional detection layer**: P2 layer at higher resolution
3. **Crop-based processing**: Divide large images
4. **Multi-scale training**: Train on various resolutions

**Performance on Satellite Small Objects:**

| 방법 | 입력 크기 | 소형 객체 mAP | 총 mAP |
|----|--|----|-----|
| YOLOv8-standard | 640 | 38.2% | 62.5% |
| YOLOv8-small | 1280 | 45.8% | 64.2% |
| YOLOv8-tiny | 1280 | 52.3% | 65.1% |

### Satellite-Specific Architectures

#### Detecting Ships in Satellite Images

**Ship Detection Challenges:**
- **Small size**: Ships appear tiny
- **Clutter**: Waves, clouds, reflections
- **Different sizes**: From small boats to large vessels
- **Orientation**: Rotated bounding boxes

**Rotated Object Detection:**

```python
class RotatedYOLO(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = ResNet50()
        self.rotation_head = RotatedDetectionHead()
    
    def forward(self, x):
        features = self.backbone(x)
        rotations = self.rotation_head(features)
        return rotations  # [cx, cy, w, h, θ]
```

**GWD (Geometric Wasserstein Distance) Loss:**
```python
def rotated_iou(pred, target):
    """Calculate IoU for rotated bounding boxes"""
    pred_poly = box_to_poly(pred)
    target_poly = box_to_poly(target)
    
    iou, _ = rotated_intersection(pred_poly, target_poly)
    return iou

def gwd_loss(pred, target):
    """Geometric Wasserstein Distance for rotation"""
    pred_box = pred[:, :5]
    target_box = target[:, :5]
    
    # Convert to point clouds
    pred_points = box_to_points(pred_box)
    target_points = box_to_points(target_box)
    
    # Calculate Wasserstein distance
    dist = wasserstein_distance(pred_points, target_points)
    return dist
```

#### Land Use Classification

**CNN-Based Classification:**
```python
class LandUseClassifier(nn.Module):
    def __init__(self, num_classes=21):
        super().__init__()
        self.backbone = ResNet101(pretrained=True)
        self.fc = nn.Sequential(
            nn.Linear(2048, 1024),
            nn.ReLU(),
            nn.Dropout(0.5),
            nn.Linear(1024, num_classes)
        )
    
    def forward(self, x):
        features = self.backbone(x)
        features = F.avg_pool2d(features, 7)
        features = features.view(features.size(0), -1)
        return self.fc(features)
```

**Performance on UC Merced Dataset:**
- **mAP: 95.8%** (16 land use classes)
- **Overall accuracy: 96.2%**

**Multi-Task Learning:**
```python
class MultiTaskRemoteSensing(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = ResNet50()
        
        # Object detection head
        self.detector = ObjectDetectionHead()
        
        # Land use classification head
        self.classifier = LandUseClassifier()
        
        # Change detection head
        self.changer = ChangeDetectionHead()
```

**Advantages:**
- **Shared features** across tasks
- **Regularization** through multi-task learning
- **Efficient**: Single forward pass

## 🛳️ Maritime Vision

### Ship Detection (선박 감지)

**Key Datasets:**
- **DOTA**: Aerial 이미지 객체 감지
- **SARD**: 선박 항공 레이다 감지
- **HRSID**: 고해상도 선박 이미지
- **SSDD**: 선박 감지 데이터셋

**HRSID Dataset:**
- **17,000+ ships**: 17,000 개 이상
- **8 ship categories**: 8 개 카테고리
- **High resolution**: 고해상도

**YOLO for Ships:**
```python
class ShipDetectorYOLO:
    def __init__(self):
        # YOLOv8 for ship detection
        self.model = YOLO('yolov8n.pt')
        
        # Optimize for ships
        self.class_weights = torch.tensor([
            1.0, 1.2, 1.5, 2.0,  1.0, 1.0, 1.0, 1.0
        ])  # Larger ships harder to detect
        
        # Rotated bounding boxes
        self.use_rotation = True
```

**Performance on HRSID:**

| 방법 | mAP@0.5 | mAP@0.5:0.95 | 지연 |
|---|-----|----|--|
| Faster R-CNN | 82.5% | 68.2% | 120ms |
| YOLOv5 | 85.2% | 72.1% | 45ms |
| YOLOv8 | 86.8% | 74.3% | 38ms |
| Rotated YOLO | 88.1% | 76.2% | 52ms |
| Co-DETR | 89.2% | 77.8% | 85ms |

**Specialized Ship Detection:**

**Ship-RNet:**
- **Deep learning** for ship detection
- **Multi-scale** features
- **Clutter removal**: Waves, islands

**Performance:**
- **Precision: 92.3%**
- **Recall: 89.7%**

**Maritime Object Detection Pipeline:**
```python
class MaritimeDetection:
    def __init__(self):
        # Multi-task model
        self.ship_detector = ShipYOLO()
        self.port_detector = PortYOLO()
        self.ais_classifier = AISClassifier()  # AIS = Automatic Identification System
        
        # AIS fusion for confirmation
        self.ais_fusion = AISConfusionModule()
    
    def detect(self, image, ais_data=None):
        # Primary detection
        ships = self.ship_detector(image)
        ports = self.port_detector(image)
        
        # AIS fusion if available
        if ais_data:
            ships = self.ais_fusion(ships, ais_data)
        
        return {
            'ships': ships,
            'ports': ports,
            'confidence': ships.confidence
        }
```

### Port Monitoring

**Port-specific Detection:**
```python
class PortMonitor:
    def __init__(self):
        # Port elements
        self.cranes = CraneDetector()
        self.containers = ContainerDetector()
        self.vehicles = VehicleDetector()
        self.ships = ShipDetector()
        
        # Activity analysis
        self.traffic_flow = TrafficAnalyzer()
        self.work_zones = ZoneAnalyzer()
    
    def monitor(self, image):
        objects = self.detect_all(image)
        activity = self.analyze_activity(objects)
        return activity
```

**Container Counting:**
- **Count containers** in port yards
- **Stack identification**: Multiple layers
- **Damage detection**: Visual inspection

**Performance:**
- **Counting accuracy: 97.5%**
- **Stack height estimation: ±0.5 stacks**

## 🚁 Aerial Imagery

### Drone-based Vision

**Drone Characteristics:**
- **Variable altitude**: 50-500m
- **Different resolutions**: Depends on altitude
- **Motion blur**: Drone movement
- **Varying illumination**: Time of day, shadows

**Drone Object Detection:**

```python
class DroneDetection:
    def __init__(self):
        # High-speed detection
        self.detector = FastYOLO()
        
        # Multi-camera fusion
        self.cam_fusion = CameraFusionModule()
        
        # Real-time tracking
        self.tracker = ByteTrack()
    
    def process(self, frame, metadata):
        # Compensate for drone motion
        stabilized = self.stabilize(frame, metadata)
        
        # Detect and track
        detections = self.detector(stabilized)
        tracks = self.tracker.update(detections)
        
        return tracks
```

**Key Considerations:**
1. **Real-time processing**: Limited compute on drone
2. **Low power consumption**: Battery life
3. **Robustness**: Wind, vibration, lighting
4. **Edge computing**: On-board processing

### Aerial Object Detection Benchmarks

**DOTA Dataset:**
- **2806 images**
- **188,040 objects**
- **15 classes**: Aircraft, bridge, vehicle, etc.

**Performance on DOTA:**

| Method | mAP | Latency |
|--------|-----|-----|----|
| Faster R-CNN | 53.5% | 180ms |
| Cascade R-CNN | 56.2% | 220ms |
| YOLOv5 | 58.3% | 55ms |
| YOLOv8 | 60.5% | 48ms |
| RT-DETR | 62.1% | 62ms |
| Co-DETR | 63.8% | 75ms |

**Aerial Object Detection Specialization:**

**Oriented R-CNN:**
- **Rotated bounding boxes** for aerial objects
- **Better accuracy** for oriented objects
- **Complexity**: Higher computation

**Performance:**
- **mAP: 65.2%** (DOTA)
- **Latency: 95ms**

## 🔬 Advanced Remote Sensing Methods

### Change Detection in Satellite Images

**Land Cover Change Detection:**
```python
class ChangeDetector(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = ResNet50(pretrained=True)
        
        # Change detection head
        self.change_head = nn.Sequential(
            nn.Conv2d(2048, 1024, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(1024, 512, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(512, 2, 1)  # Change / No change
        )
    
    def forward(self, t1, t2):
        f1 = self.backbone(t1)
        f2 = self.backbone(t2)
        
        # Concatenate temporal features
        concat = torch.cat([f1, f2], dim=1)
        
        # Change detection
        change_map = self.change_head(concat)
        return torch.sigmoid(change_map)
```

**Performance on LEVIR-CD:**
- **F1 Score: 87.2%**
- **IoU: 75.8%**

### Multispectral Analysis

**Vegetation Indices:**
```python
def ndvi(nir, red):
    """Normalized Difference Vegetation Index"""
    return (nir - red) / (nir + red + 1e-6)

def ndwi(nir, green):
    """Normalized Difference Water Index"""
    return (green - nir) / (green + nir + 1e-6)

def evi(nir, red, blue):
    """Enhanced Vegetation Index"""
    return 2.5 * (nir - red) / (nir + 6*red - 7.5*blue + 1)
```

**Application Examples:**
- **NDVI**: Vegetation health, biomass
- **NDWI**: Water bodies, moisture content
- **EVI**: Enhanced vegetation monitoring
- **SAVI**: Soil-adjusted vegetation index

**Crop Monitoring:**
- **Growth stage detection**
- **Disease identification**
- **Yield prediction**

**Performance:**
- **Accuracy: 92.5%** (crop type classification)
- **Disease detection: F1: 88.3%**

## 🎯 Practical Applications

### Disaster Response

**Real-time Monitoring:**
- **Flood mapping**: Water extent
- **Fire detection**: Active fire spots
- **Damage assessment**: Infrastructure damage
- **Search and rescue**: Human detection

**Implementation:**
```python
class DisasterResponse:
    def __init__(self):
        self.flood_mapper = FloodDetector()
        self.fire_detector = FireDetector()
        self.damage_assessor = DamageAssessment()
        self.search_rescue = HumanDetector()
    
    def process(self, image):
        results = {}
        
        # Flood mapping
        water = self.flood_mapper(image)
        results['flood'] = water
        
        # Fire detection
        fires = self.fire_detector(image)
        results['fire'] = fires
        
        # Damage assessment
        damage = self.damage_assessor(image)
        results['damage'] = damage
        
        return results
```

### Agriculture

**Precision Farming:**
- **Crop health monitoring**
- **Weed detection**
- **Irrigation planning**
- **Harvest prediction**

**Implementation:**
```python
class PrecisionFarming:
    def __init__(self):
        self.crop_monitor = CropHealthMonitor()
        self.weed_detector = WeedDetector()
        self.irrigation_planner = IrrigationPlanner()
        self.harvest_predictor = HarvestPredictor()
    
    def analyze_field(self, image):
        health = self.crop_monitor(image)
        weeds = self.weed_detector(image)
        irrigation = self.irrigation_planner(health)
        harvest = self.harvest_predictor(health)
        
        return {
            'health': health,
            'weeds': weeds,
            'irrigation': irrigation,
            'harvest': harvest
        }
```

### Urban Planning

**Urban Development Monitoring:**
- **Building detection**
- **Road network analysis**
- **Population density estimation**
- **Infrastructure planning**

**Implementation:**
```python
class UrbanPlanner:
    def __init__(self):
        self.building_detector = BuildingDetector()
        self.road_analyzer = RoadAnalyzer()
        self.population_estimator = PopulationEstimator()
        self.infrastructure_planner = InfrastructurePlanner()
    
    def analyze_city(self, image):
        buildings = self.building_detector(image)
        roads = self.road_analyzer(image)
        population = self.population_estimator(image, buildings)
        planning = self.infrastructure_planner(roads, population)
        
        return {
            'buildings': buildings,
            'roads': roads,
            'population': population,
            'planning': planning
        }
```

## 📊 Performance Benchmarks

### Object Detection Comparison (Remote Sensing)

**DOTA Validation:**

| Method | mAP | Small Objects | Large Objects |
|--------|-----|----|-----|----|
| Faster R-CNN | 53.5% | 48.2% | 62.5% |
| YOLOv5 | 58.3% | 52.8% | 68.2% |
| YOLOv8 | 60.5% | 55.3% | 70.1% |
| Rotated R-CNN | 65.2% | 60.8% | 72.5% |
| Co-DETR | 63.8% | 58.5% | 71.2% |

### Classification Accuracy

**Land Use Classification:**

| Dataset | Classes | Accuracy | mAP |
|---------|--------|-------|----|----|
| UC Merced | 21 | 96.2% | 95.8% |
| NWPU-RESISC45 | 45 | 94.5% | 93.2% |
| EuroSAT | 10 | 97.8% | 97.2% |
| SEN12MS | 173 | 89.5% | 87.8% |

## 🔬 Emerging Trends (2023-2024)

### Foundation Models for Remote Sensing

**Satellite Foundation Models:**
- **Large-scale pretraining** on satellite imagery
- **Transfer learning** to specific tasks
- **General-purpose** understanding of Earth

**SAM for Satellite Imagery:**
- **Segment Anything** adapted for satellite
- **Zero-shot generalization**
- **Remote sensing** specific fine-tuning

**Performance:**
- **Few-shot learning**: SOTA performance
- **Zero-shot**: Competitive with supervised
- **Generalization**: Cross-domain transfer

### Multi-Sensor Fusion

**Sensor Fusion Architectures:**
```python
class MultiSensorFusion:
    def __init__(self):
        self.satellite = SatelliteCNN()
        self.drone = DroneCNN()
        self.thermal = ThermalCNN()
        self.fusion = CrossModalFusion()
    
    def process(self, satellite_img, drone_img, thermal_img):
        features_sat = self.satellite(satellite_img)
        features_drone = self.drone(drone_img)
        features_thermal = self.thermal(thermal_img)
        
        # Multi-modal fusion
        fused = self.fusion([features_sat, features_drone, features_thermal])
        return fused
```

**Benefits:**
- **Complementary information**
- **Robustness** to weather conditions
- **Better accuracy** through fusion

### Real-time Edge Processing

**Edge-optimized Models:**
- **Model quantization**: FP16, INT8
- **Knowledge distillation**: Smaller models
- **Neural architecture search**: Optimize for edge

**Performance:**
- **YOLOv5n**: 30 FPS on Jetson Nano
- **MobileNetV3**: 50 FPS on embedded devices
- **Custom architectures**: Up to 100 FPS

## 📚 Resources & Implementations

### Key Libraries

**Remote Sensing:**
- **EarthPy**: Python package for Earth observation
- **Rasterio**: Read/write geospatial raster data
- **GDAL**: Geospatial data abstraction library

**Deep Learning:**
- **MMDetection**: Object detection toolkit
- **MMRemoteSensing**: OpenMMLab remote sensing
- **Timms**: Satellite image processing

### Public Datasets

**Object Detection:**
- **DOTA**: Object Detection in Aerial images
- **HRSID**: High-resolution ship detection
- **SSDD**: Ship detection dataset
- **Aerial-Person**: Person detection in aerial images

**Classification:**
- **UC Merced**: 21 land use classes
- **NWPU-RESISC45**: 45 remote sensing classes
- **EuroSAT**: 10 land cover classes

**Segmentation:**
- **LEVIR-CD**: Change detection
- **SpaceNet**: Urban building segmentation
- **Sentinel-2**: Multi-spectral segmentation

### Key Papers

1. **DOTA**: Datasets for Object DEtection in Aerial images
2. **HRSID**: High-Resolution Ship Image Dataset
3. **YOLO for Remote Sensing**: YOLO adaptation for aerial imagery
4. **Satellite Foundation Models**: Large-scale pretraining
5. **Multi-modal Fusion**: Combining multiple sensors

---

*Document updated: March 2026*
*Includes latest developments from 2020-2024*
