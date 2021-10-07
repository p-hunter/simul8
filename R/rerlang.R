rerlang <- function(n, shape, rate = 1, scale = 1 / rate) {
  
  if (!missing(rate) && !missing(scale)) {
    if (abs(rate * scale - 1) < 1e-15) 
      warning("Specify 'rate' or 'scale' but not both")
    else stop("Specify 'rate' or 'scale' but not both")
  }
 
  if(shape <= 0 | shape %% 1 != 0) {
    stop(paste0("Shape parameter must be a positive integer. The shape parameter given is ", shape))
  }
  
  if(rate <= 0) {
    stop(paste0("Rate parameter must be a positive real number. The rate parameter given is ", rate))
  }
  
  u <- lapply(rep(1, n), function(i) runif(i, 0, 1))
  
  -scale * log(unlist(lapply(u, sum)))
  
}
