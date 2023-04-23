############
## @description        generates an array of transition matrices and stops when stationarity is reached
## @input              argument input is initial transition matrix produced from generate.random.markov.chain
## @return             results in k x k stationarity matrix and when reached at time t 
############


markov.chain.stationary <- function(transition.matrix){
  for (i in i:k) {
    if(sum(transition.matrix[k,])!=1){
      stop("Row vector does not sum to 1")
    }
  }
  if(length(transition.matrix[1,])!=k || length(transition.matrix[,1])!=k){
    stop("Improper matrix dimensions")
  }
  time.step <- array(NA, c(k,k,10))
  time.step[,,1] <- transition.matrix
  for (i in 2:10) {
    time.step[,,i] <- time.step[,,i-1]%*%time.step[,,i-1]
    if(identical(round(time.step[,,i],6), round(time.step[,,i-1],6)) == TRUE){
      stop(return(list("stationary distribution matrix:" =time.step[,,i],"time to stationarity:"=i)))
    }
  }
}
