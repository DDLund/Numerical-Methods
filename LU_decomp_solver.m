% LU-factorization with forward and back sub.

% test input
A=[60,30,20;30,20,15;20,15,12];
b=[110;65;47];
n=3;
[x,r]=LUSolver(A,b);
x
r


function [x,r] = LUSolver(A,b)
A=single(A);
b=single(b);
n=size(A,1);
[L,U]=dolittle(n,A);
y=forwardSub(n,L,b);
x=backSub(n,U,y);
r = A*x-b;
end

function x = forwardSub(n,L,b)
x=single((1:n)');
L=single(L);
b=single(b);
x(1)=b(1)/L(1,1);
for i = 2:n
    x(i)=(b(i)-L(i,1:i-1)*x(1:i-1))/L(i,i);
end
end

function y = backSub(n,U,b)
y=single((1:n)');
U=single(U);
b=single(b);
y(n)=b(n)/U(n,n);
for i=n-1:-1:1
    y(i)=(b(i)-U(i,i+1:n)*y(i+1:n))/U(i,i);
end
end

% LU factorization with L unit lower trianguler
function [L,U] = dolittle(n,A)
k=1;
L(k,k)=single(1.0);
U(k,k)=single(A(1,1));

for j=1:n
    U(k,j)=(A(k,j))/L(k,k);
end

for i=1:n
    L(i,k)=(A(i,k))/U(k,k);
end

for k=2:n
    L(k,k)=1;
    U(k,k)=A(k,k)-L(k,1:k-1)*U(1:k-1,k);
    for j=k+1:n
        U(k,j)=(A(k,j)-L(k,1:k-1)*U(1:k-1,j))/L(k,k);
    end
    for i=k+1:n
        L(i,k)=(A(i,k)-L(i,1:k-1)*U(1:k-1,k))/U(k,k);
    end
    
end

end
