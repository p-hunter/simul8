

xs8_rn_stream <- function(Runs = 5, IDs = 10) {
  
  to_paste <- c()
  
  for(i in 1:Runs) {
    to_paste <- append(
      to_paste,
      paste0(
        '\t\t\t<RNStream StreamNumber="',
        i,
        '">\n'
      )
    )
    for(j in 1:IDs) {
      
      to_paste <- append(to_paste, paste0(

        '\t\t\t\t<SubRNStream ID="',
        j,
        '">\n',
        '\t\t\t\t\t<Seed>',
        round(runif(1, -1799629645,1799629645)),
        '</Seed>\n',
        '\t\t\t\t</SubRNStream>\n'
      ) )
    }
    
    to_paste <- append(to_paste, paste0('\t\t\t</RNStream>\n'))
    
  }

  
  rn_stream <- list(
    XML = paste0(to_paste, collapse = ''),
    Runs = Runs,
    IDs = IDs
  )
    
  return(rn_stream)
  
}