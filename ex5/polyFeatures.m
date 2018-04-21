function [X_poly] = polyFeatures(X, p)
X_poly = zeros(numel(X), p);
for i=1:size(X_poly,1)
  for j=1:size(X_poly,2)
    X_poly(i,j) = X(i)^j;
  end
end
end
