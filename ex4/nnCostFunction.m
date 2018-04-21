function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)

s1=input_layer_size;
s2=hidden_layer_size;
s3=num_labels;
Theta1 = reshape(nn_params(1:s2*(s1+1)), s2, s1+1);
Theta2 = reshape(nn_params(1+s2*(s1+1):end), s3, s2+1);
m = size(X, 1);

% forprop & J
A1=[ones(m,1) X];
Z2=A1*Theta1';
A2=[ones(m,1) sigmoid(Z2)];
Z3=A2*Theta2';
A3=sigmoid(Z3);
HX=A3;
Y=1:num_labels==y;
J=0;
for i=1:m
  hxi=HX(i,:)';
  yi=Y(i,:)';
  J=J-yi'*log(hxi)-(1-yi)'*log(1-hxi);
end
J=J/m;
J=J+lambda/2/m*(sum((Theta1(:,2:end).^2)(:))+sum((Theta2(:,2:end).^2)(:)));

% backprop & grad
D3=A3-Y;
D2=(D3*Theta2)(:,2:end).*sigmoidGradient(Z2); % no bias unit
Theta2_grad=D3'*A2/m+lambda/m*[zeros(s3,1) Theta2(:,2:end)];
Theta1_grad=D2'*A1/m+lambda/m*[zeros(s2,1) Theta1(:,2:end)];
grad = [Theta1_grad(:) ; Theta2_grad(:)];

end