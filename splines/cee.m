function [c] = cee(z,h)
%CEE Calculates c coefficient vector
    n = size(h,1);
    A = diag(h(2:n-1),-1) + 2*(diag(h(1:n-1)) + diag(h(2:n)))+diag(h(2:n-1),1);
    augA = [A z];
    sol = rref(augA);
    c = sol(:,n);
end

