featureNormalize <- function(X) {
  #FEATURENORMALIZE Normalizes the features in X 
  #   FEATURENORMALIZE(X) returns a normalized version of X where
  #   the mean value of each feature is 0 and the standard deviation
  #   is 1. This is often a good preprocessing step to do when
  #   working with learning algorithms.
  
  # You need to set these values correctly
  #X_norm <- X;
  #mu <- matrix(0, nrow(X), 1);
  #sigma <- matrix(0, nrow(X), 1);
  
  # ====================== YOUR CODE HERE ======================
  # Instructions: First, for each feature dimension, compute the mean
  #               of the feature and subtract it from the dataset,
  #               storing the mean value in mu. Next, compute the 
  #               standard deviation of each feature and divide
  #               each feature by it's standard deviation, storing
  #               the standard deviation in sigma. 
  #
  #               Note that X is a matrix where each column is a 
  #               feature and each row is an example. You need 
  #               to perform the normalization separately for 
  #               each feature. 
  #
  # Hint: You might find the 'mean' and 'std' functions useful.
  #       
  
  mu <- apply(X, 2, mean);
  sigma <- apply(X, 2, sd);
  
  t <- matrix(1, nrow(X), 1);
  
  X_norm <- (X - (t %*% mu)) / (t %*% sigma);
  
  return(list(X_norm, mu, sigma))
  # ============================================================
  
}
