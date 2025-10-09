a <- c(1:5, rep(NA,3),6:10)
sum(a)

#Remove Null Values
b <- a[!is.na(a)]

x <- c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
x[is.na(x)] <- 0

sum(x)