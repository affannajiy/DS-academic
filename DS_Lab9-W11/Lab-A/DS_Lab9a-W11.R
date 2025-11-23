 #Activity 1.1
x = c(1, 2, 3, 4, 5, 6, 7)
y = c(1, 2, 3, 4, 5, 6, 7)

#Activity 1.2
result = cor(x, y, method = "pearson")
cat("Pearson correlation coefficient is:", result)

#Activity 1.3
library(corrplot)
library(RColorBrewer)

M <- cor(mtcars)

?corrplot
corrplot(M, type="upper")
corrplot(M, type="upper", order="hclust")
corrplot(M, type="upper", order="hclust", col=brewer.pal(n=8, name="RdYlBu"))

#2.1
library(lattice)

data <- environmental
head(data)

corr_mat <- round(cor(data),2)
head(corr_mat)

#reorder corr matrix using corr coefficient as distance metric
dist <- as.dist((1 - corr_mat) / 2) #measuring between 2 quantitative variable

#hierarchical clustering the dist matrix
hc <- hclust(dist)
corr_mat <- corr_mat[hc$order, hc$order]

library(reshape2)
#reduce the size of correlation matrix
melted_corr_mat <- melt(corr_mat)
head(melted_corr_mat)

#Activity 2.2
library(ggplot2)

ggplot(data = melted_corr_mat, aes(x=Var1, y=Var2,fill=value)) + 
  geom_tile() + 
  geom_text(aes(Var2, Var1, label =value), color = "white", size = 4)

#Activity 2.3
library(heatmaply)

#plotting corr heatmap
heatmaply_cor(x = cor(data), 
              xlab = "Features", 
              ylab = "Features",
              k_col = 2, k_row = 2)

#Activity 2.4
library(ggcorrplot)

ggcorrplot::ggcorrplot(cor(data))

#Activity 3.1
#Create data
mydata <- c(244, 753, 596, 645, 874, 141,639, 465, 999, 654)

#Normalizing data
scaled_data <- log(mydata)
print(scaled_data)

#Activity 3.2
scaled_data2<- as.data.frame(scale(mydata))
print(scaled_data2)

#Activity 3.3
library(caret)
minmax <- preProcess(as.data.frame(mydata), method=c("range"))
scaled_data3 <- predict(minmax, as.data.frame(mydata))
print(scaled_data3)

#Activity 3.4
summary(mydata)
summary(scaled_data)
summary(scaled_data2)
summary(scaled_data3)