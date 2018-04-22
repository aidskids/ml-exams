function [C, sigma] = dataset3Params(X, y, Xval, yval)
svmTrain2=@(C,sigma) svmTrain(X, y, C, @(x1,x2) gaussianKernel(x1,x2,sigma));
vec = [0.01 0.03 0.1 0.3 1 3 10 30];
errors=zeros(8);
for i=1:8;
  for j=1:8;
    model=svmTrain2(vec(i),vec(j));
    hx=svmPredict(model, Xval);
    errors(i,j)=mean(hx~=yval);
  end;
end;
[rows,cols] = find(errors==min(errors(:)));
C=vec(rows(1));
sigma=vec(cols(1));
end