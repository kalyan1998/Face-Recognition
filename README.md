# Face Recognition After Surgery

## Project Description

This project focuses on identifying faces after surgery using advanced image processing techniques and feature extraction methods. The goal is to develop a robust system that can recognize individuals even after significant changes in their facial features due to surgical procedures.

## Features

- Converts images to grayscale if needed
- Creates a grid of points for feature extraction
- Utilizes multiscale SURF (Speeded-Up Robust Features) points for robust feature detection
- Detects MSER (Maximally Stable Extremal Regions) features
- Extracts features and calculates feature metrics
- Normalizes image sizes for consistent processing
- Includes functions for RGB image processing

## Technologies Used

- MATLAB for image processing and feature extraction
- SURF and MSER algorithms for robust feature detection

## File Descriptions

### BagOfFeatureNoLoop.m

This script detects the nose using a Haar Cascade detector, applies a Gaussian blur to the detected region, and saves the modified image.

### BagOfFeaturesExtractor.m

This function extracts features from an image using the SURF algorithm, creating a grid of points and detecting multiscale features. It also computes the feature metrics based on the extracted features.

### normalizingImageSize.m

This script normalizes the size of images to ensure consistent feature extraction and processing. It detects the mouth using a Haar Cascade detector, applies a Gaussian blur to the detected region, converts the image to grayscale, and saves the modified image.

### rgbProcessing.m

This script handles RGB image processing, converting images to grayscale if necessary, and prepares the images for further analysis.

## Installation

### Prerequisites

- MATLAB installed on your machine

### Steps

1. Clone the repository:
    ```bash
    git clone https://github.com/kalyan1998/Face-Recognition.git
    cd Face-Recognition
    ```

2. Open MATLAB and set the current directory to the cloned repository folder.

3. Run the scripts as needed for your image processing tasks.

## Usage

### Example Usage of BagOfFeaturesExtractor

1. Load an image:
    ```matlab
    I = imread('path_to_image.jpg');
    ```

2. Extract features:
    ```matlab
    [features, featureMetrics, locations] = exampleBagOfFeaturesExtractor(I);
    ```

3. Visualize features (optional):
    ```matlab
    imshow(I); hold on;
    plot(locations(:,1), locations(:,2), 'r+');
    ```

### Example Images

#### Before Surgery
![Before Surgery](https://github.com/kalyan1998/Face-Recognition/blob/master/Copy_4_of_Dataset_/1/01_b.jpg)

#### After Surgery
![After Surgery](https://github.com/kalyan1998/Face-Recognition/blob/master/Copy_4_of_Dataset_/1/01_a.jpg)


## Acknowledgments

- MATLAB for providing powerful image processing tools

---

Feel free to explore the repository and use the provided tools and scripts. If you find this project useful, please give it a star!
