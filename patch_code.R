library(jsonlite)

if(nrow(turtle)==0){
  return(NULL)
}else{
  
  #print(turtle$width[nrow(turtle)])
  #resp <- cat("{\"EV.EBIT\":",47,",\"EV.Sales\":",53,"}")
  #resp <- paste('{"EV.EBIT":', 47, ',"EV.Sales":',57, '}', sep="")
  #resp <- capture.output(cat('{\"EV.EBIT\":",47,",\"EV.Sales\":",53,"}'))
  
  
  x <- list(EV.EBIT = 47, EV.Sales = 57)
  resp <- toJSON(x, pretty = TRUE, auto_unbox = TRUE)
  
  
  print(resp)
}

#EV.EBIT
#EV.Sales