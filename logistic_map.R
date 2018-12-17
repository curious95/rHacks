logistic_map <- function(x0, r, niter = 50){
  stopifnot(is.numeric(x0) & length(x0) == 1 & x0 >= 0 & x0 <= 1)
  xt <- numeric(niter + 1)
  xt[1] <- x0
  for(i in 1:niter) xt[i + 1] <- r * xt[i] * (1 - xt[i])
  plot(xt, type = "b", xlab = "time")
  return(xt)
}    
xt <- logistic_map(x0 = 0.3, r = 2.2)
xt
