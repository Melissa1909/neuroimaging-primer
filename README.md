# neuroimaging-primer 🧠📚

Some important sources to get into the basics of neuroimaging research. The list is definitely incomplete and follows my personal preferences and experiences what I consider important. Feel free to contribute and open a pull request! 

## 📸 MRI - imaging the brain 
Studying the brain has undergone different periods, tightly linked to the available tools to look at and study it. Magnetic resonance imaging (MRI) is a common tool to image brain structure and function. It is a non-invasive medical imaging technique that uses a strong magnetic field and radio waves to generate a detailed representation of the brain. Get some more information of how MRI works below:
- [What is MRI?](https://www.youtube.com/watch?v=LyCqYq5n67M&ab_channel=BettinaBae%C3%9Fler)
- [MRI made easy]( https://rads.web.unc.edu/wp-content/uploads/sites/12234/2018/05/Phy-MRI-Made-Easy.pdf): a good overview of the technique, it takes some time to read, but is definitely worth the time!

## 📐 BIDS - keeping things organized
As sharing data becomes more and more important in the community, researchers started to organize imaging data in a structured way that should be the same between labs. This simplifies data sharing and also keeps your project well organized. I would recommend to have a "rawData" folder where the original images for your project are stored as they are. Save the scripts in a separate directory, as well as all the preprocessing outputs that are generated (e.g., "preprocData"). 
BIDS refers to "Brain Imaging Data Structure" and is one way to structure all projects in the exact same way to ease sharing and collaborations but also to keep things clean for yourself. Find the main description [here](https://bids.neuroimaging.io/). 

## 🖥️ Bash - a neuroimaging researcher's language
Bash is a command-line interpreter or shell for Unix-like operating systems. It provides a command-line interface for users to interact with the operating systems by executing commands - as if you would talk to the computer and ask to do things for you. Bash allows you to navigate the file system, run programs,  and automate tasks through scripting. Many neuroimaging softwares like [FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/) or [FreeSurfer](https://freesurfer.net/) require you to navigate in bash. It may feel unusual at the beginning, but you will learn quickly and experience that scripting makes your life as a neuroimaging researcher a lot easier... So check out the following tutorials:
- [Unix intro by the amazing Andrew Jahn including video tutorial](https://andysbrainbook.readthedocs.io/en/latest/unix/Unix_Intro.html)
- [Unix intro by FSL](https://open.win.ox.ac.uk/pages/fslcourse/website/online_materials.html#unix)
- [Unix cheat sheet](https://www.guru99.com/linux-commands-cheat-sheet.html#1): a good overview of the most important commands to work with Unix
- If you are working on a Linux or macOS computer, open a terminal and just play around a bit (e.g., copy a file, rename it, navigate through some directories, create a new directory…). Check out the bash tutorials and cheat sheet again if you need it. 
- ALWAYS be careful with the remove (rm) command - if you delete files with rm, they will not be stored inside your trash bin but will be deleted immediately!

## 🏄🏼‍♀️ FreeSurfer - analyzing structural MRI
As we have learned some basics about MRI and bash now, we can approach the funny part of the story: analyzing data! Various software is available for analyzing structural MRI (e.g., T1-weighted images). [FreeSurfer](https://freesurfer.net/) has the advantage over other software that it not only includes the individual voxels (= "cubes" that make up an MRI image; pixels in 3D space) in the analysis, but also reconstructs the brain surface. This makes the analysis more accurate. 
By pre-processing a T1-weighted MR image, we want to edit the image (e.g., intensity corrections) and remove inaccuracies - quite similar to Photoshop. Our goal in the end is to extract brain measures such as brain volume or the thickness of the cortex. These measures can then be compared between a group of patients and healthy controls, for example.
- Best practices for analyzing structural MRI in the context of neurodevelopmental disorders are well outlined by [Lea Backhausen](https://doi.org/10.1007%2Fs11065-021-09496-2)
- A very nice [tutorial](https://www.youtube.com/watch?v=6wxJ1up-E7E&list=PLIQIswOrUH6_DWy5mJlSfj6AWY0y9iUce&ab_channel=AndrewJahn) how to use FreeSurfer to process T1w images, again by Andrew Jahn
- How to navigate Freeview, a tool to visualize FreeSurfer output, is explained in [this tutorial](https://youtu.be/Mv-ECowxq2o)

As Freesurfer’s reconstruction is good but not perfect, we want to check some of the outputs visually. As looking at all images is tedious, FS has developed some handy tools that create a screenshot of the most important segmentations.
- [QAtools](https://surfer.nmr.mgh.harvard.edu/fswiki/QATools)
- Find some helpful guidelines to assess image quality provided by ENIGMA [here](https://enigma.ini.usc.edu/protocols/imaging-protocols/). 



