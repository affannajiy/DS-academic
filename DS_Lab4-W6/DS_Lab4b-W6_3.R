#Activity 3
Array1_data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24)
Array2_data <- c(25, 28, 26, 29, 27, 30, 31, 34, 32, 35, 33, 36, 37, 40, 38, 41, 39, 42, 43, 46, 44, 47, 45, 48, 49, 52, 50, 53, 51, 54)

#Create Array 1
#Dimension: Row Column, Number of Table
Array1 <- array(Array1_data, dim = c(2, 4, 3))

#Create Array 2
Array2 <- array(Array2_data, dim = c(3, 2, 5))

#Print Arrays
print("Array1:")
print(Array1)

print("Array2:")
print(Array2)

#Second Row Second Matrix Array 1
second_row_second_matrix <- Array1[2, , 2]
print("Elements of second row of the second matrix of Array1:")
print(second_row_second_matrix)

#Third Row Second Column Array 2 of Matrix 1
third_row_second_col_first_matrix <- Array2[3, 2, 1]
print("Elements of 3rd row and 2nd column of the 1st matrix of Array2:")
print(third_row_second_col_first_matrix)