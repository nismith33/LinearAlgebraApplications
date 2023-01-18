function [a,b,c,d] = coefficients(x,y)
%COEFFICIENTS outputs spline coefficients a,b,c,d. These coefficients are
%calculated by formulas detailed in section 5.5 of Applied Linear Algebra 
%by Olver and Shakiban. In particular, we use the formulas corresponding
%to natural boundary conditions. h and z are both intermediate quantities
%used to calculate the coefficients we actually care about.
    n = size(x,1)-1;
    h = zeros(n,1);
    for i = 1:n
        h(i) = x(i+1) - x(i);
    end
    z = zee(y,h);
    c = zeros(n+1,1);
    c = [0 ; cee(z,h) ;0];
    a = y(1:n);
    b = zeros(n,1);
    for i = 1:n
        b(i) = (y(i+1)-y(i))/h(i) - (2*c(i) + c(i+1))*h(i)/3;
    end
    d = zeros(n,1);
    for i = 1:n
        d(i) = (c(i+1)-c(i))/(3*h(i));
    end
    c = c(1:n, 1);
end

