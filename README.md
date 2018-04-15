# Getting-and-Cleaning-Data-Project

## The data source:
The data for the project is downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The aims of the project:
Create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## This repository contains the following files:
1. README.md -- provides an overview of the data set and how it was created.
2. Codebook.md -- describes the contents of the data set (data, variables and transformations used to generate the data).
3. run_analysis.R -- the R script that was used to create the dataset
4. alldata_tidy.txt -- The tidy dataframe that contains datasets from both the "train" and "test" groups, with descriptive variable names and descriptive activity names.
5. allData.mean.txt -- An independent tidy data set with the average of each variable for each activity and each subject.

## Overview of steps to generate the tidy dataframe:
1. # download packages
2. # downlaod and unzip file fold
3. # Load activitylabels + features, change into a list of charaters
4. # subset features with "mean" and "std"
5. # change the features names
6. # Load the train group datasets
7. # Load the test group datasets
8. # merge train and test datasets (rbind), add colume labels
9. # change activitiesLabels & subjects into factors
10. # merge the "subjects" and "activitiesLabels" factors into the first two columes of allData dataframe. write the tidy data called         Write a new table called "alldata_tidy.txt"
11. # caltulate average of each variable for each activity and each subject. Write a new table called "allData.mean.txt"

