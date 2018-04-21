function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
m = length(y); 
HX=X*theta;
J=1/2/m*((HX-y)'*(HX-y))+lambda/2/m*(theta(2:end)'*theta(2:end));
grad=1/m*X'*(HX-y)+lambda/m*[0;theta(2:end)];
end