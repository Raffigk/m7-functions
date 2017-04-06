# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a,b) {
    N <- abs(length(a) - length(b))
  return(paste('The difference in length is ', N))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c("hello", "hello", "hello"), c("jon", "raffi", "michelle", "info201"))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
  if (length(a) > length(b)) {
    N <- length(a) - length(b)
    return(paste("Your first vector is longer by ", N, " elements"))
  } else {
    N <- length(b) - length(a)
    return(paste("Your first vector is longer by ", N, " elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c("hello", "hello", "hello"), c("jon", "raffi"))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a,b) {
  if (length(a) > length(b)) {
    N <- length(a) - length(b)
    return(deparse(substitute(a)))
  } else {
    N <- length(b) - length(a)
    return(deparse(substitute(b)))
  }
}
DescribeDifference(c("hello", "hello", "hello"), c("jon", "raffi"))