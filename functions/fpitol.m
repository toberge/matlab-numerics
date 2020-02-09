function xc=fpitol(g, x0, k, tol)
%FPI Program 1.2 Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: function handle g, starting guess x0,
%       number of iteration steps k
%Output: Approximate solution xc
x = zeros(k+1, 1);
e = zeros(k+1, 1);
x(1)=x0;
% Perform the iteration
for i=1:k
    % Calculate value with previous value as input
    x(i+1)=g(x(i));
    e(i+1)=abs(x(i+1)-x(i));
    if (e(i+1) < tol)
        break
    end
end
% Display result
disp(table(x, e))
% Return for good measure
xc=x(k+1);