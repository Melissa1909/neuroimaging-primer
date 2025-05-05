# Functional MRI - the brain in action or at rest 🧩🧘‍♀️


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
Neurovascular coupling (NVC): the link between neurons and blood flow
Neurovascular coupling refers to the process by which a brief increase in local neuronal activity leads to a subsequent, spatially matched increase in cerebral blood flow (CBF) and volume (CBV) to meet the heightened metabolic needs of active brain tissue 
- This phenomenon underlies the blood‑oxygen‑level‑dependent (BOLD) contrast exploited by fMRI.

## Step-by-Step Neurovascular Coupling

| Step | Cellular Events | Vascular Outcome |
|------|------------------|------------------|
| 1. Neuronal activation | Synaptic activity releases glutamate; Na⁺/K⁺‑ATPases consume ATP to restore ion gradients. | – |
| 2. Astrocyte signaling | Astrocytes sense glutamate via metabotropic receptors → ↑ intracellular Ca²⁺ → release of vasoactive mediators (e.g., prostaglandin E₂, epoxyeicosatrienoic acids). | – |
| 3. Direct neuronal vasomotor action | Neurons generate nitric oxide (NO) and prostaglandins that relax vascular smooth muscle. | Arteriole and capillary dilation |
| 4. Increased CBF/CBV | More oxygen-rich blood is delivered than is consumed. | Local blood volume ↑; deoxyhemoglobin fraction ↓ |
| 5. BOLD signal generation | Less paramagnetic deoxyhemoglobin → slower T₂* decay of MR signal after RF pulse. | Increased MRI signal in active regions |

## 🧘‍♀️ Task vs. resting-state fMRI and its associated outcomes

Functional Magnetic Resonance Imaging (fMRI) can be used in two major ways: *Task-based fMRI* and *Resting-state fMRI*. Both measure brain activity via the BOLD (Blood Oxygen Level Dependent) signal but differ in design, purpose, and analysis.

---

## 🎯 Task-Based fMRI

### ❓ What is it?  
Task-based fMRI measures brain activity *in response to specific tasks or stimuli*. Participants perform a designed task (e.g., visual stimulation, finger tapping), and changes in brain activation are analyzed. This is the historical origin of fmri Signal, see also [here](10.1002/mrm.1910340409)

