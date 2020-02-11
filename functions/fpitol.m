function xc=fpitol(g, x0, k, tol)
%FPI Program 1.2 Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: function handle g, starting guess x0,
%       number of iteration steps k
%Output: Approximate solution xc
x = zeros(k+1, 1);
e = zeros(k+1, 1);
x(1)=x0;
xc = 'not set';
% Perform the iteration
for i=1:k
    % Calculate value with previous value as input
    x(i+1)=g(x(i));
    e(i+1)=abs(x(i+1)-x(i));
    if (e(i+1) < tol)
        xc=x(i+1);
        x = x(1:i+1);
        e = e(1:i+1);
        break
    end
end
% Display result
disp(table(x, e))
% Return for good measure
if ~isnumeric(xc)
    disp('Did not find a good estimate.')
    xc=x(k+1);
end
