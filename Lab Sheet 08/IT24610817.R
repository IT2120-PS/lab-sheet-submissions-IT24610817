setwd("C:/Users/IT24610817/Desktop/IT24610817")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
colnames(data) <- c("Weight")

pop_mean <- mean(data$Weight)
pop_sd   <- sd(data$Weight)

pop_mean
pop_sd

#2
samples <- c()
n <- c()

for(i in 1:25){
  S <- sample(data$Weight, 6, replace=TRUE)
  samples <- cbind(samples, S)
  n <- c(n, paste('Sample', i))
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)

results <- data.frame(
  Sample = 1:25,
  Mean = s.means,
  SD = s.sds
)

results

#3
mean_of_sample_means <- mean(s.means)
sd_of_sample_means   <- sd(s.means)

mean_of_sample_means
sd_of_sample_means

theoretical_sd <- pop_sd / sqrt(6)
theoretical_sd
