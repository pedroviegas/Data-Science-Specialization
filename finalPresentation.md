
Data Science Capstone by Johns Hopkins University
Peer-graded Assignment: Final Project Submission COURSERA
========================================================
author:  Roxana Trejos Ramirez
date:    06-JAN-2012
Data Science Specialization Student

PROBLEM STATEMENT
========================================================

The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 
For this project you must submit:

A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.
A slide deck consisting of no more than 5 slides created with R Studio Presenter (https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations) 
pitching your algorithm and app as if you were presenting to your boss or an investor

The goal of this capstone project is to develope a Shiny app in R that can predict the next word using previous ones, like that used in cellphone devices keyboard
applications implemented by the SWIFTKEY.

Previous tasks that were done in order to get to this point were: Understanding the problem, Getting and Cleaning the Data, Exploratory Data Analysis, Modeling, 
Prediction Model and Executing all the data and information into one shiny app that is able to do the objective of this project.

OVERVIEW SOLUTION
========================================================

The goal of this capstone project is to develope a Shiny app in R that can predict the next word using previous ones, like that used in cellphone devices keyboard
applications implemented by the SWIFTKEY.

Previous tasks that were done in order to get to this point were: Understanding the problem, Getting and Cleaning the Data, Exploratory Data Analysis, Modeling, 
Prediction Model and Executing all the data and information into one shiny app that is able to do the objective of this project.

Link: http://roxtrejos.shinyapps.io/shiny-app

SHINY APPLICATION
========================================================
Next Word Predict is a Shiny app that uses a text
prediction algorithm to predict the next word(s) based on
text entered by a user.

The application will suggest the next word in a sentence
using an n-gram algorithm. An n-gram is a contiguous sequence
of n words from a given sequence of text.

The text used to build the predictive text model came from a
large corpus of blogs, news and twitter data. N-grams were
extracted from the corpus and then used to build the
predictive text model.

Various methods were explored to improve speed and
accuracy using natural language processing and text mining
techniques.


THE PREDICTIVE TEXT MODEL
========================================================

The predictive text model was built from a sample of
800,000 lines extracted from the large corpus of blogs,
news and twitter data.

The sample data was then
tokenized and cleaned using the tm package and a number
of regular expressions using the gsub function. As
part of the cleaning process the data was converted to
lowercase, removed all non-ascii characters, URLs,
email addresses, Twitter handles, hash tags, ordinal numbers,
profane words, punctuation and whitespace. The data was
then split into tokens (n-grams).

As text is entered by the user, the algorithm iterates
from longest n-gram (4-gram) to shortest (2-gram) to
detect a match. The predicted next word is considered using
the longest, most frequent matching n-gram. The algorithm
makes use of a simple back-off strategy.

HOW WORKS
========================================================
The user write a phrase with an undetermined number of words
The application extract the last two words
The application runs a prediction model taking both words as input
Finally the application shows the predicted word
For prediction model a model based on Naive Bayes classifier was built.

Source Code:  https://github.com/roxtredev/dscfpfp
