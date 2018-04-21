function [J, grad] = lrCostFunction(theta, X, y, lambda)
m = length(y); 
hx=sigmoid(X*theta);
J=1/m*(-y'*log(hx)-(1-y)'*log(1-hx))+lambda/2/m*theta(2:end)'*theta(2:end);
grad=1/m*X'*(hx-y)+[0;lambda/m*theta(2:end)];
end