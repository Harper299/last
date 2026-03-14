#install.packages("tidyr")
# Load required package
library(tidyr)
# User input
name <- readline(prompt = "Enter student name: ")
n <- as.integer(readline(prompt = "Enter number of subjects: "))
subjects <- c()
marks <- c()
for (i in 1:n) {
 sub <- readline(prompt = paste("Enter subject", i, "name: "))
 mark <- as.integer(readline(prompt = paste("Enter marks for", sub, ": ")))
 subjects <- c(subjects, sub)
 marks <- c(marks, mark)
}
# Create wide format data
wide_data <- data.frame(Student = name)
wide_data[subjects] <- marks
cat("\nWide Format Data:\n")
print(wide_data)
# Convert wide to long format
long_data <- pivot_longer(
 wide_data,
 cols = -Student,
  names_to = "Subject",
 values_to = "Marks"
)
cat("\nLong Format Data:\n")
print(long_data)
# Convert long back to wide format
wide_again <- pivot_wider(
 long_data,
 names_from = Subject,
 values_from = Marks
)
cat("\nReshaped Back to Wide Format:\n")
print(wide_again)

OUTPUT :
Enter student name: Rahul
Enter number of subjects: 3
Enter subject 1 name: Maths
Enter marks for Maths: 85
Enter subject 2 name: Science
Enter marks for Science: 90
Enter subject 3 name: English
Enter marks for English: 88
Wide Format Data:
 Student Maths Science English
1 Rahul 85 90 88
Long Format Data:
 Student Subject Marks
1 Rahul Maths 85
2 Rahul Science 90
3 Rahul English 88
Reshaped Back to Wide Format:
 Student Maths Science English
1 Rahul 85 90 88
