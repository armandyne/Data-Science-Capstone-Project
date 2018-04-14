---
title: "Capstone Project. Task 0 - Understanding the problem"
author: "Arman Iskaliyev"
date: "April 3, 2018"
output: 
  html_document: 
    keep_md: yes
---


```r
library(purrr, warn.conflicts = FALSE)
library(readr, warn.conflicts = FALSE)
```

##Questions to consider:

1. What do the data look like?
2. Where do the data come from?
3. Can you think of any other data sources that might help you in this project?
4. What are the common steps in natural language processing?
5. What are some common issues in the analysis of text data?
6. What is the relationship between NLP and the concepts you have learned in the Specialization?

--------------

##Answers

###1. Our data are simple text files: 

```r
list.files("./data/final/en_US/", recursive = TRUE)
```

```
## [1] "en_US.blogs.txt"   "en_US.news.txt"    "en_US.twitter.txt"
```

Contents of files look like this:

```r
map(list.files("./data/final/en_US/", full.names = TRUE), ~read_lines(., skip = 42, n_max = 1))
```

```
## [[1]]
## [1] "Almighty and everlasting God, by whose Spirit the whole body of your faithful people is governed and sanctified: Receive our supplications and prayers which we offer before you for all members of your holy Church, that in their vocation and ministry they may truly and devoutly serve you; through our Lord and Savior Jesus Christ. Amen."
## 
## [[2]]
## [1] "Medina Sting 2, North York Blues 6"
## 
## [[3]]
## [1] "Thanks for the #FF! Awfully good company to be in."
```

###2. Our data gathered from multiple sources:
  
  * tweets from twitter
  * posts from blogs
  * news from news feed
  
###3. Other data sources that could help us in this project are:

  * user reviews from IMDb 
  * user reviews from any popular e-commerce resources like Amazon, Alibaba
  * messages from popular boards like Ububntu Forums
  * mailing lists or newsgroups
  * Wikipedia
  
###4. The common steps in generic NLP task:

     * Data Collection or Assembly
     * Data Preprocessing
     * Data Exploration & Visualization
     * Model Building
     * Model Evaluation

The Data Preprocessing step also includes these substeps:

+ Tokenization: Large chunk of text in small
+ Normalization: converting all text to the same case (upper or lower), removing punctuation, expanding contractions, converting numbers to their word equivalents, and so on.
+ Stemming Stemming is the process of eliminating affixes (suffixed, prefixes, infixes, circumfixes) from a word in order to obtain a word stem.
+ Lemmatization: Lemmatization is related to stemming, differing in that lemmatization is able to capture canonical forms based on a word's.
+ Corpus
+ Stop Words
+ Parts-of-speech (POS) Tagging
+ Bag of Words: Bag of words is a particular representation model used to simplify the contents of a selection of text.
+ Regular Expressions: Regular expressions, often abbreviated regexp or regexp, are a tried and true method of concisely describing patterns of text.
+ Similarity Measures     

###5. Here some common issues in the analysis of text:

* complexity of a natural languages
* noisy data

###6. So NLP is more specific field to work with specific data - called human language or text. But NLP use same approaches and methods, like algorithms of analyze, classification, modeling.
