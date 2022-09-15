# Numerical Methods
The repository contains implementations of various numerical methods for finding roots of functions, solving linear equaitons, and finding matrix decomposiitons.

## Root Finders
Given a continuous funciton f, finds a value x such that f(x) = 0. Methods vary in conditions for convergence and convergence rate.

### bismeth.m
Bisection method. Given continuous f: R -> R, endpoints [a,b] with sign(f(a)) != sign(f(b)), finds c, a <= c <= b, such that f(c)=0. Has linear rate of convergence. For more details see the [wikipedia](https://en.wikipedia.org/wiki/Bisection_method) article

### newtons_method.m
Newton's Method. Given f:R^n -> R^n, initial inout x0, finds xf such that f(xf) = 0. f must be continuously differentiable. The method is generally quadratic, but may fail to converge. For mor etails, see the [wikipedia](https://en.wikipedia.org/wiki/Newton%27s_method) article.


### ChebSolver.m

### ConjGrad.m

### GaussSeidel.m

### LUSolver.m

### PowerMethod.m

### SteepestDescent.m



### gramSchmidt.m

### householder.m

### iterRefinement.m

### jacobi_method.m

### newton.m

### richardson.m
