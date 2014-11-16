function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad
% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
XTh =X *theta;
Res =XTh -y;
SumResSq = sum(Res.^2);
J1 = SumResSq/(2*m);
J2 = (theta(2:end).^2 * lambda)/(2*m);
J = J1+J2;
G1 = (X'*Res)/m;
G2 = (theta*lambda)/m;
G2(1) = 0;
grad=[G1+G2];
% =========================================================================
grad = grad(:);
end
