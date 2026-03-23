# CNN Fundamentals

Convolutional Neural Networks revolutionized computer vision. This document covers core CNN architectures, innovations, and modern developments from 2020-2026.

## 📚 Overview

**Convolutional Neural Networks (CNNs)** are specialized neural networks designed for processing structured grid data like images. They form the backbone of modern computer vision.

**Key Characteristics:**
- Local connectivity (receptive fields)
- Weight sharing
- Translation equivariance
- Hierarchical feature learning

## 🔷 Basic CNN Architecture

### Fundamental Building Blocks

#### Convolutional Layer

**2D Convolution Operation:**
```
Y[i,j] = ΣΣ X[i+u, j+v] · W[u,v] + b
       u,v
```

**Mathematical Formulation:**
```
Output[i,j,c] = ΣΣ Input[i+u, j+v, k] · Weight[u, v, k, c] + Bias[c]
             u,v,k
```

Where:
- u,v: kernel offsets (0 to K-1)
- k: input channels
- c: output channels
- K: kernel size

**Key Parameters:**
- `kernel_size` (3×3 common)
- `padding`: 'valid' (no padding) or 'same' (preserve size)
- `stride`: step size for sliding window
- `dilation`: spacing between kernel elements

**Implementation:**
```python
# PyTorch Conv2d
conv = nn.Conv2d(
    in_channels=64,
    out_channels=128,
    kernel_size=3,
    stride=1,
    padding=1,
    dilation=1,
    groups=1,
    bias=True
)

# TensorFlow/Keras
conv = tf.keras.layers.Conv2D(
    filters=128,
    kernel_size=3,
    strides=1,
    padding='same',
    activation='relu'
)
```

#### Pooling Layers

**Max Pooling:**
```
Output[i,j] = max(Input[i*stride+u, j*stride+v])
```

- Preserves edges better
- Default choice in most architectures
- Translation invariant

**Average Pooling:**
```
Output[i,j] = mean(Input[i*stride+u, j*stride+v])
```

- Smoother output
- Useful for final global pooling

**Global Average Pooling:**
```
Output[c] = mean(Input[:, :, c])
```

- Replaces fully connected layers
- Reduces parameters significantly
- Used in modern architectures (ResNet, DenseNet)

**Implementation:**
```python
# Max pooling
max_pool = nn.MaxPool2d(kernel_size=2, stride=2)

# Average pooling
avg_pool = nn.AvgPool2d(kernel_size=2, stride=2)

# Global average pooling
gap = nn.AdaptiveAvgPool2d((1, 1))
```

#### Activation Functions

**ReLU (Rectified Linear Unit):**
```
f(x) = max(0, x)
```
- Most common activation
- Simple and efficient
- Can cause "dead neurons"

**Leaky ReLU:**
```
f(x) = { x, if x > 0
       αx, if x ≤ 0 }
```
- Prevents dead neurons
- α typically 0.01

**ELU (Exponential Linear Unit):**
```
f(x) = { x, if x > 0
       α(exp(x) - 1), if x ≤ 0 }
```
- Better vanishing gradient properties
- More computationally expensive

**Swish (2017):**
```
f(x) = x · sigmoid(βx)
```
- Used in efficient networks
- Smooth and non-monotonic
- β typically learned or set to 1

**Implementation:**
```python
# Modern activation functions
activations = {
    'relu': nn.ReLU(),
    'leaky_relu': nn.LeakyReLU(negative_slope=0.01),
    'gelu': nn.GELU(),  # Gaussian Error Linear Unit
    'swish': Swish()    # x * sigmoid(x)
}
```

#### Normalization Layers

**Batch Normalization (2015):**
```
Normalization:
  μ = E[X]
  σ² = Var[X]
  X_norm = (X - μ) / √(σ² + ε)

Scale and shift:
  Y = γ · X_norm + β
```

**Properties:**
- Reduces internal covariate shift
- Allows higher learning rates
- Acts as regularizer

**Instance Normalization:**
- Normalizes across channels per sample
- Better for style transfer

