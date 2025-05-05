# functional MRI - the brain in action or at rest 🧩🧘‍♀️


How the brain works has long been a mystery (and still is to some extent...), and people have been trying to understand brain function for a long time. Early lesion examples (such as [Phineas Gage's accident](https://en.wikipedia.org/wiki/Phineas_Gage)) have already shown that the brain has region-specific functionality. Today, we measure brain function either as electromagnetic fields (e.g. EEG) or via the metabolism and energy consumption of cells (e.g. PET, fMRI). 


## 🩸 How can we measure brain function with fMRI - the BOLD signal
The BOLD (Blood-Oxygen-Level Dependent) signal is a critical measure in fMRI that reflects changes in brain activity based on blood flow and oxygenation levels. When neurons in a specific area of the brain become active, they consume more oxygen, which leads to several physiological changes in that region. Here is a summary of how it works:
1. Active neurons need more energy to function, which is transported by hemoglobin in the blood.
2. To meet the increased oxygen demand, the body responds by increasing blood flow to that specific brain region. This is called the **hemodynamic response**, and it’s a bit "overcompensatory." More oxygen-rich blood is sent than is actually needed, leading to a temporary surplus of oxygenated blood in the area.
3. Hemoglobin has different magnetic properties depending on whether it is oxygenated or deoxygenated. Oxygenated hemoglobin is diamagnetic (less magnetic), whereas deoxygenated hemoglobin is paramagnetic (more magnetic). 
4. This difference affects the MR signal: in areas of increased neural activity, the excess oxygen-rich blood reduces the concentration of deoxygenated hemoglobin. Inhomogeneity of the magnetic field results in quicker spin relaxation (i.e., influences the T2* MR signal). 

Taken together, the BOLD signal is interpreted as an indirect measure of neural activity (actually changes in oxygen consumption are measured). Since the hemodynamic response takes 4-6 seconds to peak after a neural event, the BOLD signal is not an instantaneous indicator of neural firing but rather a delayed, smoothed-out representation of activity. It is widely used in neuroscience to map active brain regions during various tasks, resting states, or sensory experiences.

Find a nice summary in [this](https://www.youtube.com/watch?v=9sQWG46kArE&ab_channel=Feldmann-WustefeldLab) video.


## 📈 How the BOLD signal changes over time - the hemodynamic response function
The **hemodynamic response function (HRF)** describes the BOLD signal with respect to time. 
1. Initial Dip: Right after neural activity starts, there’s a slight decrease in oxygenated blood due to increased oxygen consumption by neurons. This initial "dip" in the BOLD signal happens as local oxygen is used faster than it can be replenished. This dip is very short-lived and often hard to detect in standard fMRI.
2. Peak Response: Shortly after the dip, the blood flow dramatically increases to overcompensate for the oxygen demand, resulting in a peak in the BOLD signal. This is the most prominent phase of the HRF and occurs around 4-6 seconds after the neural event. The peak response is what is primarily captured in fMRI as a marker of brain activity.
3. Post-Stimulus Undershoot: After the peak, the BOLD signal decreases and sometimes even dips below the baseline level. This phase happens because blood flow and volume take a bit longer to return to their resting state, even though oxygen consumption has normalized. 

[This website](https://mriquestions.com/does-boldbrain-activity.html) shows a HRF and a clear explanation to it and lists further sources.


## 🫀 Why do vessels dilate? - the neurovascular unit
## 📐 Outcome measures of fMRI
## 🧘‍♀️ Task vs. resting-state fMRI
## 💧 fMRI signal from non-neural sources - CSF and parenchymal borders
Functional MRI (especially **BOLD fMRI**) relies on detecting changes in the magnetic properties of deoxygenated hemoglobin — specifically the T2* (transverse relaxation) signal from hydrogen nuclei in water. In gray matter, these BOLD signal changes are linked to neural activity via neurovascular coupling.

However, structures other than gray matter are visible in an fMRI image. In our case, we are interested in the behaviour of Cerebrospinal Fluid (CSF) and the motion of the brain's ventricular system. 

CSF is mostly water (~99%), with very low cellular content and no hemoglobin. So, CSF does not produce a BOLD signal in the traditional neurovascular sense. However, CSF does have an fMRI signal that can vary, and here's where it comes from:

✅ Physical sources of CSF fMRI signal:

1. Bulk motion of CSF (due to cardiac and respiratory pulsations)
- These motions cause phase shifts and signal fluctuations, especially near the ventricles and cisterns.
- These fluctuations can be periodic and strong, contaminating surrounding BOLD signals.

2. Flow-related effects
- Flow of CSF modulates spin dephasing, causing T2* signal fluctuations, especially in gradient-echo EPI.
- Especially when you place your region of interest (ROI) directly on the edge of the imaging volume, for example by looking at the fourth ventricle, fresh CSF will enter the brain periodically in response to small changes in cerebral blood volume (CBV), causing an inflow effect and thus visible up- and downward movement of CSF.
- If you want to know why changes in CBV cause antiproportional movement of CSF (so-called gGM-CSF-coupling), you can read about the Monro-Kellie-Doctrine [here]()
- The coupling between gray matter and CSF has been explored in various studies, including:
- It is of particular interest in the CSF-community, as this value has been linked to numerous neurodegenerative diseases such as Alzheimers.

3. Partial volume effects
- Some voxels labeled as “CSF” contain small amounts of nearby parenchyma or blood vessels.
- If you then place a ROI directly on the edge of lateral ventricles, you'll encounter what's called a partial volume effect, meaning that the ratio of CSF and parenchyma in the respective voxel will decide on the signal intensity of the observed voxel. Our group is particularly in the fMRI-based volume-sensitive measurement of ventricular motion, which you can read up [here](https://doi.org/10.1371/journal.pbio.3003138) in detail.

## 🛠️ Preprocessing steps

Now that you've read all this theory about fMRI, let's start working on them, shall we?
- Before you look at functional connectivity analyses or at CSF movement in fMRI, you should **preprocess** your images, as the fMRI image that you will get out of the scanner isn't of any use yet. 

Why is that?
- Especially in resting-state fMRI you do not have an expected model of brain activity as you would have in a typical task-based fMRI.
- As most resting-state fMRI analyses are based on correlating different voxel timeseries with each other, any structural artefact in the data can ruin your observed outcome. 
- In fMRI, movement, cardiac and breathing cycles but also scanner artifacts are typical sources of noise and especially in group comparisons you want to be sure to remove as much noise as possible, so that the observed effect is actually due to a group difference in for example functional connectivity and not due to a difference in head movement.

That's why in resting-state, but also in task-based fMRI, you will send your data through **several different steps of preprocessing**.
- [Here](https://www.youtube.com/watch?v=xLWES956JJE) is a good video that sums up what Preprocessing is generally about
- There is plenty of software to account for the required preprocessing steps, this includes [FEAT](https://fsl.fmrib.ox.ac.uk/fsl/docs/#/task_fmri/feat/index) from FSL, [AFNI](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/starting/intro.html) or [SPM](https://www.fil.ion.ucl.ac.uk/spm/software/).
- We mainly use FSL software and [here](https://www.youtube.com/watch?v=Bm3kUPP-tIc&t=921s) is a good video from the developers that explains the preprocessing steps discussed further below. They also developed a very useful image viewer called [FSLeyes](https://open.win.ox.ac.uk/pages/fsl/fsleyes/fsleyes/userdoc/overview.html), which we mainly use to look at images or create some example figures using real brains.

Overview of different preprocessing steps
**Conventional steps**
1. Motion correction
- xxx
2. Slice timing
- xxx
3. Temporal filtering
- xxx
4. Registration
- xxx
5. Spatial smoothing
- xxx

**Extra noise reduction steps (!)**
1. ICA-based clean-up
- This is a semi-automatic noise labelling method



There are also other steps, such as volume censoring or physiological noise regression. 

## 🤷‍♀️ Problems in fMRI



