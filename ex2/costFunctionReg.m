function [J, grad] = costFunctionReg(theta, X, y, lambda)
m = length(y);
hx=sigmoid(X*theta);
J=1/m*(-y'*log(hx)-(1-y)'*log(1-hx))+lambda/2/m*theta(2:end)'*theta(2:end);
grad = zeros(size(theta));
grad(1)=1/m*(hx-y)'*X(:,1);
for i = 2:length(grad)
    grad(i)=1/m*(hx-y)'*X(:,i) + lambda/m*theta(i);
end
end
