###########
## @description          produces initial state probabilities at time 0 using uniformly 
##                       generated random variable for k x k matrix 
## @return               transition matrix at time = 0 
###########

generate.random.markov.chain <- function(k){
  state.matrix <- matrix(NA, k, k)
  for (i in 1:k) {
  state.matrix[i,] <- runif(k, min = 0, max = 1)
  state.matrix[i,] <- state.matrix[i,]/sum(state.matrix[i,])
  }
  return(state.matrix)
}
