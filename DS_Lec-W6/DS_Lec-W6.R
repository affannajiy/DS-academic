#Descriptive Analytics

data <- iris

head(data)
str(data)

sd(data$Sepal.Length)
var(data$Sepal.Length)

data_sepal_length <- data$Sepal.Length
boxplot(data_sepal_length, main = "Boxplot")

#Gives overall value for the data set
#Min, Max, 1st Quad, 3rd Quad, Mean 
summary(data$Sepal.Length)

View(data)

A <- c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)

#Get first quantile
quantile(A, 0.25)

IQR(A)

box_data <- c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(box_data, main = "Boxplot")

first_q<-quantile(box_data,0.25) #this is 26
third_q<-quantile(box_data,0.75) #this is 31.75

iqr<-IQR(box_data)
le<-first_q- 1.5 * iqr
ue<-third_q + 1.5 * iqr

#Removing outlier
box_data_new <- box_data
box_data_new <- box_data_new[!box_data_new<le]
box_data_new <- box_data_new[!box_data_new>ue]
box_data_new
boxplot(box_data_new, main = "Boxplot")