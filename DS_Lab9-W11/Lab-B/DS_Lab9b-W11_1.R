#Load Dataset
data("ToothGrowth")

#Convert Categorical to Numerical
df <- ToothGrowth
#Assign Auto
df$supp <- as.numeric(df$supp) #VC vitamin C, OJ orange juice

#Assign Manually
#df$supp <- ifelse(ToothGrowth == "OJ", 1, 0)

#Calc Corr Analysis
corr_mat <- round(cor(df), 2)

#Reshape
library(reshape2)

melted_corr <- melt(corr_mat)

#Plot
library(ggplot2)
ggplot(melted_corr, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "lightblue") +
  geom_text(aes(label = value), color = "black", size = 5) +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0) +
  theme_minimal()