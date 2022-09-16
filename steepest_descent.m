% Steepest descent method of solving Ax=b

A=[4,-1,-1,0;-1,4,0,-1;-1,0,4,-1;0,-1,-1,4];
b=[-4;0;4;-4];
x0=[0;0;0;0];
[x,r,e] = stepDesc(A,b,x0,10);
x
r
e

%test input for an ill-conditioned matrix
A=hilb(5);
b=(1/3)*sum(A,2);
x0=[0;0;0;0;0];
[x,r,e] = stepDesc(A,b,x0,10);
x
r
e


function [x,r,e] = stepDesc(A,b,x,n)
for i=1:n
    v=b-A*x;
    t=v'*v/(v'*A*v);
    x=x+t*v;
end
r=A*x-b;
e=x-A^-1*b;
end
