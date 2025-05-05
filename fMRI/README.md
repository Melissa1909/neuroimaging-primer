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


# 1. 🫀 Why do vessels dilate? – the neurovascular unit

Neurovascular coupling (NVC): the link between neurons and blood flow  
Neurovascular coupling refers to the process by which a brief increase in local neuronal activity leads to a subsequent, spatially matched increase in cerebral blood flow (CBF) and volume (CBV) to meet the heightened metabolic needs of active brain tissue.

- This phenomenon underlies the blood-oxygen-level-dependent (BOLD) contrast exploited by fMRI.

# 2. Step-by-Step Neurovascular Coupling

| Step | Cellular Events                                                                 | Vascular Outcome                              |
|------|---------------------------------------------------------------------------------|-----------------------------------------------|
| 1.   | Neuronal activation: Synaptic activity releases glutamate; Na⁺/K⁺-ATPases consume ATP to restore ion gradients. | –                                             |
| 2.   | Astrocyte signaling: Astrocytes sense glutamate via metabotropic receptors → ↑ intracellular Ca²⁺ → release of vasoactive mediators (e.g., prostaglandin E₂, epoxyeicosatrienoic acids). | –                                             |
| 3.   | Direct neuronal vasomotor action: Neurons generate nitric oxide (NO) and prostaglandins that relax vascular smooth muscle. | Arteriole and capillary dilation             |
| 4.   | Increased CBF/CBV: More oxygen-rich blood is delivered than is consumed.       | Local blood volume ↑; deoxyhemoglobin fraction ↓ |
| 5.   | BOLD signal generation: Less paramagnetic deoxyhemoglobin → slower T₂* decay of MR signal after RF pulse. | Increased MRI signal in active regions       |

# 3. 🧘‍♀️ Task vs. resting-state fMRI and its associated outcomes

Functional Magnetic Resonance Imaging (fMRI) can be used in two major ways: *Task-based fMRI* and *Resting-state fMRI*. Both measure brain activity via the BOLD (Blood Oxygen Level Dependent) signal but differ in design, purpose, and analysis.

---

# 4. 🎯 Task-Based fMRI

## 4.1 ❓ What is it?  
Task-based fMRI measures brain activity *in response to specific tasks or stimuli*. Participants perform a designed task (e.g., visual stimulation, finger tapping), and changes in brain activation are analyzed. This is the historical origin of fMRI Signal, see also [here](10.1002/mrm.1910340409)

