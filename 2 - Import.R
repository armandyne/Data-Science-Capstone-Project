blogs_vec <- readLines(paste0(data_dir, "/final/en_US/en_US.blogs.txt"), encoding="UTF-8", skipNul=TRUE)
twitter_vec <- readLines(paste0(data_dir, "/final/en_US/en_US.twitter.txt"), encoding="UTF-8", skipNul=TRUE)
news_vec <- readLines(paste0(data_dir, "/final/en_US/en_US.news.txt"), encoding="UTF-8", skipNul=TRUE)

save(blogs_vec, twitter_vec, news_vec, file = paste0(data_dir, "/", "raw_datasets.rda"))