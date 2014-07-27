## run_analysis.R

library(stringr)

## Reading test data
X_test <- read.table("./data/UCI HAR Dataset/test//X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test//y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test//subject_test.txt")

## Reading train data
X_train <- read.table("./data/UCI HAR Dataset/train//X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train//y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train//subject_train.txt")

## Reading activity labels and features; making them tidy
activity_labels <- readLines("./data/UCI HAR Dataset/activity_labels.txt")
activity_labels <- tolower(str_sub(activity_labels, start = 3))

features <- readLines("./data/UCI HAR Dataset/features.txt")
features <- tolower(sub("[0-9]+ ", "", features))

## Manipulations with test and train datasets: 
## * setting descriptive variable names
## * adding variables
## * merging train and test datasets
## * subsetting only mean() and std()
## (it is also needed to preserve activity and subject, 
## if I understand the assignment correctly)
names(X_test) <- features
names(X_train) <- features

X_test$activity <- activity_labels[unlist(y_test)]
X_test$subject <- unlist(subject_test)
X_train$activity <- activity_labels[unlist(y_train)]
X_train$subject <- unlist(subject_train)

total <- rbind(X_train, X_test)

total <- total[, grep("mean\\(\\)|std\\(\\)|activity|subject",names(total))]
total$activity <- factor(total$activity) #for the tidiness

## Making final dataset

final <- aggregate(. ~ subject + activity, data = total, mean)
  
write.csv(final, "./data/tidy.csv", row.names = FALSE)