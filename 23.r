# Sample Data
temperature <- c(20, 22, 23, 25, 27, 30, 32, 35)
breakdowns <- c(1, 1, 2, 3, 3, 4, 5, 6)
data <- data.frame(temperature, breakdowns)
# Fit Poisson Regression Model
model <- glm(breakdowns ~ temperature, family = poisson, data = data)
# Show model output
Print(summary(model))
# Plot: Actual Counts + Fitted Line
plot(temperature, breakdowns,
pch = 19,
col = "blue",
xlab = "Temperature (°C)",
ylab = "Number of Breakdowns",
main = "Poisson Regression: Breakdowns vs Temperature")
# Add fitted Poisson curve
lines(temperature, predict(model, type = "response"), col = "red", lwd = 2)
