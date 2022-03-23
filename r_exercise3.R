## Exercise ####

## Task 1 ####
library(haven)
cpds <- read_dta("https://www.cpds-data.org/images/Update2021/CPDS_1960-2019_Update_2021.dta")

## Task 2 ####
head(cpds) # 1758 observations and 323 variables
summary(cpds) # These results are NOT helpful...
summary(cpds$gov_left1) # not many leftist cabinet posts
summary(cpds$country) # Just shows me all observations (length) and not much more useful.
unique(cpds$country)
View(cpds)

## Task 3 ####
mean(cpds$womenpar) #normal womenpar - NA
mean(cpds$womenpar, na.rm=TRUE) # removes NA
median(cpds$womenpar)
median(cpds$womenpar, na.rm = TRUE)

var(cpds$womenpar, na.rm = TRUE)
sd(cpds$womenpar, na.rm = TRUE)
# Without removing na.rm there is no data (NA), but by removing NA we can see that in parliaments women are about 13%.


## Task 4 ####
oppsumtabell(dataset= cpds,
             variables = "womenpar")
  # 1745 observations / 16.45% is average representation / lower 25% is 6% / median is 13 aka. 50% / 75% ligger på 24%. | Noen parliamenter har 0 representation og den høyeste har 47.60.

unique(cpds$eu) # 1 means EU member, 0 means NON-EU.
oppsum_grupp(dataset = cpds, 
             variable = "womenpar", 
             by.var = "eu") # EU countries are a little bit better.

oppsum_grupp(dataset = cpds, 
             variable = "womenpar",
             by.var = "country") # Iceland is the country with most representation 47.60 % / Norway is 41.40 % / 

### DO DEBUGGING NEXT
# Full score
