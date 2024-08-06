#!/bin/bash


# resample an image from 1mm to 2mm
flirt -in img_1mm.nii.gz -ref img_1mm.nii.gz -out img_2mm.nii.gz -applyxfm 2 -nosearch