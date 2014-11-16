%You can compute this error using mean(double(predictions~= yval)), 
%where "predictions" is a vector containing all the predictions from the SVM.

%yval are the true labels from the cross validation set.

%You can use the svmPredict function to generate the predictions for thecross validation set.

%model = svmTrain(X, y, C, @linearKernel, 1e-3, sigma); 
%predictions(i)= svmPredict(model, Xval);
x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;

SSq = sum((x1-x2).^2);

Temp1  = SSq / (2 * sigma^2);
sim=exp(-Temp1);
