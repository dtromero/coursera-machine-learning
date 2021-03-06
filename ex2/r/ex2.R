## Machine Learning Online Class - Exercise 2: Logistic Regression
#
#  Instructions
#  ------------
# 
#  This file contains code that helps you get started on the logistic
#  regression exercise. You will need to complete the following functions 
#  in this exericse:
#
#     sigmoid.m
#     costFunction.m
#     predict.m
#     costFunctionReg.m
#
#  For this exercise, you will not need to change any code in this file,
#  or any other files other than those mentioned above.
#

## Initialization
rm(list=ls())
closeAllConnections()


source('plotData.R')
## Load Data
#  The first two columns contains the exam scores and the third column
#  contains the label.
data <- read.csv('ex2data1.txt');

X = data[,1:2]; 
y = data[,3];

## ==================== Part 1: Plotting ====================
#  We start the exercise by first plotting the data to understand the 
#  the problem we are working with.

cat('Plotting data with + indicating (y = 1) examples and o 
    indicating (y = 0) examples.\n');

plotData(X, y);

# Put some labels 
hold on;
