% Power method to find dominant eigenvalue and a corresponding eigenvector

function [lambda,x] = PowerMethod(A,x,mu,inv,n)
A=A-mu*eye(size(A,1));
if inv==1
    A=A^-1;
end
for k=1:n
    y=A*x;
    lambda=y(3)/x(3);
    x=y/norm(y);
end
if inv == 1
    lambda = 1/lambda+mu;
else
    lambda = lambda+mu;
end
end

%{
A=[6,5,-5;2,6,-2;2,5,-1]
x0=[-1;1;1]

x=PowerMethod(A,x0,28)

%}

%{
A=[6,5,-5;2,6,-2;2,5,-1]
x0=[-1;1;1]

[lambda]=PowerMethod(A,x0,0,0,1000)

[lambda]=PowerMethod(A,x0,0,1,1000)

[lambda]=PowerMethod(A,x0,4+1i,0,1000)

[lambda]=PowerMethod(A,x0,4+1i,1,1000)
%}