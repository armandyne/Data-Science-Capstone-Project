data_dir <- "./data"
if(!file.exists(data_dir)) {
     dir.create(data_dir)
}

zip_url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
zip_file <- basename(zip_url)

if(!file.exists(file.path(data_dir, zip_file))) {
     download.file(zip_url, file.path(data_dir, zip_file))
}

if(!file.exists(file.path(data_dir, "final"))) {
     unzip(file.path(data_dir, zip_file), exdir = data_dir)
}

print(list.files(data_dir, recursive = TRUE))