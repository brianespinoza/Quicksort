## this is meant to be an example of what a quicksort function would look like in R
## Conclusion: Quicksort works well for lists with less than 1e7 elements

quicksort <- function(x){
  if(length(x) <= 1) return(x)
  pivot <- x[1]
  handle <- x[-1]
  gt <- handle[handle >= pivot]
  lt <- handle[handle < pivot]
  pre <- quicksort(lt)
  post <- quicksort(gt)
  c(pre, pivot, post)
}

order <- NULL
time <- NULL
for(i in 0:7){
  x <- runif(10^i, 1, 10000)
  time <- c(time, system.time(quicksort(x))[3])
  order <- c(order, i)
}

plot(time~order, type = "l", xlab = "Order (10^i)",
     ylab = "Elapsed Time (seconds)", main = "Quicksort Growth Trajectory")
