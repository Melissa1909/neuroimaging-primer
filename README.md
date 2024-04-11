# neuroimaging-primer 🧠📚

Some important sources to get into the basics of neuroimaging research. Feel free to contribute and open a pull request! 

## 📐 BIDS - keeping things organized
As sharing data becomes more and more important in the community, researchers started to organize imaging data in a structured way that should be the same between labs. This simplifies data sharing and also keeps your project well organized. I would recommend to have a "rawData" folder where the original images for your project are stored as they are. Save the scripts in a separate directory, as well as all the preprocessing outputs that are generated (e.g., "preprocData"). 
BIDS refers to "Brain Imaging Data Structure" and is one way to structure all projects in the exact same way to ease sharing and collaborations but also to keep things clean for yourself. Find the main description (here)[https://bids.neuroimaging.io/]. 

## 🖥️ Bash - a neuroimaging researcher's language
Bash is a command-line interpreter or shell for Unix-like operating systems. It provides a command-line interface for users to interact with the operating systems by executing commands - as if you would talk to the computer and ask to do things for you. Bash allows you to navigate the file system, run programs,  and automate tasks through scripting. Many neuroimaging softwares like (FSL)[https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/] or (FreeSurfer)[https://freesurfer.net/] require you to navigate in bash. It may feel unusual at the beginning, but you will learn quickly and experience that scripting makes your life as a neuroimaging researcher a lot easier... So check out the following tutorials:
- (Unix intro playlist by the amazing Andrew Jahn)[https://andysbrainbook.readthedocs.io/en/latest/unix/Unix_Intro.html]
- (Unix intro by FSL) [https://open.win.ox.ac.uk/pages/fslcourse/website/online_materials.html#unix]
- Unix cheat sheet)[https://www.guru99.com/linux-commands-cheat-sheet.html#1]: a good overview of the most important commands to work with Unix