## 4.2 🔬 Method  
- Uses an *experimental paradigm* (block or event-related).  
- BOLD signals are modeled with a *General Linear Model (GLM)*.  
- Produces *activation maps* showing task-related activity.  
  - See Figure 1c from this publication [here](https://doi.org/10.1371/journal.pbio.3002035)

## 4.3 ✅ Pros  
- Directly links brain areas to specific cognitive functions.  
- High spatial specificity.

## 4.4 ⚠️ Cons  
- Requires subject cooperation and task performance.  
- Task design must be carefully controlled.

---

# 5. 💤 Resting-State fMRI

## 5.1 ❓ What is it?  
Resting-state fMRI measures *spontaneous brain activity* when the subject is *not performing any task*—typically lying still with eyes open or closed.

## 5.2 🔬 Method  
- No external task; continuous passive recording.  
- Focus on *functional connectivity*: correlated BOLD signal fluctuations between regions.  
  - functional connectivity is mainly [described](https://doi.org/10.1002/hbm.460020107) as the "statistical association or dependency among two or more anatomically distinct timeseries".  
- Analysis methods include mainly *seed-based correlation*.

## 5.3 ✅ Pros  
- Minimal demands on participants.  
- Suitable for infants, elderly, or clinical populations.  
- Reveals *intrinsic functional networks* (e.g., default mode network).

## 5.4 ⚠️ Cons  
- No direct link to behavior or function.  
- More susceptible to motion and physiological noise.  
- Interpretation can be more ambiguous.

---

# 6. 🔍 Key Differences

| Feature              | Task-Based fMRI                          | Resting-State fMRI                         |
|----------------------|-------------------------------------------|--------------------------------------------|
| *Purpose*            | Map brain activity during tasks           | Assess intrinsic connectivity              |
| *Subject activity*   | Performs specific task                    | Rests quietly                              |
| *Analysis type*      | Activation mapping (GLM)                  | Correlation / network analysis             |
| *Design*             | Block or event-related                    | No explicit design                         |
| *Applications*       | Functional localization, cognitive tasks  | Brain networks, developmental or clinical studies |
| *Limitations*        | Needs good task performance               | More difficult to interpret causally       |

---

# 7. 🧪 Summary

- *Task-based fMRI*: Best for hypothesis-driven research; maps specific functions to brain areas.  
- *Resting-state fMRI*: Ideal for network-level studies and populations unable to perform tasks.

Both approaches are complementary and often used together in neuroscience research.

# 8. 💧 fMRI signal from non-neural sources – CSF and parenchymal borders

Functional MRI (especially **BOLD fMRI**) relies on detecting changes in the magnetic properties of deoxygenated hemoglobin — specifically the T₂* (transverse relaxation) signal from hydrogen nuclei in water. In gray matter, these BOLD signal changes are linked to neural activity via neurovascular coupling.

However, structures other than gray matter are visible in an fMRI image. In our case, we are interested in the behaviour of Cerebrospinal Fluid (CSF) and the motion of the brain's ventricular system.

# 9. The Monroe–Kellie Doctrine

The Monroe–Kellie doctrine describes how the rigid skull confines three main intracranial compartments—brain tissue, blood, and cerebrospinal fluid (CSF)—and states that the total volume inside the cranium must remain constant. Any increase in one compartment must be offset by a decrease in one or both of the others, or intracranial pressure (ICP) will rise.

## 9.1 Components

1. **Brain Parenchyma** (~80% of intracranial volume)  
   - Includes neurons and glial cells.  
2. **Blood** (~10% of intracranial volume)  
   - Both arterial and venous blood within the brain.  
3. **Cerebrospinal Fluid (CSF)** (~10% of intracranial volume)  
   - In ventricles and the subarachnoid space.

## 9.2 Key Principle

Since the volume inside the skull is fixed, a change in the volume of one compartment must be compensated by a decrease in one or both of the others, otherwise intracranial pressure (ICP) will increase.

---

# 10. 🛠️ Preprocessing steps

Before any connectivity or CSF analyses, raw fMRI data must be **preprocessed** to remove artifacts and align images. Common tools include FSL (FEAT, FLIRT, FNIRT, ICA-AROMA), AFNI, and SPM.

## 10.1 Conventional steps

### 10.1.1 Slice timing

#### What & Why  
Corrects for the fact that slices in each volume are acquired at slightly different times, aligning all slices to a common reference time-point.

#### Core steps  
1. Specify slice order & reference slice.  
2. Interpolate each voxel’s time series to the reference time.  
3. Output a corrected 4D series.

### 10.1.2 Motion correction

#### What & Why  
Compensates for head movements—small translations/rotations that can introduce spurious signal changes.

#### Core steps  
1. Select reference volume.  
2. Rigid-body registration (6 motion parameters).  
3. Resample all volumes to align with the reference.

#### Motion parameters use  
- Nuisance regression (include motion + derivatives in GLM).  
- Scrubbing/censoring (e.g., framewise displacement > 0.5 mm).  
- Quality control (plot motion traces).

## 10.1.3 Registration

### 10.1.3.1 Coregistration

Aligns functional timeseries to the subject’s high-resolution structural (T₁) image using a rigid-body transform (6 DOF).

### 10.1.3.2 Normalization

Warps each subject’s structural (and coregistered functional) scans into a standard template (e.g., MNI) using affine + nonlinear deformations.

#### Key differences

| Feature       | Coregistration                    | Normalization                                |
|---------------|-----------------------------------|-----------------------------------------------|
| Scope         | Within-subject (fMRI ↔ T₁)        | Between-subject (to template)                |
| Transform     | Rigid-body (6 DOF)                | Affine + Nonlinear                           |
| Purpose       | Overlay activation on anatomy     | Enable group analyses & coordinate reporting |
| Output        | fMRI in anatomical space          | fMRI in template space                       |

## 10.1.4 Temporal Filtering

Removes unwanted slow drifts and high-frequency noise from voxel time series via high-pass, low-pass, or band-pass filters (e.g., 0.01–0.1 Hz).

## 10.1.5 Spatial Smoothing

Blurs images with a Gaussian kernel (FWHM 4–8 mm) to increase SNR, account for anatomical variability, and satisfy statistical assumptions.

## 10.2 Extra noise reduction steps

### 10.2.1 ICA-based clean-up (ICA-AROMA)

1. Decompose data via ICA (e.g., FSL MELODIC).  
2. Extract features (high-frequency content, edge/CSF fraction, motion correlation).  
3. Classify components as “signal” or “motion‐related noise.”  
4. Remove noise components via regression.

> **Note:** Don’t apply ICA-AROMA to CSF/ventricular edges if you need to preserve inflow effects.

---

Ready to dive into preprocessing your own data? 🎬
