# (Sample data frames)
students <- data.frame(
 ID = 1:5,
 Name = c("A", "B", "C", "D", "E"),
 Marks = c(85, 90, 78, 92, 88)
)
details <- data.frame(
 ID = c(1, 2, 3, 4, 5),
 Age = c(18, 19, 18, 20, 19),
 City = c("Chennai", "Madurai", "Salem", "Coimbatore", "Trichy")
)
# 1. MERGING DATA
merged_data <- merge(students, details, by = "ID")
cat("---- MERGED DATA ----\n")
print(merged_data)
# 2. SORTING DATA (Descending Marks)
sorted_data <- merged_data[order(-merged_data$Marks), ]
cat("\n---- SORTED DATA ----\n")
print(sorted_data)
# 3. FILTERING (Marks > 85)
filtered_data <- subset(merged_data, Marks > 85)
cat("\n---- FILTERED DATA (Marks > 85) ----\n")
print(filtered_data)
# 4. SELECTING COLUMNS (Name, Marks)
selected <- merged_data[, c("Name", "Marks")]
cat("\n---- SELECTED COLUMNS ----\n")
print(selected)
# 5. CREATING NEW COLUMN (Grade)
merged_data$Grade <- ifelse(merged_data$Marks >= 90, "A", "B")
cat("\n---- NEW COLUMN: GRADE ----\n")
print(merged_data)
# 6. GROUPING & SUMMARIZING (Average marks)
avg_marks <- aggregate(Marks ~ City, merged_data, mean)
cat("\n---- AVERAGE MARKS BY CITY ----\n")
print(avg_marks)
# 7. HANDLING MISSING VALUES
merged_data$Marks[3] <- NA # Make one NA
merged_data$Marks <- ifelse(is.na(merged_data$Marks), 0, merged_data$Marks)
cat("\n---- AFTER HANDLING NA ----\n")
print(merged_data)
# 8. RESHAPING (Wide → Long)
library(tidyr)
long_data <- pivot_longer(merged_data,
 cols = c(Marks, Age),
 names_to = "Variable",
 values_to = "Value")
cat("\n---- LONG FORMAT ----\n")
print(long_data)
