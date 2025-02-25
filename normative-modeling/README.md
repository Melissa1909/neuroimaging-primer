# normative modeling 📈👩‍🦰👨‍🦱

Normative modeling is about grasping individual brain changes instead of summarizing clinical groups into one homogenous "case" group and compare them to "controls". In psychiatry, disorder classifications are solely based on subjective diagnoses and can therefore be overlapping. Furthermore, disorders like schizophrenia are very heterogenous in their symptoms, disease course, but also regarding underlying phenomena like genetics or environmental influence factors. Normative modeling perceives "cases" not as a unique, homogenous group, but acknowledges heterogeneity between individuals, both among cases and controls, by modeling not only the mean but also the variance between subjects. 

Two wonderful reviews by Andre Marquand summarizing these ideas:
- [Understanding heterogeneity in clinical cohorts using normative models: beyond case-control studies](https://doi.org/10.1016/j.biopsych.2015.12.023)
- [Conceptualizing mental disorders as deviations from normative functioning](https://doi.org/10.1038/s41380-019-0441-1)


# 📈 Existing pre-trained lifespan models 
With big data becoming more and more important in neuroscience, in the past 2-3 years, there were several initiatives that collected huge amounts of data (> 40,000 subjects) to model normative growth trajectories of the brain. You can compare these to [growth charts of the human body](https://www.cdc.gov/growthcharts/clinical_charts.htm) applied in pediatrics to see whether a child's height and weight is developing as expected with respect to their age and sex. The idea is the same: model how the brain develops across the lifespan with respect to age and sex. The existing growth charts differ with respect to the underlying data, the normative model used to create the charts, and the resolution/brain atlas used. The most popular lifespan growth charts are listed below:

| name | normative model | age range | resolution | website with pretrained models | 
| ---------- | ------- | --------- | --------- | --------- | 
| [BrainCharts by Bethlehem et al.](https://doi.org/10.1038/s41586-022-04554-y) | GAMLSS | 0-100 years | 68 regions based on Desikan-Killiany atlas | https://brainchart.shinyapps.io/brainchart/ |
| [braincharts by Rutherford et al.](https://doi.org/10.7554%2FeLife.72904) | Bayesian Linear Regression | 3-100 years | Destrieux atlas | https://github.com/predictive-clinical-neuroscience/braincharts |
| [CentileBrain by Frangou et al.](https://doi.org/10.1002/hbm.25364) | Fractional Polynomial Regression | 3-90 years | 68 regions based on Desikan-Killiany atlas | https://centilebrain.org/#/ | 


# 🎨 Normative modeling - get creative yourself
If you want to address a structure where no large-scale, population-based normative model yet exists, you can apply the modeling yourself. The PCNtoolkit is a Python-based, well-documented framework that contains many algorithms for normative modeling.
- [Paper by Rutherford et al.](https://doi.org/10.1101%2F2021.08.08.455583) that gives a step-by-step guide how to use it.
- [Hands-on tutorial](https://github.com/CharFraza/CPC_ML_tutorial) to try it out yourself
- [Readthedocs](https://pcntoolkit.readthedocs.io/en/latest/) with all functions explained

There are also further frameworks and algorithms, which you can explore beyond the PCNtoolkit.


# 📚 Further reading and listening
- [OHBM 2022 Symposium](https://www.youtube.com/watch?v=imbknEvdJOo&ab_channel=OrganizationforHumanBrainMapping) led by Andre Marquand on normative modeling
