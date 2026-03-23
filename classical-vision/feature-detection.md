# Feature Detection

Feature detection is fundamental to computer vision, enabling tasks like image matching, object recognition, tracking, and 3D reconstruction. This document covers edge detection, corner detection, blob detection, and keypoint descriptors.

## 📚 Overview

**Features** are distinctive patterns in images that can be reliably detected and matched across images. They include:
- Edges (boundaries between objects)
- Corners (intersections of edges)
- Blobs (regions different from surroundings)
- Localized patterns (SIFT, SURF keypoints)

**Key Requirements for Good Features:**
- **Repeatability**: Detected in multiple views of same scene
- **Distinctiveness**: Easily distinguishable from other features
- **Locality**: Localized in small image regions
- **Invariance**: Robust to scale, rotation, illumination changes

---

## 🔴 Edge Detection

### Sobel Operator

**Mathematical Definition:**
```
Gx = [-1  0  1]      Gy = [-1 -2 -1]
     [-2  0  2]           [ 0  0  0]
     [-1  0  1]           [ 1  2  1]
```

**Gradient Magnitude:**
```
|G| = √(Gx² + Gy²)
```

**Gradient Direction:**
```
θ = arctan(Gy / Gx)
```

**Implementation:**
```python
import cv2
import numpy as np

# Sobel in x direction
sx = cv2.Sobel(image, cv2.CV_64F, 1, 0, ksize=3)

# Sobel in y direction
sy = cv2.Sobel(image, cv2.CV_64F, 0, 1, ksize=3)

# Magnitude
magnitude = np.sqrt(sx**2 + sy**2)

# Convert to uint8
magnitude = np.uint8(255*magnitude / np.max(magnitude))
```

**Characteristics:**
- Simple and fast
- Responds to both horizontal and vertical edges
- Smoothing component (3×3 kernel) reduces noise sensitivity
- Sensitive to noise without preprocessing

### Prewitt Operator

**Similar to Sobel** but with uniform weights:
```
Gx = [-1  0  1]      Gy = [-1 -1 -1]
     [-1  0  1]           [ 0  0  0]
     [-1  0  1]           [ 1  1  1]
```

**Differences from Sobel:**
- Less emphasis on central pixels
- Slightly less accurate edge localization
- Simpler computation

### Laplacian Operator

**Second-Order Derivative:**
```
L = [ 0  -1   0]
    [-1   4  -1]
    [ 0  -1   0]
```

**Properties:**
- **Rotationally invariant** (isotropic)
- **Zero-crossing** indicates edge location
- Sensitive to noise (no smoothing)
- Faster than Sobel (single kernel vs two)

**Implementation:**
```python
# Laplacian with automatic kernel size
laplacian = cv2.Laplacian(image, cv2.CV_64F)

# With 3x3 kernel
laplacian = cv2.Laplacian(image, cv2.CV_64F, ksize=3)

# Zero-crossing detection
edges = cv2.Canny(image, 0, 0)  # Canny uses Laplacian internally
```

**Use Cases:**
- Blob detection preprocessing
- Edge localization refinement
- Image sharpening

### Canny Edge Detector (1986)

**The Gold Standard** for edge detection

**Algorithm Steps:**

1. **Noise Reduction**
   ```python
   blurred = cv2.GaussianBlur(image, (5, 5), 1.5)
   ```

2. **Gradient Computation**
   ```python
   sx = cv2.Sobel(blurred, cv2.CV_64F, 1, 0, ksize=5)
   sy = cv2.Sobel(blurred, cv2.CV_64F, 0, 1, ksize=5)
   magnitude = np.sqrt(sx**2 + sy**2)
   direction = np.arctan2(sy, sx)
   ```

3. **Non-Maximum Suppression**
   - Thin edges to 1-pixel width
   - Keep only local maxima in gradient direction

4. **Double Thresholding**
   ```
   High threshold (h): Strong edges
   Low threshold (l): Weak edges
   
   Typically: h = 2·l
   ```

5. **Edge Tracking by Hysteresis**
   - Strong edges: Keep
   - Weak edges connected to strong: Keep
   - Weak edges isolated: Discard

