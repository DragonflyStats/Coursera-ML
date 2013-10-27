function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

            
% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the 
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the 
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the 
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the 
%                     partial derivatives w.r.t. to each element of Theta
%

J = (1/2).*sum(sum(((X*Theta').*R-Y.*R).^2))+(lambda./2.*sum(sum(Theta.^2)))+(lambda./2.*sum(sum(X.^2)));        
% Only predict rating X*Theta' if user has rated (i.e. R=1)

X_grad = (((X*Theta').*R*Theta-Y.*R*Theta)+lambda.*X);
Theta_grad = ((X'*((X*Theta').*R)-X'*(Y.*R)))'+lambda.*Theta;

% Alternative according to exercise handout
%[r,c]=size(R);
%for i=1:r
%        idx = find(R(i,:)==1);
%        Theta_temp = Theta(idx,:);
%        Y_temp = Y(i,idx);
%        X_grad(i,:) = (X(i,:)*Theta_temp'-Y_temp)*Theta_temp;
%end

% For Theta_grad, similar approach to X_grad



% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end
