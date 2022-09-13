%Conjugate Gradient Method
function [x,r,e] = ConjGrad(x,A,b,n,delt,eps)
r=b-A*x;
v=r;
c=r'*r;
for i=1:n
  %{  
if sqrt(v'*v) < delt
        break
 end
    %}
    z=A*v;
    t=c/(v'*z);
    x=x+t*v;
    r=r-t*z;
    d=r'*r;
%{   
 if d^2<eps
        break
end
    %}
    v=r+(d/c)*v;
    c=d;
end
r=A*x-b;
e=x-A^-1*b;
end


%test code for conjGrad

%{
A=[10,1,2,3,4;1,9,-1,2,-3;2,-1,7,3,-5;3,2,3,12,-1;4,-3,-5,-1,15]
b=[12;-27;14;-17;12]
x0=[0;0;0;0;0]

[x,r,e]=ConjGrad(x0,A,b,5,.001,.001)

[x,r,e]=StepDesc(x0,A,b,20)
%}

%{
A=hilb(5)
b=(1/3)*sum(A,2)
x0=[0;0;0;0;0]


[x,r,e]=ConjGrad(x0,A,b,4,.00000001,.00000001)

[x,r,e]=StepDesc(x0,A,b,20)
%}