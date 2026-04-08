# Sample Data
study_hours <- c(2, 3, 4, 5, 6, 7)
sleep_hours <- c(6, 7, 6, 8, 7, 8)
revisions <- c(1, 2, 2, 3, 3, 4)
marks <- c(50, 55, 60, 65, 70, 75)
# Combine into a data frame
data <- data.frame(study_hours, sleep_hours, revisions, marks)
# MULTIPLE REGRESSION MODEL
model <- lm(marks ~ study_hours + sleep_hours + revisions, data = data)
cat("==== MULTIPLE REGRESSION SUMMARY ====\n")
print(summary(model))
# PLOT (Observed vs Predicted Marks)
predicted <- predict(model)
plot(marks, predicted,
main = "Observed vs Predicted Marks",
xlab = "Observed Marks",
ylab = "Predicted Marks",
pch = 19,
col = "blue")
abline(a = 0, b = 1, col = "red", lwd = 2)
