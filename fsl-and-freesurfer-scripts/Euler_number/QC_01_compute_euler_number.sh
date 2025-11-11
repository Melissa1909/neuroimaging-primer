#!/bin/bash
# Script was shared via Freesurfer mailing list.


# Joost and Niels Janssen, NOV 2019
# Do QC on the Freesurfer output by computing eulers number

# Put here your data folder
datafold="/data/directory"

# Put here output folder
outfold="/output/euler"
mkdir -p ${outfold}

subs=(`ls ${datafold}|grep [0-9]`) # check that this selects all and only subjects!
#subs=(`ls ${datafold}|grep ^subj[0-9]`) # check that this selects all and only subjects!
#subs="G01_A0004-BL-15_09_2009"

#######################
# do work

for s in ${subs[@]}; do
  echo "Running subject: ${s}"
  mkdir -p ${datafold}/${s}/QC

  mris_euler_number ${datafold}/${s}/surf/lh.orig.nofix &> ${datafold}/${s}/QC/lh.euler.txt
  awk -v subj=${s} -F " " 'NR==1{print subj"\tlh\t"$13}' ${datafold}/${s}/QC/lh.euler.txt > ${datafold}/${s}/QC/lh.euler_number.txt
  mris_euler_number ${datafold}/${s}/surf/rh.orig.nofix &> ${datafold}/${s}/QC/rh.euler.txt
  awk -v subj=${s} -F " " 'NR==1{print subj"\trh\t"$13}' ${datafold}/${s}/QC/rh.euler.txt > ${datafold}/${s}/QC/rh.euler_number.txt
done

# collate everything
echo "Saving everything in:"
echo "${outfold}/QC_output.txt"
echo "Consult this output for outliers! (Large negative numbers are NOT good)"
cat ${datafold}/*/QC/lh.euler_number.txt ${datafold}/*/QC/rh.euler_number.txt > ${outfold}/QC_output.txt
