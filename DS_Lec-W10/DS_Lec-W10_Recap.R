x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

data1 = data.frame(x,y)
View(data1)

data1_train <- data1[1:7, ] #70 Percent Train
data1_test <- data1[8:10, ] #30 Percent Eval

#Apply lm()
relation <- lm(y~x, data1_train)
print(relation)
#Intercept = -35.1160, x = 0.6564

a <- data.frame(x = data1_test$x)
result <- predict(relation, a)
print(result) #3 results

#Performance
actual_pred <- data.frame(cbind(actual = data1_test$y, predicted = result))
View(actual_pred)
correlation_accuracy <- cor(actual_pred) 
print(correlation_accuracy)
