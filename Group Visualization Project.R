
# Load required libraries
library(ggplot2)

# Load the dataset
elephants_data <- read.table("Elephant Football.dat", header = TRUE, sep = "\t")

# Check the structure of the dataset
str(elephants_data)

# Assuming your dataset has columns named 'experience' and 'goals_scored', you can create the graphs as follows:

# 1. Descriptive statistics (histogram) of 'goals_scored'
ggplot(elephants_data, aes(x = experience)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Experience by Elephants",
       x = "Experience",
       y = "Goals Scored")  # Note the change in y-axis label

# 2. A scatter plot to visualize the relationship between 'experience' and 'goals_scored'
ggplot(elephants_data, aes(x = experience, y = goals)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") + # Add a linear regression line
  labs(title = "Relationship between Experience and Goals Scored",
       x = "Experience",
       y = "Goals Scored")

# 3. Box Plot gives insight on the distribution of goals scored by elephants.
ggplot(elephants_data, aes(x = factor(experience), y = goals)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  labs(title = "Distribution of Goals Scored by Experience Level",
       x = "Experience Level",
       y = "Goals Scored")

# 4. Density Plot illustrates the density distribution of elephant experience.
ggplot(elephants_data, aes(x = experience)) +
  geom_density(fill = "skyblue", color = "black") +
  labs(title = "Density Plot of Experience",
       x = "Experience",
       y = "Density")


# 5. Stacked Bar Plot shows the count of elephants at each experience level
ggplot(elephants_data, aes(x = factor(experience), fill = factor(goals))) +
  geom_bar() +
  labs(title = "Distribution of Goals Scored by Experience Level",
       x = "Experience Level",
       y = "Count of Elephants",
       fill = "Goals Scored")



