#install.packages("pwr")
library(pwr)
# 1. CALCULATE POWER
power_result <- pwr.t.test(n = 30,
 d = 0.5,
 sig.level = 0.05,
 type = "two.sample",
 alternative = "two.sided")
cat("----- POWER CALCULATION -----\n")
print(power_result)
# 2. CALCULATE REQUIRED SAMPLE SIZE
sample_result <- pwr.t.test(power = 0.80,
 d = 0.5,
 sig.level = 0.05,
 type = "two.sample",
 alternative = "two.sided")
cat("\n----- SAMPLE SIZE NEEDED -----\n")
print(sample_result)
cat("\nMinimum Sample Size per group: ", ceiling(sample_result$n), "\n")
