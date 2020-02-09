function [primes] = erasthothenes(limit)
%ERASTHOTHENES Finds primes using Sieve of Erasthothenes
%   blah blah blah
primes = zeros(floor(limit / 5), 1);
next = 1;
isPrime = true(limit);
for i=2:floor(sqrt(limit))
    if isPrime(i)
        marker = i*i;
        while marker <= limit
            isPrime(marker) = 0;
            marker = marker + i;
        end
    end        
end
for i=2:limit
    if isPrime(i)
        primes(next) = i;
        next = next + 1;
    end
end
end

