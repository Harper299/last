# Sample Data
hours <- c(2, 3, 4, 5, 6, 7)
sleep <- c(6, 7, 6, 8, 7, 8)
marks <- c(50, 55, 60, 65, 70, 75)
# Create data frame
data <- data.frame(hours, sleep, marks)
# FIT LINEAR MODEL (lm)
model <- lm(marks ~ hours + sleep, data = data)
cat("===== LINEAR MODEL SUMMARY =====\n")
print(summary(model))
# PLOT: Observed vs Predicted
pred <- predict(model)
plot(marks, pred,
main = "Linear Model: Observed vs Predicted Marks",
xlab = "Observed Marks",
ylab = "Predicted Marks",
pch = 19,
col = "blue")
abline(a = 0, b = 1, col = "red", lwd = 2)
