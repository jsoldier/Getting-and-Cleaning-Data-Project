# Read test data
library(dplyr)
testData <- read.table('test/X_test.txt')
testSubject <- read.table('test/subject_test.txt')
testActivity <- read.table('test/y_test.txt')
names(testSubject) <- 'subject'
names(testActivity) <- 'activityId'
testData <- cbind(testActivity,testSubject,testData)
rm(testSubject)
rm(testActivity)

# Read train data
trainData <- read.table('train/X_train.txt')
trainSubject <- read.table('train/subject_train.txt')
trainActivity <- read.table('train/y_train.txt')
names(trainSubject) <- 'subject'
names(trainActivity) <- 'activityId'
trainData <- cbind(trainActivity,trainSubject,trainData)
rm(trainSubject)
rm(trainActivity)

# Combine test and train data
combinedData <- rbind(testData,trainData)
rm(testData)
rm(trainData)

#Get names of activities
#Merge activity names to data
activities <- read.table('activity_labels.txt')
names(activities) <- c('activityId','activity')
combinedData <- merge(combinedData,activities,by="activityId",all=TRUE)

#Get names of measurements
#Clean up the name to be used as variables
#Remove illegal characters that can't be used in a variable's name
#Rename variables in the main data
features <- read.table('features.txt');
features <- features[,2]
features <- lapply(features, function(x) gsub("()","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("-","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("(","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub(")","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub(")","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub(".","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub(",","",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("fBodyBody","frequencyBody",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("fBody","frequencyBody",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("tBody","timeBody",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("tGravity","timeGravity",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("Acc","Accelerometer",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("Gyro","Gyroscope",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("Mag","Magnitude",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("std","StandardDeviation",x,fixed=TRUE))
features <- lapply(features, function(x) gsub("mean","Mean",x,fixed=TRUE))
names(combinedData)[3:563] <- features

#Remove duplicated columns
#Select only Mean and Standard Deviation data
combinedData <- tbl_df(combinedData)
combinedData <- combinedData[,!duplicated(colnames(combinedData))] combinedData <- select(combinedData, activity, subject , contains("Mean"),contains("StandardDeviation"),-(contains('MeanFreq')),-(contains('angle')))

#Generate a new tidy data with average for each activity and subject
#Write the new tidy data to a text file "tidy_data.txt"
tidyData <- 
    combinedData %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))
write.table(tidyData,'tidy_data.txt',row.name=FALSE)