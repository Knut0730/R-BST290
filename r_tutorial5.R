# Tutorial 5 - BST290 R_course
##############################

library(bst290)
library(tidyverse)

# Load the dataset
data(ess)

                            # BIVARIATE #

# Scatterplot
summary(ess$height, na.rm = T)
summary(ess$weight, na.rm = T)

ggplot(data = ess,
       aes(x = height, y = weight)) +
        geom_point()

# ggplot step-for-step
ggplot()

ggplot(data = ess)

ggplot(data = ess,
       aes(x = height, y = weight))

ggplot(data = ess,
       aes(x = height, y = weight)) +
        geom_point()

# Informative labels
# Giving the X and Y axis relevant labels
ggplot(data = ess,
       aes(x = height, y = weight))+
        geom_point() +
        xlab("Body height (cm)") + 
        ylab("Body weight (kg)")

# Changing theme
# Gives the graph a better background color
ggplot(data = ess,
       aes(x = height, y = weight)) +
        geom_point() +
        xlab("Body height (cm)") +
        ylab("Body weight (kg)") +
        theme_bw()

                  # UNIVARIATE #

# Histogram
ggplot(data = ess,
       aes(x = weight)) + # only one, because the graph is univariate.
        geom_histogram() # creates a histogram

# Making the histogram nicer
ggplot(data = ess,
       aes(x = weight)) +
        geom_histogram(color = "black", bins = 25) + # bins - the bars
        xlab("Body weight (kg)") +
        ylab("Number of observations") +
        theme_bw()

# Bar graphs
  # Categorical or ordinal variables (distinct categories)
ggplot(data = ess,
       aes(x = gndr)) +
        geom_bar()
        
# Make the bar graph beautiful
ggplot(data = ess,
       aes(x = gndr)) +
        geom_bar() +
        xlab("Respondent's Gender") +
        ylab("Number of observations") +
        theme_bw()

# Linking data cleaning and visualization

# Creates graph
ess %>% 
  group_by(gndr) %>% 
  summarize(height = mean(height, na.rm = T)) %>% 
  ggplot(aes(x = gndr, y = height)) +
      geom_bar(stat = "identity") # Stat makes sure that R shows the pure numbers not number of observations.

# Export last graph
ggsave("genderheight.pdf")
