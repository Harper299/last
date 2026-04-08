#install.packages("survival")
# Load package
library(survival)
# Sample data: Time (days) & Event status
time <- c(5, 8, 12, 16, 20, 22, 25, 30, 35, 40)
event <- c(1, 1, 0, 1, 1, 0, 1, 1, 0, 1)
# Create survival object
surv_obj <- Surv(time, event)
# Fit Kaplan–Meier model
fit <- survfit(surv_obj ~ 1)
# Print summary
cat("===== KAPLAN–MEIER SURVIVAL SUMMARY =====\n")
print(summary(fit))
# ---------- PLOT ----------
plot(fit,
main = "Kaplan–Meier Survival Curve",
xlab = "Time (Days)",
ylab = "Survival Probability",
col = "blue",
lwd = 2)
grid()
