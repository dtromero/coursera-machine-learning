gradientDescent <- function(X, y, theta, alpha, num_iters) {
  #GRADIENTDESCENT Performs gradient descent to learn theta
  #   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
  #   taking num_iters gradient steps with learning rate alpha
  
  # Initialize some useful values
  m <- length(y);
  J_history = matrix(0, num_iters, 1);
  
  for(iter in 1:num_iters) {
    # ====================== YOUR CODE HERE ======================
    # Instructions: Perform a single gradient step on the parameter vector
    #               theta. 
    #
    # Hint: While debugging, it can be useful to print out the values
    #       of the cost function (computeCost) and gradient here.
    #
    
    h <- t((X %*% theta)-y);
    
    temp1 <- theta[1] - alpha * (1/m) * h %*% X[,1];
    temp2 <- theta[2] - alpha * (1/m) * h %*% X[,2];
    
    theta[1] <- temp1
    theta[2] <- temp2
    
    J_history[iter] <- computeCost(X, y, theta)
    
  }
  
  return(list(theta, J_history))
}