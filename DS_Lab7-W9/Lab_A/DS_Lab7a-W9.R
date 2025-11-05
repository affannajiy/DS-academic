#1.1 Install readxl packages
#1.2 Get the working directory
#getwd()

#Set working directory
setwd('C:/Users/AFFAN/Documents/GitHub/DS-academic/DS_Lab7-W9/Lab_A')

#List the files in this directory
list.files()

library(readxl)

#1.3 Import uforeport
uforeport <- read_excel("uforeport.xls")
View(uforeport)

#1.4 Import titanic
titanic <- read.csv("titanic.csv")
View(titanic)

#2. Count NA value
sum(is.na(uforeport)) #18028 missing
sum(is.na(titanic)) #177 missing

#Get NA positions
which(is.na(uforeport))
which(is.na(titanic))

#Test
demo = c(1, 2, NA, 4, NA, 6, 7)
sum(is.na(demo))
which(is.na(demo))

#Count NA each coloumn
print(sapply(uforeport, function(x) sum(is.na(x))))
print(sapply(titanic, function(x) sum(is.na(x))))

#3. Managing Empty Cells
dim(uforeport)
uforeport_cleaned = na.omit(uforeport)
dim(uforeport_cleaned)

dim(titanic)
titanic_cleaned = na.omit(titanic)
dim(titanic_cleaned)

#4.1 Install dplyr
library(dplyr)

#4.2 Get Column Name
colnames(uforeport_cleaned)
colnames(titanic_cleaned)

#4.3 Rename unconventional variable name
names(uforeport_cleaned)

#replace blank with underscore
names(uforeport_cleaned) = gsub(" ", "_", colnames(uforeport_cleaned))
names(uforeport_cleaned)

#4.4 Filter Values
print(filter(uforeport_cleaned, City == 'Belton'))
print(filter(uforeport_cleaned, Colors_Reported == 'GREEN'))

print(filter(titanic_cleaned, sex == 'female'))
print(filter(titanic_cleaned, fare > 500))

#5. Filter Data with Conditions
titanic_cleaned %>% filter(sex == 'female' & fare > 500)

titanic_cleaned[titanic_cleaned$sex == 'female' & titanic_cleaned$fare > 500,]
ufo_green = uforeport_cleaned %>% filter(Colors_Reported == 'GREEN')

#6. Arrange Values
#Ascending
titanic_sortbyfare = arrange(titanic_cleaned, fare)

#Descending
titanic_sortbyfare = arrange(titanic_cleaned, desc(fare))

#7. Export dataframe to Excel and CSV
#Save as Excel
library(xlsx)
write.xlsx(ufo_green, "ufo_green.xlsx")

#Save as CSV
write.csv(titanic_sortbyfare, "titanic_sortbyfare.csv")