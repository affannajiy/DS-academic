#Activity 1
#Reference: https://www.omnicalculator.com/everyday-life/leap-year
#Divide by 4 and 100 is not zero while also divisible by 400

#Input
year <- as.integer(readline(prompt = "Input year: "))

#Check Leap Year
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)){
  cat(year, "is a leap year!\n")
} else {
  cat(year, "is not a leap year :(\n")
}