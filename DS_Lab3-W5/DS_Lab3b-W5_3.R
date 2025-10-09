#Activity 3
#Create list from 2
student_list <- list(
  name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"),
  exam_score = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)

#Append Chem and Phys scores
student_list$Chemistry <- c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
student_list$Physics <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)

#Count students failed
fail_chemistry <- sum(student_list$Chemistry <= 49)
fail_physics <- sum(student_list$Physics <= 49)

#Find highest scores
highest_chemistry <- max(student_list$Chemistry)
highest_physics <- max(student_list$Physics)

best_chemistry <- student_list$name[student_list$Chemistry == highest_chemistry]
best_physics <- student_list$name[student_list$Physics == highest_physics]

#Output
print("==CHEMISTRY==")
cat("Number of students Fail (Chemistry): ", fail_chemistry, "\n")
cat("Highest score (Chemistry): ", highest_chemistry, "by", paste(best_chemistry, collapse = " and "), "\n")

print("==PHYSICS==")
cat("Number of students Fail (Physics): ", fail_physics, "\n")
cat("Highest score (Physics): ", highest_physics, "by", paste(best_physics, collapse = " and "), "\n")