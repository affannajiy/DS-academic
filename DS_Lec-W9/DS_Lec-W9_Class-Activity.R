#Variables
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) #year
y <- c(2500, 2700, 3000, 3400, 3900, 4400, 5000, 5600, 6200, 6900) #monthly salary

#Init df
df <- data.frame(x, y)
df_train <- df[1:7,]
df_test <- df[8:10,]

#Apply lm()
relation <- lm(y~x, df_train)
print(relation)

#Prediction
x_test <- data.frame(x = df_test$x)
result <- predict(relation, x_test)
print(result)

#Performance Measurements
mape <- mean(abs((df_test$y - result) / df_test$y) * 100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")

#Plot
plot(x,y,col = "red",main = "Year & Monthly Salary Regression", abline(lm(y~x)), pch = 16, xlab = "Year", ylab = "Monthly Salary")