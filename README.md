getdata-project
===============

Getting and Cleaning Data assignment.

## Introduction

This assignment is devoted to manipulations with data so that we change some of its properties to make it tidy.
The original dataset and further descriptions can be obtained here: [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files in this project
* **run_analysis.R** - script that modifies the original dataset
* **README.md** - basic info about the project
* **CodeBook.md** - description of the variables of the modified dataset

## How the script works

**Input:**
* test dataset 
  + UCI HAR Dataset/test/X_test.txt
  + UCI HAR Dataset/test/y_test.txt
  + UCI HAR Dataset/test/subject_test.txt

* train dataset
  + UCI HAR Dataset/train/X_train.txt
  + UCI HAR Dataset/train/y_train.txt
  + UCI HAR Dataset/train/subject_train.txt

* activity labels and feature names
  + UCI HAR Dataset/activity_labels.txt
  + UCI HAR Dataset/features.txt
   
**Output:**

* tidy.csv

## Steps of the analysis

1. Reading test and train data; their respective activity labels and feature list.
2. Manipulations with test and train datasets:
  * setting descriptive variable names
  * adding variables: subject and activity
  * merging train and test datasets
  * subsetting only mean() and std() columns
3. Create and save a tidy data set with the average of each variable for each activity and each subject.
