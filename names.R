# represent the list of names by the numbers 1 - 100
names <- 1:100

# say that the names of a particular type are numbers 1 - 5
special_names <- 1:5

# n is the number of successful draws
n <- 0

# N is the number of attempts
N <- 1000000

for (i in 1:N) {
	# Draw 40 numbers at random(without replacement)
	commoner_names <- sample(names, 40, replace = FALSE)
    
    # check if we drew all 5 special names
    if (all(special_names %in% commoner_names)) {
    	# if so, increment the successful draws
        n <- n + 1
    }
}

# proportion of successful draws
print(n / N)
