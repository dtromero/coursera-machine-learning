
# Week 1 > Linear Algebra Review > Inverse and Transpose > 4:40
# Code to calculate the inverse of a matrix
# First generate a 2x2 matrix
A = [ 3 4; 2 16]

# Then generate the inverse of that matrix using pinv() function
InverseOfA = pinv(A)

# Multipy A times the inverse of A to get the identity matrix
# with some roundoff error
A * InverseOfA

InverseOfA * A
