#Lab 7B Activity 2

#Titanic Insights
titanic_subset <- select(titanic_cleaned, embarked, class, survived)  #Select columns
cherbourg_data <- filter(titanic_subset, embarked == "C", class == "Third")  #Filter Cherbourg Third Class
survival_rate <- summarize(cherbourg_data, Survival_Rate = mean(survived) * 100)  #Summarize survival
total_cherbourg <- filter(titanic_subset, embarked == "C")  #Filter Cherbourg
third_class_pct <- mutate(total_cherbourg, Is_Third = class == "Third")  #Add column to check Third Class
third_class_pct <- summarize(third_class_pct, Third_Pct = mean(Is_Third) * 100)  #Calc percentage

View(head(cherbourg_data, 10))
View(survival_rate)
View(head(total_cherbourg, 10))
View(third_class_pct)

# UFO Insights (simpler use of verbs)
ufo_subset <- select(uforeport_cleaned, State, Shape_Reported)  #Select columns
top_states<- group_by(ufo_subset, State)  #Group by State
top_states_sightings <- summarize(top_states, Count = n())  #Count sightings per state
top_states_moresightings <- filter(top_states_sightings, Count > 1)  #Filter states with more than 1 sighting
top_states_desc <- arrange(top_states_moresightings, desc(Count))  #Arrange in descending order

View(head(top_states, 10))
View(head(top_states_sightings, 25))
View(head(top_states_moresightings, 20))
View(head(top_states_desc, 10))