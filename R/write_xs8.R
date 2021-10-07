# save an XS8XML object as .xs8 file



write_xs8 <- function(xs8_object, file_path) {
  
  #xml_lines <- xs8_object$XML
  
  if(substr(Test,  nchar(Test)-3,nchar(Test)) != ".xs8") {
    file_path <- paste0(file_path, ".xs8")
  }
  
  writeLines(
    text = xs8_object,
    con = file_path
  )
  
  message("File Saved As ", file_path)
  
}


#Test_XS8 <- create_xs8xml(Runs=5, IDs=20)
#write_xs8(Test_XS8, file_path = "C:/backup/Simulations/Test_XS8.xs8")