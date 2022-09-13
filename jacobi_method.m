%Jacobi Method

function [x,r] = jacobi(A,b,x,M)
Qinv=diag(diag(A))^-1;
B= eye(size(A,1))-Qinv*A;
for k=1:M
    x= B*x+Qinv*b;
end
r=A*x-b;
end

%A=[1,1/2,1/3;1/3,1,1/2;1/2,1/3,1]
%b=[11/18;11/18;11/18]
%x=[0;0;0]
%jacobi(A,b,x,80)