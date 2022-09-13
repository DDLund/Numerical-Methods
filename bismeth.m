
f = @(x) x.^-1 - 2^x;       % function to run bisection method on
a=0; b=1;                   % two endponts for bisection method
p = (a + b)/2;              % midpoint
err = abs(f(p));            % current error

% main loop, bisect until error is small
while err > 1e-7            
    if f(a)*f(p)<0
        b = p;
    else
        a = p;
    end
    p = (a + b)/2;
    err = abs(f(p));
end

disp(sprintf('root=%s',p))