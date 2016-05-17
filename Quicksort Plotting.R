## Quicksort plotting

order <- NULL
time <- NULL
for(i in 0:7){
  x <- runif(10^i, 1, 10000)
  time <- c(time, system.time(quicksort(x))[3])
  order <- c(order, i)
}

plot(time~order, type = "l", xlab = "Order (10^i)",
     ylab = "Elapsed Time (seconds)", main = "Quicksort Growth Trajectory")
