# Clear workspace
rm(list = ls())
# 1. Read a CSV file
data <- read.csv("C:/ marks.csv")
# 2. Display the entire table
cat("=== FULL TABLE ===\n")
print(data)
# 3. Show only first few rows
cat("\n=== FIRST 6 ROWS ===\n")
print(head(data))
# 4. Show structure of table
cat("\n=== STRUCTURE OF DATA ===\n")
str(data)
# 5. Summary of each column
cat("\n=== SUMMARY ===\n")
summary(data)
