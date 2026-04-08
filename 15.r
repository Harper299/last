# Sample data
set.seed(123)
group <- factor(rep(c("A", "B", "C"), each = 20))
values <- c(rnorm(20, 10, 2),
 rnorm(20, 13, 2),
 rnorm(20, 15, 2))
# ---- ONE PLOT ----
boxplot(values ~ group,
 col = "lightblue",
 main = "Group Comparison (ANOVA & Kruskal–Wallis)",
 xlab = "Groups",
 ylab = "Values")
# ---- ANOVA ----
anova_model <- aov(values ~ group)
cat("\n--- ANOVA Result ---\n")
print(summary(anova_model))
# ---- Kruskal-Wallis Test ----
kw_result <- kruskal.test(values ~ group)
cat("\n--- Kruskal–Wallis Result ---\n")
print(kw_result)
