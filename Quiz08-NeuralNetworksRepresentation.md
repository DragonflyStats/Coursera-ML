### Question 1
Consider the following neural network which takes two binary-valued inputs x1,x2∈{0,1} and outputs hΘ(x). Which of the following logical functions does it (approximately) compute? 
Two layer neural network with 3 input units and 1 hidden unit. The parameters from the input units to the hidden unit are +30 for the bias term, -20 for x_1 and -20 for x_2.
Your Answer		Score	Explanation
 AND			
 NAND (meaning "NOT AND")	Correct	1.00	 This network outputs approximately 1 as long as one of the two inputs is 0.
 XOR (exclusive OR)			
 OR			
Total		1.00 / 1.00	
<hr>
### Question 2
Consider the neural network given below. Which of the following equations correctly computes the activation a(3)1? Note: g(z) is the sigmoid activation function. 
Four layer neural network with three input units, with full connections, two hidden units and a +1 units in the second and third layers, and one output unit.

Your Answer		Score	Explanation
 a(3)1=g(Θ(2)1,0a(2)0+Θ(2)1,1a(2)1+Θ(2)1,2a(2)2)			
 a(3)1=g(Θ(1)1,0a(1)0+Θ(1)1,1a(1)1+Θ(1)1,2a(1)2)			
 a(3)1=g(Θ(1)1,0a(2)0+Θ(1)1,1a(2)1+Θ(1)1,2a(2)2)			
 a(3)1=g(Θ(2)2,0a(2)0+Θ(2)2,1a(2)1+Θ(2)2,2a(2)2)	Inorrect	0.00	 The expression on the right computes a(3)2 instead of a(3)1.
Total		0.00 / 1.00	
<hr>
### Question 3
You have the following neural network: 
Three layer neural network with 3 units for layers 1 and 2, and 1 output unit in layer 3.

You'd like to compute the activations of the hidden layer a(2)∈R3. One way to do so is the following Octave code:
% Theta1 is Theta with superscript "(1)" from lecture
% ie, the matrix of parameters for the mapping from layer 1 (input) to layer 2
% Theta1 has size 3x3
% Assume 'sigmoid' is a built-in function to compute 1 / (1 + exp(-z))

a2 = zeros (3, 1);
for i = 1:3
  for j = 1:3
    a2(i) = a2(i) + x(j) * Theta1(i, j);
  end
  a2(i) = sigmoid (a2(i));
end
You want to have a vectorized implementation of this (i.e., one that does not use for loops). Which of the following implementations correctly compute a(2)? Check all that apply.
Your Answer		Score	Explanation

z = sigmoid(x); a2 = Theta1 * z;
Correct	0.25	 You should apply the sigmoid function after multiplying with Θ(1), not before.

a2 = sigmoid (Theta2 * x);
Inorrect	0.00	 Θ(2) specifies the parameters from the second to third layers, not first to second.

z = Theta1 * x; a2 = sigmoid (z);
Inorrect	0.00	 This version computes a(2)=g(Θ(1)x) correctly in two steps, first the multiplication and then the sigmoid activation.

z = sigmoid(x); a2 = sigmoid (Theta1 * z);
Correct	0.25	 You do not need to apply the sigmoid function to the inputs.
Total		0.50 / 1.00	
Question 4
You are using the neural network pictured below and have learned the parameters Θ(1)=[112.10.61.3−1.2] (used to compute a(2)) and Θ(2)=[14.53.1] (used to compute a(3)} as a function of a(2)). Suppose you swap the parameters for the first hidden layer between its two units so Θ(1)=[110.62.1−1.21.3] and also swap the output layer so Θ(2)=[13.14.5]. How will this change the value of the output hΘ(x)? 
Image for question 4
Your Answer		Score	Explanation
 It will stay the same.			
 Insufficient information to tell: it may increase or decrease.	Inorrect	0.00	 Swapping Θ(1) swaps the hidden layers output a(2). But the swap of Θ(2) cancels out the change, so we can be certain the output will remain unchanged.
 It will increase.			
 It will decrease			
Total		0.00 / 1.00	
<hr>
### Question 5
Which of the following statements are true? Check all that apply.
Your Answer		Score	Explanation
 If a neural network is overfitting the data, one solution would be to increase the regularization parameter λ.	Inorrect	0.00	 A larger value of λ will shrink the magnitude of the parameters Θ, thereby reducing the chance of overfitting the data.
 Suppose you have a multi-class classification problem with three classes, trained with a 3 layer network. Let a(3)1=(hΘ(x))1 be the activation of the first output unit, and similarly a(3)2=(hΘ(x))2 and a(3)3=(hΘ(x))3. Then for any input x, it must be the case that a(3)1+a(3)2+a(3)3=1.	Inorrect	0.00	 The outputs of a neural network are not probabilities, so their sum need not be 1.
 The activation values of the hidden units in a neural network, with the sigmoid activation function applied at every layer, are always in the range (0, 1).	Inorrect	0.00	 The activation function g(z)=11+exp(−z) has a range of (0, 1).
 If a neural network is overfitting the data, one solution would be to decrease the regularization parameter λ.	Correct	0.25	 A smaller value of λ allows the model to more closely fit the training data, thereby increasing the chances of overfitting.
Total		0.25 / 1.00	
