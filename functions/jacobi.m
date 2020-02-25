function x = jacobi(a,b,k)
% Program 2.2 Jacobi Method
% Inputs: full or sparse matrix a, r.h.s. b,
% number of Jacobi iterations, k
% Output: solution x

n=length(b); % find n
d=diag(a); % extract diagonal of a
r=a-diag(d); % r is the remainder
x=zeros(n,1); % initialize vector x
for j=1:k % loop for Jacobi iteration
    x = (b-r*x)./d; % scalar division by this x's coefficient
end % End of Jacobi iteration loop
end

