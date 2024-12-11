#!/bin/bash
# Example case
# IMG1: 256 x 256 x 256 FOV (1mm isotropic voxel size)
# IMG2: 182 x 218 x 182 FOV (1mm isotropic voxel size)


# If two images have the same voxel size, but are visually aligned, 
# but the FOV is not the same, images can be aligned using the following command:

# this will reshape img2 to img1's FOV
flirt -in img2.nii.gz -ref img1.nii.gz -out img2_reshaped.nii.gz -applyxfm -usesqform 

# ATTENTION: always look at the output in fsleyes or similar to validate what you've done!!
