setwd("C:\\Users\\idppl\\Documents\\sliit 2y1s\\PS\\IT24102721")

Delivery_Times <- read.table("Data.txt", header = TRUE)
names(Delivery_Times) <- c("Time")
attach(Delivery_Times)

breaks <- seq(20,70, length.out = 10)
hist(Time, breaks = breaks, right = FALSE, main = "HIstogram for Delivery Times", xlab = "Delivery time", ylab = "Frequency")


h <- hist(Time, breaks = breaks, right = FALSE, plot = FALSE)
freq <- h$counts
cum_freq <- cumsum(freq)
new <- c(0, cum_freq)
plot(breaks, new, type = "l", main = "Cumulative Frequency Polygon (Ogive) for Delivery Times", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", ylim = c(0, max(new)))

