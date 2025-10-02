str_1 <- readline("Enter string 1: ")
str_2 <- readline("Enter string 2: ")

similarity <- tolower(str_1) == tolower(str_2)

cat("This program compare 2 strings. Both input similarity: ", similarity)