# Numerical Methods
The repository contains implementations of various numerical methods for finding roots of functions, solving linear equaitons, and finding matrix decomposiitons.

## Root Finders
Given a continuous funciton f, finds a value x such that f(x) = 0. Methods vary in conditions for convergence and convergence rate.

### bisection_method.m
Bisection method. Given continuous f: R -> R, endpoints [a,b] with sign(f(a)) != sign(f(b)), finds c, a <= c <= b, such that f(c)=0. Has linear rate of convergence. For more details see the [wikipedia](https://en.wikipedia.org/wiki/Bisection_method) article.

### newtons_method.m
Newton's Method. Given f:R^n -> R^n, initial inout x0, finds xf such that f(xf) = 0. f must be continuously differentiable. The method generally  has a quadratic rate o convergence, but may fail to converge. For more details, see the [wikipedia](https://en.wikipedia.org/wiki/Newton%27s_method) article.


## Linear Solvers
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

### conjugate_gradient.m
Solves Ax=b for A real symmetric positive-definite matrix. Guarenteed to converge in n steps, where A is nxn.

### LU_decomp_solver.m
Solves Ax=b by L-U factorization with forward and backwrds substitution. Finds L lower trianguler, U upper triangular, so that A = L * U. Then solves the equations Ly = b and Ux = y. Included is a DoLittle factorization, where L has unit diagonal. 

## Other Methods

### power_method.m
The power method is an iteritive method of finding eignevalues of a complex matrix A. It is capable of finding the eigenvalue furthest away or closet to (L2) a given point, mu, in the complex plain. It also finds the associated eigenvetor. The method assmes that there is a single eigenvalue furthers away from mu, and A has a linearly independent set of eigenvectors.

### gramSchmidt.m
Given a matrix A, mxn, of rank n, the algorithm gives matrices B, mxn, and T, nxn, such that the columns of B form an orthonormal set , and A = B * T.

### householder_QR_factorization.m
Given a mxn matrix A, finds matrices Q, mxm, and R, mxn, such that Q is unitary, R is upper triangular, and A = Q * R.


