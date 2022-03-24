# Tutorial 4 - Data cleaning
############################

###### 2 ######
# Loads packages
library(tidyverse)
library(bst290)

# Loads dataset (ess)
data(ess)

###### 3 ######

# Use only Age and Gender in ESS
ess_gndr_age <- select(.data = ess, agea, gndr)

# Removes Age and Gender from the ESS dataset.
select(.data = ess, -agea, gndr)

# Ask Carlo why this does not work? - Want to visualize with a histogram.
Movie <- c("The Truman Show", "Don't look up", "The Do-Over", "The Dictator", "Red Notice", "Eurovision Song Contest", "Central Intelligence")
Result <- c(4, 3, 0, 3, 2, 1, 0)
df <- data.frame(Movie, Result)
