function sim = gaussianKernel(x1, x2, sigma)
x1 = x1(:); x2 = x2(:);
sim = exp(-(x1-x2)'*(x1-x2)/(2*sigma^2));
end