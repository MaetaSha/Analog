# Original Data with 2000
ages <- c(89,89,87,86,85,83,83,82,81,80,78,78,77,76,73,73,73,72,69,69,68,67,66,66,65,
          65,64,63,61,61,60,59,58,57,56,54,54,53,53,51,51,49,47,46,44,43,42,36,2000)

# II. Central Tendency with outlier
mean_orig <- mean(ages)
median_orig <- median(ages)
mode_orig <- as.numeric(names(sort(table(ages), decreasing=TRUE)[1]))

cat("With 2000:\n")
cat("Mean:", mean_orig, "\n")
cat("Median:", median_orig, "\n")
cat("Mode:", mode_orig, "\n")

# III. Replace 2000 with 35
ages_clean <- ages
ages_clean[ages_clean == 2000] <- 35

mean_clean <- mean(ages_clean)
median_clean <- median(ages_clean)
mode_clean <- as.numeric(names(sort(table(ages_clean), decreasing=TRUE)[1]))

cat("\nAfter replacing 2000 with 35:\n")
cat("Mean:", mean_clean, "\n")
cat("Median:", median_clean, "\n")
cat("Mode:", mode_clean, "\n")

# IV. Trimmed Mean (remove 2% from each tail ? 2% of 50 = 1 observation from each end)
trimmed_mean <- mean(ages_clean, trim = 0.02)
cat("\nTrimmed Mean (2%):", trimmed_mean, "\n")

# V. Frequency distribution
breaks <- seq(floor(min(ages_clean)), ceiling(max(ages_clean)), by = 5)
freq_dist <- table(cut(ages_clean, breaks = breaks, right = FALSE))

cat("\nFrequency Distribution:\n")
print(freq_dist)

# VI. Relative Frequency Histogram
rel_freq <- freq_dist / sum(freq_dist)
hist(ages_clean, breaks = breaks, col = "lightblue", freq = FALSE, main = "Relative Frequency Histogram",
     xlab = "Age", ylab = "Relative Frequency")
lines(density(ages_clean), col = "darkred", lwd = 2)  # smooth curve

# VII. Skewness and Kurtosis
library(e1071)  # for skewness and kurtosis
skew <- skewness(ages_clean)
kurt <- kurtosis(ages_clean)

cat("\nSkewness:", skew, "\n")
cat("Kurtosis:", kurt, "\n")
# Comment: Positive skew means longer tail on right. Kurtosis > 3 indicates a peaked distribution.

# VIII. Spread Measures
sd_val <- sd(ages_clean)
mean_dev <- mean(abs(ages_clean - median_clean))
cv <- (sd_val / mean_clean) * 100

cat("\nStandard Deviation:", sd_val, "\n")
cat("Mean Deviation about Median:", mean_dev, "\n")
cat("Coefficient of Variation (%):", cv, "\n")
