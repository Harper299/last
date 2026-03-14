# Factors in R - User Input
# Get number of elements
n <- as.integer(readline(prompt = "Enter number of elements: "))
# Initialize vector
data <- character(n)
# Read elements from user
for (i in 1:n) {
 data[i] <- readline(prompt = paste("Enter element", i, ": "))
}
# Convert to factor
factor_data <- factor(data)
# Display results
cat("\nOriginal Data:\n")
print(data)
cat("\nFactor Data:\n")
print(factor_data)
cat("\nLevels of the Factor:\n")
print(levels(factor_data))
cat("\nFrequency Table:\n")
print(table(factor_data))
