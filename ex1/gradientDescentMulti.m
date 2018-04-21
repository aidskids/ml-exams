function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
m = length(y);
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
    theta_tmp=theta;
    for t = 1:length(theta)
        theta_tmp(t)=theta_tmp(t)-alpha/m*sum((X*theta-y)'*X(:,t));
    end
    theta=theta_tmp;
    J_history(iter) = computeCostMulti(X, y, theta);
end
end
