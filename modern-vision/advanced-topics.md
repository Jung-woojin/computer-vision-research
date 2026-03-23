# Advanced Topics in Computer Vision

This document covers cutting-edge topics in modern computer vision including Vision Transformers, Diffusion Models, Metric Learning, and Multimodal Vision Models.

## 📚 Overview

Modern computer vision has expanded beyond traditional CNN-based approaches to include:
- **Vision Transformers**: Self-attention mechanisms
- **Diffusion Models**: Generative vision
- **Metric Learning**: Similarity-based learning
- **Multimodal Vision**: Combining vision with language
- **Change Detection**: Temporal analysis

## 🔷 Vision Transformers

### Vision Transformer (ViT, 2020)

**Breaking CNNs for Computer Vision**

**Key Innovation:**
- **Pure transformer architecture** for images
- **Patch embeddings** instead of convolutional layers
- **Global self-attention**

**Architecture:**
```
Image → Patch Embedding → Linear Projection → Transformer Encoder
```

**Patch Embedding:**
```
Image (3×H×W) → Patches (H/P × W/P × P²·C) → Linear → (H/P × W/P × D)
```

**Transformer Encoder:**
```
Input: Patch embeddings + CLS token
Output: [CLS] token → Classification
```

**Implementation:**
```python
class VisionTransformer(nn.Module):
    def __init__(self, img_size=224, patch_size=16, dim=768, depth=12, num_heads=12):
        super().__init__()
        self.patch_embed = PatchEmbed(img_size, patch_size, 3, dim)
        self.cls_token = nn.Parameter(torch.zeros(1, 1, dim))
        self.pos_embed = nn.Parameter(torch.zeros(1, img_size//patch_size**2 + 1, dim))
        self.transformer = nn.TransformerEncoder(
            nn.TransformerEncoderLayer(dim, num_heads),
            depth=depth
        )
        self.head = nn.Linear(dim, num_classes)
    
    def forward(self, x):
        x = self.patch_embed(x)
        cls_token = self.cls_token.expand(x.shape[0], -1, -1)
        x = torch.cat((cls_token, x), dim=1)
        x = x + self.pos_embed
        x = self.transformer(x)
        return self.head(x[:, 0])
```

**Performance:**
- **ViT-Base**: 81.2% (ImageNet-21k)
- **ViT-Large**: 84.2% (ImageNet-21k)
- Comparable to CNNs with sufficient data
- **Better scalability** with data size

**Training:**
- **Large dataset required**: ImageNet-21k (14M images)
- **Fine-tuning**: Transfer to smaller datasets
- **Training time**: Longer than CNNs

### DeiT (Data-efficient Image Transformers, 2020)

**Training ViT with Small Datasets**

**Key Techniques:**
- **Distillation token**: Teacher-student distillation
- **Regularization**: Data augmentation for ViT
- **Stable training** for small datasets

**Performance:**
- **ViT-Base**: 79.8% (ImageNet-1k, distilled)
- **Better data efficiency** than vanilla ViT

### Swin Transformer (2021)

**Hierarchical Vision Transformer using Shifted Windows**

**Key Innovations:**
1. **Shifted Window Attention**: Local attention with window shifting
2. **Hierarchical**: Multi-resolution representation
3. **Linear complexity**: O(N) instead of O(N²)

**Architecture:**
```
Stage 1: Patch embedding (H/4 × W/4)
Stage 2: Shifted window (H/8 × W/8)
Stage 3: Shifted window (H/16 × W/16)
Stage 4: Shifted window (H/32 × W/32)
```

**Window-based Self-Attention:**
```python
class WindowAttention(nn.Module):
    def __init__(self, dim, window_size, num_heads):
        super().__init__()
        self.window_size = window_size
        self.num_heads = num_heads
        
        self.attn = nn.MultiheadAttention(dim, num_heads)
        self.relative_bias_table = nn.Parameter(...)
        
        self.softmax = nn.Softmax(dim=-1)
    
    def forward(self, x, mask):
        # Shifted window attention
        # Relative position encoding
        attn = self.attn(q, k, v)
        return attn + self.relative_bias_table
```

**Swin Transformer Variants:**

