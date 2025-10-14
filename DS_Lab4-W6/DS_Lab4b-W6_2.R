#Activity 2
#Matrix 1
V1 <- c(2, 3, 1, 5, 4, 6, 8, 7, 9)

Matrix1 <- matrix(V1, nrow = 3, ncol = 3)

#assign row column
rownames(Matrix1) <- c("Row1", "Row2", "Row3")
colnames(Matrix1) <- c("Col1", "Col2", "Col3")

print("Matrix-1:")
print(Matrix1)

#Matrix 2
Matrix2 <- t(Matrix1)

#assign row column
rownames(Matrix2) <- c("Row1", "Row2", "Row3")
colnames(Matrix2) <- c("Col1", "Col2", "Col3")

print("Matrix-2 (Transpose of Matrix-1):")
print(Matrix2)

#Operations
addition <- Matrix1 + Matrix2
subtraction <- Matrix1 - Matrix2
multiplication <- Matrix1 %*% Matrix2 #Multiply
division <- Matrix1 / Matrix2  #Division

#Output
print("Addition (Matrix-1 + Matrix-2):")
print(addition)

print("Subtraction (Matrix-1 - Matrix-2):")
print(subtraction)

print("Multiplication (Matrix-1 %*% Matrix-2):")
print(multiplication)

print("Division (Matrix-1 / Matrix-2):")
print(division)