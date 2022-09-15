% Modified Richardson method of solving Ax=b

A=[1,1/2,1/3;1/3,1,1/2;1/2,1/3,1];
b=[11/18;11/18;11/18];
x=[0;0;0];
w = 1;                              % chosen so that ||I-wA|| < 1
[x,r] = richardson(A,b,x,1,80);
x
r

function [x,r] = richardson(A,b,x,w,M)
for k=1:M
    r = b-A*x;
    x = x + w*r;
end
end
        
