function xc=fpi(g, x0, k)
%FPI Program 1.2 Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: function handle g, starting guess x0,
%       number of iteration steps k
%Output: Approximate solution xc
x = zeros(k+1, 1);
x(1)=x0;
% Perform the iteration
for i=1:k
    % Calculate value with previous value as input
    x(i+1)=g(x(i));
end
% Return last result
xc=x(k+1);