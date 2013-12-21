### Question 1
For which of the following problems would anomaly detection be a suitable algorithm?

Given an image of a face, determine whether or not it is the face of a particular famous individual.	Correct	0.25	This problem is more suited to traditional supervised learning, as you want both famous and non-famous images in the training set.
Given a dataset of credit card transactions, identify unusual transactions to flag them as possibly fraudulent.	Correct	0.25	By modeling "normal" credit card transactions, you can then use anomaly detection to flag the unusuals ones which might be fraudulent.
From a large set of hospital patient records, predict which patients have a particular disease (say, the flu).	Correct	0.25	Anomaly detection would not be appropirate, as you want to train on both types of patient records rather than modeling one as "normal."
In a computer chip fabrication plant, identify microchips that might be defective.	Inorrect	0.00	The defective chips are the anomalies you are looking for by modeling the properties of non-defective chips.
Total		0.75 / 1.00	

### Question 2
You have a 1-D dataset {x(1),…,x(m)} and you want to detect outliers in the dataset. You first plot the dataset and it looks like this: 
1D dataset centered around x = -3 with values extending roughly to -6.5 and up to 0.5 (with some outliers)

Suppose you fit the gaussian distribution parameters μ1 and σ21 to this dataset. Which of the following values for μ1 and σ21 might you get?

μ1=−6,σ21=2	Inorrect	0.00	Both of these values are incorrect.
μ1=−3,σ21=4			
μ1=−3,σ21=2			
μ1=−6,σ21=4			
Total		0.00 / 1.00	

### Question 3
Suppose you have trained an anomaly detection system for fraud detection, and your system that flags anomalies when p(x) is less than ε, and you find on the cross-validation set that it mis-flagging far too many good transactions as fradulent. What should you do?

Increase ε			
Decrease ε	Correct	1.00	By decreasing ε, you will flag fewer anomalies, as desired.
Total		1.00 / 1.00	

### Question 4
Suppose you are developing an anomaly detection system to catch manufacturing defects in airplane engines. You model uses p(x)=∏nj=1p(xj;μj,σ2j). You have two features x1 = vibration intensity, and x2 = heat generated. Both x1 and x2 take on values between 0 and 1 (and are strictly greater than 0), and for most "normal" engines you expect that x1≈x2. One of the suspected anomalies is that a flawed engine may vibrate very intensely even without generating much heat (large x1, small x2), even though the particular values of x1 and x2 may not fall outside their typical ranges of values. What additional feature x3 should you create to capture these types of anomalies:
Your Answer		Score	Explanation
x3=(x1+x2)^2			
x3=x1+x2	Inorrect	0.00	This could take on large or small values for both normal and anomalous examples, so it is not a good feature.
x3=x21×x2			
x3=x1x2			
Total		0.00 / 1.00	

### Question 5
Which of the following are true? Check all that apply.

If you are developing an anomaly detection system, there is no way to make use of labeled data to improve your system.	Inorrect	0.00	Labeled data are usefull in cross-validation and testing for evaluating the system and setting the parameter ϵ.
When choosing features for an anomaly detection system, it is a good idea to look for features that take on unusually large or small values for (mainly the) anomalous examples.	Inorrect	0.00	These are good features, as they will lie outside the learned model, so you will have small values for p(x) with these examples.
When developing an anomaly detection system, it is often useful to select an appropriate numerical performance metric to evaluate the effectiveness of the learning algorithm.	Inorrect	0.00	You should have a good evaluation metric, so you can evaluate changes to the model such as new features.
In a typical anomaly detection setting, we have a large number of anomalous examples, and a relatively small number of normal/non-anomalous examples.	Correct	0.25	It is the reverse: we have many normal examples and few anomalous examples.
Total		0.25 / 1.00
