Logistic Regression
======================================

Regularization
Due Sunday, November 17 at 23:59 PM PDT
Review Questions (for the week's topics)
Programming Exercise 2 
(Logistic regression)


------------------------------------------------------------------------
#### Question 1

Suppose that you have trained a logistic regression classifier, and it outputs on a new examplex a prediction hθ(x) = 0.7.
This means (check all that apply): 

- Our estimate forP(y=1|x;θ) is 0.7.
- Our estimate forP(y=0|x;θ) is 0.3.
- Our estimate forP(y=1|x;θ) is 0.3.
- Our estimate forP(y=0|x;θ) is 0.7.
 
#### Solution
 
Our estimate for P(y=1|x;θ) is 0.7.  T  hθ(x)is preciselyP(y=1|x;θ) , so each is 0.7.
Our estimate for P(y=0|x;θ) is 0.3.  T  Since we must have P(y=0|x;θ) = 1−P(y=1|x;θ) , the former is 1−0.7=0.3 .
Our estimate for P(y=1|x;θ) is 0.3.  F  hθ(x) gives P(y=1|x;θ) , not 1−P(y=1|x;θ) . 
Our estimate for P(y=0|x;θ) is 0.7.  F  hθ(x) is P(y=1|x;θ) , not P(y=0|x;θ) 

--------------------------------------------------
#### Question 3
 
Suppose you have the following training set, and fit a logistic regression classifier hθ(x)=g(θ0+θ1x1+θ2x2) .
  
Which of the following are true? Check all that apply. 
 
- Adding polynomial features (e.g., instead using h(x)=g(0+1x1+2x2+3x12+4x1x2+5x22) ) could increase how well we can fit the training data.  
- The positive and negative examples cannot be separated using a straight line. So, gradient descent will fail to converge.
- At the optimal value ofθ (e.g., found by fminunc), we will haveJ(θ)≥0 . 
- Because the positive and negative examples cannot be separated using a straight line, linear regression will perform as well as logistic regression on this data.
 
***solution***
 
1) Adding polynomial features (e.g., instead using h(x)=g(0+1x1+2x2+3x12+4x1x2+5x22) ) could increase how well we can fit the training data.  
TRUE
Adding new features can only improve the fit on the training set: since settingθ3=θ4=θ5=0 makes the hypothesis the same as the original one, gradient descent will use those features (by making the correspondingθj non-zero) only if doing so improves the training set fit. 
 
2) The positive and negative examples cannot be separated using a straight line. So, gradient descent will fail to converge. 
FALSE
While it is true they cannot be separated, gradient descent will still converge to the optimal fit. Some examples will remain misclassified at the optimum. 
 
3) At the optimal value ofθ (e.g., found by fminunc), we will haveJ(θ)≥0 . 
TRUE
The cost functionJ(θ) is always non-negative for logistic regression. 
 
4) Because the positive and negative examples cannot be separated using a straight line, linear regression will perform as well as logistic regression on this data. 
FALSE
While it is true they cannot be separated, logistic regression will outperform linear regression since its cost function focuses on classification, not prediction. 
 
------------------------------------------------------------------
#### Question 5
Which of the following statements are true? Check all that apply.
- For logistic regression, sometimes gradient descent will converge to a local minimum (and fail to find the global minimum). - This is the reason we prefer more advanced optimization algorithms such as fminunc (conjugate gradient/BFGS/L-BFGS/etc).
- Since we train one classifier when there are two classes, we train two classifiers when there are three classes (and we do one-vs-all classification).
- The sigmoid function g(z) is never greater than one (>1). g(z)=11+e-z
- The one-vs-all technique allows you to use logistic regression for problems in which eachy(i) comes from a fixed, discrete set of values.

***Solutions***
1) For logistic regression, sometimes gradient descent will converge to a local minimum (and fail to find the global minimum). This is the reason we prefer more advanced optimization algorithms such as fminunc (conjugate gradient/BFGS/L-BFGS/etc).  0.00
The cost function for logistic regression is convex, so gradient descent will always converge to the global minimum. We still might use a more advanded optimization algorithm since they can be faster and don't require you to select a learning rate. 

2) Since we train one classifier when there are two classes, we train two classifiers when there are three classes (and we do one-vs-all classification).  

We need to train three classifiers if there are three classes; each one treats one of the three classes as the y=1 examples and the rest as the y=0 examples. 

3) The sigmoid function g(z) is never greater than one (>1). g(z)=11+e-z  
 
The denomiator ranges from  to1 asz grows, so the result is always in(0,1) . 

4) The one-vs-all technique allows you to use logistic regression for problems in which each y(i) comes from a fixed, discrete set of values. 

If each y(i) is one of k different values, we can give a label to each y(i)∈{1,2,…,k} and use one-vs-all as described in the lecture. 

