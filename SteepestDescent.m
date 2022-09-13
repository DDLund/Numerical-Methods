% Steepest descent method of solving Ax=b

function [x,r,e] = StepDesc(x,A,b,n)
for i=1:n
    v=b-A*x;
    t=v'*v/(v'*A*v);
    x=x+t*v;
end
r=A*x-b;
e=x-A^-1*b;
end