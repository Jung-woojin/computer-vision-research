# Geometric Vision

Geometric vision deals with the relationship between images and the 3D world. This covers optical flow, epipolar geometry, stereo vision, and fundamental image formation models.

## 📚 Overview

**Geometric vision** provides the mathematical framework for understanding how 3D scenes project to 2D images and how to recover 3D structure from multiple views.

**Key Concepts:**
- Image formation and camera models
- Epipolar geometry for multi-view geometry
- Stereo vision for depth estimation
- Optical flow for motion estimation

## 🔷 Epipolar Geometry

### Fundamentals

**Epipolar geometry** describes the intrinsic geometric relationship between two views of the same scene, independent of scene structure.

**Key Elements:**

1. **Epipoles** (e, e')
   - Intersection of baseline with image planes
   - Point where baseline appears in each image
   - Unmatched points correspond to epipoles

2. **Epipolar Lines**
   - For point x in image 1, corresponding point x' lies on epipolar line l' in image 2
   - **Epipolar constraint**: x'ᵀFx = 0

3. **Epipolar Plane**
   - Plane defined by point X and two camera centers
   - Intersects both image planes as epipolar lines

### Fundamental Matrix

**Definition:**
```
x'ᵀFx = 0
```

Where:
- x, x' are corresponding points (in homogeneous coordinates)
- F is 3×3 matrix with 7 degrees of freedom
- Rank(F) = 2

**Properties:**
- Defines constraint between two views
- Independent of scene structure
- 7-parameter estimation (8-point algorithm)

**Estimation (8-Point Algorithm):**
```python
def estimate_fundamental(pts1, pts2):
    """
    Estimate fundamental matrix using 8-point algorithm
    pts1, pts2: N×2 arrays of corresponding points
    """
    # Normalize points (crucial for stability)
    pts1_norm, T1 = normalize_points(pts1)
    pts2_norm, T2 = normalize_points(pts2)
    
    # Build matrix A for Ax = 0
    # Each correspondence gives one equation
    A = build_matrix(pts1_norm, pts2_norm)  # N×9
    
    # SVD to find null space
    U, S, Vt = np.linalg.svd(A)
    F = Vt[-1].reshape(3, 3)
    
    # Enforce rank-2 constraint
    U, S, Vt = np.linalg.svd(F)
    S[-1] = 0
    F = U @ np.diag(S) @ Vt
    
    # Denormalize
    F = T2.T @ F @ T1
    
    return F
```

**Alternative Estimation Methods:**
- **7-point algorithm**: For exactly 7 correspondences
- **RANSAC**: Robust against outliers
- **PROSAC**: Progressive sampling for better convergence

### Essential Matrix

**Relationship to Fundamental Matrix:**
```
E = K'ᵀFK
```

Where:
- K, K' are camera intrinsic matrices
- E is valid for calibrated cameras

**Properties:**
- 5 degrees of freedom (3 rotation + 2 translation direction)
- Internal constraints: 2 equal singular values, one zero
- **E = [t]×R** where [t]× is skew-symmetric matrix of translation

**Recovery from E:**
```python
def recover_pose(E):
    """
    Recover rotation and translation from essential matrix
    Returns: R, t, inliers
    """
    # SVD decomposition
    U, S, Vt = np.linalg.svd(E)
    
    # Ensure valid rotation (R must be proper rotation matrix)
    # Handle determinant sign
    if np.linalg.det(U @ Vt) < 0:
        U[:, -1] *= -1
    
    # Standard form
    W = np.array([[0, -1, 0],
                  [1, 0, 0],
                  [0, 0, 1]])
    
    R1 = U @ W @ Vt
    R2 = U @ W.T @ Vt
    
    # Four possible solutions
    # t = ±(U @ [0,0,1]T)
    
    # Use triangulation to select correct solution
    return R, t
```

### Pose Estimation (PnP)

**Perspective-n-Point Problem:**
- Given: n 3D points and their 2D projections
- Find: Camera pose (R, t)

**Algorithms:**

1. **P3P (3-point)**
   - Minimal solver (4 solutions)
   - No scale ambiguity
   - Used with RANSAC for robustness

2. **EPnP (Efficient PnP, 2006)**
   - O(n) complexity
   - Global optimum
   - Implementation in OpenCV

```python
# Solve PnP using OpenCV
retval, rvec, tvec = cv2.solvePnP(
    object_points,      # N×3 array of 3D points
    image_points,       # N×2 array of 2D points
    camera_matrix,      # 3×3 intrinsic matrix
    dist_coeffs,        # distortion coefficients
    method=cv2.SOLVEPNP_EPNP
)

# Convert rvec to rotation matrix
R, _ = cv2.Rodrigues(rvec)
```

3. **UPnP (Unconstrained PnP)**
   - No a priori camera calibration needed
   - Recovers both intrinsics and extrinsics

## 📷 Stereo Vision

### Stereo Geometry

**Basic Setup:**
```
     Camera 1           Camera 2
        C1---------------C2  (baseline B)
        |\              /|
        | \            / |
        |  \    X    /  |
        |   \      /   |
        |    \    /    |
        |     \  /     |
        |      \/      |
        |      /\      |
        |     /  \     |
        |    /    \    |
        |   /      \   |
        |  /        \  |
        | /          \ |
        |/            \|
       x1             x2
```

**Triangulation Principle:**
```
Z = (f · B) / d
X = x · Z / f
Y = y · Z / f
```

Where:
- Z: depth (disparity = B/Z)
- d: disparity = x₁ - x₂
- f: focal length
- B: baseline (distance between cameras)

### Stereo Rectification

**Goal:** Align epipolar lines horizontally to simplify matching

**Mathematical Transformation:**
```
H₁: R² → R²  (rectification for image 1)
H₂: R² → R²  (rectification for image 2)
```

**Steps:**
1. Compute rotation to align baseline with x-axis
2. Compute projection matrices
3. Find rectification homographies
4. Apply to both images

**OpenCV Implementation:**
```python
# Stereo rectification
ret1, R1, P1, Q1 = cv2.stereoRectify(
    camera_matrix1, dist_coeffs1,
    camera_matrix2, dist_coeffs2,
    (W, H),  # image size
    R,  # rotation from RQ decomposition
    flags=cv2.STERE RECTIFY_FULL PROJECTIVE
)

# Create rectification maps
map1_1, map2_1 = cv2.initUndistortRectifyMap(
    camera_matrix1, dist_coeffs1, R1, P1, (W, H), cv2.CV_32FC1
)

map1_2, map2_2 = cv2.initUndistortRectifyMap(
    camera_matrix2, dist_coeffs2, R2, P2, (W, H), cv2.CV_32FC1
)

# Apply rectification
rectified_left = cv2.remap(left, map1_1, map2_1, cv2.INTER_LINEAR)
rectified_right = cv2.remap(right, map1_2, map2_2, cv2.INTER_LINEAR)
```

### Stereo Matching Algorithms

#### Block Matching (BM)

**Basic Principle:**
- Compare windows in left and right images
- Minimize similarity metric over disparity range

**Cost Functions:**
```python
# SAD (Sum of Absolute Differences)
SAD(u,v,d) = ΣΣ |I_L(u,v) - I_R(u,v+d)|

# SAD with normalized cross-correlation
NCC(u,v,d) = ΣΣ (I_L(u,v)-μ_L)(I_R(u,v+d)-μ_R) / (σ_L·σ_R)
```

**Implementation:**
```python
# Block matching with OpenCV
bm = cv2.StereoBM_create(numDisparities=64, blockSize=15)
disp = bm.compute(left, right)
```

**Parameters:**
- `numDisparities`: Maximum disparity (must be multiple of 16)
- `blockSize`: Window size (7, 9, 11, 13, 15)
- `minDisparity`: Minimum disparity (0-64)
- `textureThreshold`: Reject regions with low texture

#### Semi-Global Block Matching (SGBM, 2008)

**Improvement over BM:**
- Considers **multiple directions** (typically 4-8)
- **1D smoothing** along epipolar lines
- Better accuracy, slightly slower

**Cost Function:**
```
S(x,d) = Σs D(x+d, s) + Σs R(s,x,d)
```

Where R is a regularization term encouraging smoothness.

**OpenCV Implementation:**
```python
sgbm = cv2.StereoSGBM_create(
    minDisparity=0,
    numDisparities=64,
    blockSize=9,
    P1=8*3*9*9,
    P2=32*3*9*9,
    disp12MaxDiff=1,
    prefilterCap=32,
    uniquenessRatio=5,
    speckleWindowSize=100,
    speckleRange=32
)
disp = sgbm.compute(left, right)
```

**Parameters:**
- `P1`, `P2`: Smoothness penalties
- `uniquenessRatio`: Discriminative match (1-20)
- `speckleWindowSize`: Max region size (0=disabled)
- `speckleRange`: Max disparity variation in regions (0-125)

**Performance:**
- More robust to textureless regions
- Handles occlusions better than BM
- **Real-time** on modern hardware

### Deep Learning Stereo Matching (2020+)

#### GC-Net (2018)
- **3D cost volume**: (x, y, d)
- **2D CNN** for cost aggregation
- **Sub-pixel accuracy** with interpolation

#### PSMNet (2019)
- **Pyramid stereo matching**
- **3D CNN** for feature extraction and aggregation
- **Improved accuracy** on Sintel dataset

#### GANet (2020)
- **Generic adaptive cost aggregation**
- **Learnable aggregation weights**
- **State-of-the-art** on KITTI 2015

#### CostNet (2021)
- **Lightweight** stereo matching
- **Real-time** performance
- **mAP: 0.78** on KITTI 2015

**Performance on KITTI 2015:**

| Method | D1 Bad Pixels | Latency | Type |
|--------|--------------|---------|------|
| BM | 15.2% | 120ms | Classic |
| SGBM | 11.8% | 250ms | Classic |
| GC-Net | 8.3% | 85ms | Deep |
| PSMNet | 7.1% | 180ms | Deep |
| GANet | 6.4% | 45ms | Deep |

## 🌊 Optical Flow

### Fundamentals

**Optical flow**: Apparent motion of brightness patterns in images.

**Brightness Constancy Assumption:**
```
I(x,y,t) ≈ I(x+dx, y+dy, t+dt)
```

**Optical Flow Constraint Equation:**
```
Ix·u + Iy·v + It = 0
```

Where:
- u = dx/dt, v = dy/dt (flow vectors)
- Ix, Iy = spatial derivatives
- It = temporal derivative

**The Aperture Problem:**
- Equation has infinite solutions (1 equation, 2 unknowns)
- Only **normal flow** (perpendicular to edge) is determined
- Need additional constraints

### Lucas-Kanade Method (1981)

**Key Idea:** Assume flow is constant in small neighborhood

**Least Squares Solution:**
```
[ΣIx²  ΣIxIy] [u] = [-ΣIxIt]
[ΣIxIy  ΣIy²] [v]   [-ΣIyIt]
```

Or in matrix form:
```
AᵀAx = Aᵀb
```

Where:
```
A = [Ix1 Iy1]
    [Ix2 Iy2]
    ...
    
b = [-It1, -It2, ...]ᵀ
```

**Implementation:**
```python
def lucas_kanade(image0, image1, init_flow, patch_size=3):
    """
    Lucas-Kanade optical flow
    init_flow: initial flow estimates (N×2)
    """
    # Compute gradients
    Ix, Iy, It = compute_gradients(image0, image1)
    
    flow = init_flow.copy()
    
    for i in range(N):
        # Extract patch
        x, y = flow[i]
        patch_x = slice(int(x) - patch_size//2, int(x) + patch_size//2)
        patch_y = slice(int(y) - patch_size//2, int(y) + patch_size//2)
        
        # Build matrix A
        Ix_patch = Ix[patch_y, patch_x]
        Iy_patch = Iy[patch_y, patch_x]
        It_patch = It[patch_y, patch_x]
        
        A = np.column_stack([Ix_patch.flatten(), Iy_patch.flatten()])
        b = -It_patch.flatten()
        
        # Solve normal equations
        try:
            delta = np.linalg.lstsq(A, b, rcond=None)[0]
            flow[i] += delta
        except np.linalg.LinAlgError:
            pass
    
    return flow
```

**Pyramidal Lucas-Kanade:**
```python
# Multi-scale approach
for scale in range(num_levels):
    image0_scale = cv2.pyrUp(image0_scale)
    image1_scale = cv2.pyrUp(image1_scale)
    
    flow = lucas_kanade(image0_scale, image1_scale, flow)
    flow *= 2  # Scale up flow
```

**OpenCV Implementation:**
```python
lk_params = dict(
    winSize=(15, 15),
    maxLevel=3,
    criteria=(cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_COUNT, 10, 0.03)
)

# First time
feature_params = dict(maxCorners=100, qualityLevel=0.01, minDistance=7)
pts1 = cv2.goodFeaturesToTrack(img1_gray, **feature_params)
pts2, status, err = cv2.calcOpticalFlowPyrLK(img1_gray, img2_gray, pts1, None, **lk_params)

# Iterative tracking
pts1, pts2, status, err = cv2.calcOpticalFlowPyrLK(img1_gray, img2_gray, pts1, pts2, **lk_params)
```

**Performance:**
- **Fast** for sparse flow
- Works well for tracking features
- Limited by aperture problem
- Requires good initialization

### Horn-Schunck Method (1981)

**Global Approach:**
- Assumes **smooth flow field**
- Minimize:
  ```
  E = ∬[(Ix·u + Iy·v + It)² + α²(||∇u||² + ||∇v||²)] dx dy
  ```

**Iterative Solution:**
```
uₖ₊₁ = ūₖ - Ix(Ix·ūₖ + Iy·v̄ₖ + It) / (α² + Ix² + Iy²)
vₖ₊₁ = v̄ₖ - Iy(Ix·ūₖ + Iy·v̄ₖ + It) / (α² + Ix² + Iy²)
```

Where ūₖ, v̄ₖ are local averages.

**Characteristics:**
- **Dense flow** (every pixel)
- Smooth results
- Slow convergence
- Parameter α controls smoothness vs accuracy tradeoff

**OpenCV Implementation:**
```python
# Horn-Schunck flow
flow = cv2.calcOpticalFlowHS(
    img1_gray, img2_gray, flow1=None, flow2=None,
    lambda_param=0.5,  # smoothness parameter
    flags=cv2.OPT_FLOW_HORN_SCHUNK
)
```

### Farneback Dense Optical Flow (2003)

**Polynomial Expansion Approach:**
- Expands both images in Taylor series
- Estimates flow by matching polynomial coefficients

**Mathematical Foundation:**
```
I(x,y) ≈ ΣΣ aᵢⱼ·xⁱ·yʲ
```

**Algorithm:**
1. Compute polynomial coefficients at each pixel
2. Estimate flow by minimizing coefficient differences
3. Iterate to refine flow

**OpenCV Implementation:**
```python
# Farneback optical flow
flow = cv2.calcOpticalFlowFarneback(
    gray1, gray2,
    flow=None,
    pyr_scale=0.5,
    levels=5,
    winsize=15,
    iterations=3,
    poly_n=5,
    poly_sigma=1.2,
    flags=0
)
```

**Parameters:**
- `pyr_scale`: Pyramid scale (0.5 typical)
- `levels`: Pyramid levels (2-8)
- `winsize`: Window size (15-50)
- `iterations`: Newton-Raphson iterations (1-5)
- `poly_n`: Polynomial expansion size (5-7)
- `poly_sigma`: Gaussian width for polynomial expansion (1-2)

**Performance:**
- **Dense flow** (every pixel)
- Smooth results
- Moderate speed
- Robust to moderate illumination changes

**OpenCV Dense vs Sparse:**
| Method | Type | Speed | Accuracy | Use Case |
|--------|------|-------|----------|----------|
| LK | Sparse | Fast | Good | Feature tracking |
| Horn-Schunck | Dense | Slow | Moderate | Smooth motion |
| Farneback | Dense | Moderate | Good | General purpose |
| TV-L1 | Dense | Moderate | Excellent | Large motion |

### Deep Learning Optical Flow

#### FlowNet (2015)
- **First CNN for optical flow**
- Encoder-decoder architecture
- 3D cross-correlation layer
- Real-time but lower accuracy

#### PWC-Net (2018)
- **Pyramid, warping, cost volume**
- **Recursive refinement**
- **mAP: 3.2** on Sintel
- Real-time performance

#### RAFT (2020)
- **Recurrent All-Pairs Field Transforms**
- **End-to-end refinement**
- **State-of-the-art accuracy**
- Iterative updates via GRU

```python
# RAFT implementation
from raft import RAFT
model = RAFT(args={'model': 'raft-things'})
flow = model(image1, image2)
```

**Performance Comparison:**

| Method | Sintel EPE | KITTI EPE | Real-time |
|--------|-----------|----------|-----------|
| Farneback | 8.5 | 4.2 | Yes |
| FlowNet | 6.8 | 5.1 | Yes |
| PWC-Net | 2.4 | 3.8 | Yes |
| RAFT | 1.9 | 3.1 | No |

## 🎥 Image Formation Models

### Pinhole Camera Model

**Basic Equation:**
```
x = f · X/Z
y = f · Y/Z
```

Where:
- (X,Y,Z): 3D point in camera coordinates
- (x,y): 2D projection in image plane
- f: focal length

**Homogeneous Coordinates:**
```
z·[u,v,1]ᵀ = K·[R|t]·[X,Y,Z,1]ᵀ
```

Where:
- K = intrinsic matrix
- [R|t] = extrinsic parameters

**Intrinsic Matrix K:**
```
K = [fx  s  cx]
    [ 0  fy cy]
    [ 0   0  1]
```

Where:
- fx, fy: focal length in pixels
- cx, cy: principal point
- s: skew coefficient (typically 0)

### Lens Distortion

#### Radial Distortion
```
x_distorted = x(1 + k₁r² + k₂r⁴ + k₃r⁶)
y_distorted = y(1 + k₁r² + k₂r⁴ + k₃r⁶)
```

Where r² = x² + y²

#### Tangential Distortion
```
x_distorted = x + [2p₁xy + p₂(r² + 2x²)]
y_distorted = y + [p₁(r² + 2y²) + 2p₂xy]
```

**OpenCV Distortion Model:**
```python
# Camera with distortion
camera_matrix = np.array([[fx,  s, cx],
                          [0,  fy, cy],
                          [0,   0,  1]])

dist_coeffs = np.array([k1, k2, p1, p2, k3, k4, k5, k6])

# Undistort image
undistorted = cv2.undistort(image, camera_matrix, dist_coeffs)
```

### Camera Calibration

**Zhang's Method (1999):**
1. Capture multiple images of calibration pattern
2. Detect corner positions
3. Compute homographies for each view
4. Solve for intrinsic parameters
5. Refine with bundle adjustment

```python
# Calibrate using chessboard
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)
objp = np.zeros((6*7, 3), np.float32)
objp[:, :2] = np.mgrid[0:7, 0:6].T.reshape(-1, 2)  # Sub-pixel corners

imgpoints = []
objpoints = []

for img in images:
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    ret, corners = cv2.findChessboardCorners(gray, (7, 6))
    if ret:
        corners = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)
        imgpoints.append(corners)
        objpoints.append(objp)

ret, camera_matrix, dist_coeffs, rvecs, tvecs = cv2.calibrateCamera(
    objpoints, imgpoints, gray.shape[::-1], None, None
)
```

## 📊 Comparative Summary

### Geometric Vision Methods

| Task | Method | Accuracy | Speed | Requirements |
|------|--------|----------|-------|--------------|
| Stereo | SGBM | High | Fast | Calibrated cameras |
| Stereo | PSMNet | Very High | Medium | GPU required |
| Optical Flow | LK | Medium | Fast | Sparse features |
| Optical Flow | RAFT | Very High | Slow | Trained model |
| Pose Estimation | PnP | High | Fast | 3D-2D correspondences |
| Structure from Motion | Bundle Adjustment | Very High | Slow | Many views |

## 🎯 Practical Applications

### Visual Odometry
- Estimate camera motion from image sequences
- Uses feature tracking or direct methods
- Key for robotics and autonomous vehicles

### Simultaneous Localization and Mapping (SLAM)
- Build map while estimating camera pose
- Frontend: feature extraction and matching
- Backend: bundle adjustment for optimization

### 3D Reconstruction
- Multi-view stereo
- Structure from Motion (SfM)
- Dense reconstruction with fusion

### Augmented Reality
- Track camera pose relative to environment
- Project virtual objects into real scenes
- Requires accurate camera calibration

## 📚 Resources & Implementations

### OpenCV Functions
- `cv2.findFundamentalMat()`: Fundamental matrix estimation
- `cv2.stereoRectify()`: Stereo rectification
- `cv2.stereoSGBM_create()`: Semi-global matching
- `cv2.calcOpticalFlowPyrLK()`: Lucas-Kanade flow
- `cv2.calibrateCamera()`: Camera calibration

### Datasets for Evaluation
- **KITTI**: Autonomous driving stereo & flow
- **Middlebury**: Stereo benchmark
- **Sintel**: Optical flow benchmark
- **HPatches**: Feature matching evaluation

### Key Papers
- **Epipolar geometry**: Hartley & Zisserman "Multiple View Geometry"
- **SGBM**: Hirschmüller (2008): "Stereo Matching by Constrained Cost Aggregation"
- **RAFT**: Teed & Deng (2020): "RAFT: Recurrent All-Pairs Field Transforms for Optical Flow"

---

*Document updated: March 2026*
*Includes modern deep learning approaches alongside classical methods*
