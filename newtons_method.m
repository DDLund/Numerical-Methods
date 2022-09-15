% Newton's method of finding roots
x0 = [1;1;1];                   % initial vector
xf = newton([1;1;1],10)         % newton output
fx0 = vpa(subs(f,[x;y;z],xf))   % check to see if we foudn root




function r = newton(xi,n)
syms x y z;

%Example of funciton. f:R^3 -> R^3
f=[x*y-z^2-1;x*y*z-x^2+y^2-2;exp(x)-exp(y)+z-3];

df=jacobian(f,[x,y,z]);

for i = 1:n
    fi=vpa(subs(f,[x;y;z], xi));
    J=vpa(subs(df,[x;y;z], xi));
    xi= xi-J^(-1) * fi;
end
r=xi;
end