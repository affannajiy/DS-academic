#Activity 1
weight <- as.numeric(readline("Enter weight (kg): "))
height <- as.numeric(readline("Enter height (m): "))

bmi <- weight / (height * height)

print(bmi)

underweight <- bmi <= 18.4
normal <- 18.5 >= bmi & bmi <= 24.9
overweight <- 25.0 >= bmi & bmi <= 39.9
obese <- bmi >= 40.0

cat("Underweight: ", underweight, "\n")
cat("Normal: ", normal, "\n")
cat("Overweight: ", overweight, "\n")
cat("Obese: ", obese, "\n")