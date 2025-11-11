#Lab B
setwd("C:/Users/AFFAN/Documents/GitHub/DS-academic/DS_Lab8-W10/Lab-B")
list.files()

#Libraries
library(readxl)
library(dplyr)

#View Datasets
titanic <- read.csv("titanic.csv")
View(titanic)

cat("Missing Values: ", sum(is.na(titanic)))
which(is.na(titanic))
print(sapply(titanic, function(x) sum(is.na(x))))

#Manage Empty Values
dim(titanic)
titanic_cleaned = na.omit(titanic)
dim(titanic_cleaned)

titanic_sort = arrange(titanic_cleaned, survived)

colnames(titanic_sort)
View(titanic_sort)

#Bar Chart
barplot(titanic_sort$sex, names.arg = titanic_sort$survived, xlab="Sex", ylab="Survived", col="gray", main="Title", border="black")

#Scatter Plot
input <- titanic_sort[,c('fare','sex')]
plot(x = input$fare, y = input$survived,
     xlab = "Fare",
     ylab = "Sex",
     main = "Fare vs Survived")