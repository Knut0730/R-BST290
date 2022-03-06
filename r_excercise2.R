# Excersice 2 in Carlo's fabulous R course
###########################################
# Knut Solvig

library(haven) #Loads the package "haven" to read SPSS and Stata files.
library(readxl) #Loads the package "readxl" to read Excel files.
library(remotes) #Loads the package "remotes" to be able to download packages from Github.
library(bst290) #Loads the course specific "bst290" package (from GitHub)

practiceStatistics() #Tests if the package works - PASSED
cpds_excel <- read_excel("~/Insync/258768@uis.no/OneDrive Biz/UiS_4semester/Intro_R/CPDS_dataset.xlsx") # Creates cpds object which is the dataset in Excel.
cpds_stata <- read_dta("https://www.cpds-data.org/images/Update2021/CPDS_1960-2019_Update_2021.dta")
polvio <- read_sav("http://www.systemicpeace.org/inscr/MEPV2012ex.sav") #Loads the dataset - major episodes of political violence
abortion_excel <- read_excel('/home/knut/Insync/258768@uis.no/OneDrive Biz/UiS_4semester/Intro_R/Abortion_Laws_Indicators.xls')

# Passed tutorial with full marks

# Appendix tasks
library(essurvey) #Loads the european social study survey.
set_email("258768@uis.no") #Tells the ESSURVEY package which user I am using

show_countries() #Shows countries available in the essurvey | Norway is number 25.

show_themes() #Shows all the different topics (variables)
ess <- import_rounds(1) #Imports the first round of ESS, from 2002.
show_country_rounds("Norway") #Shows all the rounds that Norway is apart of.
show_rounds() #bonus; this is all the rounds. So Norway is included inn all the ESS rounds.
ess_no <- import_country(country = "Norway", rounds = 1) # Creates an object called ess_no which includes Norways observations from round 1.

################################ ########################### ########################