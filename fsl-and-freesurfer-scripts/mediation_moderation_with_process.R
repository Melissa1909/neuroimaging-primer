# This is a script to perform moderation and mediation analyses with the PROCESS toolbox by A. Hayes in R.
# First, download process from here: https://www.processmacro.org/download.html

# load packages
library(tidyverse)

# settings
sw_dir = '/Users/melissa/Dokumente/PhD/sw/processv43/PROCESS v4.3 for R' #directory where you saved the process toolbox
analysis_dir = '/Users/melissa/Dokumente/PhD/projectName'

  
# load the process function
setwd(process_sw_dir)
source('process.R')

# load the dataframe
file_name = file.path(analysis_dir, 'exampleData.csv')
dat = read.csv(file_name)

# filter for group
dat_pt = dat %>% subset('dx'=='preterm')

# run moderation analysis: GA -> SES -> PC1
process(data = dat_pt, 
        y="PC1", 
        x="GA", 
        w="SES_at_birth",
        model = 1, 
        boot = 5000,
        conf = 95,
        center = FALSE,
        plot = 1,
        save = 1,
        seed=1234)

