---
title: "Task 1 - Getting and Cleaning Data"
author: "Arman Iskaliyev"
date: "April 12, 2018"
output: 
  html_document: 
    keep_md: yes
    theme: spacelab
---

```r
suppressPackageStartupMessages(library(tidyverse))

source("./Data acquisition.R")
```

```
##  [1] "Coursera-SwiftKey.zip"         "final/de_DE/de_DE.blogs.txt"  
##  [3] "final/de_DE/de_DE.news.txt"    "final/de_DE/de_DE.twitter.txt"
##  [5] "final/en_US/en_US.blogs.txt"   "final/en_US/en_US.news.txt"   
##  [7] "final/en_US/en_US.twitter.txt" "final/fi_FI/fi_FI.blogs.txt"  
##  [9] "final/fi_FI/fi_FI.news.txt"    "final/fi_FI/fi_FI.twitter.txt"
## [11] "final/ru_RU/ru_RU.blogs.txt"   "final/ru_RU/ru_RU.news.txt"   
## [13] "final/ru_RU/ru_RU.twitter.txt"
```

##Tasks to accomplish

1. Tokenization - identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.

2. Profanity filtering - removing profanity and other words you do not want to predict.

#QUIZ 1
##Question 1
The en_US.blogs.txt file is how many megabytes?

```r
cat("File size = ", file.size(paste0(data_dir, "/final/en_US/en_US.blogs.txt"))/1024/1024, "Mb")
```

```
## File size =  200.4242 Mb
```

##Question 2
The en_US.twitter.txt has how many lines of text?

```r
f <- file(paste0(data_dir, "/final/en_US/en_US.twitter.txt"), "r") 
en_US.twitter <- readLines(f)
```

```
## Warning in readLines(f): сторка 167155 похоже, содержит встроенный nul
```

```
## Warning in readLines(f): сторка 268547 похоже, содержит встроенный nul
```

```
## Warning in readLines(f): сторка 1274086 похоже, содержит встроенный nul
```

```
## Warning in readLines(f): сторка 1759032 похоже, содержит встроенный nul
```

```r
close(f)
length(en_US.twitter)
```

```
## [1] 2360148
```

##Question 3
What is the length of the longest line seen in any of the three en_US data sets?

```r
list.files(paste0(data_dir, "/final/en_US"), recursive = TRUE)
```

```
## [1] "en_US.blogs.txt"   "en_US.news.txt"    "en_US.twitter.txt"
```

```r
f <- file(paste0(data_dir, "/final/en_US/en_US.blogs.txt"), "r") 
en_US.blogs <- readLines(f)
close(f)

f <- file(paste0(data_dir, "/final/en_US/en_US.twitter.txt"), "r") 
en_US.twitter <- readLines(f)
```

```
## Warning in readLines(f): сторка 167155 похоже, содержит встроенный nul
```

```
## Warning in readLines(f): сторка 268547 похоже, содержит встроенный nul
```

```
## Warning in readLines(f): сторка 1274086 похоже, содержит встроенный nul
```

```
## Warning in readLines(f): сторка 1759032 похоже, содержит встроенный nul
```

```r
close(f)

f <- file(paste0(data_dir, "/final/en_US/en_US.news.txt"), "r") 
en_US.news <- readLines(f)
```

```
## Warning in readLines(f): неполная последняя строка найдена в './data/final/
## en_US/en_US.news.txt'
```

```r
close(f)

max(map_int(en_US.blogs, nchar))
```

```
## [1] 40835
```

```r
max(map_int(en_US.twitter, nchar))
```

```
## [1] 213
```

```r
max(map_int(en_US.news, nchar))
```

```
## [1] 5760
```

##Question 4
In the en_US twitter data set, if you divide the number of lines where the word "love" (all lowercase) occurs by the number of lines the word "hate" (all lowercase) occurs, about what do you get?

```r
length(grep("love", en_US.twitter, ignore.case = TRUE))/length(grep("hate", en_US.twitter, ignore.case = TRUE))
```

```
## [1] 4.669125
```

##Question 5
The one tweet in the en_US twitter data set that matches the word "biostats" says what?

```r
en_US.twitter[grep("biostats", en_US.twitter, ignore.case = TRUE)]
```

```
## [1] "i know how you feel.. i have biostats on tuesday and i have yet to study =/"
```

##Question 6
How many tweets have the exact characters "A computer once beat me at chess, but it was no match for me at kickboxing". (I.e. the line matches those characters exactly.)

```r
length(grep("A computer once beat me at chess, but it was no match for me at kickboxing", en_US.twitter))
```

```
## [1] 3
```


```r
rm(list = grep("^en_US", ls(), value = TRUE))
```
