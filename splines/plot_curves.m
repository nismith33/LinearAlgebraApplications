function plot_curves(y1,y2)
%PLOT_CURVES makes a spline from y1 and y2, which are vectors of the same
%size containing, respectively, the first and second coordinates of a set
%of points (in our case these will be points the user clicked in
%record_plot)
    n = size(y1, 1);
    x = (1:n)';
    %calculate the coefficients for each parameterized spline polynomial
    [a1,b1,c1,d1] = coefficients(x,y1);
    [a2,b2,c2,d2] = coefficients(x,y2);
    %the splines are parametric functions where each coordinate is a
    %cubic polynomial in t
    syms t;
    %plot each of the spline segments in the order clicked
    hold on;
    for i =1:n-1
        func1 = a1(i) + b1(i)*(t-i) + c1(i)*(t-i)^2 + d1(i)*(t-i)^3;
        func2 = a2(i) + b2(i)*(t-i) + c2(i)*(t-i)^2 + d2(i)*(t-i)^3;
        fplot(func1,func2, [i i+1],'m','LineWidth', 3);
    end
    hold off;
end