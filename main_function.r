## required packages for state transition diagram
install.packages("qgraph") 
library(qgraph)

###########
## @Description           a simple discrete markov chain example for any number of states
## @k                     number of initial states 
## @transition matrix     using k states to produce initial transition matrix 
## @stationarity          stationarity matrix in which state probabilities remain constant
## @qgraph                produces state transition diagram with weighted lines 
## @return                returns transition matrix at time.step[i] in which stationarity is reached 

## @generate.random.markov.chain()    input argument = k 
## @markov.chain.stationarity()       input argument = transition.matrix 
############                     

k <- 10                   
stationarity <- transition.matrix <- matrix(NA, nrow = k, ncol = k)

transition.matrix <- generate.random.markov.chain(k)
transition.matrix

stationarity <- markov.chain.stationary(transition.matrix)
stationarity 

pdf("your_folder_path",width=13, height=8)

qgraph(stationarity[[1]],layout="circle", theme="Borkulo", 
       labels= c(paste(rep("State",k), c(1:k)))) 
       title(main = "Markhov chain stationary distribution\nfor randomly generated transition matrix", 
             adj=0, line=, cex=2, font=2)
dev.off()
