# Raw data
scores <- c(77, 44, 49, 33, 38, 33, 76, 55, 68, 39, 44, 59, 36, 55, 47, 61, 53, 32, 65, 51,
            29, 41, 32, 45, 83, 58, 73, 47, 40, 26, 59, 43, 66, 44, 41, 25, 39, 72, 37, 55,
            34, 47, 66, 53, 55, 58, 49, 45, 61, 41, 55, 92, 83, 77, 45, 62, 45, 36, 78, 48,
            54, 50, 51, 66, 80, 73, 57, 61, 56, 50, 45, 82, 71, 48, 46, 69, 38, 72, 56, 64)

# I. Central Tendency & Variability
mean_val <- mean(scores)
median_val <- median(scores)
mode_val <- as.numeric(names(sort(table(scores), decreasing = TRUE)[1]))
variance_val <- var(scores)
sd_val <- sd(scores)

cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
cat("Variance:", variance_val, "\n")
cat("Standard Deviation:", sd_val, "\n")

# II. Five number summary
summary(scores)
fivenum(scores)

# III. Frequency distribution
# Decide class width based on range
range_scores <- range(scores)
breaks <- seq(floor(min(scores)), ceiling(max(scores)) + 5, by = 10)  # Interval width = 10
freq_dist <- cut(scores, breaks = breaks, right = FALSE)
freq_table <- table(freq_dist)

cat("\nFrequency Distribution:\n")
print(freq_table)

# IV. Histogram and Ogive
hist(scores, breaks = breaks, col = "skyblue", main = "Histogram of Test Scores", xlab = "Scores", ylab = "Frequency")

# Ogive (Cumulative Frequency Graph)
cum_freq <- cumsum(freq_table)
plot(breaks[-1], cum_freq, type = "o", col = "red", main = "Ogive (Cumulative Frequency)", xlab = "Scores", ylab = "Cumulative Frequency")
abline(h = max(cum_freq)/2, col = "blue", lty = 2)  # Approx Median Line

# V. Mean, Median, Mode from grouped data
midpoints <- (head(breaks, -1) + tail(breaks, -1)) / 2
freq <- as.numeric(freq_table)
grouped_mean <- sum(midpoints * freq) / sum(freq)
grouped_median_class <- breaks[which(cum_freq >= max(cum_freq)/2)[1]]
# Mode (modal class)
modal_class_index <- which.max(freq)
modal_class <- breaks[modal_class_index]

cat("\nGrouped Data Mean:", grouped_mean, "\n")
cat("Modal Class:", modal_class, "\n")
cat("Median Class starts from:", grouped_median_class, "\n")

# VI. Stem and Leaf Plot
stem(scores)

# Median and Mode from stem plot: (We already have them, but you can interpret from the plot visually)

