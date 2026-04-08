# Sample data (x and y follow an exponential trend)
x <- c(1, 2, 3, 4, 5, 6, 7, 8)
y <- c(2.5, 3.1, 4.9, 7.2, 10.1, 14.5, 20.2, 28.9)
# Combine data
data <- data.frame(x, y)
# Fit model
model <- nls(y ~ a * exp(b * x),
 data = data,
 start = list(a = 1, b = 0.2)) 
# Show model result
Print(summary(model))
# -------- PLOT --------
plot(x, y, pch = 19, col = "blue",
main = "Nonlinear Curve Fitting (Exponential Model)",
xlab = "X Values", ylab = "Y Values")
# Predicted curve
x_new <- seq(min(x), max(x), length.out = 100)
y_pred <- predict(model, list(x = x_new))
lines(x_new, y_pred, col = "red", lwd = 2)
