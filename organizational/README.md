# 💡 Organizational stuff specific to the Neuroimaging and Neuropsychiatry Lab
- Sign up to [the Wiki page by Martin Gruber (computer scientist in our department)](https://mri.mgruber.eu/login?back_url=https%3A%2F%2Fmri.mgruber.eu%2F) to read about his recommendations and to write tickets to him (e.g., problems with the computers etc.)
- Ask Martin in a ticket to create a project folder for you with a name that is DESCRIPTIVE of the project you want to do! (e.g., `/data_tina/pro_SCZ_thalamic_nuclei_volume` if you want to work with thalamic nuclei volumes in schizophrenia).
- Also check out the basic bash tutorials to familiarize with the most important commands to work with the Linux machines.


## Data structure
- All data available in our lab (i.e., downloaded open-source datasets as well as data acquired by us) are stored in `/data_tina/data_neuroimaging` 
- All projects are (more or less) structured in BIDS format - please familiarize yourself with BIDS (resources on the main page). An example for a project in BIDS structure can be found [here](https://openneuro.org/datasets/ds007063/versions/1.0.0). 
- DO NOT create a folder with your name in /data_tina/data_neuroimaging, please. This folder is supposed to contain only datasets plus basic preprocessing of these. 
- In general, all projects contain the following structure:
    - `rawData`: the raw, untouched data in nifti format - please do not change anything here!
    - `preprocData`: preprocessed data, always include the `software` and the `version` into the folder name (e.g., freesurder_7.3.2)
    - `stats`: outputs of preprocessing (e.g., cortical thickness derived from FreeSurfer)
    - `meta`: meta-data of the dataset (e.g., age, sex, scanner of the subjects)
    - `progs`: scripts used to work with the data


- ‼️‼️ If you want to use data saved in this folder, you don't need to copy all raw data to your project folder, but you can `create links` with `ln -s`. For example, if you want to create a link of folder `/data_tina/data_neuroimaging/Munich_Transhedonia_Trimage` into your project folder `/data_tina/pro_SCZ_thalamic_nuclei_volume`, use the following command: `ln -s /data_tina/data_neuroimaging/Munich_Transhedonia_Trimage/rawData /data_tina/pro_SCZ_thalamic_nuclei_volume/Munich_Transhedonia_Trimage/rawData`. In this way, you can access the data without having to copy them. 


## Testing stuff
- If you want to try out stuff or if you don't know what your project will be, please use the folder `/data_tina/data_neuroimaging/students`.


