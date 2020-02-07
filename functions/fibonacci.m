function [y] = fibonacci(limit)
%FIBONACCI Calculates fibonacci numbers
%   Lorem ipsum dolor sit amet
%   very perfect
y=zeros(limit, 1);
y(1) = 1;
y(2) = 1;
for i=3:limit
    y(i) = y(i-1) + y(i-2);
end
end
