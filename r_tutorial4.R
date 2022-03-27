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

## 5 ####

# Height summary
summary(ess$height)

# Mutate height from cm to m
ess %>% 
  mutate(height_meters = height/100) #/100 divides height by 100.

# if_else with age older than 65. | ifelse also exists, but if_else is made for mutate() and more strict. - less errors
ess %>% 
  select(agea) %>% # Used to only output Age - decluttering
  mutate(older = if_else(condition = agea > 65, # Checks if older than 65
                         true = 1, # 1 - True
                         false = 0)) # 0 - False

## 6 ####

# Outputs the mean height, and removing NA's (normal way)
mean(ess$height, na.rm = T)

# Outputs the mean height, and removing NA's (tidyverse way)
ess %>% 
summarize(mean_height = mean(height, na.rm = T))
mean_height

# page 10.
