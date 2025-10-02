# Activity 1
a = TRUE
b = FALSE

print(a&b)
print(a&!b)
print(a|b)
print(!a|b)

c = c(TRUE, FALSE)
d = c(FALSE, TRUE)

print(c&d)
print(c|d)

v <- c(3, 1.5, TRUE)
t <- c(4, 2.1, FALSE)

print(!v) 
print(!t) 
print(v&t) 
print(v|t) 

# Activity 2
x=5 
y=9 
z=2+3 

print(x>y) 
print(x<y) 

print(x<=z) 
print(y>=z) 
print(x==z) 
print(x!=y) 

v <- c(2,5.5,6,9) 
t <- c(8,2.5,14,9) 

print(v>t) 
print(v<t) 
print(v<=t) 
print(v>=t) 
print(v==t) 
print(v!=t) 

# Activity 3
a <- 'Start and end with single quote' 
print(a)

b <- "Start and end with double quotes" 
print(b) 

c <- "single quote ' in between double quotes" 
print(c) 

d <- 'Double quotes " in between single quote' 
print(d) 

e <- 'Mixed quotes"  
print(e) 

f <- 'Single quote ' inside single quote'
print(f) 

g <- "Double quotes " inside double quotes""
print(g) 

# Activity 4
str <- "We are the so-called \"Vikings\", from the north." 
cat(str)

str <- "We are the so-called \\Vikings\\, from the north." 
cat(str) 

str <- "We are the \rso-called Vikings\nfrom the north." 
cat(str) 

str <- "\tWe are the so-called Vikings from the north." 
cat(str)

# Activity 5.1
a <- "Hello" 
b <- "How" 
c <- "are you? " 

print(paste(a,b,c)) 
print(paste(a,b,c, sep = "-")) 
print(paste(a,b,c, sep = "", collapse = ""))

# Activity 5.2
# Total number of digits displayed. Last digit rounded off. 
result <- format(23.123456789, digits = 9) 
print(result) 

# Display numbers in scientific notation. 
result <- format(c(6, 13.14521), scientific = TRUE) 
print(result) 

# The minimum number of digits to the right of the decimal point. 
result <- format(23.47, nsmall = 5) 
print(result) 

# Format treats everything as a string. 
result <- format(6) 
print(result) 

# Numbers are padded with blank in the beginning for width. 
result <- format(13.7, width = 6) 
print(result) 

# Left justify strings. 
result <- format("Hello", width = 8, justify = "l") 
print(result) 

# Justify string with center. 
result <- format("Hello", width = 8, justify = "c") 
print(result)

# Activity 5.3
str<-("Count the number of characters") 
result <- nchar(str) 
print(result) 

# Installing and importing package (only done once) 
install.packages('stringr') 
library(stringr) 

# Calculating length of string      
str_length(str)

# Activity 5.4
result <- toupper("Changing To Upper") 
print(result)

result <- tolower("Changing To Lower") 
print(result)

# Activity 5.5
# Extract characters from 5th to 7th position. 
result <- substring("Extract", 5, 7) 
print(result) 

# Extract characters in 1st position. 
result <- substr("Learn Code Tech", 1, 1) 
print(result)