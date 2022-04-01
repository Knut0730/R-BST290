# Exercises 5 - BST290 R_course
###############################

# Exercise 1 - Scatterplot
ggplot(data = ess,
       aes(x = agea, y = weight)) +
        geom_point() +
        xlab("Respondent's age") + 
        ylab("Respondent's weight") +
        theme_bw()

# Exercise 2 - Histogram
ggplot(data = ess,
       aes(x = agea)) +
        geom_histogram(color = "black", bins = 30) + # Changing bins lower; less bars, higher; more bars
        xlab("Respondent's age") +
        ylab("Number of observations") +
        theme_bw()

# Exercise 3 - Bar graph
ggplot(data = ess,
       aes(x = vote)) +
        geom_bar(color = "black") +
        xlab("Did you vote in the last election? Yes/No/Not eligible to vote") +
        ylab("Number of observations") +
        theme_bw()
