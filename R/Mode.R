Mode <- function(x {
  

  # This is only for univariate modes
  # This is not fit for general use - not my fault if things go wrong!
  lx <- length(x)
  
  if(lx >= 20) {
  pdf_x <- density(x, from = 0)
  
  pdf_x_m <- matrix(data = c(x = pdf_x$x, y = pdf_x$y), ncol = 2)
  
  max_y <- sort(pdf_x_m[,2], decreasing = T)[1]
  
  return( pdf_x_m[pdf_x_m[,2] == max_y, 1][1])
  
  } else if(lx > 5) {

    return(median(x, na.rm = TRUE))

  } else {

    return(mean(x, na.rm = TRUE))
    
  }
  
  
}
