function J = computeCostMulti(X, y, theta)
m = length(y);
J=sum((X*theta-y).^2)/2/m;
end
