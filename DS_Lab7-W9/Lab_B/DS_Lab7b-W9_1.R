#Lab 7B Activity 1

library(readxl)
library(dplyr)
#library(xlsx)

setwd("C:/Users/AFFAN/Documents/GitHub/DS-academic/DS_Lab7-W9/Lab_B")
list.files()

#Import
uforeport <- read_excel("uforeport.xls")
titanic <- read.csv("titanic.csv")
View(uforeport)
View(titanic)

#Count NA value
sum(is.na(uforeport)) #18028 missing
sum(is.na(titanic)) #177 missing

#Get NA positions
which(is.na(uforeport))
which(is.na(titanic))

#Count NA each column
print(sapply(uforeport, function(x) sum(is.na(x))))
print(sapply(titanic, function(x) sum(is.na(x))))

#Managing Empty Cells
dim(uforeport)
uforeport_cleaned = na.omit(uforeport)
dim(uforeport_cleaned)

dim(titanic)
titanic_cleaned = na.omit(titanic)
dim(titanic_cleaned)

#Rename Variable Name
names(uforeport_cleaned) = gsub(" ", "_", colnames(uforeport_cleaned))

#View Cleaned
View(uforeport_cleaned)
View(titanic_cleaned)