# Adverse Weather Perception

Computer vision under adverse weather conditions presents unique challenges. This document covers techniques and methods for robust perception in rain, fog, snow, and low-light conditions.

## 📚 Overview

**Adverse Weather Challenges:**
- **Rain**: Water droplets, streaks, reflections
- **Fog**: Scattering, reduced contrast, haze
- **Snow**: Falling particles, whiteout, accumulation
- **Low-light**: Reduced signal, noise, poor contrast
- **Wet surfaces**: Reflections, distortions

**Key Requirements:**
- Robustness to weather-induced degradations
- Maintained accuracy under extreme conditions
- Real-time performance for safety-critical applications

## 🔷 Rain Robustness

### Rain Generation and Simulation

**Synthetic Rain Generation:**

```python
def generate_rain(image):
    """Generate synthetic rain streaks"""
    height, width, _ = image.shape
    
    # Generate rain lines
    rain_streaks = np.zeros_like(image, dtype=float)
    for _ in range(100):
        x = np.random.randint(0, width)
        y = np.random.randint(0, height)
        angle = np.random.uniform(0, np.pi/4)
        length = np.random.randint(10, 50)
        
        for i in range(length):
            rx = int(x + i * np.cos(angle))
            ry = int(y + i * np.sin(angle))
            if 0 <= rx < width and 0 <= ry < height:
                rain_streaks[ry, rx] += 0.3
    
    # Add raindrop noise
    rain_drops = np.random.random_like(image) * 0.2
    
    return image * (1 - rain_streaks - rain_drops)
```

### De-raining Algorithms

#### Traditional Methods

**Guided Filter (2011):**
- Edge-preserving smoothing
- Effective for removing rain streaks
- Computationally efficient

**Implementation:**
```python
def guided_filter_guide(x, p, r, eps):
    """
    x: guidance image
    p: input image
    r: window radius
    eps: regularization parameter
    """
    mean_x = boxFilter(x, r)
    mean_p = boxFilter(p, r)
    mean_xp = boxFilter(x*p, r)
    cov_xp = mean_xp - mean_x * mean_p
    
    mean_x2 = boxFilter(x*x, r)
    var_x = mean_x2 - mean_x * mean_x
    
    a = cov_xp / (var_x + eps)
    b = mean_p - a * mean_x
    
    mean_a = boxFilter(a, r)
    mean_b = boxFilter(b, r)
    
    return mean_a * x + mean_b
```

**Deep Learning Methods:**

**CIRNet (Cycle-Consistent Inverse Rain Network, 2020):**
- **Cycle consistency** for supervision
- **No paired training data** required
- **Inverse rain generation**

**RBDNet (Rain Blind De-raining, 2020):**
- **Blind de-raining** for unknown rain intensity
- **Rain prior** for robustness
- **Adaptive** to different rain types

**Zero-Shot De-raining:**
- **No training data** needed
- **Self-supervised** learning
- **Generalizes** to unseen conditions

**Performance Comparison:**

| Method | PSNR (dB) | SSIM | Real-time |
|--------|----|-----|-------|----|
| CIRNet | 28.5 | 0.89 | Yes |
| RBDNet | 27.9 | 0.87 | Yes |
| Zero-shot | 26.8 | 0.84 | Yes |

### Weather-Aware Detection

**Rain-Aware Object Detection:**

```python
class RainAwareYOLO(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = YOLOBackbone()
        self.rain_detector = RainDetector()  # Detect rain presence
        self.rain_aware_head = RainAwareDetectionHead()
    
    def forward(self, x, is_raining=False):
        features = self.backbone(x)
        
        if is_raining:
            rain_features = self.rain_detector(x)
            features = self.fuse_rain_features(features, rain_features)
        
        predictions = self.rain_aware_head(features)
        return predictions
```

**Key Strategies:**
1. **Weather classification**: Detect rain presence/intensity
2. **Attention mechanisms**: Focus on rain-free regions
3. **Data augmentation**: Synthesize rain for training
4. **Multi-scale features**: Capture different rain scales

### Data Augmentation

