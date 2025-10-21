#Activity 2

#Input
n <- as.integer(readline(prompt = "Input an integer: "))

#Output
for (i in 1:n) {
  cat("Number is: ", i, " and the cube of", i, " is: ", i^3, "!\n")
}