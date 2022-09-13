% Newton's method of finding roots

function r = newton(x0,n)
syms x y z;
f=[x*y-z^2-1;x*y*z-x^2+y^2-2;exp(x)-exp(y)+z-3];
df=jacobian(f,[x,y,z]);
xi=x0';
for i = 1:n
    fi=vpa(subs(f,[x;y;z],xi));
    J=vpa(subs(df,[x;y;z],xi));
    xi=xi-J^(-1) * fi;
end
r=vpa([xi' ;subs(f,[x;y;z],xi)'],6);
end