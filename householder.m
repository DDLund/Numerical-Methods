% Householder's QR factorization

function [Q,R] = householder(A)
[m,n]=size(A);
I=eye(m);
Q=eye(m);
B=A;
for i=1:m-1
  beta = -(B(i,i)/norm(B(i,i)))*norm(B(i:m,i));
  y=[zeros(i-1,1);B(i:m,i)]-beta*I(:,i);
  alpha = sqrt(2)/norm(y);
  v=alpha*y;
  U=I-v*conj(v)';
  Q=Q*U;
  B=U*B;
end
R=Q^-1*A;
end
