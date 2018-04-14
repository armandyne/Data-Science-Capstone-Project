---
title: "Capstone Project. Tasks list"
author: "Arman Iskaliyev"
date: "April 1, 2018"
output: 
  html_document: 
    keep_md: yes
---

##Task 0 - Understanding the problem

Questions to consider:

*  What do the data look like?
*  Where do the data come from?
*  Can you think of any other data sources that might help you in this project?
*  What are the common steps in natural language processing?
*  What are some common issues in the analysis of text data?
*  What is the relationship between NLP and the concepts you have learned in the Specialization?

-----------------------------------------

##Task 1 - Getting and Cleaning Data

1. Tokenization - identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.

2. Profanity filtering - removing profanity and other words you do not want to predict.

-----------------------------------------------

##Task 2 - Exploratory Data Analysis

* Exploratory analysis - perform a thorough exploratory analysis of the data, understanding the distribution of words and relationship between the words in the corpora.

* Understand frequencies of words and word pairs - build figures and tables to understand variation in the frequencies of words and word pairs in the data.
     
Questions to consider:

1. Some words are more frequent than others - what are the distributions of word frequencies?
2. What are the frequencies of 2-grams and 3-grams in the dataset?
3. How many unique words do you need in a frequency sorted dictionary to cover 50% of all word instances in the language? 90%?
4. How do you evaluate how many of the words come from foreign languages?
5. Can you think of a way to increase the coverage -- identifying words that may not be in the corpora or using a smaller number of words in the dictionary to cover the same number of phrases?

--------------------------------------------

##Task 3 - Modeling

* Build basic n-gram model - using the exploratory analysis you performed, build a basic n-gram model for predicting the next word based on the previous 1, 2, or 3 words.
* Build a model to handle unseen n-grams - in some cases people will want to type a combination of words that does not appear in the corpora. Build a model to handle cases where a particular n-gram isn't observed.

Questions to consider:

1. How can you efficiently store an n-gram model (think Markov Chains)?
2. How can you use the knowledge about word frequencies to make your model smaller and more efficient?
3. How many parameters do you need (i.e. how big is n in your n-gram model)?
4. Can you think of simple ways to "smooth" the probabilities (think about giving all n-grams a non-zero probability even if they aren't observed in the data) ?
5. How do you evaluate whether your model is any good?
6. How can you use backoff models to estimate the probability of unobserved n-grams?

-----------------------------------------------

##Task 4 - Prediction Model

* Build a predictive model based on the previous data modeling steps - you may combine the models in any way you think is appropriate.
* Evaluate the model for efficiency and accuracy - use timing software to evaluate the computational complexity of your model. Evaluate the model accuracy using different metrics like perplexity, accuracy at the first word, second word, and third word.

Questions to consider:

1. How does the model perform for different choices of the parameters and size of the model?
2. How much does the model slow down for the performance you gain?
3. Does perplexity correlate with the other measures of accuracy?
4. Can you reduce the size of the model (number of parameters) without reducing performance?

----------------------------------

##Task 5 - Creative Exploration

* Explore new models and data to improve your predictive model.
* Evaluate your new predictions on both accuracy and efficiency.

Questions to consider:

1. What are some alternative data sets you could consider using?
2. What are ways in which the n-gram model may be inefficient?
3. What are the most commonly missed n-grams? Can you think of a reason why they would be missed and fix that?
4. What are some other things that other people have tried to improve their model?
5. Can you estimate how uncertain you are about the words you are predicting?

----------------------------------
