#Lab B Activity 2
library(dplyr)
data("starwars")

print(head(starwars, 10))
View(starwars)
str(starwars)

#Summary
summary(starwars$height)
summary(starwars$mass)

#Count
table(starwars$species)
table(starwars$gender)

#Missing Values
cat("Missing Values: ", sum(is.na(starwars))) #105 missing
starwars_clean <- starwars[complete.cases(starwars[, c("height", "mass")]), ]
#complete.cases handles missing value by identifying it by retuning values with do not have N/A
View(starwars_clean)

#Bar Chart
species_count <- table(starwars_clean$species)
barplot(species_count,
        main = "Species Distribution",
        ylab = "Count",
        col = rainbow(length(species_count)),
        las = 2, #Rotate X values
        cex.names = 0.6 #shrink the values
)

#Box Plot
boxplot(height ~ gender, data = starwars_clean,
        main = "Height Distribution by Gender",
        xlab = "Gender",
        ylab = "Height(cm)",
        col = c("pink", "lightblue"),
        border = "black",
        notch = TRUE)