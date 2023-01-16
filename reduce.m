function A = reduce(X, percent)
    [U,S,V] = svd(X);
    len = min(size(S));
    totalvar = 0;
    for i  = 1: len
        totalvar = totalvar + S(i,i);
    end
    stop = 1;
    var = S(1,1);
    while var/totalvar <percent
        stop = stop +1;
        var = var + S(stop,stop);
    end
    U = U(:,1:stop);
    S = S(1:stop,1:stop);
    V = V(:,1:stop);
    A = U*S*V';
end