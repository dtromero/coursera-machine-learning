plotData <- function(X, y) {
  
  #PLOTDATA Plots the data points X and y into a new figure 
  #   PLOTDATA(x,y) plots the data points with + for the positive examples
  #   and o for the negative examples. X is assumed to be a Mx2 matrix.
  # ====================== YOUR CODE HERE ======================
  # Instructions: Plot the positive and negative examples on a
  #               2D plot, using the option 'k+' for the positive
  #               examples and 'ko' for the negative examples.
  #
  
  # Find Indices of Positive and Negative Examples
  pos <- which(y %in% 1);
  neg <- which(y %in% 0);
  
  # Plot Examples
  #par(new=TRUE)
  
  plot(X[pos, 1], ,X[pos, 2])#, 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  #plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  # =========================================================================
}ASDASDASD