**Implementation:**
```python
# Canny with automatic thresholds
edges = cv2.Canny(blurred, None, None)

# Canny with manual thresholds
edges = cv2.Canny(blurred, 50, 150)

# Python without OpenCV
from skimage.feature import canny
edges = canny(blurred, sigma=1.0)
```

**Performance Characteristics:**
- **Optimal**: Minimizes error rate for edge detection
- **Well-localized**: Accurate edge positioning
- **Single response**: One edge pixel per actual edge
- **Computationally expensive** but worth it for quality

### Modern Edge Detection Methods

#### L0 Gradient Minimization (2011)
```
minimize: ||I - I'||² + λ·||∇I'||₀
```
- **l0-norm**: Counts non-zero gradients
- Preserves sharp edges
- Produces piecewise constant results

#### HED (Holistically-Nested Edge Detection, 2015)
**Deep Learning Approach:**
- Multi-scale CNN with side outputs
- End-to-end edge detection
- **mAP: 0.91** on BSDS500

```python
# HED implementation
from pytorch_pretrained_bert import HED

model = HED()
edges = model(image)
```

#### PiDiNet (2019)
**Performance:**
- **mAP: 0.914** on BSDS500
- Faster than HED
- Improved thin edge detection

## 🔷 Corner Detection

### Harris Corner Detector (1988)

**Core Idea:**
- Corners change significantly in ALL directions when window is shifted
- Edges change significantly in ONE direction
- Flat regions change minimally in all directions

**Mathematical Foundation:**

1. **Compute gradients** in x and y directions:
   ```
   Ix = ∂I/∂x,  Iy = ∂I/∂y
   ```

2. **Structure Tensor** (Second moments matrix):
   ```
   M = Σx,y W(x,y) [Ix²  IxIy]
                        [IxIy  Iy²]
   ```
   Where W is a Gaussian window

3. **Corner Response Function:**
   ```
   R = det(M) - k·trace(M)²
     = (λ₁·λ₂) - k·(λ₁ + λ₂)²
   ```
   Where λ₁, λ₂ are eigenvalues of M

4. **Classification:**
   - R >> 0: Corner
   - R << 0: Edge
   - R ≈ 0: Flat region

**Implementation:**
```python
# Harris corner detection
dst = cv2.cornerHarris(gray, blockSize=2, ksize=3, k=0.04)

# Dilate to mark corners
dst = cv2.dilate(dst, None)

# Threshold for detection
corner_threshold = 0.01 * dst.max()
corners = dst > corner_threshold
```

**Parameters:**
- `blockSize`: Size of neighbor window (2-3)
- `ksize`: Sobel kernel size (3-5)
- `k`: Detector sensitivity parameter (0.04-0.06)

**Limitations:**
- Sensitive to image scaling
- Computationally expensive (eigenvalue computation)

### Shi-Tomasi Corner Detector (1994)

**Improvement over Harris:**
- Better feature stability
- Uses minimum eigenvalue directly

**Corner Response:**
```
R = min(λ₁, λ₂)
```

**Selection Criteria:**
- Features must have both eigenvalues > threshold
- Select top-N corners with highest R values

**Implementation:**
```python
# Shi-Tomasi corner detection
corners = cv2.goodFeaturesToTrack(
    image,
    maxCorners=100,
    qualityLevel=0.01,
    minDistance=10,
    blockSize=3,
    ksize=3,
    useHarrisDetector=False
)
```

**Advantages over Harris:**
- More robust to noise
- Better for tracking (stable features)
- Simpler corner response computation

### FAST (Features from Accelerated Segment Test, 2006)

**Speed Optimized** for real-time applications

**Algorithm:**
1. Test Bresenham circle of 16 pixels around candidate
2. If 9 or more consecutive pixels are all brighter or darker than center → corner
3. Apply Harris-like non-maximum suppression

**Key Features:**
- **Extremely fast**: ~100x faster than Harris
- **No differentiation**: Uses pixel intensity comparisons
- **Learning-based**: Can train better corners

