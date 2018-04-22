function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

COST=(X*Theta'.*R-Y.*R);
J=1/2*sum((COST.^2)(:))+lambda/2*(sum((Theta.^2)(:))+sum((X.^2)(:)));
Theta_grad=COST'*X+lambda*Theta;
X_grad=COST*Theta+lambda*X;

grad = [X_grad(:); Theta_grad(:)];
end