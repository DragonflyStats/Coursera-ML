% Tidy version of the provided code for regularized linear regression

% Initialize model parameters (theta)
% Note: In Octave/MATLAB, this is a 2x1 column vector
theta = [1; 1];
% For this code to work, you need to have a value for 'm' and 'y', which
% would be loaded from the data file.
load('ex5data1.mat');

% Add a bias (intercept) term to the feature matrix X
% The 'ones' function creates a column of 1s, resulting in a 12x2 matrix
X = [ones(m, 1) X];

% --- Cost Function Calculation ---

% Calculate predictions based on the current theta
predictions = X * theta;

% Calculate the residuals (difference between predictions and actual values)
residuals = predictions - y;

% Calculate the unregularized cost component
% 'sum(residuals.^2)' calculates the sum of squared errors
cost_unreg = sum(residuals.^2) / (2 * m);

% Define the regularization parameter
lambda = 1;

% Calculate the regularization cost component
% Note: The regularization term does not include the bias parameter theta(1)
cost_reg = (lambda / (2 * m)) * sum(theta(2:end) .^ 2);

% Combine to get the total regularized cost
J = cost_unreg + cost_reg;


% --- Gradient Calculation ---

% Calculate the unregularized gradient component
gradient_unreg = (X' * residuals) / m;

% Calculate the regularization gradient component
% Note: The regularization term for the gradient does not apply to theta(1)
gradient_reg = (lambda / m) * theta;
gradient_reg(1) = 0; % Set the first element to 0

% Combine to get the total regularized gradient
grad = gradient_unreg + gradient_reg;
