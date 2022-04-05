# Exercise 1

x <- 10 # Puts 10 in X
y <- 15 # Puts 15 in Y
y+x # Addition y+x = 25
x*y # Multiplies x*y = 150
y/x # Divides y/x = 1.5

# Exercise 2
pets <- c("dog", "cat", "rabbit", "goldfish") # Character with four elements

# Exercise 3
vaccine_efficacy <- c(0.95, 0.94, 0.73, 0.92, 0.74) # num vector with five elements
mean(vaccine_efficacy) # The mean is 5.
max(vaccine_efficacy) # The max element is 0.95
min(vaccine_efficacy) # The min element is 0.73

# Exercise 4
x <- 17 # Creates a new element and replaces it with 10 (previous numeral)

# Exercise 5
new_vec <- c(x,y) # Create new_vec vector with x,y objects.
new_vec # prints the elements of new_vec
long_vec <- c(x,y,vaccine_efficacy) # X,Y, and vacine efficacy combined in a vector
pets_new <- c(pets,"horse") # Print vector "pets" and add "horse" too.

# Correction
# pets <- c("horse") # replace pets with only horse.
pets <- c(pets,"horse") # you want the same as just before, but overwrite 'pets' instead of creating 'pets_new'
