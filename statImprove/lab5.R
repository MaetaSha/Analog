# Set seed for reproducibility
set.seed(123)

# I. Generate sample from Binomial(n = 5, p = 0.3)
sample_data <- rbinom(n = 1000, size = 5, prob = 0.3)

# II. Observed distribution (relative frequency)
observed_freq <- table(sample_data) / length(sample_data)

# III. Theoretical binomial probabilities
x_vals <- 0:5
theoretical_prob <- dbinom(x_vals, size = 5, prob = 0.3)

# Combine into a data frame for comparison
comparison <- data.frame(
  Successes = x_vals,
  Observed = as.numeric(observed_freq[as.character(x_vals)]),
  Theoretical = theoretical_prob
)

# Replace NA with 0 for missing observed values
comparison$Observed[is.na(comparison$Observed)] <- 0

print(comparison)

# IV. Plot comparison
barplot(
  rbind(comparison$Observed, comparison$Theoretical),
  beside = TRUE,
  names.arg = comparison$Successes,
  col = c("skyblue", "orange"),
  legend = c("Observed", "Theoretical"),
  main = "Observed vs Theoretical Binomial Distribution",
  xlab = "Number of Successes",
  ylab = "Probability"
)
