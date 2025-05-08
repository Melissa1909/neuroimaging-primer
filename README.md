# neuroimaging-primer 🧠📚

Some important sources to get into the basics of neuroimaging research. The list is incomplete and follows my personal preferences and experiences. Feel free to contribute and open a pull request! 

## 📸 MRI - imaging the brain 
Studying the brain has undergone different periods, tightly linked to the available tools to look at and study it. Magnetic resonance imaging (MRI) is a common tool to image brain structure and function. It is a non-invasive medical imaging technique that uses a strong magnetic field and radio waves to generate a detailed representation of the brain. Get some more information of how MRI works below:
- [What is MRI?](https://www.youtube.com/watch?v=LyCqYq5n67M&ab_channel=BettinaBae%C3%9Fler)
- [MRI made easy]( https://rads.web.unc.edu/wp-content/uploads/sites/12234/2018/05/Phy-MRI-Made-Easy.pdf): a good overview of the technique, it takes some time to read, but is definitely worth the time!


## 🖥️ Bash - a neuroimaging researcher's language
Bash is a command-line interpreter or shell for Unix-like operating systems. It provides a command-line interface for users to interact with the operating systems by executing commands - as if you would talk to the computer and ask to do things for you. Bash allows you to navigate the file system, run programs,  and automate tasks through scripting. Many neuroimaging softwares like [FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/) or [FreeSurfer](https://freesurfer.net/) require you to navigate in bash. It may feel unusual at the beginning, but you will learn quickly and experience that scripting makes your life as a neuroimaging researcher a lot easier... So check out the following tutorials:
- An article in Nature about why working with the command line is totally awesome: [Five reasons why researchers should learn to love the command line](https://www.nature.com/articles/d41586-021-00263-0) - just to enhance your motivation 😉
- [Unix intro by the amazing Andrew Jahn including video tutorial](https://andysbrainbook.readthedocs.io/en/latest/unix/Unix_Intro.html)
- [Unix intro by FSL](https://open.win.ox.ac.uk/pages/fslcourse/website/online_materials.html#unix)
- [Unix cheat sheet](https://www.guru99.com/linux-commands-cheat-sheet.html#1): a good overview of the most important commands to work with Unix
- If you are working on a Linux or macOS computer, open a terminal and just play around a bit (e.g., copy a file, rename it, navigate through some directories, create a new directory…). Check out the bash tutorials and cheat sheet again if you need it. 
- ALWAYS be careful with the remove (*rm*) command - if you delete files with rm, they will not be stored inside your trash bin but will be deleted immediately!
- Type *name-of-function --help* in the terminal to get more information about a specific function.


### 🔐 bash - changing permissions
Unix permissions allow or prevent different (groups of) users from viewing, modifying or executing files.
With *ls -l*, you can list the current permissions for files and folders:

	-rwxr--r-x  1 my_user  my_group      800 22 Apr 09:09 file1.txt
	
The letters rwx stand for **r**ead, **w**rite, and e**x**ecute. 
| who | abbreviation | permissions |
| ---------- | ------- | --------- | 
| owner/user | u | -rwx------ |
| group | g | ----rwx--- |   
| others | o | -------rwx |

Can you figure out the permissions for file *file1.txt* from above?
*solution: my_user can read, modify, and execute, the group my_group can only read the file, all others can read and execute the file.*


You can edit permissions with *chmod* if you are the owner. To add writing and executing permissions for my_group:

	chmod g+wx file1.txt
	
For folders, add -R to also change permissions inside the folder (e.g., *chmod o+rx -R my_folder*). 


## 📐 BIDS - keeping things organized
As sharing data becomes more and more important in the community, researchers started to organize imaging data in a structured way that should be the same between labs. This simplifies data sharing and also keeps your project well organized. I would recommend to have a "rawData" folder where the original images for your project are stored as they are. Save the scripts in a separate directory, as well as all the preprocessing outputs that are generated (e.g., "preprocData"). 
BIDS refers to "Brain Imaging Data Structure" and is one way to structure all projects in the exact same way to ease sharing and collaborations but also to keep things clean for yourself. 
- Find the main description [here](https://bids.neuroimaging.io/). 
- Find some examples on [openneuro](https://openneuro.org/), a platform for openly sharing (anonymized) MRI data. 


## 🏄🏼‍♀️ FreeSurfer - analyzing structural MRI
Now that we've learned some basics about MRI and bash, we can move on to the fun part of the story: analyzing data! There is various software available for analyzing structural MRI images (e.g. T1-weighted images). [FreeSurfer](https://freesurfer.net/) has the advantage over other software that it not only includes the individual voxels (= "cubes" that make up an MRI image; pixels in 3D space) in the analysis, but also reconstructs the brain surface. This makes the analysis more accurate. 
By preprocessing a T1-weighted MR image, we want to edit the image (e.g., intensity corrections) and remove inaccuracies - very similar to Photoshop. Our ultimate goal is to extract brain measures such as brain volume or cortex thickness. These measures can then be compared, for example, between a group of patients and healthy control subjects.
- Best practices for analyzing structural MRI in the context of neurodevelopmental disorders are well outlined by [Lea Backhausen](https://doi.org/10.1007%2Fs11065-021-09496-2)
- A very nice [tutorial](https://www.youtube.com/watch?v=6wxJ1up-E7E&list=PLIQIswOrUH6_DWy5mJlSfj6AWY0y9iUce&ab_channel=AndrewJahn) how to use FreeSurfer to process T1w images, again by Andrew Jahn
- A detailed explanation of all recon-all steps and output files is explained [here](https://surfer.nmr.mgh.harvard.edu/fswiki/ReconAllDevTable)
- How to navigate Freeview, a tool to visualize FreeSurfer output, is explained in [this tutorial](https://youtu.be/Mv-ECowxq2o)

As Freesurfer’s reconstruction is good but not perfect, we want to check some of the outputs visually. As looking at all images is tedious, FS has developed some handy tools that create a screenshot of the most important segmentations.
- [QAtools](https://surfer.nmr.mgh.harvard.edu/fswiki/QATools)
- Find some helpful guidelines to assess image quality provided by ENIGMA [here](https://enigma.ini.usc.edu/protocols/imaging-protocols/). 

FreeSurfer has a mailing list that is really helpful if you have questions or problems. You can check out previous Q&As and/or subscribe to the mailing list and ask your own questions [here](https://www.mail-archive.com/freesurfer@nmr.mgh.harvard.edu/).


*Specific note for TUM-NIC office:* the default version of FreeSurfer in our office is 5.3.0. However, this is really outdated. You can change the version by typing the following in the terminal:

	cd
	emacs .bashrc
	
This will open the `.bashrc` file in emacs, a common text editor for Linux. The `.bashrc` file is a script that is automatically executed when a user logs in. It contains several configurations and settings, e.g., where FreeSurfer is installed on your machine. To change the version, scroll down until you see `export FREESURFER_HOME=/sw/freesurfer/5.3.0`. Change it to the latest version (e.g., 7.3.2) and save the change with `Ctrl + X + S`.  Exit the terminal and open a new one to apply the change. You're ready to FreeSurf now!



## 🔧 FSL - fslutils and registration tools
[FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/) is another really handy software to work with MRI data of different modalities. There is also a pipeline to process T1w images called *fsl_anat*. It is quicker compared to FreeSurfer's *recon_all* (takes ~1h) but not as precise in calculating surface-related measures as cortical thickness (because no surfaces are specifically reconstructed like in FreeSurfer). It also has a processing tool for functional MRI called fsl *FEAT*. 

What is really helpful: FSL has some basic commands called fslutils that can be used to for example do basic maths on images (e.g., threshold an image: only voxels with values above a certain threshold are kept, the other ones will be set 0; or to calculate a mean image of a time series in fMRI), calculate statistics of images, output the header information and so on. This can be helpful in many cases and having the fslutils reference in mind can be a good starting point to work with MR images. 
- Check out the documentation [here](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Fslutils) 
- You can again type *name-of-function --help* in the terminal to get more information about it. 


Furthermore, FSL has some handy tools for image registration, i.e., aligning one image to a reference, called [flirt](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FLIRT) and [fnirt](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FNIRT/). Registering images is needed a lot in neuroimaging. A special case of image registration is "normalization", where the reference image is the so-called MNI space, a standardized 3D coordinate system used to compare and analyze brain data across different individuals and studies. It was created by averaging several subject's brain data, making it an average representation of the human brain anatomy. (But take care: different software uses different MNI templates / versions of the MNI space and they are often not compatible! If you are interested to read on that further, check out [this](https://doi.org/10.1038/s41592-022-01625-w) paper). Apart from normalization, any two images can be registered. 
- FLIRT: uses linear operations to register an input image -in to a reference -ref, typically used for registration of two images of the *same* subject (e.g., fMRI and T1w)
- FNIRT: uses non-linear operations, typically used for registration of two images of *different* subjects
- Work through this [FSL practical](https://fsl.fmrib.ox.ac.uk/fslcourse/graduate/lectures/practicals/registration/) to get to know the operations
- FSL Course [video](https://www.youtube.com/watch?v=2zcfYgdxhKM&ab_channel=FSLCourse) on image registration and different spaces
- How to use flirt for [resampling](https://andysbrainbook.readthedocs.io/en/latest/FrequentlyAskedQuestions/FrequentlyAskedQuestions.html#resampling) an image (i.e., changing the resolution, dimensions, or both of an image)


To get some basic information about the MR image, you can use *fslinfo* to see the [header](https://andysbrainbook.readthedocs.io/en/latest/FrequentlyAskedQuestions/FrequentlyAskedQuestions.html#what-is-in-the-header-of-a-nifti-file) of a nifti file. This contains information about the image dimension and resolution.

If you want to get more advanced in neuroimaging, I advise you to go through the FSL Course material, either online or in person (a live course is offered every year). FSL offers tools for a lot of MRI modalities. Working through this course will help you working with MR images but also understanding deeper what preprocessing pipelines do and what it is all about. 
- [Course material](https://open.win.ox.ac.uk/pages/fslcourse/website/online_materials.html)


## ⚖️ Multi-site studies - NeuroCombat for scanner harmonization to get rid of hardware effects
Big data is becoming more and more important for neuroimaging research. Since a single site typically cannot acquire more than a (few) hundred MRI scans, data sharing and collaborative efforts such as the [ENIGMA consortium](https://enigma.ini.usc.edu/) are becoming increasingly popular. However, this requires to correct for the effect of different scanner hardware and scanning protocols, which introduces bias in the data.  
There are several algorithms and approaches at hand, and the problem is not yet entirely solved. [NeuroCombat](https://doi.org/10.1016/j.neuroimage.2017.11.024) provides a great framework to relatively easily correct for the scanner effect while retaining biological variance.
- The python-based software is provided on [Github](https://github.com/Jfortin1/neuroCombat). 
- However, mind some limitations of ComBat: as nicely explained [here](https://www.youtube.com/watch?v=Ctm20mtbLdU&ab_channel=MosiKia), ComBat may remove variance related to biological effects. Therefore, more recent adaptations of NeuroCombat exist, which however are not yet as frequently applied.
- A comprehensive overview of the different harmonization methods, their statistical background, and pros and cons is provided in [this review by Johanna Bayer](https://doi.org/10.3389/fneur.2022.923988). The review focuses on techniques based on linear mixed effects models, ComBat-based models, and machine learning models (like hijacking normative models to harmonize data or using GANs).


## 🧐 Statistical analysis - interpret your data meaningfully
After preprocessing the images, we want to extract actually meaningful information and do some analyses. A common research question in neuroimaging is whether a case and a control group differ in a certain brain measure. Thereby, the brain measure can be analyzed voxel-/vertexwise or in a certain parcellation (defined by an atlas), such as the Desikan-Killiany parcellation, the default parcellation in FreeSurfer. A parcellation is nothing else than looking at your brain measure with less spatial resolution. Instead of thousands of voxels or vertices, the brain measure of interest is summarized into a few (hundred) regions of interest. As an advantage, the analysis is simpler and the number of statistical tests will be less. On the other hand, summarizing regions might lead to underestimating the results or even missing significantly different regions.
There are plenty of good resources for statistical analyses and you will definitely have to find some for your specific need. I will list a few general sources, which helped me a lot to understand general concepts and ideas, targeted to neuroimaging:
- Jeanette Mumford's ["mumfordbrainstats" tutorials](https://www.youtube.com/@mumfordbrainstats)
- Russel Poldrack's ["Statistical Thinking for the 21st Century"](https://statsthinking21.github.io/statsthinking21-core-site/)
- the ["Statistics 101" channel](https://www.youtube.com/watch?v=0Vj2V2qRU10&list=PLIeGtxpvyG-KA-BLkL391X__r0kU4_hm5&ab_channel=BrandonFoltz), especially the playlists on ANOVA, linear regression, and how the two collapse into the general linear model (GLM)

### 🐍 Data analysis with Python, R, or Matlab
There is some statistical software to perform neuroimaging analyses such as [SPSS Statistics](https://www.ibm.com/products/spss-statistics) that is really helpful. However, a license is required and workflow automation is not straightforward. Since big data becomes more important in neuroimaging and you will need Python for some imaging software anyways, I **really** recommend to learn some programming with Python. It allows you to handle big datasets (e.g., with pandas), to statistically analyze data (e.g., using scipy or sklearn), to nicely visualize your results (with matplotlib and seaborn), and even to directly work with neuroimaging data (e.g., nibabel). There are plenty of open source courses to learn it and your learning curve will be steep at the beginning. You will benefit from the skills early on and see some results! 
- [Basic Python Courses on edx](https://www.edx.org/certificates/professional-certificate/the-georgia-institute-of-technology-introduction-to-python-programming), the course material is free, the fees are solely for the certificate. 
- [Python basics for data science](https://learning.edx.org/course/course-v1:IBM+PY0101EN+3T2020/home)
- [Analyzing data with Python](https://learning.edx.org/course/course-v1:IBM+DA0101EN+3T2020/home)
- [Visualizing data with Python](https://learning.edx.org/course/course-v1:IBM+DV0101EN+3T2020/home)
- [Neuroimaging and data science](https://neuroimaging-data-science.org/root.html): interactive book with coding exercises targeted to neuroimaging
- [different tutorials listed by LMU open science center](https://github.com/lmu-osc)

Alternatively, Matlab and/or R are also powerful programming languages that are widely used in neuroimaging research. Knowing one programming knowledge allows you to more quickly and easily learn others - the concepts are mostly very similar. 

If you want to know more about it, follow me to the [coding section](https://github.com/Melissa1909/neuroimaging-primer/tree/main/programming) of this tutorial! 🥰


## ‼️ Open and reproducible science - best practices for your daily work
A topic that is widely discussed for the last few years: the [reproducibility crisis](https://en.wikipedia.org/wiki/Replication_crisis)... The most studies published in peer-reviewed journals actually cannot be reproduced or are proved to be false! Read more on this [here](10.1371/journal.pmed.0020124). I heard a good and inspirational talk by Malika Ihle, open science center coordinator at LMU Munich, with recommendations of best practices to make your research more reliable and reproducible. She shared her [presentation slides](https://osf.io/4xngc) with valuable sources. Among them:
- Generate portable and self-contained projects: a project should have a standardized structure and a list of all software versions you used
- Automize workflow: analyze your data using code instead of random click-based analysis
- Create a dynamic report: comment your code, what it does and most importantly why you took the decision to use function x or to step y
- Version control: use git (or similar) to keep track of the changes in your code

This will help science to get closer to the truth instead of just producing results. Apart from making science more reproducible, in the long-term, this will save you A LOT of time structuring new projects and figuring out what you did. 


## 🧩 Parcellations
- [Overview on available parcellations](https://www.lead-dbs.org/helpsupport/knowledge-base/atlasesresources/cortical-atlas-parcellations-mni-space/)


## 📊 Reference space(s) like MNI
- [MNI space(s)](https://www.lead-dbs.org/about-the-mni-spaces/)
- [Another list of common reference spaces](https://bids-specification.readthedocs.io/en/v1.3.0/99-appendices/08-coordinate-systems.html#template-based-coordinate-systems)
- [Python toolbox that stores several reference templates](https://www.templateflow.org/)
- [neuromaps by Markello et al.](10.1038/s41592-022-01625-w)


## 🤿 Dive deeper into more advanced topics...
Congratulations! You already learned a lot about neuroimaging and how to analyze MRI data! If you want to dive deeper into some specific topics, check out the folders above! You will find more information about neurodevelopmental disorders, functional MRI, specific modeling approaches, and how to investigate molecular underpinnings of brain aberrations visualized with MRI. 