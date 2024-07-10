# imaging transcriptomics 🧬🧠

Imaging transcriptomics refers to a nascent field that tries to generate hypotheses about molecular and cellular mechanisms that underly macroscale brain aberrations. This is done by spatially comparing the microscale regional abundance of specific genes (or cells derived from marker gene expression) with the macroscale aberration patterns observable via MRI. The idea is that the severity of a disease-induced change depends on certain tissue properties (e.g., presence of astrocytes or presence of dopamine receptors) which can be estimated by gene expression. An impressive validation of this method was demonstrated by [Jakob Seidlitz](doi.org/10.1038/s41467-020-17051-5).
By now, the [Allen Human Brain Atlas](https://human.brain-map.org/) is the only source of regional gene expression that covers the whole brain. 


Find some reviews introducing the field in more detail:
- [A practical guide to linking brain-wide gene expression and neuroimaging data](https://doi.org/10.1016/j.neuroimage.2019.01.011) - recommendations how to link gene expression data and ex vivo MRI from the AHBA back together
- [Standardizing workflows in imaging transcriptomics with the abagen toolbox](https://doi.org/10.7554/eLife.72129) - introduced a Python toolbox to follow all the recommendations from above quite easily
- [Best practices for imaging transcriptomics of the human brain](https://doi.org/10.1016/j.biopsych.2022.10.016) - AMAZING step-for-step guide of how to do imaging transcriptomics yourself
- [Imaging transcriptomics of brain disorders](https://doi.org/10.1016/j.bpsgos.2021.10.002) - review on studies using imaging transcriptomics for deciphering molecular mechanisms of brain disorders


Since interpretation of the individual gene-level is demanding, imaging transcriptomics branched into a field where the AHBA is used to estimate regional abundance of canonical cell types. This facilitates the interpretation of findings and eases the analysis.
- [Cortical structural differences in major depressive disorder correlate with cell type-specific transcriptional signatures](https://doi.org/10.1038/s41467-021-21943-5) - an application of this concept to major depressive disorder
	- These maps can be reproduced using the following [repository](https://github.com/jms290/PolySyn_MSNs/tree/master)
- [Distinctive whole-brain cell types predict tissue damage patterns in thirteen neurodegenerative conditions]( https://doi.org/10.7554/eLife.89368.3) - further application in neurodegeneration
 	- This paper also released these higher resolution cell-type maps [openly](https://github.com/neuropm-lab/cellmaps)
	
	

