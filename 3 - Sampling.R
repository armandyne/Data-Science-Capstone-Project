load(paste0(data_dir, "/", "raw_datasets.rda"))

blogs_sample <- sample(blogs_vec, size = 10000)
news_sample <- sample(news_vec, size = 1000)
twitter_sample <- sample(twitter_vec, size = 20000)

save(blogs_sample, news_sample, twitter_sample, file = paste0(data_dir, "/", "sampled_datasets.rda"))