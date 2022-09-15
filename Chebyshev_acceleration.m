% Determins the solution to a system of linear equtions with the Chebyshev
% method

%Test inputs

% x_approx is an approximate solution to Ax = b.
% r is the difference between x_approx and the true solution to Ax=b.
% e = A * x_approx - b.

A=[4,-1,-1,0;-1,4,0,-1;-1,0,4,-1;0,-1,-1,4];
b=[-4;0;4;-4];
x0=[0;0;0;0];

[x_approx,r,e]=ChebSolver(A,b,x0,12)



function [x_approx,r,e] = ChebSolver(A,b0,x0,M)
%calculate the initial G matrix, G=I-Q^-1*A
u=x0;
Q=diag(diag(A));
Qinv = Q^-1;
G=eye(size(A,1))-Qinv*A;
c=Qinv*b0;

%more calculation to get parameters we need

%retrieve a and b from the rows of G
a=mNormInf(G); %infinity matrix norm made earlier

b=-a; %on the interval [-a,a], so b=-a
gamma=2/(2-a-b);
alpha=(0.5*(b-a)/(2-b-a))^2;

%first iteration we can only use x0, so we cant use Cheb, which requires
%the previous 2 iterations. Only use Extrap.
v=Extrap(G,gamma,c,u);

%find rho for the first time. don;t know why we didnt do it earlier...
rho=1/(1-2*alpha);

% now use Cheb, with u=x0, v=x1
u=Cheb(rho,gamma,G,c,u,v);

%use Cheb more, alternating using u and v as x(k-1) and x(k-2) recalculate
%rho every iteration.
for k=3:2:M
   rho = 1-rho*alpha;
   v=Cheb(rho,gamma,G,c,v,u);
   rho = 1-rho*alpha;
   u=Cheb(rho,gamma,G,c,u,v);
end

%assign x, check residual and error
x_approx=u;
r=u-A^-1*b0;
e=A*u-b0;
end

%what the book says
function v = Extrap(G,gamma,c,u)
v=gamma*c+(1-gamma)*u;
v=gamma*G*u+v;
end

function u = Cheb(rho,gamma,G,c,u,v)
u=rho*gamma*c+rho*(1-gamma)*v+(1-rho)*u;
u=rho*gamma*G*v+u;
end
