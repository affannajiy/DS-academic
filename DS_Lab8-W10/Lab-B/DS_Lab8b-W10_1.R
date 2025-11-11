#Lab B Activity 1
setwd("C:/Users/AFFAN/Documents/GitHub/DS-academic/DS_Lab8-W10/Lab-B")
list.files()

#Libraries
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
View(titanic_cleaned)

titanic_sort = arrange(titanic_cleaned, survived)

colnames(titanic_sort)
View(titanic_sort)

#Bar Chart
survived_by_sex <- table(titanic_cleaned$sex, titanic_cleaned$survived) 
#table() creates frequency tables that basically counts the data
barplot(survived_by_sex, 
        xlab = "Survived (0 = No, 1 = Yes)", 
        ylab = "Count", 
        col = c("pink", "blue"),
        main = "Survival Counts by Sex",
        border = "black")
legend("topright", c("Female", "Male"), fill = c("pink", "blue"))

#Box Plot
boxplot(age ~ survived, data = titanic_cleaned,
        main = "Age Distribution by Survival",
        xlab = "Survived (0 = No, 1 = Yes)",
        ylab = "Age",
        col = c("red", "green"),
        border = "black")