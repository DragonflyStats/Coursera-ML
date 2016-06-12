ML Course Section 1
=============================================== 
Machine Learning includes a number of advanced statistical methods for handling regression and classification tasks with multiple dependent and independent variables. 

These methods include
- Support Vector Machines (SVM) for regression and classification,
- Naive Bayes for classification,
- k-Nearest Neighbours (KNN) for regression and classification.
 


### Intro to ML
- Cost Function
- Octave : Matrices
- Gradient descent Algorithm
- Support Vector Machines (SVM)

#### Intro to ML

Supervised Learning  ( know correct answers) 
Unsupervised Learning ( dont know correct answers) 
Reinforcement
Recommender Systems


#### Cost Function



Octave : Introduction
Change prompt  : PS1('>> ' )
commenting : use the  "%" symbol

#### Octave : Saving Data

<pre><code>
save filename.mat v
load filename.mat v
</code></pre>


#### Octave : Matrices

<pre><code>
size(A) : dimensions of matrix A
size(A,1) :  number of rows
size(A,2) :  number of columns
length(V) :  length of vector V
</code></pre>

C = B' * A; Tranpose of B multiplied by A

.* computes the element-wise product, not the matrix product
.^ operator perfoms element-wise exponentiation.
<pre><code>
B = A(:, 1:2);  selects every row and the first two columns of A.
B = A(1:4, 1:2); selects the first four rows and first two columns of A
</code></pre>


#### Single Value Decomposition