**Group Normalization:**
- Divides channels into groups
- Works well with small batch sizes
- Alternative to batch norm

**Layer Normalization:**
- Normalizes across features
- Common in transformers

**Implementation:**
```python
bn = nn.BatchNorm2d(num_features)
ln = nn.LayerNorm(normalized_shape)
gn = nn.GroupNorm(num_groups, num_channels)
```

## 🏗️ Modern CNN Architectures

### ResNet (Residual Networks, 2015)

**Fundamental Innovation:**
Skip connections (residual connections) enable training of very deep networks.

**Residual Block:**
```
y = F(x, {W_i}) + x
H(x) = F(x, {W_i}) + x
```

Where F(x) is the residual function (typically 2-3 conv layers).

**Basic Block (for ResNet-18/34):**
```python
class BasicBlock(nn.Module):
    expansion = 1
    
    def __init__(self, inplanes, planes, stride=1, downsample=None):
        super().__init__()
        self.conv1 = conv2d(inplanes, planes, 3, stride, 1)
        self.bn1 = bn2d(planes)
        self.relu = relu(inplace=True)
        self.conv2 = conv2d(planes, planes, 3, 1, 1)
        self.bn2 = bn2d(planes)
        self.downsample = downsample
        self.stride = stride
    
    def forward(self, x):
        identity = x
        
        out = self.conv1(x)
        out = self.bn1(out)
        out = self.relu(out)
        
        out = self.conv2(out)
        out = self.bn2(out)
        
        if self.downsample is not None:
            identity = self.downsample(x)
        
        out += identity
        out = self.relu(out)
        
        return out
```

**ResNet Variants:**

| Model | Layers | Parameters | Key Feature |
|-------|--------|------------|-------------|
| ResNet-18 | 18 | 11.2M | Basic blocks |
| ResNet-34 | 34 | 21.8M | Basic blocks |
| ResNet-50 | 50 | 25.6M | Bottleneck blocks |
| ResNet-101 | 101 | 44.5M | Bottleneck blocks |
| ResNet-152 | 152 | 60.2M | Bottleneck blocks |

**Bottleneck Block (for ResNet-50+):**
```
[1×1 (reduce) → 3×3 → 1×1 (expand)]
```
- 1×1 conv reduces channels to 1/4
- 3×3 conv operates on reduced dimensions
- 1×1 conv restores original dimension
- More efficient than 3×3 on large feature maps

