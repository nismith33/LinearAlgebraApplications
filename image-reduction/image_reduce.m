function A = image_reduce(filename,rpercent,gpercent,bpercent)
%IMAGE_REDUCE takes an image specified by filename, and returns a copy of X
%whose red, green, and blue color channels have been reduced to a lower
%rank approximation containing rpercent, gpercent, and bpercent of their
%original variances, respectively.

%convert image to matrix
X = imread(filename);
%convert the matrix values to doubles
X = im2double(X);
%split into the red, green, and blue color channels to be processed
%separately
[R,G,B] = imsplit(X);
%generate a new image A, whose color channels are each low rank
%approximations of the related channel in X.
A = zeros(size(X));
A(:,:,1) = reduce(R,rpercent);
A(:,:,2) = reduce(G,gpercent);
A(:,:,3) = reduce(B,bpercent);
end