**Implementation:**
```python
# FAST detector
detector = cv2.FastFeatureDetector_create(threshold=12, nonmaxSuppression=True)
keypoints = detector.detect(image, None)

# Or with U-SURF variant
detector = cv2.FastFeatureDetector_create(
    threshold=20,
    nonmaxSuppression=False
)
```

**Performance:**
- Real-time on CPU
- Good for feature tracking
- Can be accelerated with ARM NEON on mobile

### ORB (Oriented FAST and Rotated BRIEF, 2011)

**Combines:**
- **FAST** for keypoint detection
- **BRIEF** for descriptor computation
- **Orientation** via image moments
- **Scale invariance** via image pyramid

**Key Innovations:**
1. **FAST-9**: 9-pixel comparison (faster than 16-pixel)
2. **Intensity centroid**: Computes orientation
3. **rBRIEF**: Rotated BRIEF descriptor
4. **Pyramid**: Multi-scale detection

**Implementation:**
```python
# ORB feature detection and description
orb = cv2.ORB_create(nfeatures=2000, scoreType=cv2.ORB_FAST_SCORE)

keypoints, descriptors = orb.detectAndCompute(image, None)

# Match descriptors
bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
matches = bf.match(descriptors1, descriptors2)
```

**Characteristics:**
- **Rotational invariant**: Yes
- **Scale invariant**: Partial (via pyramid)
- **Computationally efficient**: Excellent for real-time
- **No license**: Free (patent-free alternative to SIFT)

**Performance Comparison:**
| Method | Speed | Rotation Invariant | Scale Invariant | License |
|--------|-------|-------------------|-----------------|---------|
| Harris | Slow | No | No | Free |
| Shi-Tomasi | Medium | No | No | Free |
| FAST | Very Fast | No | No | Free |
| ORB | Fast | Yes | Partial | Free |
| SIFT | Medium | Yes | Yes | Patent* |
| SURF | Fast | Yes | Yes | Patent* |

*Patent expired 2020, now free

## 🔵 Blob Detection

### Laplacian of Gaussian (LoG)

**Mathematical Foundation:**

1. **Gaussian Smoothing:**
   ```
   G(x,y; σ) = (1/(2πσ²)) · exp(-(x² + y²)/(2σ²))
   ```

2. **Laplacian:**
   ```
   ∇²G = (x² + y² - 2σ²)/(σ⁶) · exp(-(x² + y²)/(2σ²))
   ```

3. **LoG:**
   ```
   LoG = ∇²G
   ```

**Properties:**
- Band-pass filter
- Detects blobs at specific scale
- Zero-crossings correspond to blob boundaries
- Scale-space theory foundation

**Implementation:**
```python
# OpenCV LoG
blob_image = cv2.Laplacian(image, cv2.CV_64F)

# scipy LoG
from scipy.ndimage import gaussian_laplace
blobs = gaussian_laplace(image, sigmas=[1, 2, 3])
```

### Difference of Gaussians (DoG)

**Approximation of LoG:**
```
DoG = G(x,y; σ₁) - G(x,y; σ₂)
```
Where σ₂ > σ₁ (typically 1.6×)

**Advantages:**
- **Computationally efficient**: Two Gaussians vs one derivative
- **Speed**: Can be computed via scale-space pyramid
- **Foundation for SIFT**

**Implementation:**
```python
def doblo(image, sigma1=1.0, sigma2=1.6):
    from scipy.ndimage import gaussian_filter
    
    g1 = gaussian_filter(image, sigma=sigma1)
    g2 = gaussian_filter(image, sigma=sigma2)
    
    doblo_image = g1 - g2
    return doblo_image
```

**Applications:**
- Key-point detection in SIFT
- Blob detection for various scales
- Preprocessing for feature extraction

### Simple Blob Detector (OpenCV)

**Configurable Parameters:**
```python
params = cv2.SimpleBlobDetector_Params()

# Filter by area
params.filterByArea = True
params.minArea = 10
params.maxArea = 1000

# Filter by circularity
params.filterByCircularity = True
params.minCircularity = 0.5

# Filter by color
params.filterByColor = True
params.blobColor = 0  # Black blobs on white background
params.thresholdStep = 10

# Create detector
detector = cv2.SimpleBlobDetector_create(params)

# Detect blobs
keypoints = detector.detect(image)
```

