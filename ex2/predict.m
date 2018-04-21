function p = predict(theta, X)
p=sigmoid(X*theta);
p(find(p>=0.5))=1;
p(find(p<0.5))=0;
end
