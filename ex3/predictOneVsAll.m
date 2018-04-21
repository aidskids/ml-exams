function p = predictOneVsAll(all_theta, X)
m = size(X, 1);
X = [ones(m, 1) X];
P=X*all_theta';
[P,p]=max(P,[],2);
end