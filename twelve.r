# User input
n <- as.integer(readline(prompt = "Enter total subjects: "))
data <- numeric(n)
for (i in 1:n) {
 data[i] <- as.numeric(readline(prompt = paste("Enter mark”, i, ": ")))
}
cat("\nData Set:\n")
print(data)
# Descriptive Statistics
mean_val <- mean(data)
median_val <- median(data)
variance_val <- var(data)
sd_val <- sd(data)
min_val <- min(data)
max_val <- max(data)
# Mode calculation
mode_val <- names(sort(table(data), decreasing = TRUE))[1]
cat("\nDescriptive Statistics:\n")
cat("Mean =", mean_val, "\n")
cat("Median =", median_val, "\n")
cat("Mode =", mode_val, "\n")
cat("Variance =", variance_val, "\n")
cat("Standard Deviation =", sd_val, "\n")
cat("Minimum =", min_val, "\n")
cat("Maximum =", max_val, "\n")
# Graphics
hist(data,
 main = "Histogram",
 xlab = "Data Values",
 col = "lightblue",
 border = "black")
boxplot(data,
 main = "Boxplot",
 col = "lightgreen")
barplot(table(data),
 main = "Bar Plot",
 xlab = "Values",
 ylab = "Frequency",
 col = "orange")

OUTPUT 
Enter total subjects: 5
Enter mark 1 : 60
Enter mark 2 : 75
Enter mark 3 : 82
Enter mark 4 : 90
Enter mark 5 : 85
Data Set:
[1] 60 75 82 90 85
Descriptive Statistics:
Mean = 78.4
Median = 82
Mode = 60
Variance = 135.3
Standard Deviation = 11.63185
Minimum = 60
Maximum = 90
