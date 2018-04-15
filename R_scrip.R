# download packages
install.packages("reshape2")
install.packages("data.table")
library("reshape2")
library("data.table")

# downlaod and unzip file fold
setwd("/Users/juanzhang/Desktop")
path<-getwd()
download.file(url, destfile=file.path(path, "dataFiles.zip"), method="curl") 
unzip(zipfile = "dataFiles.zip")

# Load activitylabels + features, change into a list of charaters
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels.Charactor <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features.Charactor <- as.character(features[,2])

# subset features with "mean" and "std"
sub.features <- grep(".*mean.*|.*std.*", features.Charactor)
subfeatures.names<-features.Charactor[sub.features]
# change the names
subfeatures.names = gsub('-mean', 'Mean', subfeatures.names)
subfeatures.names = gsub('-std', 'Std', subfeatures.names)
subfeatures.names <- gsub('[-()]', '', subfeatures.names)
# Load the train group datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[sub.features]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)
# Load the test group datasets
test <- read.table("UCI HAR Dataset/test/X_test.txt")[sub.features]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)
# merge train and test datasets (rbind), add colume labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", subfeatures.names)
# change activitiesLabels & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)
# merge the "subjects" and "activitiesLabels" factors into the first two columes of allData dataframe. write the tidy data called "Write a new table called "allData.txt"
allData.melted <- melt(allData, id = c("subject", "activity"))
write.table(allData, "allData.txt", row.names = FALSE, quote = FALSE)
# caltulate average of each variable for each activity and each subject. Write a new table called "allData.mean.txt"
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)
write.table(allData.mean, "allData.mean.txt", row.names = FALSE, quote = FALSE)









