function p = predict(Theta1, Theta2, X)
m = size(X, 1);
A1=X;
A2=sigmoid([ones(m,1) A1]*Theta1');
A3=sigmoid([ones(m,1) A2]*Theta2');
[~,p]=max(A3,[],2);
end