# Filtering & Basic Operations

Fundamental image processing operations form the foundation of computer vision. This document covers filtering techniques from basic convolution to advanced frequency domain methods.

## 📚 Overview

Image filtering operations modify pixel values based on their neighborhood. They are essential for:
- Noise reduction
- Feature enhancement
- Preprocessing for subsequent vision tasks
- Image restoration

## 🔷 Convolution & Correlation

### Convolution

**Mathematical Definition:**
```
(f * g)[m,n] = ΣΣ f[i,j] · g[m-i, n-j]
             i,j
```

Where:
- `f` is the input image
- `g` is the kernel/filter
- `*` denotes convolution operation

**Key Properties:**
- **Commutative**: f * g = g * f
- **Associative**: (f * g) * h = f * (g * h)
- **Distributive**: f * (g + h) = f * g + f * h
- **Translation-invariant**: Linear time-invariant (LTI) systems

**Implementation:**
```python
import numpy as np
from scipy.signal import convolve2d

# 2D convolution
output = convolve2d(image, kernel, mode='same', boundary='fill')
```

**Popular Kernels:**
- Sobel (edge detection)
- Prewitt (edge detection)
- Laplacian (second derivative)
- Custom learnable kernels (CNNs)

### Correlation

**Definition:**
```
(f ⋆ g)[m,n] = ΣΣ f[i,j] · g[i-m, j-n]
             i,j
```

**Difference from Convolution:**
- No kernel flipping
- Used in CNNs (convolution in deep learning = correlation in signal processing)
- More computationally efficient

**When to Use:**
- CNN layers (standard practice)
- Template matching
- Feature extraction

## 📊 Linear Filtering

### Gaussian Filtering

**Mathematical Foundation:**
```
G(x,y; σ) = (1/(2πσ²)) · exp(-(x² + y²)/(2σ²))
```

**Properties:**
- Separable: Can be decomposed into horizontal and vertical 1D filters
- Rotationally symmetric
- Low-pass filter (blurs high frequencies)
- No ringing artifacts

**Typical Parameters:**
```python
import cv2
import numpy as np

# Gaussian blur with σ=1.5
kernel_size = 5  # Must be odd
sigma = 1.5

blurred = cv2.GaussianBlur(image, (kernel_size, kernel_size), sigma)

# Or use numpy
from scipy.ndimage import gaussian_filter
blurred = gaussian_filter(image, sigma=sigma)
```

**Applications:**
- Preprocessing for edge detection
- Downsampling with anti-aliasing
- Denoising

**Performance:** O(n²) where n = kernel size

### Box Filter (Averaging)

**Kernel:**
```
1/9  1/9  1/9
1/9  1/9  1/9
1/9  1/9  1/9
```

**Characteristics:**
- Simple and fast
- Produces square artifacts
- Low-pass filter

**Optimization:** Use integral images for O(1) per pixel regardless of kernel size.

## 🔴 Nonlinear Filtering

### Median Filter

**Algorithm:**
1. For each pixel, collect neighborhood values
2. Sort the values
3. Replace with median value

**Advantages:**
- Excellent for salt-and-pepper noise removal
- Preserves edges better than linear filters
- Nonlinear: Doesn't satisfy superposition principle

**Implementation:**
```python
from scipy.ndimage import median_filter

# 3x3 median filter
filtered = median_filter(image, size=3)
```

**Use Cases:**
- Remove impulse noise
- Preprocessing before edge detection
- Biomedical image denoising

**Performance:** O(n·log(k)) where k = number of pixels in kernel

### Bilateral Filter

**Mathematical Definition:**
```
B[f](x,y) = (1/W) · ΣΣ f(i,j) · gσd((i-x)²+(j-y)²) · hσr(|f(x,y)-f(i,j)|)
           (i,j)
```

Where:
- `gσd` = spatial Gaussian (distance-based weighting)
- `hσr` = range Gaussian (intensity-based weighting)
- `W` = normalization factor

**Key Innovation:**
- Two Gaussian functions: one for spatial proximity, one for intensity similarity
- **Edge-preserving smoothing**: Smooths homogeneous regions while preserving edges

**Parameters:**
```python
# cv2.bilateralFilter(src, d, sigmaColor, sigmaSpace, borderType)
filtered = cv2.bilateralFilter(image, d=9, sigmaColor=75, sigmaSpace=75)
```

**Typical Settings:**
- d: Filter diameter (9-15)
- sigmaColor: Color similarity threshold (50-150)
- sigmaSpace: Spatial distance threshold (50-150)

