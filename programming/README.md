# programming ♥️

## 🐍 Programming with python
This text is also in the main README, but also fits here (and is really recommended to be read 😉)
There is some statistical software to perform neuroimaging analyses such as [SPSS Statistics](https://www.ibm.com/products/spss-statistics) that is really helpful. However, a license is required and workflow automation is not straightforward. Since big data becomes more important in neuroimaging and you will need Python for some imaging software anyways, I **really** recommend to learn some programming with Python. It allows you to handle big datasets (e.g., with pandas), to statistically analyze data (e.g., using scipy or sklearn), to nicely visualize your results (with matplotlib and seaborn), and even to directly work with neuroimaging data (e.g., nibabel). There are plenty of open source courses to learn it and your learning curve will be steep at the beginning. You will benefit from the skills early on and see some results! 
- [Basic Python Courses on edx](https://www.edx.org/certificates/professional-certificate/the-georgia-institute-of-technology-introduction-to-python-programming), the course material is free, the fees are solely for the certificate. 
- [Python basics for data science](https://learning.edx.org/course/course-v1:IBM+PY0101EN+3T2020/home)
- [Analyzing data with Python](https://learning.edx.org/course/course-v1:IBM+DA0101EN+3T2020/home)
- [Visualizing data with Python](https://learning.edx.org/course/course-v1:IBM+DV0101EN+3T2020/home)
- [Neuroimaging and data science](https://neuroimaging-data-science.org/root.html): interactive book with coding exercises targeted to neuroimaging

Alternatively, Matlab and/or R are also powerful programming languages that are widely used in neuroimaging research. Knowing one programming knowledge allows you to more quickly and easily learn others - the concepts are mostly very similar. 


## 🐙 Git and Github
One thing I struggled with a lot in the beginning was finding a proper way to organize my code and the versions of the scripts. Git helps a lot with that - it automatically tracks all changes made in a project folder. You can then comment on these changes with a little message to remind your future self what you did there or why you customized the code in the following way. It also makes collaboration easier. Additionally, it allows you to (but doesn't require you to) synchronize your Git-monitored projects on Github, a platform where you can share code with colleagues or publicly. 
- [Git and GitHub for Beginners](https://www.youtube.com/watch?v=RGOj5yH7evk&ab_channel=freeCodeCamp.org)
- [Github Desktop](https://github.com/apps/desktop): a way to use git without the command line in a very simple and user friendly way


## 🐳 Docker 
Imagine you want to reproduce a result from a paper, the authors were so kind to share their complete pipelines on Github (🥇) - but the code is not working on your machine... You may run into something like: 
``python
<font color='red'>
neuromaps 0.0.5 requires numpy >= 2.0.0, but you have numpy 1.7.5 which is incompatible. 
</font> 
``
Annoying! 🙄

To avoid such conflicts, you can pack your software in a so called `docker container`, a way to build, run, and ship your software in a consistent and reproducible way. You can imagine a docker container really like a container: all requirements and dependencies of a software are packed into an isolated environment separated from the rest of your computer. This allows you, for example, to have several versions of a Python library installed in parallel, to share the exact versions of the libraries you have used for a project, or - in the case of our office - to ship some libraries that cannot be downloaded on our servers because the computers there do not have internet access. 
Here is a good tutorial to learn the basics quickly:
- [Docker in 1 hour](https://www.youtube.com/watch?v=pTFZFxd4hOI&ab_channel=ProgrammingwithMosh)
- [Docker for beginners in the TUM-NIC Wiki](https://mri.mgruber.eu/projects/tumnic-intern/wiki/Docker_for_beginners), only available for members of our office