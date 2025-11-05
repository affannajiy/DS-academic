#Separate Datasets for Linear Regression

#data of height
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
#data of weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#init df
data1= data.frame(x,y)
data1_train<-data1[1:7,]
data1_test<-data1[8:10,]

#apply the lm() function
relation <- lm(y~x, data1_train)
print(relation)

#Prediction
x_test <- data.frame(x = data1_test$x)
result <- predict(relation, x_test)

print(result)

#Performance Measurements
mape <- mean(abs((data1_test$y - result)/data1_test$y) * 100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")

#Plot
plot(x,y,col = "purple",main = "Height & Weight Regression", abline(lm(y~x)),pch = 16, xlab = "Height in cm", ylab = "Weight in Kg")