**Rain Augmentation:**
```python
class RainAugmentation:
    def __init__(self, rain_type='vertical'):
        self.rain_type = rain_type
    
    def __call__(self, image):
        if np.random.rand() < 0.5:  # 50% chance
            # Simulate rain
            rain = generate_rain_simulation(image, type=self.rain_type)
            image = rain * image
            
            # Simulate wet roads
            wet = simulate_wet_roads(image)
            image = blend(image, wet, 0.3)
            
            # Add reflections
            reflections = add_reflections(image)
            image = blend(image, reflections, 0.2)
        
        return image
```

**Types of Rain Augmentation:**
1. **Vertical streaks**: Wind-driven rain
2. **Horizontal streaks**: Road-facing rain
3. **Random drops**: Light rain
4. **Combined**: Heavy rain with horizontal component

## ⚙️ Fog Robustness

### Image Formation Model

**Atmospheric Scattering Model:**
```
I(x) = J(x)·t(x) + A·(1 - t(x))
```

Where:
- `I(x)`: Observed hazy image
- `J(x)**: Clear image (to be recovered)
- `A`: Global atmospheric light
- `t(x)`: Transmission map

**Transmission Map:**
```
t(x) = e^(-β·d(x))
```

Where:
- `β`: Atmospheric scattering coefficient
- `d(x)`: Distance from camera

### De-hazing Algorithms

#### Dark Channel Prior (2009)

**Key Insight:**
In non-sky regions, at least one color channel has very low intensity in some local patches.

**Transmission Estimation:**
```
t(x) = 1 - ω·min_c(min_y(I^c(y)))
```

**Implementation:**
```python
def dark_channel_prior(image):
    """Estimate transmission using dark channel prior"""
    # Dark channel
    dark_channel = np.min(image, axis=2)
    
    # Estimate atmospheric light
    A = np.median(image[0:50, 0:50])
    
    # Estimate transmission
    t = 1 - 0.95 * np.min(dark_channel, axis=2)
    
    # Apply transmission
    J = (image - A) / t + A
    
    return J, t
