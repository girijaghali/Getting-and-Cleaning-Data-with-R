## Load library reshape2
library(reshape2)

##set WD to the current folder
##setwd("~/LearningR/Getting and Cleaning Data Course Project")


## assign filename
filename <- "getdata_dataset.zip"

##download the file
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  

##unzip the file
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


##load activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])

##load features
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

## extract the mean and SD data
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

# load training data 
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

##load testing data
test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

##merge both traning and testing data sets 
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)

## factor the data sets fir activity and subject
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

## mele the activity and subject datasets 
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

## write the tidy data into the final file.
write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)