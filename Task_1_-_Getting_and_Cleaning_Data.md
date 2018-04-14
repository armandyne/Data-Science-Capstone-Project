---
title: "Capstone Project. Task 1 - Getting and Cleaning Data"
author: "Arman Iskaliyev"
date: "April 10, 2018"
output: 
  html_document: 
    keep_md: yes
---


```r
library(stringr, warn.conflicts = FALSE)
library(readr, warn.conflicts = FALSE)
library(purrr, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)
```

1. Tokenization - identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.

2. Profanity filtering - removing profanity and other words you do not want to predict.

---------------------------------------------------

##Load data

```r
if(!file.exists("./data/raw_data.rda")) {
     blogs_vec <- read_lines("./data/final/en_US/en_US.blogs.txt")
     news_vec <- read_lines("./data/final/en_US/en_US.news.txt")
     twitter_vec <- read_lines("./data/final/en_US/en_US.twitter.txt")
     
     save(blogs_vec, news_vec, twitter_vec, file = "./data/raw_data.rda")
} else {
     load("./data/raw_data.rda")
}

head(blogs_vec, 2)
```

```
## [1] "In the years thereafter, most of the Oil fields and platforms were named after pagan “gods”."
## [2] "We love you Mr. Brown."
```

```r
head(twitter_vec, 2)
```

```
## [1] "How are you? Btw thanks for the RT. You gonna be in DC anytime soon? Love to see you. Been way, way too long."  
## [2] "When you meet someone special... you'll know. Your heart will beat more rapidly and you'll smile for no reason."
```

```r
head(news_vec, 2)
```

```
## [1] "He wasn't home alone, apparently."                                                                                                                        
## [2] "The St. Louis plant had to close. It would die of old age. Workers had been making cars there since the onset of mass automotive production in the 1920s."
```

##Data summaries

Size of files:

```r
map_dbl(list.files("./data/final/en_US/", 
                   pattern = "\\.txt$", 
                   full.names = TRUE),
        ~file.size(.)/1024/1024) %>% 
     set_names(list.files("./data/final/en_US/", pattern = "\\.txt$")) %>% 
     map_chr(~str_c(as.character(round(.,2)),"Mb"))
```

```
##   en_US.blogs.txt    en_US.news.txt en_US.twitter.txt 
##        "200.42Mb"        "196.28Mb"        "159.36Mb"
```

Number of rows for each file:

```r
map_int(list(blogs_vec, twitter_vec, news_vec), length) %>%
     set_names(list.files("./data/final/en_US/", pattern = "\\.txt$"))
```

```
##   en_US.blogs.txt    en_US.news.txt en_US.twitter.txt 
##            899288           2360148           1010242
```

##Data sampling


```r
if(!file.exists("./data/sampled_data.rda")) {
     blogs_sample <- sample(blogs_vec, 10000)
     news_sample <- sample(news_vec, 10000)
     twitter_sample <- sample(twitter_vec, 20000)

     save(blogs_sample, news_sample, twitter_sample, file = "./data/sampled_data.rda")
} else {
     load("./data/sampled_data.rda")
}
```
