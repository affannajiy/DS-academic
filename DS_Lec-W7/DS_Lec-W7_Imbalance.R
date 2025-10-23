library(ROSE)

data(hacide)
str(hacide.train)

table(hacide.train$cls)

prop.table(table(hacide.train$cls))

View(hacide.train)

#Oversampling
data_balanced_over <- ovun.sample(cls ~ ., data = hacide.train, method = "over", N = 1960)$data

#Check
table(data_balanced_over)
prop.table(table(data_balanced_over$cls))

View(data_balanced_over)

#Undersampling
data_balanced_under <- ovun.sample(cls ~ ., data = hacide.train, method = "under", N = 40)$data

#Check
table(data_balanced_under)
prop.table(table(data_balanced_under$cls))

View(data_balanced_under)