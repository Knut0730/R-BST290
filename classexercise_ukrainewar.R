
#################################
# Data analysis: Ukraine conflict
#################################

# Data from: https://data.humdata.org/dataset/ucdp-data-for-ukraine
# Codebook: https://ucdp.uu.se/downloads/ged/ged191.pdf

# Setup
#######

# Loading package
library(tidyverse)

# Importing data
ucdp <- read.csv("https://data.humdata.org/dataset/bb30eaae-306d-4d53-8978-998eb8b9a06e/resource/d4c483d4-e8dc-4246-9b6c-3aef8a7b16c6/download/conflict_data_ukr.csv")

# Cleaning (removing problematic first row from data.frame); we overwrite original data.frame
ucdp <- ucdp[-1,]


# Exercise (feel free to team up!)
##################################

# We are interested in the number of overall deaths ("best") and the number of civilian deaths (deaths_civilians)
# per conflict pairing (dyad). 

# 1) Trim the dataset down to the following variables (see also the codebook; link is above)
 # - id
 # - year
 # - dyad_name
 # - best
 # - deaths_civilians
ucdp %>% 
  select(id,
         year,
         dyad_name,
         best,
         deaths_civilians) -> ucdp_trimmed


# 2) Quality-check the variables. Is there a problem with one of them? If yes, can you solve it?
ucdp_trimmed$year <- as.numeric(ucdp_trimmed$year) # Fixed from char to num
ucdp_trimmed$best <- as.numeric(ucdp_trimmed$best) # Fixed from char to num

# 3) Calculate the overall number (sum()) of overall fatalities and the overall number of civilian fatalities,
# by conflict dyad

ucdp_trimmed %>% 
  select(best,
         deaths_civilians,
         dyad_name) %>% 
  group_by(dyad_name) %>% 
  summarize(overall_fatal = sum(best, na.rm = T), 
            civil_fatal = sum(deaths_civilians, na.rm = T))
