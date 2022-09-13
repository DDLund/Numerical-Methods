% Richardson method of solving Ax=b

function [x,r] = richardson(A,b,x,M)
for k=1:M
    r = b-A*x;
    x = x + r;
end
end
        
%A=[1,1/2,1/3;1/3,1,1/2;1/2,1/3,1]
%b=[11/18;11/18;11/18]
%x=[0;0;0]
%richardson(A,b,x,80)