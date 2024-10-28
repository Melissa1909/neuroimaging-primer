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
## 🛠️ Preprocessing steps
## 🤷‍♀️ Problems in fMRI



