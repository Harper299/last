# Sample Data: Study hours vs Marks
hours <- c(2, 3, 4, 5, 6, 7)
marks <- c(50, 55, 61, 64, 70, 74)
# ---- CORRELATION ----
cor_value <- cor(hours, marks)
cat("Correlation between Hours and Marks: ", cor_value, "\n")
# ---- SIMPLE LINEAR REGRESSION ----
model <- lm(marks ~ hours)
cat("\nRegression Model Summary:\n")
print(summary(model))
# ---- PLOT ----
plot(hours, marks,
main = "Regression Line: Hours vs Marks",
xlab = "Study Hours",
ylab = "Marks",
col = "blue",
pch = 19)
# Add regression line
abline(model, col = "red", lwd = 2)
