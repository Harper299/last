# ---------- ONE-SAMPLE T-TEST ----------
# Suppose class marks
marks <- c(85, 78, 90, 88, 92, 75, 80, 84)
# Hypothesis: Mean marks = 80
one_sample_result <- t.test(marks, mu = 80)
cat("---- ONE-SAMPLE T-TEST ----\n")
print(one_sample_result)
# ---------- TWO-SAMPLE T-TEST ----------
# Suppose marks of two different sections
section_A <- c(85, 80, 78, 92, 88)
section_B <- c(75, 70, 82, 78, 74)
# Test whether the means of both groups are equal
two_sample_result <- t.test(section_A, section_B)
cat("\n---- TWO-SAMPLE T-TEST ----\n")
print(two_sample_result)

