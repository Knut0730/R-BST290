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

# Filters out people aged 40 or older. (Removes everone under 40.)
filter(.data = ess, agea>=40)
  # > “greater”
  # < “smaller”
  # <= “smaller or equal to”
  # >= “greater or equal to”
  # == “has to be equal to” (the double equal sign means we are extra sure here)
  # != “must not not be equal to” (generally, ! stands for “is not”)
  # %in% “is included in”

# Filters out women who are older than 35.
filter(.data = ess, agea > 35 & gndr == "Female")

# Ask Carlo why this does not work? - Want to visualize with a histogram.
Movie <- c("The Truman Show", "Don't look up", "The Do-Over", "The Dictator", "Red Notice", "Eurovision Song Contest", "Central Intelligence")
Result <- c(4, 3, 0, 3, 2, 1, 0)
df <- data.frame(Movie, Result)

## 4 ####

# Selects the idno, agea and gndr from ess dataset, and only Females from gender ages 35 and up.
ess_female_old <- ess %>%
  select(idno, agea, gndr) %>%
  filter(gndr == "Female" & agea > 35)
# Shortcut for pipe operator: CTRL + SHIFT + P %>% 