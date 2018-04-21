function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y);
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
    theta_tmp=theta;
    theta_tmp(1)=theta_tmp(1)-alpha/m*(X*theta-y)'*X(:,1);
    theta_tmp(2)=theta_tmp(2)-alpha/m*(X*theta-y)'*X(:,2);
    theta=theta_tmp;
    J_history(iter) = computeCost(X, y, theta);
end
end