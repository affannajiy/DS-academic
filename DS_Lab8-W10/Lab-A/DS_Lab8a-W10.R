#1.1
#data() #Basically lists out the datasets we can use in R

#1.2
data(mtcars)
print(head(mtcars, 10)) #Displays first 10 rows

#Store 2 column in a variable
input <- mtcars[,c('mpg', 'cyl')]
print(head(input)) #First 5 rows

#2.1
#demo(graphics)
#demo(image)

#2.2
x <- c(21, 62, 10, 53)
labels <- c("Singapore", "Hanoi", "Kuala Lumpur", "Jakarta")

#Plot
pie(x, labels)

#2.3 Pie Chart with rainbows set of colours
pie(x, labels, main = "City Pie Chart", col = rainbow(length(x)))

#2.4 With percentage and chart legend
piepercent <- round(100 * x / sum(x), 1)
pie(x, labels = piepercent, main = "City Pie Chart", col = rainbow(length(x)))
legend("topright", c("Singapore", "Hanoi", "Kuala Lumpur", "Jakarta"), cex = 0.8, fill = rainbow(length(x)))

#2.5 3D Pie Chart
library(plotrix)
pie3D(x, labels = labels, explode = 0.1, main = "Pie Chart for Countries")

#2.6 Box Plots
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles Per Gallon", main = "Mileage Data")

#2.7 Box Plot with a Notch
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        main = "Mileage Data",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green", "yellow", "red"))
        #names = c("High, Medium, Low"))

#2.8 Histogram
v <- c(9, 13, 21, 8, 36, 22, 12, 41, 31, 33, 19)
hist(v, xlab = "Weight", col = "yellow", border = "blue")

#2.9 Histogram with Range of X and Y
v <- c(9, 13, 21, 8, 36, 22, 12, 41, 31, 33, 19)
hist(v, xlab = "Weight", col = "green", border = "red", xlim = c(0,40), ylim = c(0,5), breaks = 5) 

#2.10 Scatter Plot
input <- mtcars[,c('wt','mpg')]
plot(x = input$wt, y = input$mpg,
     xlab = "Weight",
     ylab = "Mileage",
     xlim = c(2.5, 5),
     ylim = c(15, 30),
     main = "Weight vs Mileage")

#2.11 Scatter Plot Matrices
pairs(~wt + mpg + disp + cyl, data = mtcars, 
      main = "Scatterplot Matrix") 

#2.12 Bar Chart
H <- c(7, 12, 28, 3, 41)
barplot(H, main = "Bar Chart") 

#2.13 Create Bar Chart Labels, Title & Colors
H <- c(7, 12, 28, 3, 41)
M <- c("Mar", "Apr", "May", "Jun", "Jul")
barplot(H, names.arg=M, xlab="Month", ylab="Revenue", col="blue", main="Revenue chart", border="red")

