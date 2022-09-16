% Gram Schmidt Algorithm

% Given a matrix A, mxn, the algorithm gives matrices B,mxn, and T, nxn, 
% such that the columns of B form an orthonormal set, and A=BT

A = [1,1;2,3;5,7];
[B, T] = gramSchmidt(A);
B
T
A - B * T

function [B,T] = gramSchmidt(A)
dim = size(A);
B=zeros(dim);
C=zeros(dim);
T=zeros(dim(2));
%{
C(:,1)=A(:,1);
T(1,1)=norm(C(:,1));
B(:,1)=T(1,1)^-1*C(:,1);
%}
for j=1:dim(2)
    C(:,j)=A(:,j);
    for i=1:j-1
        T(i,j)=dot(A(:,j),B(:,i));
        if i<j
            C(:,j)=C(:,j)-T(i,j)*B(:,i);
        end
    end
    T(j,j)=norm(C(:,j));
    B(:,j)=T(j,j)^-1*C(:,j);
end
end
