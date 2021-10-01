
write_erlang_vl  <- function(name, k = 2, mean = 60, offset = 0) {
  
  
  L1 <-     paste0('Create Distribution "', name, '", Erlang')
  L2 <- paste0('Set Distribution Parameters "', name, '", ', mean, ', ', k, ', ', offset)
                              
                              
  return(cat(L1, "\n", L2, sep=""))
  
  
}
