#run_analysis.R summary: takes data from a public domain dataset for human
#activity recognition using smartphones saved in a folder "UCI HAR Dataset" within working directory
#to extract measurements and create a new tidy dataset

library(dplyr)

#read in features.txt and create vector to use as column headers
features <- read.table("./UCI HAR Dataset/features.txt")

#read in training and test sets
train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$V2, colClasses = "numeric")
test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$V2, colClasses = "numeric")

#read in subject numbers and activity labels, insert into datasets
subjTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("subjectID"))
subjTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("subjectID"))
labelTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = c("Activity"))
labelTest <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c("Activity"))
TrainUse <- cbind(subjTrain, labelTrain, train)
TestUse <- cbind(subjTest, labelTest, test)

#merge training and test sets into one dataset
merged <- rbind(TrainUse, TestUse)

#extract only the measurements on the mean and standard deviation for each measurement
subData <- select(merged, subjectID, Activity, contains("mean"), contains("std"), -contains("freq"), -contains("angle"))

#decode the activity labels
subData$Activity <- factor(subData$Activity, levels = c(1,2,3,4,5,6), labels = c("Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", "Laying"))

#relabel measurements with descriptive variable names by replacing extra characters and abbreviated terms
names(subData) <- gsub("\\.", "", names(subData))
names(subData) <- gsub("mean", "Mean", names(subData))
names(subData) <- gsub("std", "Std", names(subData))
names(subData) <- gsub("BodyBody", "Body", names(subData))
names(subData) <- gsub("Acc", "Acceleration", names(subData))
names(subData) <- gsub("Gyro", "AngularVelocity", names(subData))
names(subData) <- gsub("Mag", "Magnitude", names(subData))

#from the above merged dataset, create an independing tidy data set with the 
#average of each variable for each activity and each subject
Averages_by_SubjAct <- group_by(subData, subjectID, Activity) %>% summarise_each(funs(mean))


#write new dataset to csv file in wd
write.csv(Averages_by_SubjAct, file = "./AveragesBySubjectActivity.csv")

