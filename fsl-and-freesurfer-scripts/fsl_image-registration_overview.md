# FSL - Image Registration Overview

## linear transformation: flirt
    • Suitable for intra-subject or inter-subject registration.
    • Can align images from the same or different modalities.
    • Transformation parameters are described by a matrix.
    • degrees of freedom (DOF, number of parameters adjusted during transformation):
        ◦ 1. Rigid Body (6 DOF):
            ▪ 3 rotations + 3 translations.
            ▪ Preserves shapes and sizes of structures.
            ▪ Aligning images from the same modality,
            ▪ Aligning images from the same subject (motion correction or realignment)
        ◦ 2. Affine (12 DOF):
            ▪ 3 rotations + 3 translations + 3 scalings + 3 skews.
            ▪ Preserves straight lines but not angles or aspect ratios.
            ▪ Aligning images from different modalities (e.g., MRI to PET, CT to MRI).
            ▪ Aligning images from different subjects, especially in atlas-based registration.
            ▪ Used as a preprocessing step for non-linear transformations like fnirt.

# nonlinear transformation: fnirt
    • Intra-subject registration, typically for images in the same modality.
    • More flexible and accurate for aligning images with large differences in shape or local distortions.
    • Transformation is represented as a 3D deformation field (warp field), stored as 3D volume.
    • Accounts for local differences between images that linear transformations cannot correct.
    • **'Application'**  
    • High-resolution structural alignment (e.g., T1-weighted MRI to atlas).
    • Inter-subject registration for precise analysis.
    • Warping anatomical images to standard spaces.
    • Dealing with significant anatomical variability (e.g., tumors, atrophy).

# cost functions
To  quantify the alignment quality between two images during image registration or normalization. 
It provides a measure of how well the transformation parameters (e.g., translation, rotation, scaling) align the images.

    • Least Squares (Sum of Squared Differences, SSD):
        ◦ Definition: Measures the squared intensity difference between corresponding voxels.
        ◦ Use Case: Same modality, same brightness, and contrast.
        ◦ Features: Sensitive to noise and intensity non-uniformity.
        ◦ Common Applications: Structural MRI-to-structural MRI alignment.
    • Normalized Correlation:
        ◦ Definition: Measures how well intensity patterns correlate between the two images.
        ◦ Use Case: Same modality, different brightness, and contrast.
        ◦ Features: Insensitive to global intensity scaling; assumes similar intensity distributions.
        ◦ Common Applications: Functional MRI (fMRI) or longitudinal same-modality studies.
    • Correlation Ratio:
        ◦ Definition: Measures the degree of statistical correlation between intensities of source and target images.
        ◦ Use Case: Works well for any MRI modalities with similar or related features.
        ◦ Features: Allows for non-linear intensity relationships.
        ◦ Common Applications: Aligning T1 to T2-weighted MRI images.
    • Mutual Information (MI):
        ◦ Definition: Measures the amount of shared information (statistical dependence) between the two images.
        ◦ Use Case: Inter-modal registration (e.g., MRI to CT or PET).
        ◦ Features: Effective for images with very different intensity distributions.
        ◦ Common Applications: Multimodal studies combining structural, functional, or metabolic imaging.
    • Normalized Mutual Information (NMI):
        ◦ Definition: A variation of MI that normalizes for image overlap, improving robustness.
        ◦ Use Case: Any modalities, including CT and PET, particularly for images with variable overlap.
        ◦ Features: More stable than standard MI for partial overlap or field-of-view differences.
        ◦ Common Applications: Template-based normalization or inter-subject registration.
    • Boundary-Based Registration (BBR):
        ◦ Definition: Uses intensity gradients at structural boundaries (e.g., gray matter/white matter) for alignment.
        ◦ Use Case: Intra-subject registration, especially EPI (fMRI) to high-resolution structural images (T1-weighted).
        ◦ Features: Sensitive to anatomical boundaries rather than voxel intensities.
        ◦ Common Applications: Aligning functional EPI images to structural MRI.
        
# interpolations
To estimate intensity values at non-grid positions (e.g., after transforming an image) to resample or reconstruct the image.
It ensures that the voxel intensities in the new coordinate space are computed smoothly and accurately after applying a transformation.

    • Nearest Neighbor (NN)
        ◦ Definition: Assigns the intensity of the nearest voxel to the new position.
        ◦ Use Case: Binary masks, labels.
        ◦ Features: Very fast, blocky results, mask shrinkage, pixelated edges.
        ◦ Common Applications: Label maps, binary masks, or non-continuous data (e.g., regions of interest).
    • Trilinear (TL)
        ◦ Definition: Computes a weighted average of the nearest voxel intensities based on their distances.
        ◦ Use Case: Continuous intensity data.
        ◦ Features: Smooth, reduced blocky artifacts, weighted average, blurs details, affects mask size.
        ◦ Thresholding:
            ▪ Threshold = 0.5: Maintains a mask size close to the original input.
            ▪ Threshold < 0.5: Introduces more partial volume effects (PVE), causing mask boundaries to expand.
            ▪ Threshold > 0.5: Reduces PVE, potentially shrinking mask boundaries.
        ◦ Common Applications: MRI motion correction, resampling.
    • Spline 
        ◦ Definition: Uses spline functions to model intensity values over a larger neighborhood for interpolation.
        ◦ Use Case: High-quality resampling., non-linear deformations.
        ◦ Features: Smooth, high-quality, sharp, slower, Minimal artifacts, precise edges.
        ◦ Common Applications: Non-linear deformations, anatomical images.
    • Sinc
        ◦ Definition: Uses the sinc function (sine cardinal) to estimate intensity values over a wide neighborhood.
        ◦ Use Case: High-resolution images.
        ◦ Features: Very sharp, slower, prone to ringing, computation-heavy.
        ◦ Common Applications: Template building, precise transformations, high-resolution T1 images.
