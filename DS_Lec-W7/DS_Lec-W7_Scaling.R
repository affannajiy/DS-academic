library(caret)

data <- data.frame(c(244, 753, 596, 645, 874, 141, 639, 465, 999, 654))

#normalising data
trans_data <- preProcess(data, method = "range")
norm_data <- predict(trans_data, data)
print(norm_data)


#standardise
std_data <- scale(data)
print(std_data)
summary(std_data)