| Model | Params | ImageNet Acc |
|-------|--------|-----------|----|
| Swin-T | 28M | 81.3% |
| Swin-S | 50M | 83.2% |
| Swin-B | 88M | 83.6% |
| Swin-L | 197M | 84.4% |

**Performance:**
- **mAP: 58.7%** (COCO object detection)
- **mIoU: 58.1%** (COCO instance segmentation)
- **State-of-the-art** for detection and segmentation

**Advantages:**
- **Generalizable**: Works across different tasks
- **Efficient**: Linear complexity
- **Hierarchical**: Multi-scale features

### MobileViT (2021)

**Lightweight Transformer for Mobile**
- **CBAM** (Convolutional + Transformer)
- **Global processing** on mobile
- **Better than CNNs** for classification

**Performance:**
- **MobileViT-S**: 69.0% (ImageNet, 64×64)
- **MobileViT-XXS**: 64.5% (ImageNet, 64×64)
- **10× faster** than CNNs in some cases

## 🔵 Diffusion Models in Vision

### Diffusion Basics

**Forward Process:**
```
x_0 → x_1 → ... → x_T ~ N(0, I)
q(x_t | x_{t-1}) = N(x_t; √(1-β_t)·x_{t-1}, β_t·I)
```

**Reverse Process:**
```
p_θ(x_{t-1} | x_t) = N(x_{t-1}; μ_θ(x_t, t), σ_t·I)
```

**Training Objective:**
```
L = E[||ε - ε_θ(x_t, t)||²]
```

### Stable Diffusion (2022)

**Latent Diffusion for Images**

**Key Innovations:**
- **Latent space**: Diffusion in compressed space
- **VAE encoder/decoder**: Image ↔ Latent
- **Text conditioning**: T5 encoder + cross-attention

**Architecture:**
```
Image → VAE Encode → Latent Diffusion → VAE Decode → Image
          ↓
      Text Embedding → Cross-Attention
```

**Implementation:**
```python
class StableDiffusion(nn.Module):
    def __init__(self):
        super().__init__()
        self.vae = VAE()  # Encoder-decoder
        self.unet = UNetModel(
            in_channels=4,  # Latent channels
            out_channels=4,
            attention_resolutions=[4, 8, 16]
        )
        self.text_encoder = T5Encoder()
    
    def forward(self, image, text):
        latent = self.vae.encode(image)
        text_emb = self.text_encoder(text)
        noise = self.unet(latent, timesteps, text_emb)
        return noise
```

**Performance:**
- **2048×2048** resolution
- **15-25 inference steps**
- **1000× faster** than pixel-space diffusion

### Stable Diffusion XL (2023)

**Improved Quality and Resolution**

**Features:**
- **Dual text encoders**: CLIP + T5
- **Larger UNet**: Better quality
- **Resolution**: 1024×1024
- **Better prompt following**

**Performance:**
- **High-fidelity images**
- **Better text alignment**
- **Faster inference**

### ControlNet (2023)

**Conditioning on Additional Inputs**
- **Edge maps**
- **Depth maps**
- **Pose estimation**
- **Any control signal**

**Architecture:**
```
Base Stable Diffusion
  + ControlNet (copied encoder weights)
  + Control signal (edge/depth/pose)
```

**Applications:**
- **Image-to-image** with constraints
- **Line drawing → Real image**
- **Pose-guided generation**

### AnimateDiff (2023)

**Video Generation from Diffusion**
- **Motion modules** for temporal consistency
- **Temporal attention**
- **Consistent characters/scenes**

**Performance:**
- **16-32 fps**
- **64×64×16** resolution
- **Smooth transitions**

## 🎯 Metric Learning

### Purpose

**Learn embeddings** where:
- Similar samples are close in embedding space
- Dissimilar samples are far apart

**Applications:**
- Face recognition
- Re-identification (person, vehicle)
- Similarity search
- Few-shot learning

### Loss Functions

**Triplet Loss:**
```
L = max(||f(a) - f(p)||² - ||f(a) - f(n)||² + m, 0)
```

Where:
- `a` = anchor
- `p` = positive (same class)
- `n` = negative (different class)
- `m` = margin

**Implementation:**
```python
class TripletLoss(nn.Module):
    def __init__(self, margin=0.5):
        super().__init__()
        self.margin = margin
        self.mse_loss = nn.MSELoss()
    
    def forward(self, anchor, positive, negative):
        pos_dist = self.mse_loss(anchor, positive)
        neg_dist = self.mse_loss(anchor, negative)
        loss = max(pos_dist - neg_dist + self.margin, 0)
        return loss
```

