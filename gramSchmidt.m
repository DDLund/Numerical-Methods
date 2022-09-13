% Given a matrix A, mxn, the algorithm gives matrices B,mxn, and T, nxn, 
% such that the columns of B form an orthonormal set, and A=BT

function [B,T] = gramSchmidt(A)
dim = size(A);
B=zeros(dim);
C=zeros(dim);
T=zeros(dim(2));
C(:,1)=A(:,1);
T(1,1)=norm(C(:,1));
B(:,1)=T(1,1)^-1*C(:,1);
for j=2:dim(2)
    C(:,j)=A(:,j);
    for i=1:j-1
        T(i,j)=dot(A(:,j),B(:,i));
        C(:,j)=C(:,j)-T(i,j)*B(:,i);
    end
    T(j,j)=norm(C(:,j));
    B(:,j)=T(j,j)^-1*C(:,j);
end
end