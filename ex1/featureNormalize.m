function [X_norm, mu, sigma] = featureNormalize(X)
mu=mean(X,1);
sigma=std(X,1);
X_norm = (X-mu)./sigma; 
end
