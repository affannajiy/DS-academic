#Load Dataset
data(mtcars)
df <- mtcars

#Lib
library(caret)

#Log Transformation
df_log <- log(df)

#Standard Scaling
df_standard <- as.data.frame(scale(df))

#Min-Max Scaling
minmax <- preProcess(as.data.frame(df), method = c("range"))
df_minmax <- predict(minmax, as.data.frame(df))

#Summary
summary(df)
summary(df_log)
summary(df_standard)
summary(df_minmax)

#Plot
par(mfrow = c(2, 2)) #grid 2 by 2 for side by side
boxplot(df, main = "Original Data")
boxplot(df_log, main = "Log Transformation")
boxplot(df_standard, main = "Standard Scaling")
boxplot(df_minmax, main = "Min-Max Scaling")