#Activity 1
exam_score <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

grades <- ifelse(exam_score >= 90 & exam_score <= 100, "A",
                 ifelse(exam_score >= 80 & exam_score <= 89, "B",
                        ifelse(exam_score >= 70 & exam_score <= 79, "C",
                               ifelse(exam_score >= 60 & exam_score <= 69, "D",
                                      ifelse(exam_score >= 50 & exam_score <= 59, "E", "F")))))

passed <- ifelse(exam_score > 49, TRUE, FALSE)

grade_count <- table(grades)

student <- list(Scores = exam_score, #assign name
                Grades = grades,
                Pass = passed,
                Grade_Count = grade_count)

print(student)