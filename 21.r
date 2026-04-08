# Sample dataset
hours <- c(1, 2, 3, 4, 5, 6)
pass <- c(0, 0, 0, 1, 1, 1) # 1 = Pass, 0 = Fail
data <- data.frame(hours, pass)
# FIT LOGISTIC REGRESSION MODEL
model <- glm(pass ~ hours, data = data, family = binomial)
cat("===== LOGISTIC REGRESSION SUMMARY =====\n")
print(summary(model))
# PREDICT PROBABILITY OF PASSING
pred <- predict(model, type = "response")
cat("\nPredicted probabilities of passing:\n")
print(pred)
# PLOT: Hours vs Probability of Passing
plot(hours, pred,
main = "Logistic Regression Curve",
xlab = "Study Hours",
ylab = "Probability of Passing",
pch = 19,
col = "blue")
lines(hours, pred, col = "red", lwd = 2)
