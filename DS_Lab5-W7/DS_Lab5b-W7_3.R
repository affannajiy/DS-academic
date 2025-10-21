#Activity 3
#Armstrong Number is a number that is equals to the sum of its own digits each raised to the power of the total number of digits

#Input
num <- as.integer(readline(prompt = "Input an integer: "))

#Store Original Number
ori <- num

#Calc number of digits
n_digits <- nchar(as.character(num))

#Init sum
sum <- 0

#Calc sum of digits raised to power of n digits
while (num > 0){
  digit <- num %% 10
  sum <- sum + digit ^ n_digits
  num <- num %/% 10
}

#Output
if (sum == ori){
  cat(ori, "is an Armstrong number!\n")
} else {
  cat(ori, "is not an Armstrong number :P\n")
}