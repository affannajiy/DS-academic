#Simple Linear Regression
#data of height
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
#data of weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#Apply the lm() function
relation <- lm(y~x)

print(relation)

# Find weight of a person with height 170
X_test <- data.frame(x = 170)
result <-  predict(relation,X_test)
cat(round(result, digit=2), "kg")

# Plot the chart
plot(x,y,col = "blue",main = "Height & Weight Regression", abline(lm(y~x)),pch = 16, xlab = "Height in cm", ylab = "Weight in Kg")