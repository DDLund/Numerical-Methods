% Power method to find dominant eigenvalue and a corresponding eigenvector

% test inputs
A=[6,5,-5;2,6,-2;2,5,-1];
x0=[-1;1;1];

[l,v]=PowerMethod(A,x0,0,0,28)


A=[6,5,-5;2,6,-2;2,5,-1];
x0=[-1;1;1];

[lambda]=PowerMethod(A,x0,0,0,1000)

[lambda]=PowerMethod(A,x0,0,1,1000)

[lambda]=PowerMethod(A,x0,4+1i,0,1000)

[lambda]=PowerMethod(A,x0,4+1i,1,1000)

% x is the starting vector
% n is the number of iterations

% if inv != 1, "lambda" is the eigenvalue furthest away (L2) from mu, and
% "v" is the associated eigenvector

% if inv == 1, "lambda" is the eigenvalue closest (L2) to mu, and
% "v" is the associated eigenvector


function [lambda,x] = PowerMethod(A,x,mu,inv,n)
A=A-mu*eye(size(A,1));
if inv==1
    A=A^-1;
end
for k=1:n
    y=A*x;
    lambda=y(1)/x(1);
    x=y/norm(y);
end
if inv == 1
    lambda = 1/lambda+mu;
else
    lambda = lambda+mu;
end
end
