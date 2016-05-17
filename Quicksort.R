## Quicksort Function

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
