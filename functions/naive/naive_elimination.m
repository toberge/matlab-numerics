function [a, b]=naive_elimination(a, b, n, unsafe)
%NAIVE_ELIMINATION Performs a simple-minded Gauss elimination
% along columns
if nargin < 4 && ~exist('unsafe', 'var')
    unsafe = 0;
end

for j = 1 : n-1
    % ovious fault
    if ~unsafe && abs(a(j,j))<eps; error('zero pivot encountered'); end
    % along rows
    for i = j+1 : n
        % find multiplier that eliminates first element in row
        mult = a(i,j)/a(j,j);
        % go through all not-eliminated elements of row
        for k = j+1:n
            % kill it with fire
            a(i,k) = a(i,k) - mult*a(j,k);
        end
        % apply same operation to the constant column
        b(i) = b(i) - mult*b(j);
    end
end
end

