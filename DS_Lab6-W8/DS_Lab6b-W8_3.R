#Activity 3

new.row <- data.frame(
  name = c("Emily"),
  score = c(14.5),
  attempts = c(1),
  qualify = c("yes")
)

#Bind
quiz.data.new.row <- rbind(quiz.data.new.column, new.row)
print(quiz.data.new.row)

View(quiz.data.new.row)