**Advanced Parameters:**
- `minThreshold`, `maxThreshold`: Range for blob darkness
- `thresholdStep`: Step size for threshold search
- `minDistBetweenBlobs`: Minimum distance between detected blobs
- `filterByConvexity`: Ratio of blob area to convex hull area

## 🎯 Keypoint Descriptors

### SIFT (Scale-Invariant Feature Transform, 1999)

**Pioneer** in robust feature detection

**Complete Algorithm:**

1. **Scale-Space Extrema Detection**
   - Gaussian pyramid with octaves
   - DoG for each octave
   - Compare each pixel to 26 neighbors (8 neighbors + 9 from previous octave + 9 from next octave)

2. **Keypoint Localization**
   - Remove low-contrast keypoints (threshold = 0.03)
   - Remove edge responses (Hessian determinant threshold = 10)

3. **Orientation Assignment**
   ```
   m(x,y) = √[(∂I/∂x)² + (∂I/∂y)²]
   θ(x,y) = arctan(∂I/∂y / ∂I/∂x)
   ```
   - Histogram of 360° with 36 bins
   - Top 3 orientations (multi-keypoint)

4. **Descriptor Creation**
   - 16×16 window around keypoint (4 octaves scale)
   - 4×4 sub-regions
   - 8-bin gradient histograms per sub-region
   - **128-dimensional vector**

**Descriptor Formula:**
```
D = [h₁,₁, h₁,₂, ..., h₄,₈]
```
Where hᵢ,ⱼ = histogram of orientation bin j in sub-region i

**Implementation:**
```python
# OpenCV SIFT (now patent-free)
sift = cv2.SIFT_create(nfeatures=0, nOctaveLayers=3, contrastThreshold=0.04, edgeThreshold=10)

keypoints, descriptors = sift.detectAndCompute(image, None)

# Match descriptors (Bruce Lowry matching)
bf = cv2.BFMatcher(cv2.NORM_L2, crossCheck=False)
matches = bf.knnMatch(descriptors1, descriptors2, k=2)

# Lowe's ratio test
good_matches = []
for m, n in matches:
    if m.distance < 0.75 * n.distance:
        good_matches.append(m)
```

**Performance:**
- **Invariance:** Scale, rotation, illumination
- **Distinctiveness:** 60,000 keypoints for 10% false positive rate
- **Robustness:** Survives image compression, filtering
- **Computational cost:** Moderate

