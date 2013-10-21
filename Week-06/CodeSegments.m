theta=[1;1];        % 2  by 1
load ('ex5data1.mat');
X=[ones(m,1) X];    % 12 by 2
XTh =X *theta;
lambda=1;
Res =XTh -y;
SumResSq = sum(Res.^2);
J1 = SumResSq/(2*m);

J2 = (theta(2:end).^2 * lambda)/(2*m);

J = J1+J2;

G1 = (X'*Res)/m;
G2 = (theta*lambda)/m;
G2(1) = 0;
grad=[G1+G2];