**Soft Triple Margin Loss:**
```
L = -log(exp(-d_ap) / (exp(-d_ap) + Σ_n exp(-d_an)))
```

**ArcFace (2018):**
```
Add angular margin to classification loss
L = -log(exp(s·cos(θ + m)) / (exp(s·cos(θ + m)) + Σ_j exp(s·cos(θ_j))))
```

**Performance:**
- **1.07% error** (LFW face recognition)
- **SOTA** for face verification

### InfoNCE Loss

**Contrastive Learning:**
```
L = -log(exp(sim(f(x), f(x'))/τ) / Σ_k exp(sim(f(x), f(x_k))/τ))
```

**Applications:**
- SimCLR (contrastive learning)
- MoCo (memory bank)
- Self-supervised learning

**SimCLR Architecture:**
```
Two augmented views → Backbone → Projection head → Contrastive loss
```

**Performance:**
- **61.1% top-1** (ImageNet-1k, supervised)
- **Better generalization**

## 🔶 Multimodal Vision Models

### CLIP (Contrastive Language-Image Pre-training, 2021)

**Zero-Shot Image Classification**

**Architecture:**
```
Image Encoder: Vision Transformer
Text Encoder: Transformer
Shared embedding space
```

**Training:**
- **100M image-text pairs**
- **Contrastive loss**: Image and text embeddings aligned
- **Zero-shot transfer**

**Implementation:**
```python
class CLIP(nn.Module):
    def __init__(self):
        super().__init__()
        self.image_encoder = ResNet50()
        self.text_encoder = TransformerEncoder()
        self.logit_scale = nn.Parameter(torch.ones([]) * np.log(1/0.07))
    
    def forward(self, image, text):
        img_emb = self.image_encoder(image)
        txt_emb = self.text_encoder(text)
        logit_scale = self.logit_scale.exp()
        logits = logit_scale * img_emb @ txt_emb.T
        return logits
```

**Performance:**
- **68.1% top-1** (ImageNet, zero-shot)
- **Comparable to supervised ResNet-50** (76.1%)
- **Generalizes well** to new tasks

### ALIGN (2021)

**Large-Scale Image-Text Pretraining**
- **1.8 billion** image-text pairs
- **Better alignment** at scale
- **Foundation for downstream tasks**

**Performance:**
- **Better generalization** than CLIP
- **Larger scale** required

### Flamingo (2022)

**Vision-Language Model with Contextualization**
- **Cross-attention blocks**
- **Frozen vision and language encoders**
- **Few-shot learning**

**Architecture:**
```
Vision Encoder + Language Model
  → Cross-attention layers
  → Few-shot conditioning
```

**Performance:**
- **Few-shot image captioning**: Better than supervised
- **Visual reasoning**: Better than zero-shot CLIP
- **Few-shot VQA**: Comparable to supervised

### BLIP-2 (2023)

**Bootstrapping Language-Image Pre-training**

**Key Innovation:**
- **Frozen pretrained vision encoder**
- **Q-Former**: Querying Transformer
- **Frozen LLM**
- **Two-stage training**

**Architecture:**
```
Image → Frozen Vision Encoder
           ↓
      Q-Former (learnable queries)
           ↓
      Frozen LLM (text generation)
```

**Performance:**
- **Image captioning**: SOTA
- **VQA**: SOTA
- **1/3 training cost** of full training

### InternVL (2023-2024)

**Scalable Vision-Language Learning**
- **High-resolution vision encoder**
- **12M+ parameters**
- **Superior performance**

**Performance:**
- **1920×1920** resolution
- **Better OCR** and text recognition
- **SOTA** on benchmarks

## 🌈 Change Detection

### Purpose

**Detect changes** between two temporal images:
- Land cover changes
- Urban development
- Disaster assessment
- Medical image comparison

### Siamese Networks for Change Detection

**Architecture:**
```
Image 1 → Shared CNN Backbone → Feature Map 1
Image 2 → Shared CNN Backbone → Feature Map 2
           ↓
       Concatenate features
           ↓
       Decoder → Change map
```

