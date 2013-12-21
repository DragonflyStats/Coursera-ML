### Question 1
For which of the following tasks might K-means clustering be a suitable algorithm? Select all that apply.

Given a database of information about your users, automatically group them into different market segments.	Inorrect	0.00	You can use K-means to cluster the database entries, and each cluster will correspond to a different market segment.
Given many emails, you want to determine if they are Spam or Non-Spam emails.	Correct	0.25	Classifying input as spam / non-spam requires labels for the data, which K-means does not use.
Given historical weather records, predict the amount of rainfall tomorrow (this would be a real-valued output)	Correct	0.25	K-means cannot give real-valued outputs like regression, as the data have no real-valued labels.
From the user usage patterns on a website, figure out what different groups of users exist.	Correct	0.25	We can cluster the users with K-means to find different, distinct groups.
Total		0.75 / 1.00	

### Question 2
Suppose we have three cluster centroids μ1=[12], μ2=[−30] and μ3=[42]. Furthermore, we have a training example x(i)=[−21]. After a cluster assignment step, what will c(i) be?

c(i)=3			
c(i) is not assigned	Inorrect	0.00	Each example is assigned to a cluster during every iteration of K-means in the cluster assignment step
c(i)=2			
c(i)=1			
Total		0.00 / 1.00	

### Question 3
K-means is an iterative algorithm, and two of the following steps are repeatedly carried out in its inner-loop. Which two?

Move each cluster centroid μk, by setting it to be equal to the closest training example x(i)	Correct	0.25	This is not a correct description of the cluster update step.
Feature scaling, to ensure each feature is on a comparable scale to the others.	Inorrect	0.00	Feature scaling is outside the scope of the K-means algorithm itself.
Move the cluster centroids, where the centroids μk are updated.	Inorrect	0.00	The cluster update is the second step of the K-means loop.
The cluster assignment step, where the parameters c(i) are updated.	Inorrect	0.00	This is the correst first step of the K-means loop.
Total		0.25 / 1.00	

### Question 4
Suppose you have an unlabeled dataset {x(1),…,x(m)}. You run K-means with 50 different random initializations, and obtain 50 different clusterings of the data. What is the recommended way for choosing which one of these 50 clusterings to use?

The answer is ambiguous, and there is no good way of choosing.			
Always pick the final (50th) clustering found, since by that time it is more likely to have converged to a good solution.			
For each of the clusterings, compute 1m∑mi=1||x(i)−μc(i)||2, and pick the one that minimizes this.			
The only way to do so is if we also have labels y(i) for our data.			
Total		0.00 / 1.00	

### Question 5
Which of the following statements are true? Select all that apply.

Once an example has been assigned to a particular centroid, it will never be reassigned to another different centroid	Correct	0.25	Each iteration of K-means performs a cluster assignment step in which each example may be assigned to a different centroid.
Since K-Means is an unsupervised learning algorithm, it cannot overfit the data, and thus it is always better to have as large a number of clusters as is computationally feasible.	Inorrect	0.00	Too many clusters will still overfit the data, as it will find "structure" that is purely ficticious and not truly present in the data.
A good way to initialize K-means is to select K (distinct) examples from the training set and set the cluster centroids equal to these selected examples.	Inorrect	0.00	This is the recommended method of initialization.
If we are worried about K-means getting stuck in bad local optima, one way to ameliorate (reduce) this problem is if we try using multiple random initializations.	Inorrect	0.00	Since each run of K-means is independent, multiple runs can find different optima, and some should avoid bad local optima.
Total		0.25 / 1.00	
