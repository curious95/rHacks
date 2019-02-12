if(nrow(turtle)==0){
  return(NULL)
}else{
  #print(turtle$width[nrow(turtle)])
  
  #resp <- cat("{\"EV.EBIT\":",47,",\"EV.Sales\":",53,"}")
  

  #paste('{"id":', '"', x, '"', '}', sep="")
  
  resp <- capture.output(cat('{\"EV.EBIT\":",47,",\"EV.Sales\":",53,"}'))
  
  print(resp)
}

#EV.EBIT
#EV.Sales