**Applications:**
- Denoising while preserving edges
- Portrait photography (skin smoothing)
- Preprocessing for edge detection

**Performance:** O(n²) per pixel; slower than Gaussian

### Anisotropic Diffusion

**Perona-Malik Equation:**
```
∂I/∂t = ∇·(c(x,y,t)·∇I)
```

Where diffusion coefficient:
```
c(x,y,t) = exp(-(||∇I||/k)²)  or  1/(1+(||∇I||/k)²)
```

**Behavior:**
- Strong diffusion in smooth regions (low gradient)
- Minimal diffusion near edges (high gradient)
- Iterative process

**Implementation:**
```python
def anisotropic_diffusion(image, iterations=100, kappa=150, dt=0.25):
    """Perona-Malik anisotropic diffusion"""
    I = image.astype(float)
    h, w = I.shape
    
    for i in range(iterations):
        I_new = I.copy()
        
        # Compute gradients
        grad_y, grad_x = np.gradient(I)
        grad_norm = np.sqrt(grad_x**2 + grad_y**2)
        
        # Diffusion coefficient
        c = np.exp(-(grad_norm**2) / (kappa**2))
        
        # Update
        I_new[:-1, 1:-1] += dt * (
            c[:-1, :-1] * (I[:-1, 1:] - I[:-1, :-1]) +
            c[1:, :-1] * (I[1:, 1:] - I[1:, :-1]) +
            c[:-1, 1:] * (I[:-1, 1:] - I[:-1, :-1]) +
            c[1:, 1:] * (I[1:, 1:] - I[1:, :-1])
        )
        I = I_new
    
    return I.astype(image.dtype)
```

**Applications:**
- Image denoising with edge preservation
- Image enhancement
- Preprocessing for computer vision tasks

## ⚡ Frequency Domain Filtering

### Fourier Transform

**2D Discrete Fourier Transform (DFT):**
```
F(u,v) = ΣΣ f(x,y) · e^(-j2π(ux/M + vy/N))
        x,y
```

**Inverse DFT:**
```
f(x,y) = (1/MN) ΣΣ F(u,v) · e^(j2π(ux/M + vy/N))
         u,v
```

**Properties:**
- Shift theorem: Center low frequencies for visualization
- Convolution theorem: Convolution in spatial domain = Multiplication in frequency domain
- Separable: Can be computed as row then column operations

**Fast Fourier Transform (FFT):**
- O(n·log(n)) vs O(n²) for naive DFT
- Available in scipy.fft, numpy.fft, OpenCV

**Implementation:**
```python
import numpy as np
from scipy.fft import fft2, ifft2, fftshift

# Compute 2D FFT
f = fft2(image)
f_shift = fftshift(f)  # Shift zero frequency to center

# Visualization
magnitude_spectrum = 20 * np.log(np.abs(f_shift))
```

### Filter Types in Frequency Domain

#### Low-Pass Filters (Smoothing)

**Ideal Low-Pass:**
```
H(u,v) = 1, if D(u,v) ≤ D0
         0, otherwise
```
Where D(u,v) = distance from origin

**Problems:** Ringing artifacts due to sharp cutoff

**Gaussian Low-Pass:**
```
H(u,v) = exp(-D²(u,v)/(2D0²))
```
No ringing artifacts, smoother transition

**Butterworth Low-Pass:**
```
H(u,v) = 1 / (1 + [D(u,v)/D0]^(2n))
```
Order n controls cutoff steepness

#### High-Pass Filters (Edge Enhancement)

**Ideal High-Pass:**
```
H(u,v) = 0, if D(u,v) ≤ D0
         1, otherwise
```

**High-Boost Filtering:**
```
f_hb(x,y) = A·f(x,y) - f_lp(x,y)
```
Where A > 1, enhances high frequencies

### Wiener Filtering (Image Restoration)

**Optimal Linear Filter** for mean square error:
```
H_W(u,v) = [1 / H(u,v)] · [|H(u,v)|² / (|H(u,v)|² + S_η(u,v)/S_f(u,v))]
```

Where:
- H(u,v) = degradation function
- S_η = noise power spectrum
- S_f = signal power spectrum

**Use Case:** Deblurring noisy images

**Implementation:**
```python
from scipy.signal import wiener

# Wiener filter with 3x3 neighborhood
restored = wiener(image, mysize=(3, 3))
```

**Practical Considerations:**
- Requires knowledge of noise-to-signal ratio
- Approximate with constant or estimate from image statistics

## 🎯 Practical Applications

