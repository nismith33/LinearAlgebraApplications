# Two-MATLAB-Projects

The main project in this repository is a collection of files for drawing splines. A user who runs spline(n) will be provided with a blank canvas on which they may place n points. Then a spline is calculated which connects the n points in the order they were placed.

As a second bonus project: some files for reducing image quality. Since images are just matrices containing color values, we can use the singular value decomposition to approximate an image at a lower rank while still maintaining as much variance in the image as possible (this corresponds to recognizability in most types of images). This is useful since a lower rank approximation can be stored with fewer values than a high rank approximation, so such a process can be used to compress image file sizes.
