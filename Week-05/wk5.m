PS1(">>");
cd 'C:\Documents and Settings\kevin.obrien\My Documents\Octave\week 5';
load('ex4data1.mat');
load('ex4weights.mat');
m = size(X, 1);
input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;          % 10 labels, from 1 to 10   