### Edge Detection Pipeline
```
Original → Gaussian Blur → Canny Edge Detection
```
Gaussian preprocessing reduces noise impact on edge detection.

### Denoising Comparison

| Method | Noise Type | Edge Preservation | Speed |
|--------|-----------|-------------------|-------|
| Gaussian | Gaussian | Poor | Fast |
| Median | Salt & Pepper | Excellent | Fast |
| Bilateral | Mixed | Excellent | Slow |
| Anisotropic | Mixed | Excellent | Medium |

### Frequency Domain Use Cases

1. **Pattern Recognition:** Detect repeating patterns
2. **Image Compression:** JPEG uses DCT (Discrete Cosine Transform)
3. **Filter Design:** Create custom frequency filters
4. **Texture Analysis:** Analyze frequency content

## 📈 Performance Comparison

### Filtering Methods

| Method | Complexity | Edge Preserving | Noise Removal | Best For |
|--------|-----------|-----------------|---------------|----------|
| Gaussian | O(n²·k²) | No | Good | Preprocessing |
| Median | O(n²·k²·log k) | Yes | Excellent | Impulse noise |
| Bilateral | O(n²·k²) | Excellent | Good | Photo editing |
| Anisotropic | O(n²·iterations) | Excellent | Good | Restoration |
| FFT Low-pass | O(n²·log n) | No | Good | Frequency analysis |

*Note: k = kernel size, n = image dimensions*

## 🛠️ Code Implementations

### OpenCV Functions
```python
# Gaussian Blur
cv2.GaussianBlur(src, ksize, sigma)

# Median Filter
cv2.medianBlur(src, ksize)

# Bilateral Filter
cv2.bilateralFilter(src, d, sigmaColor, sigmaSpace)

# FFT
dft = cv2.dft(np.float32(img), flags=cv2.DFT_COMPLEX_OUTPUT)
dft_shift = np.fft.fftshift(dft)
```

### PIL/Pillow
```python
from PIL import Image, ImageFilter

# Gaussian blur
img.filter(ImageFilter.GaussianBlur(radius=2))

# Median filter
img.filter(ImageFilter.MedianFilter(size=3))

# Edge enhance
img.filter(ImageFilter.EDGE_ENHANCE)
```

## 📚 References & Papers

### Classical Foundations
1. **Canny Edge Detector (1986)**: John Canny, A Computational Approach to Edge Detection
   - [Paper](https://www.ieee.org/)
   
2. **Gaussian Smoothing**: Standard technique since 1970s
   
3. **Bilateral Filtering (1996)**: Tomasi & Manduchi
   - "Bilateral Filtering for Gray and Color Images"
   - [ICCV 1996](https://openaccess.thecvf.com/iccv1997.html)

4. **Perona-Malik Diffusion (1990)**: Perona & Malik
   - "Denoising and edge enhancement in images"
   - [IEEE TPAMI 1990](https://ieeexplore.ieee.org)

### Modern Implementations
- **OpenCV**: Comprehensive C++ and Python implementations
- **scikit-image**: Python library with extensive filtering functions
- **Scipy**: Signal processing functions including FFT

## 🔍 Advanced Topics

### Separable Filters
Many filters can be decomposed:
```
2D Gaussian = 1D Gaussian ⊗ 1D Gaussian
```
Reduces complexity from O(k²) to O(2k).

### Integral Images
For fast box filter computation:
```python
# Integral image computation
I(x,y) = I(x-1,y) + I(x,y-1) - I(x-1,y-1) + input(x,y)

# Sum in rectangle is O(1)
```

### Adaptive Filtering
Filters that adjust parameters based on local image statistics:
- Adaptive bilateral filter
- Adaptive median filter for varying noise levels

## 🎓 Best Practices

1. **Choose filter based on noise type:**
   - Gaussian noise → Gaussian blur
   - Salt-and-pepper → Median filter
   - Mixed noise → Bilateral or anisotropic diffusion

2. **Parameter tuning:**
   - Start with σ=1.0-2.0 for Gaussian
   - For bilateral: sigmaColor ≈ sigmaSpace
   - Adjust based on image resolution

3. **Preprocessing:**
   - Apply filtering before edge detection
   - Consider frequency domain for periodic patterns
   - Use separable filters for efficiency

4. **Performance:**
   - Use FFT for large kernels (>15×15)
   - Leverage separability when possible
   - GPU acceleration for real-time applications

---

*Document updated: March 2026*
*Includes references to OpenCV 4.x, SciPy 1.x, and modern deep learning practices*
