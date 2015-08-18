### Machine Learning Online Class - Exercise 1: Linear Regression

#  Instructions
#  ------------
# 
#  This file contains code that helps you get started on the
#  linear exercise. You will need to complete the following functions 
#  in this exericse:
#
#     warmUpExercise.m
#     plotData.m
#     gradientDescent.m
#     computeCost.m
#     gradientDescentMulti.m
#     computeCostMulti.m
#     featureNormalize.m
#     normalEqn.m
#
#  For this exercise, you will not need to change any code in this file,
#  or any other files other than those mentioned above.
#
# x refers to the population size in 10,000s
# y refers to the profit in $10,000s
#

## Initialization
rm(list=ls())
closeAllConnections()

source('warmUpExercise.R')
source('plotData.R')
source('computeCost.R')
source('gradientDescent.R')

## ==================== Part 1: Basic Function ====================
# Complete warmUpExercise.m 
cat('Running warmUpExercise ... \n');
cat('5x5 Identity Matrix: \n');
print(warmUpExercise())

readline('Program paused. Press enter to continue.\n');


## ======================= Part 2: Plotting =======================
cat('Plotting Data ...\n')
data <- read.csv('ex1data1.txt', header=FALSE);
X <- data[,1]; 
y <- data[,2];
m <- length(y); # number of training examples

# Plot Data
# Note: You have to complete the code in plotData.m
plotData(X, y);

readline('Program paused. Press enter to continue.\n');


## =================== Part 3: Gradient descent ===================
cat('Running Gradient Descent ...\n')

X <- cbind(matrix(1, m, 1), data[,1]); # Add a column of ones to x
theta <- matrix(0, 2, 1); # initialize fitting parameters

# Some gradient descent settings
iterations <- 1500;
alpha <- 0.01;

# compute and display initial cost
computeCost(X, y, theta)

# run gradient descent
theta <- gradientDescent(X, y, theta, alpha, iterations);

theta <- theta[[1]]

# print theta to screen
cat('Theta found by gradient descent: ');
cat(sprintf('%f %f \n', theta[1], theta[2]));
#print(theta[1])

# Plot the linear fit
#hold on; # keep previous plot visible
plot(X[,2], y)

intercept <- theta[1]
slope <- theta[2]

abline(intercept, slope)
#legend('Training data', 'Linear regression')
#hold off # don't overlay any more plots on this figure

# Predict values for population sizes of 35,000 and 70,000
predict1 <- matrix(c(1, 3.5), nrow=1, ncol=2) %*% theta;
cat(sprintf('For population = 35,000, we predict a profit of %f\n',predict1*10000));
predict2 <- matrix(c(1, 7), nrow=1, ncol=2) %*% theta;
cat(sprintf('For population = 70,000, we predict a profit of %f\n',
    predict2*10000));

readline('Program paused. Press enter to continue.\n');



## ============= Part 4: Visualizing J(theta_0, theta_1) =============
cat('Visualizing J(theta_0, theta_1) ...\n')

# Grid over which we will calculate J
theta0_vals <- linspace(-10, 10, 100);
theta1_vals <- linspace(-1, 4, 100);

# initialize J_vals to a matrix of 0's
J_vals <- zeros(length(theta0_vals), length(theta1_vals));

# Fill out J_vals
for i <- 1:length(theta0_vals)
for j <- 1:length(theta1_vals)
t <- [theta0_vals(i); theta1_vals(j)];    
J_vals(i,j) <- computeCost(X, y, t);
end
end


# Because of the way meshgrids work in the surf command, we need to 
# transpose J_vals before calling surf, or else the axes will be flipped
J_vals <- t(J_vals);
# Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

# Contour plot
figure;
# Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
