# Numerical Methods
The repository contains implementations of various numerical methods for finding roots of functions, solving linear equaitons, and finding matrix decomposiitons.

## Root Finders
Given a continuous funciton f, finds a value x such that f(x) = 0. Methods vary in conditions for convergence and convergence rate.

### bisection_method.m
Bisection method. Given continuous f: R -> R, endpoints [a,b] with sign(f(a)) != sign(f(b)), finds c, a <= c <= b, such that f(c)=0. Has linear rate of convergence. For more details see the [wikipedia](https://en.wikipedia.org/wiki/Bisection_method) article.

### newtons_method.m
Newton's Method. Given f:R^n -> R^n, initial inout x0, finds xf such that f(xf) = 0. f must be continuously differentiable. The method generally  has a quadratic rate o convergence, but may fail to converge. For more details, see the [wikipedia](https://en.wikipedia.org/wiki/Newton%27s_method) article.


## Iteritive Linear Solvers
Methods of solving for x in the equation Ax=b, and associated tasks.

### modified_richardson_method.m
An iteritive method, with iteration x_k+1 = (I-wA) x_k + wb. Guarenteed to converge or particular sets of A, values of w. For more details, see the [wikipedia](https://en.wikipedia.org/wiki/Modified_Richardson_iteration) article.

### jacobi_method.m
An iteritive method, with iteration x_k+1 = (I - Q^-1 * A) x_k + Q^-1 b, where Q is a diagonal matrix with diag(Q) = diag(A). Guarenteed to converge if A is diagonally dominant. Diagonal dominants means the magnitude of each diagonal entry is greater than the sum of the magnitudes of all non-diagonal entries in the row. For more details, see the [wikipedia](https://en.wikipedia.org/wiki/Jacobi_method) article.

### gauss_seidel_method.m
An iteritive method, with iteration x_k+1 = (I - Q^-1 * A) x_k + Q^-1 b, where Q is the lower triangular part of A. Guarenteed to converge if A is diagonally dominant or symmetric positie definite. Generally faster than the Jacobi method.


### chebyshev_acceleration.m
Solves Ax=b using Chebyshev acceleration. For more details, see the [wikipedia](https://en.wikipedia.org/wiki/Chebyshev_iteration#:~:text=In%20numerical%20linear%20algebra%2C%20the,for%20the%20other%20nonstationary%20methods) article.

### iteritive_refinement.m
Given an approximate solution to Ax=b, usually found by another method, finds x closer to true solution through an iteritive refining process.

### steepest_descent.m
Iteritive method to solve Ax=b for A real symmetric positive-definite matrix.

### ConjGrad.m
Solves Ax=b for A real symmetric positive-definite matrix. Guarenteed to converge in n iterations, where A is nxn.


### LUSolver.m

### PowerMethod.m





### gramSchmidt.m

### householder.m
