name <- toupper(readline("Enter your name: "))
phone <- gsub("[^0-9]", "", readline("Enter phone number: "))

if(nchar(phone) >= 7){
  first_3 <- substr(phone, 1, 3)
  last_4 <- substr(phone, nchar(phone) - 3, nchar(phone))
  
  cat("Hi,", name, ". A verification code has been sent to", first_3, "-xxx", last_4, "\n")
} else {
  cat("Invalid phone number format\n")
}