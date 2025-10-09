#Activity 2
exam_score <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

grades <- character(length(exam_score))

A <- exam_score >= 90 & exam_score <= 100
B <- exam_score >= 80 & exam_score <= 89
C <- exam_score >= 70 & exam_score <= 79
D <- exam_score >= 60 & exam_score <= 69
E <- exam_score >= 50 & exam_score <= 59
F <- exam_score <= 49

grades[A] <- "A"
grades[B] <- "B"
grades[C] <- "C"
grades[D] <- "D"
grades[E] <- "E"
grades[F] <- "F"

passed <- exam_score > 49

grade_count <- c(A = sum(A),
                 B = sum(B),
                 C = sum(C),
                 D = sum(D),
                 E = sum(E),
                 F = sum(F))

student <- list(Scores = exam_score, #assign name
                Grades = grades,
                Pass = passed,
                Grade_Count = grade_count)

print(student)