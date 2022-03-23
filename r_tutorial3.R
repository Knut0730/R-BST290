# Excersice 3 in Carlo's fabulous R course
###########################################
# Knut Solvig

# 2 - Loading the bst290 package and the practice dataset#####
library(bst290)
library(tidyverse)
data(ess) #!ONLY 22 VARIABLES NOT 38.

# 3 - A first glimpse####
View(ess)

# 4 - Getting an overview####
## 4.1 - Printing out the first and last observations with head() and tail()#####
head(ess) # Output of the first six observations
head(ess$agea) # Outputs the first six observations of the age variable
head(ess$gndr, n = 100) # Outputs the first 100 observations of the gender variable
tail(ess) # Output of the last six observations

## 4.2 - A quick summary of your data with summary()######
summary(ess)
summary(ess$vote) # Tells me the answeres of the three categories
summary(ess$agea) # Works beautifully
summary(ess$cntry) # Is a bit less informative.

## 5 - Specific summary statistics for numeric variables #####
mean(ess$height, na.rm = TRUE) # Get me the mean of height
median(ess$height, na.rm = TRUE) # Median of height
sd(ess$height, na.rm = TRUE) # Standard deviation of height
var(ess$height, na.rm = TRUE) # The variance of height
### NA.RM = TRUE is important to remove the non-answered observations ###

# 6 - Working with categorical variables #####
## 6.1 - Introducing factors #####
#---# factors -> "numbers with labels"

## 6.2 - Getting to know factor variables ######
mean(ess$gndr) # Trying to calculate the mean of a factor - obviously NA.
levels(ess$gndr) # Shows me all the levels of gender
levels(ess$edlvdno) # Shows all options for educations
unique(ess$edlvdno) # Shows the ACTUAL levels of education - the ones who actually has answeres

## 6.3 - Tabulating a categorical variable with table()####
table(ess$gndr) #Produces a table with gender observations
table(ess$edlvdno) # Produces a table with education - No PhD and nobody who don't have education
table(ess$vote) # Produces a table with vote - 107 yes, 18 no, 18 not eligible

## 7 ####
## • gtsummary (https://www.danieldsjoberg.com/gtsummary/index.html)
## • xtable (https://cran.r-project.org/web/packages/xtable/vignettes/xtableGallery.pdf)
# ^^^^ POSSIBILY MORE ADVANCED TABLE MAKING PACKAGES ^^^^ #

## Questions ##

