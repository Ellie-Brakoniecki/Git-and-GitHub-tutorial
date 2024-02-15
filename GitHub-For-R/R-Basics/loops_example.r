
# -- This script demonstrates the basic function of a for loop in R.

  # - There is a vector containing 5 numbers
  v1 <- c(1:5)
  
  # - and you need to add X amount to each single item in the vector
  x <- 2
  
  # - instead of writing 5 addition lines of code, i.e, v1[1] + x1, etc
  # - you an achieve this using a loop instead
  
  for (i in v1) {
    
    out <- c(i + x)
    
    print(out)
  }