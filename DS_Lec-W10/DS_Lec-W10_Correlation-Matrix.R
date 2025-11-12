library(lattice)
data(environmental)
data <- environmental
View(data)

#correlation matrix
corr_mat <- round(cor(data), 2)
print(corr_mat)
View(corr_mat)

library(reshape2)
melted_corr_mat <- melt(corr_mat)
View(melted_corr_mat)

#plotting
library(ggplot2)
ggplot(data = melted_corr_mat, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  geom_text(aes(label = round(value, 2)), color = "black", size = 4) +
  scale_fill_gradient2(low = "white", mid = "lightgrey", high = "grey", midpoint = 0) +
  labs(title = "Correlation Matrix")