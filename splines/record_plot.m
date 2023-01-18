%The user clicks on n points
%in the unit square and matlab records the x,y coordinates of the clicks
%and puts them in the nx2 matrix "coordinates".
%The code was more or less taken from the matlab forums
%https://www.mathworks.com/matlabcentral/answers/12367-marking-where-one-clicked-with-ginput

function coordinates = record_plot(n)
%clear the current figure
clf
%the coordinate matrix is where we will store the coordinates of user
%clicks
coordinates = zeros(n,2);
%fix the axis of the figure so user clicks do not cause rescaling
axis([0 1 0 1]);
%place a marker everywhere the user clicks and record its coordinates
hold on
for i=1:n
    [x,y] = ginput(1);
    coordinates(i,:) = [x,y];
    plot(coordinates(:,1),coordinates(:,2),'.','MarkerSize',8)
end
hold off
end