**Deep Residual Learning for Image Recognition:**
- [CVPR 2016](https://arxiv.org/abs/1512.03385)
- Won ILSVRC 2015
- **Error rate: 3.57%** on ImageNet

**ResNeXt (2016):**
- **Cardinality** dimension: grouped convolutions
- Cardinality > 1 improves accuracy
- Similar to inception but simpler

**Wide Residual Networks (2016):**
```
Depth × Width trade-off:
Wide shallow networks ≈ Deep narrow networks
But wider is often better
```
- `WRN-28-10`: 28 layers, width factor 10
- Outperforms deeper but narrower models

### DenseNet (Densely Connected Networks, 2016)

**Core Innovation:**
Each layer connected to every other layer in a feed-forward manner.

**Dense Block:**
```
x_l = H_l([x_0, x_1, ..., x_{l-1}])
```

Where:
- [·] denotes channel-wise concatenation
- H_l is a composite function (BN-ReLU-Conv)

**Growth Rate (k):**
- Number of feature maps generated by each layer
- Typical values: 12, 24, 32
- Controls network width

**Types:**
- **DenseNet-121**: 121 layers, k=12
- **DenseNet-169**: 169 layers, k=32
- **DenseNet-201**: 201 layers, k=48
- **DenseNet-161**: 161 layers, k=48, larger channels

**Advantages:**
- **Parameter efficiency**: 3× fewer parameters than ResNet
- **Feature reuse**: All features propagated forward
- **Strong gradients**: Direct connections to loss

**Implementation:**
```python
class DenseBlock(nn.Module):
    def __init__(self, num_layers, in_channels, growth_rate):
        super().__init__()
        layers = []
        for i in range(num_layers):
            layers.append(DenseLayer(in_channels + i*growth_rate, growth_rate))
        self.dense = nn.Sequential(*layers)
    
    def forward(self, x):
        features = [x]
        for layer in self.dense:
            out = layer(x)
            features.append(out)
        return torch.cat(features, 1)
```

**Performance:**
- **ImageNet error: 3.46%** (DenseNet-161)
- State-of-the-art before EfficientNet
- Excellent for medical imaging (parameter efficiency)

### Inception Modules

**GoogLeNet / Inception v1 (2014):**
Parallel convolutional paths with different kernel sizes.

**Inception Module Structure:**
```
Input → [1×1 → 3×3]
      → [1×1 → 5×5]
      → [3×3 maxpool → 1×1]
Concatenate all outputs
```

**Key Insights:**
- **1×1 convolutions** for dimensionality reduction
- **Parallel paths** capture multi-scale features
- **Sparse connections**: Don't connect all channels to all filters

**Inception v2 (2015):**
**Batch Normalization** + **Factorized 7×7 to 3×3**
- 1×1 reduces parameters
- 3×3 captures same receptive field with fewer parameters

**Inception v3 (2015):**
- **Asymmetric convolutions**: 1×3 and 3×1
- **Label smoothing** regularization
- **Factorized 7×7** into two 3×3
- **Output auxiliary classifiers** for better gradients

**Inception v4 (2016):**
- Residual connections added to inception modules
- Faster training
- Improved accuracy

**Performance:**
- **GoogLeNet**: 6.67% error (ILSVRC 2014)
- Won 2014 ImageNet competition
- 5× fewer parameters than AlexNet

## 🚀 Modern Architectures (2020-2024)

### EfficientNet (2019-2021)

**Compound Scaling Method:**
Uniformly scale network depth, width, and resolution with a compound coefficient:
```
depth:  d = α^φ
width:  w = β^φ
res:    r = γ^φ
```

Where α, β, γ determined via grid search, and φ controls scaling rate.

**EfficientNet Variants:**

| Model | Layers | Width | Resolution | Params | Top-1 Accuracy |
|-------|--------|-------|------------|--------|---------------|
| B0 | 53 | 1.0 | 224×224 | 5.3M | 77.6% |
| B3 | 60 | 1.8 | 300×300 | 12.3M | 82.3% |
| B4 | 74 | 2.2 | 380×380 | 19.2M | 83.6% |
| B7 | 82 | 3.1 | 600×600 | 66.3M | 84.3% |

**Key Components:**
- **MBConv** (Mobile Inverted Bottleneck Convolution)
- **Squeeze-and-Excitation** (SE) blocks
- **Fused MBConv** for shallow layers

**MBBlock Structure:**
```
[1×1 expand → depthwise 3×3 → SE → 1×1 project]
```

**Performance:**
- Best accuracy-efficiency trade-off
- State-of-the-art on mobile devices
- [TensorFlow Models](https://github.com/tensorflow/models)

### MobileNet v3 (2019)

**Neural Architecture Search (NAS) Optimized:**
- Auto-designed for mobile devices
- Uses **h-swish** activation
- **Reversed residual blocks** with SE

**Variants:**
- **MobileNet v3-Large**: For high accuracy needs
- **MobileNet v3-Small**: For resource-constrained devices
- **Efficient to run on mobile** with 1200× faster than v1

**Key Features:**
- **Fused MBConv**: 3×3 conv instead of (1×1→3×3) for early layers
- **h-swish**: ReLU6 × (x+3)/6 (hardware efficient)
- **Squeeze-and-Excitation**: Selectively reweight channels
- **Depthwise separable convolutions**

**Performance:**
- **MobileNet v3-Large**: 75.2% top-1 (ImageNet)
- **MobileNet v3-Small**: 70.7% top-1
- 2× faster than v2 with better accuracy

### RegNet (2020)

**Design Philosophy:**
- Design on **parameter space** (regressing to good architectures)
- Better than random architectures
- Simpler than NAS

**RegNetY Variants:**
- **Y400**, **Y800**, **Y1600**, **Y3200**
- Parameter count scales predictably
- Regularly-spaced block configurations

**RegNetX Variants:**
- Similar to RegNetY but with **Inception-like modules**
- **X400**, **X800**, **X1600**, **X3200**
- Better efficiency than RegNetY

**Key Insights:**
- Deep, wide, balanced networks work best
- Modest depths (10-20 layers) optimal
- Regular structures outperform irregular

### ConvNeXt (2022)

**CNNs are the new ViT (2022):**
Modernized CNN with ViT-inspired design

**Changes from ResNet:**
- **Larger kernels**: 7×7 instead of 3×3
- **Inverted bottlenecks**: 1×1→3×3→1×1 (like ResNet but reversed)
- **LayerNorm** instead of BatchNorm
- **Stochastic depth** for regularization
- **Larger training**: ImageNet-22k pretraining

**Results:**
- Matches ViT performance with CNN inductive biases
- **Outperforms ViT** on downstream tasks
- More data-efficient than transformers

### ConvNeXt Variants

| Model | Params | FLOPs | Top-1 Acc |
|-------|--------|-------|-----------|
| Small | 50M | 8.7B | 83.3% |
| Base | 89M | 15B | 84.1% |
| Large | 198M | 33B | 85.0% |
| Huge | 371M | 62B | 85.4% |

**Training:**
- ImageNet-1K: 300 epochs
- ImageNet-22k: 300 epochs, 1000 epochs fine-tuning
- AdamW optimizer

## 📊 Architecture Comparison

### Top-1 Accuracy on ImageNet (2020-2024)

| Architecture | Accuracy | Parameters | Latency (ms) |
|--------------|----------|------------|--------------|
| ResNet-50 | 78.3% | 25.6M | 10 |
| DenseNet-161 | 79.8% | 28.7M | 25 |
| EfficientNet-B7 | 84.3% | 66M | 120 |
| MobileNet v3-L | 75.2% | 5.4M | 7 |
| RegNetY-32G | 83.5% | 55M | 35 |
| ConvNeXt-L | 85.0% | 198M | 75 |
| ViT-Huge | 85.9% | 632M | 200 |

### Latency vs Accuracy Trade-off

```
High Latency ←→ Low Latency
ViT-Huge > ConvNeXt > EfficientNet > MobileNet
```

## 🔬 Advanced CNN Techniques

### Attention Mechanisms in CNNs

**Squeeze-and-Excitation (SE) Blocks:**
```python
class SEBlock(nn.Module):
    def __init__(self, channels, reduction=16):
        super().__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.fc = nn.Sequential(
            nn.Linear(channels, channels // reduction),
            nn.ReLU(),
            nn.Linear(channels // reduction, channels),
            nn.Sigmoid()
        )
    
    def forward(self, x):
        b, c, _, _ = x.size()
        y = self.avg_pool(x).view(b, c)
        y = self.fc(y).view(b, c, 1, 1)
        return x * y.expand_as(x)
```

**CBAM (Convolutional Block Attention Module):**
- Sequential: Channel attention → Spatial attention
- Complements any CNN architecture
- Improves accuracy without extra parameters

**Coordinate Attention (2021):**
- Position-aware channel attention
- Captures long-range dependencies in x and y directions
- Better for localization tasks

### Efficient Convolutions

**Depthwise Separable Convolution:**
```
Traditional: O(k²·C_in·C_out)
Depthwise:   O(k²·C_in)
Pointwise:   O(C_in·C_out)
Total: O(k²·C_in + C_in·C_out)
```
- 8-9× fewer computations
- Used in MobileNet, EfficientNet

**Group Convolution:**
- Split channels into groups
- Each group processed independently
- Used in Inception, ResNeXt

**Dilated/Atrous Convolutions:**
```
Dilated rate r: kernel with (r-1) zeros between elements
```
- Expands receptive field without increasing parameters
- Used in DeepLab, PSPNet

**Depthwise Convolution with Pointwise:**
```python
# MobileNet-style
conv = nn.Sequential(
    nn.Conv2d(cin, cout, 3, groups=cin, padding=1),  # Depthwise
    nn.BatchNorm2d(cout),
    nn.ReLU(),
    nn.Conv2d(cout, cout, 1),  # Pointwise
    nn.BatchNorm2d(cout),
    nn.ReLU()
)
```

## 🎯 Applications & Best Practices

### Transfer Learning

**Standard Pipeline:**
1. Pre-trained on ImageNet (or larger dataset)
2. Remove final classification layer
3. Add new classifier for target task
4. Fine-tune (optional)

```python
# Load pre-trained model
model = torchvision.models.resnet50(pretrained=True)

# Replace final layer
num_features = model.fc.in_features
model.fc = nn.Linear(num_features, num_classes)

# Fine-tuning strategy
for param in model.parameters():
    param.requires_grad = False
for param in model.layer4.parameters():
    param.requires_grad = True
```

**When to Fine-tune:**
- Small dataset: Freeze early layers, train final layers
- Large dataset: Fine-tune all layers
- Domain shift: Unfreeze more layers

### Regularization

**Effective Techniques:**
- **Data augmentation**: Random crops, flips, color jitter
- **Dropout**: 0.2-0.5 in fully connected layers
- **Label smoothing**: Prevents overconfidence
- **Mixup**: Linear combinations of images and labels
- **CutMix**: Crops from one image into another

```python
# Strong augmentation for fine-tuning
transforms = [
    transforms.RandomResizedCrop(224, scale=(0.8, 1.0)),
    transforms.ColorJitter(brightness=0.4, contrast=0.4, saturation=0.4),
    transforms.RandomHorizontalFlip(),
    transforms.ToTensor()
]
```

### Optimization Strategies

**Learning Rate Schedules:**
- **Cosine annealing**: Gradual LR decay
- **Warmup**: Start with low LR, gradually increase
- **One-cycle policy**: LR increases then decreases

**Modern Optimizers:**
- **AdamW**: Adam with weight decay decoupling
- **LAMB**: Layer-wise adaptive moments (for large batches)
- **Novograd**: Adam variant with normalized gradients

### Training Tips (2020-2024)

1. **ImageNet-22K pretraining**: Better representations, transfer better
2. **Larger batch sizes**: Use effective batch size (linear scaling rule)
3. **EMA (Exponential Moving Average)**: Better final model
4. **Mixed precision training**: FP16 for speed, FP32 for accuracy
5. **Gradient clipping**: Prevent exploding gradients

```python
# Mixed precision training
from torch.cuda.amp import autocast, GradScaler

scaler = GradScaler()
with autocast():
    outputs = model(inputs)
    loss = criterion(outputs, targets)

scaler.scale(loss).backward()
scaler.step(optimizer)
scaler.update()
```

## 📚 Modern Architectures Summary

| Architecture | Year | Key Innovation | Best For |
|--------------|------|----------------|----------|
| ResNet | 2015 | Residual connections | Baseline, many tasks |
| DenseNet | 2016 | Dense connectivity | Parameter efficiency |
| EfficientNet | 2019 | Compound scaling | Accuracy-efficiency balance |
| MobileNet v3 | 2019 | NAS + hardware optimization | Mobile devices |
| RegNet | 2020 | Parameter-space design | Systematic architecture search |
| ConvNeXt | 2022 | Modernized CNN design | CNN vs Transformer comparison |
| ConvNeXt v2 | 2023 | Better normalization | Image modeling |

## 🎓 Emerging Trends (2023-2026)

### Hybrid Architectures
- CNN + Transformer combinations
- Leverage CNN efficiency + Transformer expressiveness

### Self-Supervised Learning
- MoCo, SimCLR, BYOL: Learn from unlabeled data
- Better pretraining without labels

### Dynamic Networks
- Conditionally compute based on input
- Adaptive inference time

### Neural Architecture Search
- Automated design of CNN architectures
- NAS-Bench, ProxylessNAS

---

*Document updated: March 2026*
*Includes latest developments from 2020-2024*