**Change Detection Loss:**
```
L = BCE(change_pred, change_gt)
```

**Implementation:**
```python
class ChangeDetection(nn.Module):
    def __init__(self):
        super().__init__()
        self.encoder = ResNet50(pretrained=True)
        self.decoder = nn.Sequential(
            nn.Conv2d(2048, 1024, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(1024, 512, 3, padding=1),
            nn.ReLU(),
            nn.Conv2d(512, 2, 1)  # Change / No change
        )
    
    def forward(self, img1, img2):
        feat1 = self.encoder(img1)
        feat2 = self.encoder(img2)
        
        concat = torch.cat([feat1, feat2], dim=1)
        change = self.decoder(concat)
        
        return change
```

### Recent Advances (2020-2024)

#### STANet (2021)
- **Spatio-Temporal Attention Network**
- **Better long-term dependencies**
- **SOTA** on LEVIR-CD dataset

**Performance:**
- **F1 Score: 84.6%** (LEVIR-CD)
- **IoU: 71.0%**

#### BIT (2022)
- **Bitemporal Image Transformer**
- **Global reasoning**
- **Better accuracy**

**Performance:**
- **F1 Score: 86.3%** (LEVIR-CD)
- **mIoU: 73.2%**

#### ChangeFormer (2022)
- **Transformer-based**
- **Temporal attention**
- **Robust to noise**

**Performance:**
- **F1 Score: 87.0%** (LEVIR-CD)
- **Better generalization**

### Applications

1. **Urban Planning**: City growth monitoring
2. **Disaster Assessment**: Flood, fire damage
3. **Agriculture**: Crop monitoring
4. **Forestry**: Deforestation detection
5. **Medical**: Disease progression

## 🎯 Metric Learning in Vision

### Face Recognition

**ArcFace Implementation:**
```python
class ArcFace(nn.Module):
    def __init__(self, num_classes, embedding_dim=512):
        super().__init__()
        self.backbone = ResNet50()
        self.bn = nn.BatchNorm1d(embedding_dim)
        self.fc = nn.Linear(embedding_dim, num_classes)
        self.margin = 0.5
        self.scale = 30.0
    
    def forward(self, x, y):
        x = self.backbone(x)
        x = self.bn(x)
        x_norm = F.normalize(x, dim=1)
        
        # ArcFace: Add angular margin
        cos_theta = F.linear(x_norm, F.normalize(self.fc.weight, dim=1))
        cos_theta = cos_theta.clamp(-1, 1)
        
        # Apply margin
        theta = cos_theta.acos()
        theta = theta + self.margin
        
        cos_theta = theta.cos() * self.scale
        return cos_theta
```

**Performance:**
- **LFW**: 99.8% (1.07% error)
- **CAL** (1:1 verification): 99.5%

### Person Re-Identification

**Deep ReID** methods:
- **PCB** (Part-based CNN): Body part pooling
- **OSNet**: Cross-layer normalization
- **OSNet-AIN**: Attribute-informed

**Performance (Market-1501):**
- **mAP: 95.5%** (OSNet-AIN)
- **Rank-1: 97.4%**

## 🔬 Emerging Trends (2024-2026)

### Neural Radiance Fields (NeRF)

**3D Scene Representation:**
```
(x, y, z, θ, φ) → Network → (rgb, density)
```
- **Continuous representation**
- **Novel view synthesis**
- **High-fidelity 3D**

**Instant-NGP:**
- **Multi-resolution hash** encoding
- **1000× faster** than original NeRF
- **Real-time rendering**

### 3D Gaussian Splatting (2023)

**New 3D Representation:**
- **Gaussian points** for scene
- **Differentiable rendering**
- **Real-time** at 1080p

**Performance:**
- **100+ FPS** (1080p)
- **Better quality** than NeRF
- **Faster training**

### Video Foundation Models

**VideoMAE (2022):**
- **Masked autoencoders** for video
- **Self-supervised learning**
- **Video understanding**

**TimeSformer (2022):**
- **Transformer for video**
- **Space-time attention**
- **Action recognition**

**Performance (Kinetics-400):**
- **TimeSformer**: 83.8% accuracy
- **VideoMAE**: 84.1% accuracy

### Prompt Engineering for Vision

**CLIP-based Prompt Learning:**
```
P = "A {class_name} in an image"
Embed = CLIP.encode(P)
Similarity with image → Classification
```