```

**Performance:**
- **PSNR: 30.2 dB** (sunny day haze)
- **Real-time**: Fast computation
- **Limitation**: Sky regions, artifacts

#### DehazeNet (2016)

**Deep Learning De-hazing:**
- **CNN for transmission estimation**
- **Paired training data**: Real/dehazed images
- **End-to-end training**

**Architecture:**
```
Input → Conv (32) → Conv (64) → Conv (128) → Conv (t: 1)
```

**Implementation:**
```python
class DehazeNet(nn.Module):
    def __init__(self):
        super().__init__()
        self.encoder = nn.Sequential(
            nn.Conv2d(3, 32, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(32, 64, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(64, 128, 3, 1, 1)
        )
        self.decoder = nn.Sequential(
            nn.Conv2d(128, 64, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(64, 32, 3, 1, 1),
            nn.ReLU(),
            nn.Conv2d(32, 1, 1)  # Transmission map
        )
    
    def forward(self, x):
        features = self.encoder(x)
        t = self.decoder(features)
        return torch.sigmoid(t)
```

#### Perceptual De-hazing: **Context-Aware Dehazing (2020):**
- **Perceptual loss** (VGG features)
- **Edge preservation**
- **Color consistency**

**Performance:**
- **SSIM: 0.92** (real-world fog)
- **Natural appearance**: Better visual quality

### Learning-Based Methods

**SOTA Methods (2020-2024):**

#### AOD-Net (All-in-One Dehazing)
- **Single network**: Multiple tasks
- **Dehazing, deraining, low-light**
- **Fast inference**

**Performance:**
- **PSNR: 31.5 dB** (foggy Cityscapes)
- **Latency**: 45ms

#### FFA-Net (Feature Fusion)
- **Feature fusion** for dehazing
- **Multi-scale features**
- **Better quality**

**Performance:**
- **SSIM: 0.94** (foggy scenes)
- **Real-time**: 30ms

#### U-Net for Dehazing
- **Encoder-decoder** with skip connections
- **High-quality recovery**
- **Medical imaging style**

**Performance:**
- **PSNR: 32.1 dB** (foggy datasets)
- **SSIM: 0.95**

### Weather-Aware Detection Pipeline

**Complete Pipeline:**
```
Input Image
  ↓
Weather Classification
  ├─ Rain → De-raining → Detection
  ├─ Fog → De-hazing → Detection
  ├─ Snow → Snow-specific processing → Detection
  └─ Low-light → Enhancement → Detection
  ↓
Object Detection
  ↓
Weather-specific post-processing
```

**Implementation:**
```python
class WeatherRobustDetection:
    def __init__(self, config):
        self.weather_classifier = WeatherClassifier()
        self.dehazer = DehazeNet()
        self.dererainer = RainRemovalNet()
        self.detector = YOLOv8()
        self.low_light_enhancer = EnhancementNet()
    
    def process(self, image):
        # Weather classification
        weather_type = self.weather_classifier(image)
        
        # Apply appropriate preprocessing
        if weather_type == 'fog':
            enhanced = self.dehazer(image)
        elif weather_type == 'rain':
            enhanced = self.dererainer(image)
        elif weather_type == 'low_light':
            enhanced = self.low_light_enhancer(image)
        else:
            enhanced = image
        
        # Object detection on enhanced image
        detections = self.detector(enhanced)
        
        return detections
```

## ❄️ Snow Robustness

### Snow Characteristics

**Snow Challenges:**
- **White particles**: Falling, accumulation
- **Overexposure**: Snow appears white
- **Reduced contrast**: White-on-white
- **Dynamic**: Snow constantly changes

### Snow Detection and Removal

#### Snow Particle Detection

**Color-based Approach:**
```python
def detect_snow(image):
    """Detect snow particles using color information"""
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    
    # Snow in H-S space
    lower_snow = np.array([0, 0, 180])
    upper_snow = np.array([20, 30, 255])
    
    mask = cv2.inRange(hsv, lower_snow, upper_snow)
    return mask
```

**Deep Learning Approach:**
```python
class SnowParticleDetector(nn.Module):
    def __init__(self):
        super().__init__()
        self.backbone = ResNet18()
        self.detector = nn.Sequential(
            nn.Conv2d(512, 128, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(128, 64, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(64, 1, 1)  # Snow mask
        )
    
    def forward(self, x):
        features = self.backbone(x)
        mask = self.detector(features)
        return torch.sigmoid(mask)
```

#### Snow Removal Methods

**1. Transmission Estimation:**
- Similar to dehazing
- Different prior assumptions

**2. Generative Methods:**
- **GAN-based** snow removal
- **Unsupervised** learning
- **Cycle consistency**

**3. Weather-invariant Features:**
- **Learned features** robust to snow
- **Attention-based**: Focus on non-snow regions

### Snow-Specific Processing

**Key Strategies:**
1. **Snow detection** before processing
2. **Selective enhancement**: Don't over-enhance snow regions
3. **Contrast preservation**: Maintain visibility
4. **Multi-modal fusion**: Use depth/thermal

## 💡 Low-Light Perception

### Low-Light Enhancement

#### Retinex Theory
```
I(x) = R(x) · L(x)
```

Where:
- `I`: Observed low-light image
- `R`: Reflectance (object property)
- `L`: Illumination (lighting condition)

**Enhancement:**
```
R_hat = I / L_hat
```

**Implementation:**
```python
class LLNet(nn.Module):
    def __init__(self):
        super().__init__()
        self.encoder = ResNet18()
        self.illumination = nn.Sequential(
            nn.Conv2d(512, 64, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(64, 1, 1),
            nn.Sigmoid()
        )
        self.refinement = nn.Sequential(
            nn.Conv2d(3, 64, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(64, 3, 1)
        )
    
    def forward(self, x):
        B, C, H, W = x.shape
        features = self.encoder(x)
        L = self.illumination(features)
        R = x / (L + 1e-6)
        enhanced = self.refinement(R) + x
        return torch.clamp(enhanced, 0, 1)
```

### Modern Low-Light Methods

#### Zero-DCE (2020)
- **Deep Expose Correction**
- **No paired data** needed
- **Point-wise** corrections
- **Very fast** (0.2ms)

**Performance:**
- **PSNR: 22.5 dB** (low-light)
- **FPS: 5000** (real-time)

#### LLFormer (2022)
- **Transformer-based** low-light enhancement
- **Long-range dependencies**
- **Better detail recovery**

**Performance:**
- **PSNR: 24.8 dB**
- **SSIM: 0.88**

#### RetinexFormer (2022)
- **Retinex-based** with self-attention
- **Illumination and reflectance** estimation
- **High-quality enhancement**

**Performance:**
- **PSNR: 26.3 dB**
- **Better color reproduction**

## 🎯 Practical Applications

### Autonomous Driving

**Weather-Robust Perception:**
```python
class AutonomousDrivingPerception:
    def __init__(self):
        self.weather_detector = WeatherDetector()
        self.enhancement = WeatherAdaptiveEnhancement()
        self.detection = ObjectDetector()
    
    def perceive(self, image):
        weather = self.weather_detector(image)
        enhanced = self.enhancement(image, weather)
        objects = self.detection(enhanced)
        
        return {
            'weather': weather,
            'detections': objects,
            'confidence': self.compute_confidence(enhanced, weather)
        }
```

**Key Challenges:**
- Real-time processing
- Safety-critical applications
- Regulatory requirements

### Surveillance Systems

**Weather-Aware Video Analytics:**
- Person detection
- Anomaly detection
- 24/7 operation in all conditions

**Performance Metrics:**
- **Accuracy under adverse conditions**
- **False positive rates**
- **Detection range**

### Robotics

**Outdoor Robotics:**
- Navigation in rain/fog
- Object manipulation
- Environmental perception

**Requirements:**
- **Robustness**: Must work in all conditions
- **Reliability**: Safety-critical
- **Efficiency**: Limited compute resources

## 📊 Performance Comparison

### Synthetic Fog Test (2020)

| Method | PSNR | SSIM | Time (ms) |
|--------|-----|-----|-------|
| Dark Channel Prior | 28.4 | 0.85 | 15 |
| DehazeNet | 30.2 | 0.89 | 45 |
| AOD-Net | 31.5 | 0.91 | 25 |
| FFA-Net | 32.8 | 0.94 | 30 |

### Real-World Rain Test

| Method | mAP | FPS |
|------|---|----|
| Baseline YOLOv8 | 52.3% | 100 |
| With De-raining | 55.8% | 80 |
| Weather-Aware YOLO | 58.2% | 85 |

## 🔬 Best Practices

### Training Strategies

1. **Data augmentation**:
   - Synthetic rain, fog, snow
   - Low-light simulation
   - Real-world adverse weather data

2. **Weather-specific training**:
   - Train on weather-matched data
   - Transfer learning for specific conditions
   - Domain adaptation techniques

3. **Ensemble methods**:
   - Multiple weather-robust methods
   - Consensus voting
   - Confidence-weighted fusion

### Testing and Validation

1. **Adverse weather datasets**:
   - **Rainy**: RainScene, DFO
   - **Foggy**: FoggyCityscapes
   - **Low-light**: LOL, SOTS

2. **Metrics**:
   - **mAP** under adverse conditions
   - **PSNR/SSIM** for enhancement quality
   - **False positive/negative rates**

3. **Benchmarking**:
   - Standardized test conditions
   - Comparison with baselines
   - Real-world testing

## 📚 Resources & Implementations

### Key Libraries

**Image Enhancement:**
- **OpenCV**: Basic enhancement operations
- **scikit-image**: Image processing
- **torchvision.transforms**: PyTorch augmentations

**Deep Learning Models:**
- **Hugging Face**: Dehazing, low-light models
- **PyTorch Lightning**: Training frameworks
- **MMSegmentation**: Weather-aware models

### Public Datasets

**Adverse Weather:**
- **FoggyCityscapes**: Foggy urban scenes
- **RainScene**: Synthetic and real rain
- **SOTS (Stacked Outdoor Test Sets)**: Multi-weather
- **LOL (Low-Light)**: Low-light enhancement

**Key Papers:**
1. **DehazeNet**: Li et al., 2016
2. **CIRNet**: Xu et al., 2020
3. **AOD-Net**: Zhu et al., 2018
4. **Zero-DCE**: Guo et al., 2020
5. **Weather-Aware Detection**: Wang et al., 2021

---

*Document updated: March 2026*
*Includes latest developments from 2020-2024*
