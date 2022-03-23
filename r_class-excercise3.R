# 23/03/22 - Classroom 

library(haven)
library(bst290)
ucdp <- read.csv("https://data.humdata.org/dataset/bb30eaae-306d-4d53-8978-998eb8b9a06e/resource/d4c483d4-e8dc-4246-9b6c-3aef8a7b16c6/download/conflict_data_ukr.csv")
ucdp <- ucdp[-1,] # Tidies up the dataset, removes the first row

View(ucdp)
unique(ucdp$region)
unique(ucdp$country)

oppsum_grupp(dataset = ucdp,
             variable = "deaths_civilians",
             by.var = "type_of_violence",)

View(ucdp)
unique(ucdp$year)

summary(ucdp$deaths_civilians) # Checks how many deaths 
unique(ucdp$dyad_name) # Check the conflicting parties

oppsum_grupp(dataset = ucdp,
             variable = "deaths_civilians",
             by.var = "dyad_name")

