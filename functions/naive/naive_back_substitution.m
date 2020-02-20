function x= naive_back_substitution(a, b, n)
% through rows from bottom (starting at x_1)
for i = n : -1 : 1
    % upwards through b
    for j = i+1 : n
        % subtract coefficient * resolved variable
        b(i) = b(i) - a(i,j)*x(j);
    end
    % then divide by this variable's coefficient as pivot
    x(i) = b(i)/a(i,i);
end
end

