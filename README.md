Getting-and-Cleaning-Data-Project
=================================

This repo is the course project for Coursera Course: Getting and Cleaning Data

##Pre-requisite
The script in this repo requires initial data that can be obtained from the following:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script run_analysis.R should be run with the above data in the R working directory

##How the script work
The following are the steps taken by the script to produce the tidy data set

- load the "dplyr" package
- read the test data from "test/X_test.txt"
- read the subject data for the test (from "test/subject_test.txt")
- read the activity data for the test (from "test/y_test.txt")
- combine the above three data into one data frame "testData"
- read the train data from "train/X_train.txt"
- read the subject data for the train (from "train/subject_train.txt")
- read the activity data for the train (from "train/y_train.txt")
- combine the above three data into one data frame "testTrain"
- combine the test and train data to "combinedData"
- read the names of activities from "activity_labels.txt"
- merge the activity names to the combinedData
- read the names of measurements from "features.txt"
- clean up the names of measurements so that they can be used as variable names in R (such as removing "()", "-", etc)
- rename some of the variable names so that it's more descriptive (such as renaming Acc to Accelerometer, Gyro to Gyroscope, etc)
- attached the names of the variables to "combinedData"
- subset combinedData to only include measurements on the mean and standard deviation for each type of measurements (exclude variables that contain "MeanFreq")
- generate a new tidy data set with the average of each measurement for each subject and activity
- write the new tidy data to a text file ("tidy_data.txt")
