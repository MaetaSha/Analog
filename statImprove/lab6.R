# Z values from -4 to 4
z_vals <- seq(-4, 4, by = 0.1)

# PDF of Z
z_pdf <- dnorm(z_vals, mean = 0, sd = 1)

# Plot Standard Normal Curve
plot(z_vals, z_pdf, type = "l", col = "darkblue", lwd = 2,
     main = "Standard Normal Distribution (Z ~ N(0,1))",
     xlab = "Z", ylab = "Density")
grid()
# X values
x_vals <- seq(0, 2000, by = 10)

# PDF and CDF
x_pdf <- dnorm(x_vals, mean = 1000, sd = 500)
x_cdf <- pnorm(x_vals, mean = 1000, sd = 500)

# Plot PDF
plot(x_vals, x_pdf, type = "l", col = "forestgreen", lwd = 2,
     main = "PDF of X ~ N(1000, 250000)",
     xlab = "X", ylab = "Density")
grid()

# Plot CDF
plot(x_vals, x_cdf, type = "l", col = "purple", lwd = 2,
     main = "CDF of X ~ N(1000, 250000)",
     xlab = "X", ylab = "Cumulative Probability")
grid()
# Given X ~ N(1000, 250000)
mean_x <- 1000
sd_x <- sqrt(250000)  # = 500

# a) P(X = 850)
# For continuous distributions, P(X = x) = 0
p_x_eq_850 <- 0

# b) P(X > 1200)
p_x_gt_1200 <- pnorm(1200, mean = mean_x, sd = sd_x, lower.tail = FALSE)

# c) P(1000 < X < 2000)
p_x_between <- pnorm(2000, mean = mean_x, sd = sd_x) - pnorm(1000, mean = mean_x, sd = sd_x)

cat("a) P(X = 850):", p_x_eq_850, "\n")
cat("b) P(X > 1200):", p_x_gt_1200, "\n")
cat("c) P(1000 < X < 2000):", p_x_between, "\n")