**Automatic Prompt Engineering:**
- **Learnable prompts** for tasks
- **Adaptation** to downstream tasks
- **Better performance**

## 📊 Comprehensive Performance Comparison

### ImageNet Classification

| Method | Parameters | Accuracy | Type |
|--------|----------|------------|--|--|
| ResNet-152 | 60M | 84.3% | CNN |
| EfficientNet-B7 | 66M | 84.3% | CNN |
| ConvNeXt-L | 198M | 85.0% | CNN |
| ViT-Large | 307M | 85.9% | Transformer |
| DINOv2 | 1.1B | 86.2% | Transformer |

### Object Detection (COCO)

| Method | mAP | Latency | Type |
|--------|-----|---------|--|--|
| Faster R-CNN | 38.0% | 120ms | CNN |
| Cascade R-CNN | 49.0% | 200ms | CNN |
| Mask R-CNN | 37.5% | 180ms | CNN |
| DETR | 42.0% | 72s | Transformer |
| Co-DETR | 55.7% | 30ms | Transformer |

### Semantic Segmentation (ADE20K)

| Method | mIoU | Latency | Type |
|--------|-----|---------|--|--|
| DeepLab v3+ | 45.8% | 130ms | CNN |
| SegFormer-B5 | 61.0% | 150ms | Transformer |
| Mask2Former | 59.2% | 180ms | Transformer |

### Video Action Recognition (Kinetics-400)

| Method | Top-1 Acc | FPS | Type |
|--------|---------|--|-----|
| I3D | 76.2% | 50 | CNN |
| TimeSformer | 83.8% | 30 | Transformer |
| VideoMAE | 84.1% | 25 | Transformer |

## 📚 Resources & Implementations

### Vision Transformers

**Hugging Face Transformers:**
```python
from transformers import ViTModel, AutoModelForImageClassification

model = AutoModelForImageClassification.from_pretrained('google/vit-base-patch16-224')
```

**TIMM (PyTorch Image Models):**
```python
import timm

model = timm.create_model('vit_base_patch16_224', pretrained=True)
```

### Diffusion Models

**Diffusers (Hugging Face):**
```python
from diffusers import StableDiffusionPipeline

pipe = StableDiffusionPipeline.from_pretrained("runwayml/stable-diffusion-v1-5")
image = pipe("a cat playing with yarn").images[0]
```

**LDM:**
- **Stable Diffusion** implementations
- **ControlNet** support
- **Custom training**

### Multimodal Models

**CLIP:**
```python
import clip
import torch

model, preprocess = clip.load("ViT-B/32")
image = preprocess(image).unsqueeze(0)
text = clip.load(["cat", "dog"])

logits = model(image, text)
probs = logits.softmax(dim=-1)
```

### Datasets

**Vision:**
- **ImageNet**: Classification
- **COCO**: Detection/Segmentation
- **Kinetics**: Video

**Multimodal:**
- **Conceptual Captions**: 3.3M image-text pairs
- **LAION-400M**: 400M pairs
- **LLaVA**: Instruction tuning

## 🎓 Best Practices

### When to Use Transformers

**Advantages:**
- **Global context**: Self-attention captures relationships
- **Scalability**: Better with more data
- **Flexibility**: Works across tasks

**Disadvantages:**
- **Data-hungry**: Need large datasets
- **Computational**: More expensive
- **Training time**: Longer

**Use when:**
- Large dataset available
- Complex dependencies
- Transfer learning to similar tasks

### When to Use Diffusion

**Advantages:**
- **High quality**: Better than GANs
- **Diversity**: More varied outputs
- **Controllable**: Conditioning possible

**Disadvantages:**
- **Slow inference**: 10-100 steps
- **Training**: Computationally expensive

**Use when:**
- High-quality generation needed
- Controllable synthesis required
- Computational budget allows

### When to Use Transformers + Diffusion

**Hybrid approaches:**
- **Stable Diffusion**: ViT for text, U-Net for image
- **Transformer for diffusion**: Better context
- **Best of both worlds**

**Emerging trend:**
- **Diffusion Transformers (DiT)**
- **Pure transformer** diffusion
- **Better scaling**

---

*Document updated: March 2026*
*Includes latest developments from 2020-2026*
