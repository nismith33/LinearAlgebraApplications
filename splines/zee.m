function [z] = zee(y,h)
%ZEE Calculates z vector
    n = size(y,1)-1;
    z = zeros(n-1,1);
    for j = 1:(n-1)
        z(j) = 3*( (y(j+2) - y(j+1)) / (h(j+1)) - ((y(j+1)) - y(j))/(h(j)));
    end
end

