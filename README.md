# Getting-and-Cleaning-Data-Course-Project
_by Erik Pinter_

## Background
This is my submission for the **Peer Graded Assignment: Getting and Cleaning Data Course Project** which is part of the Data Science specialization.

Here is the description of the project:
> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## Contents of this Repository

This repository ("Erikpinter/Getting-and-Cleaning-Data-Course-Project") includes the following files:
* **ReadMe.md** - this documentation
* **run_analysis.R** - an R script, that automatically generates the tidy2 dataset from the original data from the UCI Human Activity Recognition Using Smartphones Data Set.
* **tidy2.txt** - the resulting tidy dataset
* **CodeBook.md** - the CodeBook for the tidy2 dataset

### ReadMe.md
This documentation.

### run_analysis.R
The **'run_analysis.R' script** performs the following tansformations to the original UCI HAR dataset - 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

**NOTE:** The 'UCI HAR Dataset' directory is supposed to be in the current working directory. The run_analysis.R script is well documented for more detailed information.

### tidy2.txt
The tidy2.txt dataset is the result of running the 'run_analysis.R' script.

### CodeBook.md
The Codebook for the tidy2 dataset has information about:
* Original data source
* Data transformations
* Variable Descriptions.

## Final Thoughts
Finishing ths assignment was hard work - but I am **REALLY** looking forward to the next courses of the Data Science specialization ;-)
