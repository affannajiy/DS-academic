#Set Path
setwd("C:/Users/AFFAN/Documents/GitHub/DS-academic/DS_Lec-W9")
list.files()

#Import CSV
Heart_data <- read.csv("heart.data.csv")
View(Heart_data)

#Split data into train and test sets
data.train <- Heart_data[1:398,]
data.test <- Heart_data[399:498,]

#Modelling
relation <-lm(heart.disease ~ biking + smoking, data = data.train)
summary(relation)

#Prediction
pred <- data.frame(biking = data.test$biking, smoking = data.test$smoking)
result <-  predict(relation,pred)
print(round(result, digit=2))

#Performance Measurement
mape <- mean(abs((data.test$heart.disease - result) / data.test$heart.disease)*100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")

actuals_preds <- data.frame(cbind(actuals=data.test$heart.disease, predicteds=result))
View(actuals_preds)