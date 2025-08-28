getwd()

setwd('C:/Users/IT24610817/Desktop/IT24610817')
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)

breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times[,1],
     breaks = breaks,
     right = FALSE,
     col = "lightpink",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency",
     border = "black")

freq_table <- hist(Delivery_Times[,1],
                   breaks = breaks,
                   right = FALSE,
                   plot = FALSE)
cum_freq <- cumsum(freq_table$counts)
plot(breaks[-1], cum_freq, type = "o",
     col = "blue", lwd = 2,
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency")

