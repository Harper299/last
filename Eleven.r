# ---------------- Binomial Distribution ----------------
n <- as.integer(readline(prompt = "Enter number of trials (n): "))
p <- as.numeric(readline(prompt = "Enter probability of success (p): "))
x <- as.integer(readline(prompt = "Enter number of successes (x): "))
binom_prob <- dbinom(x, size = n, prob = p)
cat("\nBinomial Probability P(X =", x, ") =", binom_prob, "\n")
# Binomial Plot
x_vals <- 0:n
y_vals <- dbinom(x_vals, size = n, prob = p)
barplot(y_vals, names.arg = x_vals,
 main = "Binomial Distribution",
 xlab = "Number of Successes",
 ylab = "Probability",
 col = "lightblue")
# ---------------- Poisson Distribution ----------------
lambda <- as.numeric(readline(prompt = "\nEnter average rate (lambda): "))
k <- as.integer(readline(prompt = "Enter number of occurrences (k): "))
poisson_prob <- dpois(k, lambda)
cat("\nPoisson Probability P(X =", k, ") =", poisson_prob, "\n")
# Poisson Plot
k_vals <- 0:(lambda * 3)
p_vals <- dpois(k_vals, lambda)
barplot(p_vals, names.arg = k_vals,
 main = "Poisson Distribution",
        xlab = "Number of Occurrences",
 ylab = "Probability",
 col = "lightgreen")
# ---------------- Normal Distribution ----------------
mean_val <- as.numeric(readline(prompt = "\nEnter mean: "))
sd_val <- as.numeric(readline(prompt = "Enter standard deviation: "))
value <- as.numeric(readline(prompt = "Enter value: "))
normal_prob <- dnorm(value, mean = mean_val, sd = sd_val)
cat("\nNormal Probability P(X =", value, ") =", normal_prob, "\n")
# Normal Plot
x_norm <- seq(mean_val - 4 * sd_val, mean_val + 4 * sd_val, length = 100)
y_norm <- dnorm(x_norm, mean = mean_val, sd = sd_val)
plot(x_norm, y_norm, type = "l",
 main = "Normal Distribution Curve",
 xlab = "Values",
 ylab = "Density",
 col = "red", lwd = 2)


OUTPUT :
Enter number of trials (n): 8
Enter probability of success (p): 0.5
Enter number of successes (x): 4
Binomial Probability P(X = 4 ) = 0.2734375
Enter average rate (lambda): 3
Enter number of occurrences (k): 2
Poisson Probability P(X = 2 ) = 0.2240418
Enter mean: 50
Enter standard deviation: 10
Enter value: 55
Normal Probability P(X = 55 ) = 0.03520653
