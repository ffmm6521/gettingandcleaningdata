## File: run_analysis.r
## Author: Filippo Miramonti
## Course: Getting and Cleaning Data - Johns Hopkins University - Coursera
## 
## Date: 02 June 2020
##
## Instruction:
##
## 1. Merges the training and the test sets to create one data set
## 2. Extracts only the measurements on the mean and standard deviation for each measurement
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

## Check to see if required packages are installed
if (!"dplyr" %in% installed.packages()) {
    warning("Package dplyr required for this script. Installing dplyr now.")
    install.packages("dplyr")
}
if (!"data.table" %in% installed.packages()) {
    warning("Package data.table required for this script. Installing data.table now.")
    install.packages("data.table")
}
library(dplyr)
library(data.table)

## Downloading UCI HAR dataset .zip file and unzip to working directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "HAR.zip", method = "curl", mode = "wd")
unzip(zipfile = "HAR.zip")

## Set directories to R working directory and UCI HAR dataset subdirectories
traindir <- paste0(getwd(),"/UCI HAR Dataset/train/")
testdir <- paste0(getwd(),"/UCI HAR Dataset/test/")
datadir <- paste0(getwd(),"/UCI HAR Dataset/")

## Reading activity_labels.txt and features.txt files
activitydata <- read.table(paste0(datadir, "activity_labels.txt"), col.names = c("activitycode", "activity"))
activitydata[, 2] <- tolower(activitydata[, 2])
activitydata[, 2] <- sub("_"," ", activitydata[, 2])
features <- read.table(paste0(datadir, "features.txt"))[,2]

## Reading Train files
xtrain <- read.table(paste0(traindir, "X_train.txt"), col.names = features)
subjecttrain <- read.table(paste0(traindir, "subject_train.txt"), col.names= c('subject'))
ytrain <- read.table(paste0(traindir, "y_train.txt"), col.names = "activitycode")

## Reading Test files
xtest <- read.table(paste0(testdir, "X_test.txt"), col.names = features)
subjecttest <- read.table(paste0(testdir, "subject_test.txt"),col.names= c('subject'))
ytest <- read.table(paste0(testdir, "y_test.txt"), col.names = "activitycode")

## Binding train and test datasets
binded <- cbind(rbind(subjecttrain, subjecttest), rbind(ytrain, ytest), rbind(xtrain, xtest))

## Getting the mean and standard deviation columns 
meanandstd <- grep("mean()|std()|activity|subject", names(binded), ignore.case = TRUE)
binded <- binded[, meanandstd]

## Merging observations and activities
merged <- full_join(activitydata, binded, by = "activitycode")[, -1]

## Cleaning variable names
names(merged) <- sub("^t", "time", names(merged))
names(merged) <- sub("^f", "fouTran", names(merged))
names(merged) <- gsub("()|-|\\.", "", names(merged))
names(merged) <- gsub("BodyBody", "Body", names(merged))

## Computing means by activity and subject
merged <- as.data.table(merged)
result <- merged[,lapply(.SD,mean), by="subject,activity", .SDcols=3:ncol(merged)]

## Write the result dataset on a tidydata.txt
write.table(result, "tidydata.txt", row.names = FALSE)

