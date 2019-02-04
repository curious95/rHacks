#Sample function to calculate sums

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}

#* Echo back the input
#* @param msg The message to echo
#* @get /
function(msg=""){
  list(status = "SUCCESS", code = "200")
  
}


#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @get /sum
function(a, b){
  as.numeric(a) + as.numeric(b)
}