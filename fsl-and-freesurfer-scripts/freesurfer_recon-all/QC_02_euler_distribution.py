# Script to calculate outliers based on Euler characteristic and 1.5*MAD criterion suggested in Bethlehem et al. 2022
# Melissa Thalhammer - 06.02.24
# uses output of QC_01_compute_euler_number.sh

import matplotlib.pyplot as plt
import os
import pandas as pd 
import numpy as np 


outdir="project_dir/stats/euler"
print(outdir)
study="BEST6"
euler_file=os.path.join(outdir, "QC_output_"+study+".txt")
combined_euler_file=os.path.join(outdir, "QC_output_combined_"+study+".txt")
#euler_file=os.path.join(outdir, "test_qc.txt")
#combined_euler_file=os.path.join(outdir, "test_qc_combined.txt")
output_file=os.path.join(outdir, "euler_outlier_"+study+".txt")
failed_file=os.path.join(outdir, "failed_subjects_"+study+".txt")


#--------------------------------------------------------------------
# get the sum of Euler characteristics (left hemisphere + right hemisphere)
subject_sums = {}
failed_subs = []
with open(euler_file, "r") as file:
    for line in file:
        parts = line.split()
        subject_id = parts[0] #extract subject-id
        print(subject_id)
        try:
            value = int(parts[2]) #extract euler number
        except:
            # some subjects have no Euler index as Freesurfer segmentation seems to have failed
            print("Subject does not have Euler index - Freesurfer failed... exclude!")
            failed_subs.append(subject_id)
            continue
            
        
        # create a dictionary with subject_id: sum of Euler numbers
        if subject_id in subject_sums:
            # Add the value to the existing sum
            subject_sums[subject_id] += value
        else:
            # Create a new entry for the subject
            subject_sums[subject_id] = value

# save this sum to a new file
with open(combined_euler_file, "w") as file:
    for subject_id, total_sum in subject_sums.items():
        file.write(f"{subject_id} {total_sum}\n")


#--------------------------------------------------------------------
# Read the input file into a DataFrame
df = pd.read_csv(combined_euler_file, sep=" ", header=None, names=["Subject", "Euler_Index"])

# calculate median of dataset
median = df['Euler_Index'].median()
mad = np.median(np.abs(df['Euler_Index'] - median))

# calculate the threshold for exclusions
threshold = 4.5 * mad

# filter out subjects with Euler index greater than the threshold
outlier_df = df[np.abs(df['Euler_Index'] - median) > threshold]
outliers = outlier_df['Subject'].to_list()
print(outliers)

# save
with open(output_file, 'w') as file:
    for subject in outliers:
        file.write(str(subject) + '\n')

with open(failed_file, 'w') as file:
    for subject in failed_subs:
        file.write(str(subject) + '\n')

#--------------------------------------------------------------------
# plot histogram of Euler distribution
plt.hist(x=df['Euler_Index'], bins=60)
plt.axvline(x=median-threshold, color='red', linestyle='dashed', linewidth=1)
plt.title('Distribution of Euler Indices')
plt.xlabel('Euler Index')
plt.ylabel('Number of Subjects')
outname=os.path.join(outdir, "euler_hist_"+study+".png")
plt.savefig(outname)

#--------------------------------------------------------------------
percentage_of_exclusion = (len(outliers) / df.shape[0]) * 100
print("The number of excluded subjects is:", len(outliers))
print("The number of total subjects is:", df.shape[0])
print(f"Percentage of excluded subjects: {percentage_of_exclusion:.2f}%\n")
