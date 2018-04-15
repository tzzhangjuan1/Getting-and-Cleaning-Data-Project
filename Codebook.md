# Codebook 

## Summary of the tidy dataframe in the "allData_tidy.txt" and "allData.mean.txt" files
The "allData_tidy.txt" contains 81 columns (variables) and 10299 rows (observations - for each subject/activities).
The "allData.mean.txt"calculated the average of each subject/activities, so it contains 81 columns (variables) and 180 rows (mean observations - for each subject/activities).

## The 81 columns (variables) in both of the "allData_tidy.txt" and "allData.mean.txt" files
- The 1st column is "subject", load from "UCI HAR Dataset/train/subject_train.txt" and "UCI HAR Dataset/test/subject_test.txt" repectively.
- The 2nd column is "activity", activityLabels subsetted from the 2nd column of "UCI HAR Dataset/activity_labels.txt". 
-The 3~81 columns (listed below) are subsetted from "features names" that contains "mean" and "std". The names were changed (see the "# change the features names" step in the run_analysis.R script.
 The 3~81 columns (variables):
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
