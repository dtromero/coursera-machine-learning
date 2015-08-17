% Notes for Week 2 > Octave Tutorial
%

5+6
3-2
5*8
1/2
2^6

1 == 2 %false
1 ~= 2 %true
1 && 0 %AND
1 || 0 %OR
a = 3; %semicolon supressing output
b = 'hi';
b

c = (3>=1);
c

a=pi;
a
disp(a);

disp(sprintf('2 decimals: %0.2f', a))
disp(sprintf('2 decimals: %0.6f', a))


A = [1 2; 3 4; 5 6]

Y = [1 2 3]

V = [1; 2; 3]

v = 1:0.1:2

v = 1:6

ones(2,3)

c = 2*ones(2,3)

w = ones(1,3)

w = zeros(1,3)

w = rand(1,3)

rand(3,3)

w = randn(1,3) %drawn from gaussian distribution
w = -6 + sqrt(10)*randn(1,10000)

hist(w)
















