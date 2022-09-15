% iteritive refinement of an approximate solution to the equation Ax=b
function [x,e,r] = itRef(A,x,b,n)
x=double(x);
Ai=A^-1;
for i=1:n
    i
    r=b-A*x
    e=Ai*r
    x=x+e
end
end