**Papers:**
- Original: [Scale-Invariant Feature Transform from Scale-Space Viewpoints, 1998](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.53.2423)
- Detailed: [Distinctive Image Features from Scale-Invariant Keypoints, IJCV 2004](https://www.cs.ubc.ca/~lowe/papers/ijcv04.pdf)

### SURF (Speeded Up Robust Features, 2006)

**Goal:** Faster SIFT with similar performance

**Key Innovations:**

1. **Hessian Matrix Approximation**
   ```
   L_xx ≈ box filter (x-derivative, second order)
   ```
   - Uses integral images for O(1) computation
   - 3×3 or 9×9 box filters

2. **Scale-Space Representation**
   - **Box filters** of increasing size
   - Faster Gaussian approximation via integral images

3. **Descriptor**
   - 4×4 sub-regions (same as SIFT)
   - 8-bin Haar wavelet responses (x and y)
   - **128 or 256 dimensions**

**Implementation:**
```python
# SURF detector
surf = cv2.SURF_create(hessianThreshold=400, nOctaves=3, nOctaveLayers=4)

keypoints, descriptors = surf.detectAndCompute(image, None)

# SURF is binary by default now (80-bit or 128-bit)
# Use BFMatcher with NORM_HAMMING
bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
matches = bf.match(descriptors1, descriptors2)
```

**Performance Comparison (SURF vs SIFT):**

| Metric | SURF | SIFT |
|--------|------|------|
| Speed | **1.5-2x faster** | Baseline |
| Scale invariance | Yes | Yes |
| Rotation invariance | Yes | Yes |
| Descriptor size | 64/128 dim | 128 dim |
| Match accuracy | Similar | Similar |
| Robustness | Good | Excellent |

**Papers:**
- [SURF: Speeded Up Robust Features, ECCV 2006](https://link.springer.com/chapter/10.1007/11744047_32)
- Extended: [Accurate and Efficient SURF, 2008](https://link.springer.com/chapter/10.1007/978-3-642-04287-3_6)

### BRIEF (Binary Robust Independent Elementary Features, 2011)

**Binary Descriptor** for ultra-fast matching

**Principle:**
- Compare pixel intensities at random points
- Create binary string based on comparisons

**Comparison Function:**
```
τ(p; x, y) = 1  if I(x) < I(y)
            0  otherwise
```

**Descriptor:**
```
b_I(p) = [τ(p; x₁, y₁), τ(p; x₂, y₂), ..., τ(p; xₗ, yₗ)]
```
Where pairs (xᵢ, yᵢ) follow a Gaussian distribution centered at p

**Matching:**
```
Hamming Distance = sum(b_I(p₁) ⊕ b_I(p₂))
```
Where ⊕ = XOR operation

**ORB Descriptor (rBRIEF):**
- Rotated BRIEF to handle image rotation
- Uses FAST orientations for rotation invariance

**Performance:**
- **Matching speed:** 10-100x faster than SIFT/SURF
- **Robustness:** Less robust to geometric transformations
- **Memory:** 1 byte per descriptor vs 128 bytes

**Implementation:**
```python
# BRIEF
brief = cv2.xfeatures2d.BriefDescriptorExtractor_create()
keypoints, descriptors = brief.compute(image, keypoints)
```

### Other Descriptors

#### FREAK (Fast Retina Keypoint, 2012)
- Inspired by human retina sampling pattern
- Hierarchical sampling
- **Binary descriptor, but more robust than BRIEF**

#### AKAZE (2015)
- Based on fast diffusion
- **Nonlinear scale space**
- Binary descriptor, fast like ORB but more robust

#### LATCH (2019)
- Learned binary descriptor
- Rotation and affine invariant
- Trained on 1M keypoints

## 📊 Comparative Analysis

### Feature Detection Speed & Robustness

| Method | Speed | Scale Inv | Rot Inv | Illum Inv | License | Use Case |
|--------|-------|-----------|---------|-----------|---------|----------|
| Sobel | ⚡⚡⚡ | No | No | Poor | Free | Edge detection |
| Canny | ⚡⚡ | No | No | Moderate | Free | General purpose |
| FAST | ⚡⚡⚡⚡⚡ | No | No | Good | Free | Real-time tracking |
| Harris | ⚡ | No | No | Good | Free | Corner detection |
| Shi-Tomasi | ⚡⚡ | No | No | Good | Free | Feature tracking |
| ORB | ⚡⚡⚡⚡ | Partial | Yes | Good | Free | General purpose |
| SIFT | ⚡⚡ | Yes | Yes | Excellent | Free (exp.) | Robust matching |
| SURF | ⚡⚡⚡ | Yes | Yes | Excellent | Free (exp.) | Real-time robust |

### Feature Matching Performance

**KNN Matching with Lowe's Ratio Test:**
```python
def knn_match_with_ratio(desc1, desc2, ratio=0.75):
    bf = cv2.BFMatcher()
    matches = bf.knnMatch(desc1, desc2, k=2)
    
    good = []
    for m, n in matches:
        if m.distance < ratio * n.distance:
            good.append(m)
    
    return good
```

**Typical Match Rates:**
- SIFT/SURF: 60-80% correct matches
- ORB/BRIEF: 40-60% correct matches
- Harris: 30-50% correct matches

## 🎯 Applications

### 1. Image Stitching
```python
def create_stitch(image1, image2):
    # Detect features
    sift = cv2.SIFT_create()
    kp1, des1 = sift.detectAndCompute(image1, None)
    kp2, des2 = sift.detectAndCompute(image2, None)
    
    # Match features
    bf = cv2.BFMatcher(cv2.NORM_L2)
    matches = bf.knnMatch(des1, des2, k=2)
    
    # Apply Lowe's ratio test
    good = [m for m,n in matches if m.distance < 0.75*n.distance]
    
    # Estimate homography
    src_pts = np.float32([kp1[m.queryIdx].pt for m in good]).reshape(-1,1,2)
    dst_pts = np.float32([kp2[m.trainIdx].pt for m in good]).reshape(-1,1,2)
    
    H, mask = cv2.findHomography(src_pts, dst_pts, cv2.RANSAC, 5)
    
    # Stitch
    result = cv2.warpPerspective(image2, H, (image1.shape[1] + image2.shape[1], max(image1.shape[0], image2.shape[0])))
    result[:image1.shape[0], :image1.shape[1]] = image1
    
    return result
```

### 2. Object Recognition
- Extract features from training images
- Match against test image
- Use RANSAC for outlier removal
- Count matching features per object class

### 3. 3D Reconstruction
- Detect keypoints across multiple views
- Match keypoints across views
- Triangulate 3D points
- Bundle adjustment for optimization

### 4. Visual SLAM
- FAST/SIFT for keypoint detection
- Track keypoints across frames
- Estimate camera motion
- Build map of 3D points

## 🔬 Advanced Topics

### Learning-Based Descriptors (2020+)

#### SuperPoint (2018)
- **CNN-based** corner detector
- Trained on synthetic data
- **Real-time** performance
- Outperforms ORB in most scenarios

**Implementation:**
```python
# SuperPoint
from superpoint import SuperPoint
detector = SuperPoint(max_num_keypoints=1024)
keypoints, descriptors, scores = detector.run(image, 2)
```

#### SuperGlue (2020)
- **Transformer-based** feature matching
- End-to-end matching with graph neural networks
- **State-of-the-art** accuracy
- Handles partial occlusion and viewpoint changes

**Papers:**
- [SuperPoint: Self-Supervised Interest Point Detection, ECCV 2018](https://arxiv.org/abs/1712.07629)
- [SuperGlue: Learning Feature Matching with Graph Neural Networks, CVPR 2020](https://arxiv.org/abs/1911.11763)

### Deep Learning Feature Detectors

#### D2-Net (2019)
- **Joint detector and descriptor**
- Trained end-to-end
- Good speed-accuracy tradeoff

#### R2D2 (2019)
- **Reproducible, Reliable, and Dense** features
- Learned reliability and reprojection scores
- Better than SuperPoint in some metrics

#### ALIKE (2021)
- **Affine-LIKE** descriptor
- Trained on real-world affine transformations
- Comparable to SIFT with learning-based approach

## 📚 Implementation Resources

### Libraries
- **OpenCV**: SIFT, SURF, ORB, FAST, Harris, Shi-Tomasi
- **scikit-image**: SIFT, Canny, FAST
- **PyTorch**: Deep learning-based detectors
- **Hugging Face**: Pre-trained models (SuperPoint, ALIKE)

### Datasets for Evaluation
- **HPatches**: 116 image pairs for feature evaluation
- **Aachen Day-Night**: Long-term appearance changes
- **Oxford Dataset**: 5 landmarks with multiple viewpoints
- **HPatches**: 116 sequences for affine deformation

## 🎓 Best Practices

1. **Choose detector based on application:**
   - Real-time tracking → FAST/ORB
   - Robust matching → SIFT/SuperPoint
   - General purpose → ORB (fast) or SuperPoint (accurate)

2. **Descriptor selection:**
   - Binary descriptors (ORB, BRIEF) → Fast matching on CPU
   - Float descriptors (SIFT, SURF) → Higher accuracy, slower

3. **Matching:**
   - Always use Lowe's ratio test
   - Use RANSAC for homography estimation
   - Consider geometry constraints

4. **Performance tuning:**
   - Adjust thresholds based on image quality
   - Use GPU for deep learning-based detectors
   - Consider memory constraints for large-scale applications

## 🔍 Emerging Trends (2020-2024)

1. **Self-supervised learning**: No manual annotations needed
2. **Transformer-based features**: Better global context
3. **Neural descriptors**: End-to-end learned features
4. **Real-time SIFT**: FPGA/ASIC implementations
5. **Query-efficient detection**: Fewer keypoints needed

---

*Document updated: March 2026*
*Includes modern deep learning approaches and traditional methods*
