### **Machine Learning Fundamentals: A Quiz Review**

This document provides a review of key machine learning concepts, including the definition of learning, types of problems (classification vs. regression), and the difference between supervised and unsupervised learning.

---

#### **Question 1: The Definition of Learning**

A computer program is said to learn from experience **E** with respect to some task **T** and some performance measure **P** if its performance on **T**, as measured by **P**, improves with experience **E**.

Suppose we feed a learning algorithm a lot of historical weather data and have it learn to predict weather. In this setting, what is **E**?

* **The process of the algorithm examining a large amount of historical weather data.**
    * *Explanation: The algorithm's experience comes from analyzing the historical data, which allows it to improve its performance on the task of weather prediction.*

#### **Question 2: Classification vs. Regression**

Suppose you are working on weather prediction and you would like to predict whether or not it will be raining at 5pm tomorrow. Would you treat this as a classification or a regression problem?

* **Classification**
    * *Explanation: This is a classification problem because you are trying to predict one of a small number of discrete-valued outputs (e.g., raining or not raining).*

#### **Question 3: Classification vs. Regression**

Suppose you are working on stock market prediction, and you would like to predict the price of a particular stock tomorrow (measured in dollars). Would you treat this as a classification or a regression problem?

* **Regression**
    * *Explanation: This is a regression problem because you are trying to predict a continuous-valued output, such as the price of a stock.*

#### **Question 4: Supervised vs. Unsupervised Learning**

Some of the problems below are best addressed using a supervised learning algorithm, while others are best addressed with an unsupervised learning algorithm. Which of the following would you apply supervised learning to? (Select all that apply.)

* **Given 50 articles written by male authors and 50 articles written by female authors, learn to predict the gender of a new manuscript's author (when the identity of this author is unknown).**
    * *Explanation: This is a supervised learning classification problem, as we learn from labeled data (articles with known author gender) to predict a discrete outcome.*
* **Have a computer examine an audio clip of a piece of music and classify whether or not there are vocals in that clip.**
    * *Explanation: This is a supervised learning problem. The training data would be a set of audio clips labeled as either having vocals or not.*

#### **Question 5: Definition of Machine Learning**

Which of these is a reasonable definition of machine learning?

* **Machine learning is the field of study that gives computers the ability to learn without being explicitly programmed.**
    * *Explanation: This definition was given by Arthur Samuel, a pioneer in the field, and accurately describes the core idea of machine learning.*

---
