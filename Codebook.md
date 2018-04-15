# Codebook 

## Summary of the tidy dataframe in the "allData_tidy.txt" and "allData.mean.txt" files
The "allData_tidy.txt" contains 81 columns (variables) and 10299 rows (observations - for each subject/activities).
The "allData.mean.txt"calculated the average of each subject/activities, so it contains 81 columns (variables) and 180 rows (mean observations - for each subject/activities).

## The 81 columns (variables) in both of the "allData_tidy.txt" and "allData.mean.txt" files
- The 1st column is "subject", integer, ranges from 1 to 30.
  
  It is load from "UCI HAR Dataset/train/subject_train.txt" and "UCI HAR Dataset/test/subject_test.txt" repectively.
  
- The 2nd column is "activity" (listed below). 
  
  It is subsetted from the 2nd column of "UCI HAR Dataset/activity_labels.txt". 
  
  The activiry labels:
  
       WALKING -subject was walking
       WALKING_UPSTAIRS -subject was walking upstairs
       WALKING_DOWNSTAIRS -subject was walking downstairs
       SITTING -subject was sitting
       STANDING -subject was standing
       LAYING -subject was laying
       
- The 3 to 81 columns (listed below) are subsetted from "features names" that contains "mean" and "std". 
  The names were changed (see the "# change the features names" step in the run_analysis.R script.
 
 The 3 to 81 columns (variables):
 
       [3] "tBodyAccMeanX"                "tBodyAccMeanY"               
       [5] "tBodyAccMeanZ"                "tBodyAccStdX"                
       [7] "tBodyAccStdY"                 "tBodyAccStdZ"                
       [9] "tGravityAccMeanX"             "tGravityAccMeanY"            
      [11] "tGravityAccMeanZ"             "tGravityAccStdX"             
      [13] "tGravityAccStdY"              "tGravityAccStdZ"             
      [15] "tBodyAccJerkMeanX"            "tBodyAccJerkMeanY"           
      [17] "tBodyAccJerkMeanZ"            "tBodyAccJerkStdX"            
      [19] "tBodyAccJerkStdY"             "tBodyAccJerkStdZ"            
      [21] "tBodyGyroMeanX"               "tBodyGyroMeanY"              
      [23] "tBodyGyroMeanZ"               "tBodyGyroStdX"               
      [25] "tBodyGyroStdY"                "tBodyGyroStdZ"               
      [27] "tBodyGyroJerkMeanX"           "tBodyGyroJerkMeanY"          
      [29] "tBodyGyroJerkMeanZ"           "tBodyGyroJerkStdX"           
      [31] "tBodyGyroJerkStdY"            "tBodyGyroJerkStdZ"           
      [33] "tBodyAccMagMean"              "tBodyAccMagStd"              
      [35] "tGravityAccMagMean"           "tGravityAccMagStd"           
      [37] "tBodyAccJerkMagMean"          "tBodyAccJerkMagStd"          
      [39] "tBodyGyroMagMean"             "tBodyGyroMagStd"             
      [41] "tBodyGyroJerkMagMean"         "tBodyGyroJerkMagStd"         
      [43] "fBodyAccMeanX"                "fBodyAccMeanY"               
      [45] "fBodyAccMeanZ"                "fBodyAccStdX"                
      [47] "fBodyAccStdY"                 "fBodyAccStdZ"                
      [49] "fBodyAccMeanFreqX"            "fBodyAccMeanFreqY"           
      [51] "fBodyAccMeanFreqZ"            "fBodyAccJerkMeanX"           
      [53] "fBodyAccJerkMeanY"            "fBodyAccJerkMeanZ"           
      [55] "fBodyAccJerkStdX"             "fBodyAccJerkStdY"            
      [57] "fBodyAccJerkStdZ"             "fBodyAccJerkMeanFreqX"       
      [59] "fBodyAccJerkMeanFreqY"        "fBodyAccJerkMeanFreqZ"       
      [61] "fBodyGyroMeanX"               "fBodyGyroMeanY"              
      [63] "fBodyGyroMeanZ"               "fBodyGyroStdX"               
      [65] "fBodyGyroStdY"                "fBodyGyroStdZ"               
      [67] "fBodyGyroMeanFreqX"           "fBodyGyroMeanFreqY"          
      [69] "fBodyGyroMeanFreqZ"           "fBodyAccMagMean"             
      [71] "fBodyAccMagStd"               "fBodyAccMagMeanFreq"         
      [73] "fBodyBodyAccJerkMagMean"      "fBodyBodyAccJerkMagStd"      
      [75] "fBodyBodyAccJerkMagMeanFreq"  "fBodyBodyGyroMagMean"        
      [77] "fBodyBodyGyroMagStd"          "fBodyBodyGyroMagMeanFreq"    
      [79] "fBodyBodyGyroJerkMagMean"     "fBodyBodyGyroJerkMagStd"     
      [81] "fBodyBodyGyroJerkMagMeanFreq"


## The rows list in "allData.mean.txt" files 
 - here calculated the mean value of each of 6 activities for the 30 subjuects - the 10299 rows in the "allData_tidy.txt" file.
 
    > allData.mean[,1:2]
           subject           activity
       1         1            WALKING
       2         1   WALKING_UPSTAIRS
       3         1 WALKING_DOWNSTAIRS
       4         1            SITTING
       5         1           STANDING
       6         1             LAYING
       7         2            WALKING
       8         2   WALKING_UPSTAIRS
       9         2 WALKING_DOWNSTAIRS
       10        2            SITTING
       11        2           STANDING
       12        2             LAYING
       ..        ..               ..
       175      30            WALKING
       176      30   WALKING_UPSTAIRS
       177      30 WALKING_DOWNSTAIRS
       178      30            SITTING
       179      30           STANDING
       180      30             LAYING
