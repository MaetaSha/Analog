# Create the data frame
data <- data.frame(
  Sex = c("Male", "Female", "Male", "Male", "Female", "Female", "Male", "Male", "Female", "Male",
          "Female", "Male", "Male", "Female", "Male", "Male", "Female", "Male", "Female", "Male"),
  Religion = c("Muslim", "Hindu", "Muslim", "Hindu", "Muslim", "Christian", "Muslim", "Hindu", "Muslim", "Others",
               "Hindu", "Christian", "Others", "Muslim", "Hindu", "Christian", "Muslim", "Others", "Muslim", "Others"),
  Level_of_Education = c("Primary", "Graduate", "Illiterate", "Graduate", "Primary", "Graduate", "Illiterate", "Primary", "Others", "Higher Secondary",
                         "Primary", "Graduate", "Secondary", "Secondary", "Higher Secondary", "Others", "Primary", "Illiterate", "Higher Secondary", "Secondary")
)

# I. Frequency distributions
religion_freq <- table(data$Religion)
education_freq <- table(data$Level_of_Education)

print("Frequency Distribution - Religion:")
print(religion_freq)

print("Frequency Distribution - Level of Education:")
print(education_freq)

# II. Pie chart for Religion
pie(religion_freq, main="Pie Chart of Religion", col=rainbow(length(religion_freq)))
# Comment: The majority of the individuals are Muslim, followed by Hindu and Others.

# III. Bar chart for Level of Education
barplot(education_freq, main="Bar Chart of Level of Education", col="skyblue", ylab="Frequency", las=2)
# Comment: The most common level of education is Primary, followed by Higher Secondary and Graduate.
