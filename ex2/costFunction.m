function [J, grad] = costFunction(theta, X, y)
m = length(y);
hx=sigmoid(X*theta);
J = 1/m*(-y'*log(hx)-(1-y)'*log(1-hx));
grad = zeros(size(theta));
for i = 1:length(grad)
    grad(i)=1/m*(hx-y)'*X(:,i);
end
end