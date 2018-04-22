function [mu sigma2] = estimateGaussian(X)
mu=mean(X,1);
sigma2=var(X,1,1);
end