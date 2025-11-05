#Set Path
setwd("C:/Users/AFFAN/Documents/GitHub/DS-academic/DS_Lec-W9")
list.files()

#Import CSV
Heart_data <- read.csv("heart.data.csv")
View(Heart_data)

head(Heart_data)
str(Heart_data)

#Model the MLR
relation <-lm(heart.disease ~ biking + smoking, data = Heart_data)
print(relation)

#Invesitigate the properties of the model
summary(relation)