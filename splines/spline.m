function spline(n)
%collect n user clicks on a blank canvas
coord = record_plot(n);
%draws a spline connecting the points in the order they were added
plot_curves(coord(:,1),coord(:,2));
end