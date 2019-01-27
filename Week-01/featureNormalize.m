function [X_norm, mu, standard_deviation] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% X = ( X - µ ) / range
% X = ( X - average(X) ) / ( max(X) - min(X) )
X_normalized = X_norm;
m = size(X_normalized, 1);

mu = mean(X_normalized);
mu_matrix = ones(m, 1) * mu;

standard_deviation = std(X_normalized);
standard_deviation_matrix = ones(m, 1) * standard_deviation;

X_norm = ( X_normalized - mu_matrix ) ./ standard_deviation_matrix;

% ============================================================

end
