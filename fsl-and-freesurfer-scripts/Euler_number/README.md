# Euler number

The Euler number from FreeSurfer is a useful metric for assessing the quality of cortical surface reconstructions. It provides an indication of the number of topological defects (holes) in the reconstructed surfaces. 
Find more information about the Euler number in the [FreeSurfer documentation](https://surfer.nmr.mgh.harvard.edu/fswiki/mris_euler_number). A lower Euler number indicates a higher number of defects, which may suggest poorer quality reconstructions.

The Euler number has been shown to be correlated with manual quality control ratings of FreeSurfer outputs (e.g., [Rosen et al., 2018](https://doi.org/10.1016/j.neuroimage.2017.12.059)) and has been used in several Big Data neuroimaging studies (e.g., [Bethlehem et al., 2022](https://doi.org/10.1038/s41586-022-04554-y), [Rutherford et al., 2022](https://doi.org/10.7554/eLife.72904)) to exclude low-quality data.


The Euler number is automatically calculated during the FreeSurfer recon-all processing pipeline and can be extracted using the `mris_euler_number` command. The scripts in this directory facilitate the extraction and compilation of Euler numbers across multiple subjects.