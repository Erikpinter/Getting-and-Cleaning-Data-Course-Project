# Getting-and-Cleaning-Data-Course-Project

This is my submission for the **Peer Graded Assignment: Getting and Cleaning Data Course Project**.

The repository includes the following files:
* **ReadMe.md** - this document
* **run_analysis.R** - an R script, that automatically generates the tidy2 dataset from the original data from the UCI Human Activity Recognition Using Smartphones Data Set.
* **tidy2.txt** - the resulting tidy dataset
* **CodeBook.md** - the CodeBook for the tidy2 dataset

 
## ReadMe.md
This documentation about the contents of the _"Erikpinter/Getting-and-Cleaning-Data-Course-Project"_ repository.

## run_analysis.R
The **'run_analysis.R' script** performs the following tansformations to the original UCI HAR dataset - 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

NOTE: The 'UCI HAR Dataset' directory is supposed to be in the current working directory.
The R-Script is well documented.

## tidy2.txt
The tidy2.txt dataset is the result of running the 'run_analysis.R' script.

## CodeBook.md
The Codebook for the tidy2 dataset has information about:
* Original data source
* Data transformations
* Variable Descriptions.