### 🔬 Method:
- Uses an *experimental paradigm* (block or event-related).
- BOLD signals are modeled with a *General Linear Model (GLM)*.
- Produces *activation maps* showing task-related activity.
    - See Figure 1c from this publication [here](https://doi.org/10.1371/journal.pbio.3002035)

### ✅ Pros:
- Directly links brain areas to specific cognitive functions.
- High spatial specificity.

### ⚠️ Cons:
- Requires subject cooperation and task performance.
- Task design must be carefully controlled.

---

## 💤 Resting-State fMRI

### ❓ What is it?  
Resting-state fMRI measures *spontaneous brain activity* when the subject is *not performing any task*—typically lying still with eyes open or closed.

### 🔬 Method:
- No external task; continuous passive recording.
- Focus on *functional connectivity*: correlated BOLD signal fluctuations between regions.
    - functional connectivity is mainly [described](https://doi.org/10.1002/hbm.460020107) as the "statistical association or dependency among two or more anatomically distinct timeseries".
- Analysis methods include mainly *seed-based correlation*.

### ✅ Pros:
- Minimal demands on participants.
- Suitable for infants, elderly, or clinical populations.
- Reveals *intrinsic functional networks* (e.g., default mode network).

### ⚠️ Cons:
- No direct link to behavior or function.
- More susceptible to motion and physiological noise.
- Interpretation can be more ambiguous.

---

## 🔍 Key Differences

| Feature              | Task-Based fMRI                          | Resting-State fMRI                         |
|---------------------|-------------------------------------------|--------------------------------------------|
| *Purpose*          | Map brain activity during tasks           | Assess intrinsic connectivity               |
| *Subject activity* | Performs specific task                    | Rests quietly                               |
| *Analysis type*    | Activation mapping (GLM)                  | Correlation / network analysis              |
| *Design*           | Block or event-related                    | No explicit design                          |
| *Applications*     | Functional localization, cognitive tasks  | Brain networks, developmental or clinical studies |
| *Limitations*      | Needs good task performance               | More difficult to interpret causally        |

---

## 🧪 Summary

- *Task-based fMRI*: Best for hypothesis-driven research; maps specific functions to brain areas.
- *Resting-state fMRI*: Ideal for network-level studies and populations unable to perform tasks.

Both approaches are complementary and often used together in neuroscience research.

## 💧 fMRI signal from non-neural sources - CSF and parenchymal borders
Functional MRI (especially **BOLD fMRI**) relies on detecting changes in the magnetic properties of deoxygenated hemoglobin — specifically the T2* (transverse relaxation) signal from hydrogen nuclei in water. In gray matter, these BOLD signal changes are linked to neural activity via neurovascular coupling.

However, structures other than gray matter are visible in an fMRI image. In our case, we are interested in the behaviour of Cerebrospinal Fluid (CSF) and the motion of the brain's ventricular system. 

CSF is mostly water (~99%), with very low cellular content and no hemoglobin. So, CSF does not produce a BOLD signal in the traditional neurovascular sense. However, CSF does have an fMRI signal that can vary, and here's why we can even measure it:

# The Monroe–Kellie Doctrine

The Monroe–Kellie doctrine describes how the rigid skull confines three main intracranial compartments—brain tissue, blood, and cerebrospinal fluid (CSF)—and states that the total volume inside the cranium must remain constant. Any increase in one compartment must be offset by a decrease in one or both of the others, or intracranial pressure (ICP) will rise.

---

## Components

1. **Brain Parenchyma** (~80% of intracranial volume)
   - This refers to the brain tissue, including neurons and glial cells.

2. **Blood** (~10% of intracranial volume)
   - Blood is composed of both arterial and venous blood within the brain.

3. **Cerebrospinal Fluid (CSF)** (~10% of intracranial volume)
   - CSF is found in the ventricles and the subarachnoid space surrounding the brain and spinal cord.

---

## Key Principle

Since the volume inside the skull is fixed, a change in the volume of one of these compartments must be compensated by a decrease in the volume of the other two compartments, otherwise, intracranial pressure (ICP) will increase. 


✅ Drivers of CSF flow:

Macroscopic CSF flow happens because of three physiological processes
- Heartbeat
- Respiration
- Neuronal activity (see neurovascular coupling above)

✅ Methods to analyze CSF flow:

1. **Flow-related effects** at the bottom slice of the magnetic field of the fMRI
- Flow of CSF modulates spin dephasing, causing T2* signal fluctuations, especially in gradient-echo EPI.
- Especially when you place your region of interest (ROI) directly on the edge of the imaging volume, for example by looking at the fourth ventricle, fresh CSF will enter the brain periodically in response to small changes in cerebral blood volume (CBV), causing an inflow effect and thus visible up- and downward movement of CSF.
    - This happens because fresh fluid that hasn't been magnetized yet shows high signal intensity, when reaching the magnetic field for the first time. (Check supplementary information from this publication [here](10.1126/science.aax5440) to understand this effect)
    - This effect can be used to assess whether there is in- our outflow of CSF in the fourth ventricle or basal cistern
- As this CSF flow is antiproportional to the signal in gray matter (GM activity -> rise in CBV due to neurovascular coupling -> CSF outflow), we refer to this as GM-CSF-coupling.

- The coupling between gray matter and CSF has been explored in various studies, including: [Fultz2019](10.1126/science.aax5440), [Han2021](https://doi.org/10.1371/journal.pbio.3001233) or [Zimmermann2025](10.1097/ALN.0000000000005360)
- It is of particular interest in the CSF-community, as this value has been linked to numerous neurodegenerative diseases such as Alzheimers.

2. **Partial volume effects**
- Some voxels at the border of parenchyma and ventricular system contain amounts of parenchyma and CSF.
- If a ROI is then placed directly on those voxels (e.g. at the edge of lateral ventricles), you'll encounter what's called a partial volume effect.
- This means that the ratio between CSF and parenchyma in the respective voxel will decide on the signal intensity of the observed voxel.
- We used this idea of the partial volume effect induced intensity changes at the edge of lateral ventricles to observe its motion as a respond to neural activity in fMRI
- Our group is particularly interested in the fMRI-based measurement of ventricular motion, which you can read up [here](https://doi.org/10.1371/journal.pbio.3003138) in detail.

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
### 1. **Slice timing**
- Slice‐timing correction (STC) is a standard fMRI preprocessing step that realigns the time series of all slices in each volume to a common reference time‑point. Because most fMRI scanners acquire a 3D volume not all at once but slice by slice over the repetition time (TR), each slice actually samples the brain at a slightly different moment. STC shifts each slice’s time series via interpolation so that every voxel appears as if it were measured simultaneously—crucial when your experimental design has rapid or event‑related timing.
**Why slice timing matters**
- Temporal misalignment: If slice 1 is acquired at time 0 ms and slice 20 at 1,000 ms (for a TR of 2 s and 20 slices), then a neural event at 500 ms will appear at different relative phases in different slices.
- Statistical sensitivity: Uncorrected offsets smear the estimated hemodynamic response across time, reducing power and inducing bias in model estimates 
- Event‑related designs: When stimuli are brief or jittered, even small slice‑time differences (<100 ms) can distort the shape and timing of the inferred response.

    **Core steps of STC**
- Specify slice order & reference
Ascending (1→N), descending (N→1) or interleaved (odd→even) acquisition 
Choose a reference slice (often the middle slice or first slice) whose time‑point all others will be realigned to.
- Interpolate time series
For each voxel, reconstruct a continuous time curve (e.g. via sinc or spline interpolation).
Sample that curve at the reference time for each volume, effectively “shifting” each slice’s data in time 
Brain Innovation
-Output corrected 4D series
All slices now share a common temporal grid, ready for motion correction, normalization and statistical modeling.


### 2. **Motion correction**
- Motion correction is a key preprocessing step in fMRI analysis that compensates for the participant’s head movements during the scan.  
Even small translations or rotations can introduce spurious signal changes that mimic or obscure true neural activity.

---

# 2.1 The Problem: Head Motion Artifacts

- 🌀 Within-scan movement: Even sub-millimeter shifts or tiny rotations during the scan can distort results.
- ⚠️ Artifacts introduced:
  - Voxels sample different tissue over time → false signal fluctuations
  - Spin-history effects → signal intensity changes due to slice excitation history
  - Motion-task correlation → movements may correlate with task timing (e.g., button presses)

---

# 2.2 Core Steps of Motion Correction

| Step                      | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| 1. Reference volume       | Select one volume (often one of the middle timepoints of the whole fMRI image) as the alignment target     |
| 2. Rigid-body registration| Estimate 6 motion parameters (x, y, z + pitch, roll, yaw) for each volume   |
| 3. Resampling             | Apply inverse transforms with interpolation (e.g. trilinear or sinc)        |

---

# 2.3 Motion Parameter Use

- 📉 Nuisance regression: Include motion parameters (and their derivatives) in the GLM to reduce motion-related variance
- ✂️ Scrubbing ("frame censoring"): Identify and remove volumes with excessive motion  
  - e.g., framewise displacement > 0.5 mm or rotation > 0.5°
  - We typically do something called "Contiguous low-motion segment (“epoch”) selection", which is applying the idea of scrubbing and searching for the longest timeframe below a previously defined motion cutoff
- 📈 Quality control:
  - Plot motion traces
  - Compute summary metrics (e.g., framewise displacement)
  - Decide whether to exclude high-motion runs


### 3. **Registration**
- # Coregistration vs. Normalization in fMRI Preprocessing

When you preprocess fMRI data, you perform a series of spatial-alignment steps to ensure that:

1. Each subject’s functional scans line up with their own anatomy.
2. All subjects’ brains live in the same “standard” space.

The two key steps are: coregistration and normalization.

---

# 3.1 Coregistration

🎯 **Goal:**  
Align each subject’s functional timeseries to their high-resolution structural (T₁) image.

🔍 **Why?**  
Functional images have lower resolution and different contrast than anatomical scans, so you need to know exactly where activation lies relative to gyri and sulci.

🧭 **What transforms?**  
Rigid-body transform (6 degrees of freedom: 3 translations, 3 rotations)

🛠️ **How?**  
- Choose a reference image (usually the subject’s mean fMRI volume).  
- Optimize the rigid-body parameters to maximize similarity (e.g., mutual information) between fMRI and T₁.  
- Resample the fMRI volumes into the anatomical space.
- We typically do this with FSL "flirt" command

📤 **Output:**  
A functional 4D series that “sits” in the same voxel grid as the structural image — allowing overlay of activation maps on anatomy.

---

# 3.2 Normalization

🎯 **Goal:**  
Warp each subject’s structural scan — and by extension, their coregistered functional scans — into a standard template (e.g., MNI, Talairach).

🔍 **Why?**  
To compare or average results across subjects, everyone’s brain must be in a common coordinate system.

🧭 **What transforms?**  
Nonlinear (and possibly affine) deformations: stretching, squeezing, and bending to match the individual’s anatomy to the template.

🛠️ **How?**  
- Estimate deformation fields that minimize anatomical differences between the subject’s T₁ and the template.  
- Apply those same deformations to the coregistered fMRI data.
- We typically do this with FSL "fnirt" command

📤 **Output:**  
Functional data in template space, enabling group-level statistics and reporting of coordinates in a standard atlas.

---

# 3.3 Key Differences

| Feature         | Coregistration                         | Normalization                                     |
|----------------|----------------------------------------|--------------------------------------------------|
| Scope           | Within-subject alignment               | Between-subject (to atlas) alignment             |
| Image types     | Functional ↔ Structural (fMRI to T₁)     | Structural (and fMRI) to standard template        |
| Transform       | Rigid-body (6 DOF)                     | Affine + Nonlinear deformations (many DOF)       |
| Purpose         | Accurate overlay on anatomy            | Enable group analyses & coordinate reporting     |
| Interpolation   | One resampling of functional series    | Additional resampling into template space        |

---
### 4. **Temporal Filtering**
Temporal filtering is a crucial step in fMRI preprocessing that improves the quality of your signal by removing unwanted frequencies from the time series at each voxel.

---

## 🎯 Goal

Remove slow drifts and high-frequency noise from the fMRI signal that are unlikely to reflect true neural activity.

---

## 🔍 Why Is Temporal Filtering Important?

The raw BOLD (Blood-Oxygen-Level Dependent) signal contains fluctuations from multiple sources:

- ✅ Task-related or spontaneous neural activity (the signal of interest)
- ❌ Slow scanner drifts (very low frequency)
- ❌ Physiological noise like heartbeat and breathing (high frequency)
- ❌ Motion-related artifacts

These noise sources can obscure the actual signal. Filtering improves the signal-to-noise ratio and makes the statistical analysis more reliable.

---

## ⚙️ How It Works

Temporal filtering typically uses a band-pass or high-pass filter applied to the voxel-wise time series:

- 🟢 **High-pass filter** (e.g., 0.01 Hz) -> This means letting all high frequencies through:  
  Removes very slow fluctuations (like scanner drift).  
  → Keeps only faster fluctuations that may reflect neural processes.

- 🔵 **Low-pass filter** (e.g., 0.1–0.25 Hz) -> This means letting all low frequencies through:  
  Removes fast fluctuations (like heartbeat, typically around 1 Hz).  
  → Often used in resting-state fMRI to isolate slow neural rhythms.

- 🟠 **Band-pass filter** (e.g., 0.01–0.1 Hz) -> This means letting a certain frequency band through:  
  Combines both, retaining the frequency band most associated with meaningful BOLD signals.

🧪 Example:  
A high-pass filter at 0.01 Hz removes signal drifts slower than 100 seconds.

Filtering is typically applied after slice timing and motion correction but before statistical modeling.

---

## 📤 Output

A cleaned version of the fMRI time series at each voxel, containing only the frequency range of interest.

- Reduced low- and high-frequency noise
- Increased sensitivity to real task effects or connectivity patterns

---

## ⚠️ Considerations

- The choice of cutoff frequencies depends on:
  - The repetition time (TR)
  - The duration of the scan
- Avoid filtering out the frequency components of your task (especially in block designs with slow alternations).


### 5. Spatial smoothing
# Spatial Smoothing in fMRI Preprocessing

Spatial smoothing is a key preprocessing step in fMRI that slightly blurs the functional images to improve signal detection and enable group-level statistical analysis.

---

## 🎯 Goal

Increase the signal-to-noise ratio and account for anatomical variability by averaging signals from neighboring voxels.

---

## 🔍 Why Is Spatial Smoothing Important?

The BOLD signal at each voxel is inherently noisy, and neighboring brain areas often share functionally similar signals. Spatial smoothing helps:

- ✅ Improve detection of true neural activity by reducing random noise
- ✅ Compensate for inter-subject anatomical differences (gyri/sulci misalignments)
- ✅ Satisfy statistical assumptions for methods like Gaussian Random Field theory

It also helps ensure that small misregistrations across participants don’t drastically affect group results.

---

## ⚙️ How It Works

Spatial smoothing involves convolving the 3D fMRI data with a Gaussian kernel. This means that each voxel's value is replaced by a weighted average of its neighbors.

- 🟢 Gaussian kernel: Defined by its Full Width at Half Maximum (FWHM), typically 4–8 mm.
  - FWHM = the width of the Gaussian at half of its maximum height
  - Example: A 6 mm FWHM kernel smooths over ~2–3 voxel radii

- 🔄 Convolution is applied independently at each time point (i.e., spatial-only smoothing, not temporal).

🧪 Example:  
A 6 mm FWHM kernel spreads the signal from one voxel across its neighbors in a bell-shaped manner, reducing noise and making nearby activations more similar.

---

## 📤 Output

A smoothed 4D fMRI dataset where:

- The signal is more continuous across space
- Small or isolated noisy fluctuations are reduced
- Activation clusters are more spatially coherent

---

## ⚠️ Considerations

- Too little smoothing:
  - May miss activation if the signal is noisy
- Too much smoothing:
  - Can blur activation across functional boundaries (e.g., across sulci)
  - May reduce spatial specificity

🧠 Tip:  
Choose a smoothing kernel appropriate for your voxel size and expected activation size.  
E.g., if voxel size = 2×2×2 mm³, a kernel of 6–8 mm FWHM is common.

## **Extra noise reduction steps (!)**
1. ICA-based clean-up
- This is a semi-automatic noise labelling method. In our group we use [ICA-AROMA](https://github.com/maartenmennes/ICA-AROMA)

Independent Component Analysis (ICA)–based AROMA is a data-driven method for automatically identifying and removing motion-related noise from fMRI data, especially useful in resting-state fMRI and studies involving subjects with high head motion.

---

## 🎯 Goal

Identify and remove structured noise—particularly head motion artifacts—from fMRI data using independent component analysis (ICA), without removing neural signal.

---

## 🔍 Why Use ICA-AROMA?

Traditional motion correction methods (e.g., realignment + motion regressors) don’t always fully capture complex motion-related artifacts, especially:

- Spin-history effects
- Micromovements
- Structured noise not fully captured by rigid-body motion parameters

ICA-AROMA improves upon this by:

- Automatically detecting noise components associated with motion
- Removing them while preserving true neural signal

---

## ⚙️ How It Works

ICA-AROMA combines ICA decomposition with machine-learning–based classification to clean the data:

1. 🎲 Run ICA decomposition (e.g., via FSL MELODIC)  
   - fMRI time series is decomposed into a set of spatial components, each with its own time course.

2. 🧠 Feature extraction  
   For each component, AROMA computes several features:
   - High-frequency content of the time course
   - Edge fraction (how much of the component is in the brain edges)
   - CSF fraction (how much of it lies in the cerebrospinal fluid)
   - Correlation with realignment (motion) parameters

3. 🤖 Component classification  
   A predefined classifier labels each component as "signal" or "motion-related noise" based on the above features.

4. 🧹 Component removal  
   Only the noise components are removed from the fMRI time series by regression.

---

## 📤 Output

A cleaned version of the fMRI data in which:

- Motion-related ICA components have been regressed out
- Neural signal is preserved more accurately than with global signal regression or aggressive scrubbing
- The data is ready for further analysis (e.g., resting-state connectivity)

---

## ⚠️ Considerations

- ICA-AROMA assumes that ICA components are spatially independent and additive.
- Works best when preprocessing is done in standard space and includes spatial smoothing before ICA.
- Not all denoising strategies are equally appropriate for every analysis — AROMA focuses on motion-related noise only.
- IMPORTANT: Do not use the AROMA image for CSF or ventricular edge motion analyses, as this regresses out the inflow effect of CSF or the partial volume activity

There are also other steps, such as volume censoring or physiological noise regression. 




