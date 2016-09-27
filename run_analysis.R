# Peer Graded Assignment: Getting and Cleaning Data Course Project
# 
# by Erik Pinter, 25.09.2016
# 
# This script:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
# NOTE:
# the 'UCI HAR Dataset' directory is supposed to be in the current working directory 


# LIBRARIES
library(reshape2)   # used for the melt & dcast functions


# FEATURES DATA
# read the table which holds the features of the data columns --> it will be used to generate descriptive variable names
features <- read.table("./UCI HAR Dataset/features.txt", sep = " ", col.names = c("num","name"), stringsAsFactors = FALSE)

# filter only the mean and standard deviation variable names from the features
features_mean_std <- grepl("mean|std", features$name)   


# READ ACTIVITY LABELS 
# read the activity labels --> will be used to generate descriptive activity names 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep = " ", col.names = c("Activity","label"), stringsAsFactors = FALSE)


# READ TEST and TRAIN-DATA
# read the X_test.txt and X_train.txt data sets, label the columns by 'features$name', read only the columns selected in the 'features_mean_std' vector
test_X <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$name)[features_mean_std]
train_X <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$name)[features_mean_std]

# read the y_test.txt and y_train.txt data sets
test_Y <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c('Activity'))
train_Y <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = c('Activity'))

# read the subject_test.txt and subject_train.txt data sets
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c('Subject'))
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c('Subject'))


# MERGE the TRAINING AND TEST SETS 
test <- cbind(test_X, test_Y, test_subject)
train <- cbind(train_X, train_Y, train_subject)

# merge training and test data
mrg_traintest <- rbind(train, test)

# change the Activity number to a factor with the labels generated from the 'activity_labels' data
mrg_traintest$Activity <- factor(mrg_traintest$Activity, levels = activity_labels$Activity, labels = activity_labels$label )
# change Subject to a factor (used for melt function)
mrg_traintest$Subject <- as.factor(mrg_traintest$Subject)


# CREATE TIDY DATA SET (STEP 4)
# tidy data set number 1 
tidy1 <- mrg_traintest


# MELT DATA & CALCULATE AVERAGE
# melt tidy data by Subject and Activity 
tidy1_melted <- melt(tidy1, id = c("Subject", "Activity") )

# apply mean function to melted data set
tidy2 <- dcast(tidy1_melted, Subject + Activity ~ variable, mean)
# generate new descriptive variable names 
names(tidy2)[3:81] <- paste(names(tidy2)[3:81], '.mean', sep ='')


# WRITE TIDY2 TABLE to working directory
write.table(tidy2, file = "./tidy2.txt", row.names = FALSE)
