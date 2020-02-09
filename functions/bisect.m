function xc=bisect(f,a,b,tol)
%BISECT Estimate solution using bisection
%Program 1.1 Bisection Method
%Computes approximate solution of f(x)=0
%Input: function handle f; a,b such that f(a)*f(b)<0,
%       and tolerance tol
%Output: Approximate solution xc
if sign(f(a))*sign(f(b)) >= 0
    error("f(a)f(b)<0 not satisfied!") %ceases execution
end
fa=f(a);
fb=f(b);
% until we tip within tolerance
while (b-a)/2>tol
    c=(a+b)/2;
    fc=f(c);
    if fc == 0 %c is a solution, done
    break
    end
    % if fc and fa have opposite sign:
    if sign(fc)*sign(fa)<0
        %a and c make the new interval
        b=c;
        fb=fc;
    else
        %c and b make the new interval
        a=c;
        fa=fc;
    end
end
xc=(a+b)/2;
%new midpoint is best estimate
end

