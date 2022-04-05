# r_exercises4.R

# Exercise 1
library(haven)
library(tidyverse)
library(bst290)

cpds <- read_dta("https://www.cpds-data.org/images/Update2021/CPDS_1960-2019_Update_2021.dta")

# Exercise 2
# Selects country, year, women participation and government left tendency with Norway as a filter.
cpds_trimmed <- cpds %>% 
  select(country,
         year,
         womenpar,
         gov_left1) %>% 
  filter(country == "Norway") # [Would not have been necessary to store the 'trimmed' version, but this also not wrong.]

# Exercise 3
# Selects country and voter turnout grouped by country - outputs mean of voter turnout
cpds %>% 
  select(country,
         vturn) %>% 
  group_by(country) %>% 
  summarize(mean_vturn = mean(vturn, na.rm = T)) # [Good!]

# Exercise 4
# Selects country, year, unemployment rate and the rate of inflation
  # Filters to only Norway
  # Mutates unemployment rate and the rate of inflation together with a new variable "Misery Index"
cpds %>% 
  select(country,
         year,
         unemp,
         inflation) %>% 
  filter(country == "Norway") %>% 
  mutate(misery_index = unemp + inflation) # not wrong, but I'd avoid using 'proper' names that contain spaces for variables; 'misery_index' should always work in later operations, "Misery Index" might cause trouble.

###########
