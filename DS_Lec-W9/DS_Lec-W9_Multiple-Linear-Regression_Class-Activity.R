#Multiple Linear Regression

efficiency <- c(18, 17, 16, 15, 14, 13, 12, 11, 10, 9) #fuel_efficiency
size <- c(1.2, 1.4, 1.5, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8) #engine_size
weight <- c(900, 950, 1000, 1100, 1200, 1300, 1350, 1400, 1500, 1600) #vehicle_weight

#Init Dataframe
car_engine_data <- data.frame(efficiency, size, weight)
View(car_engine_data)

#Split Data
df_train <- car_engine_data[1:7,]
df_test <- car_engine_data[8:10,]

#Modelling
relation <-lm(efficiency ~ size + weight, data = df_train)
summary(relation)

#Prediction
pred <- data.frame(size = df_test$size, weight = df_test$weight)
result <-  predict(relation,pred)
print(round(result, digit=2))

#Performance Measurement
mape <- mean(abs((df_test$efficiency - result) / df_test$efficiency)*100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")

actuals_preds <- data.frame(cbind(actuals = df_test$efficiency, predicteds = result))
View(actuals_preds)