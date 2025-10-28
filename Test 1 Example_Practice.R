#Create the Dataset
my_covid <- data.frame(
  State = c("KL and Putrajaya", "Selangor", "N Sembilan", "Johor", "Sarawak", "Sabah", "Pahang", "Perak", "Melaka", "Kedah", "Kelantan", "P Pinang", "Terengganu", "Perlis", "WP Labuan"),
  Confirmed = c(126978, 407419, 71491, 90683, 76728, 84721, 24436, 37679, 31366, 45631, 42994, 45833, 16948, 704, 9661),
  Deaths = c(1116, 3138, 735, 927, 462, 633, 246, 208, 384, 435, 270, 191, 123, 9, 147),
  Population = c(2005300, 6716500, 1162600, 3926500, 2907500, 4047000, 1750100, 2611600, 960500, 2267500, 1959700, 1806500, 1294100, 264700, 103100)
)

str(my_covid)
View(my_covid)

#Display first 3 rows
head(my_covid, n = 3)

#Display data of Kelantan
kelantan_data <- my_covid[my_covid$State == "Kelantan", ]
print(kelantan_data)

#Display State with Lowest number of deaths
#Display lowest value in death
min_death <- min(my_covid$Deaths)
print(min_death)

#Display state only with lowest death by checking df for lowest in death
min_death_row <- my_covid[which.min(my_covid$Deaths), ]
print(min_death_row$State)

#From the above, but prints the whole row associated with lowest death
print(min_death_row)