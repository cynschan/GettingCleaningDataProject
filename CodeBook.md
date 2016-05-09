#CodeBook.md

## About
This code book describes each variable in the tidy data set and how each relates back to the original files in the UCI HAR dataset.

## Source Data
The following files from the UCI HAR Dataset were combined:
- activity_labels.txt
- features.txt
- X_train.txt
- y_train.txt
- subject_train.txt
- X_test.txt
- y_test.txt
- subject_test.txt
Used for reference:  README.txt and features_info.txt

### Data Transformations
Per the README file, X_train.txt contains the 561 time and frequency domain accelerometer and gyroscope data 
from 21 of the 30 subjects for generating training data; X_test.txt contains the same set of variables for the remaining 7 of 30 subjects 
used to generate the test data. For each train and test file, the corresponding subject_train/test.txt file was combined with the 
corresponding data set to identify the subject to whom each row of data belongs.  Similarly, the y_train/text.txt files were combined 
with the corresponding data set to label the class of activity for which each row of data measures.  The script uses the 
activity_labels.txt file to decode these class labels into descriptive activity names.

The training and test data are combined into one data set, and the list of features from features.txt are used as the initial variable 
names for each measurement.  From the combined data set, the measurements on the mean and standard deviation for each 
measurement are extracted.  The script then modifies the remaining mean and standard deviation variable names to be more descriptive and 
comprehensible.  

Lastly, the script computes the mean of each measurement for each activity and each subject.  This data is saved into a second, 
independent data set and also output as a .csv file to the user's working directory.


## Description of Variables
### Merged Training and Test Data
Original data already normalized and bounded within [-1, 1]; sampled in 2.56 second windows with 50% overlap

Each variable presented as: Original Feature Name, New Variable Name, Desciption

[1] None, "subjectID", subject ID ranges from 1 to 30

[2] None, "Activity", activity performed while wearing smartphone (6 categories: walking, walking upstairs, 
walking downstairs, sitting, standing, laying)

[3] tBodyAcc-mean()-X, "tBodyAccelerationMeanX", mean estimated body acceleration x-axis, time domain signal

[4] tBodyAcc-mean()-Y, "tBodyAccelerationMeanY", mean estimated body acceleration y-axis, time domain signal

[5] tBodyAcc-mean()-Z, "tBodyAccelerationMeanZ", mean estimated body acceleration z-axis, time domain signal

[6] tGravityAcc-mean()-X, "tGravityAccelerationMeanX", mean estimated gravity acceleration x-axis, time domain signal

[7] tGravityAcc-mean()-Y, "tGravityAccelerationMeanY", mean estimated gravity acceleration y-axis, time domain signal

[8] tGravityAcc-mean()-Z, "tGravityAccelerationMeanZ", mean estimated gravity acceleration z-axis, time domain signal

[9] tBodyAccJerk-mean()-X, "tBodyAccelerationJerkMeanX", mean derived Jerk signal, body acceleration x-axis, time domain signal

[10] tBodyAccJerk-mean()-Y, "tBodyAccelerationJerkMeanY", mean derived Jerk signal, body acceleration y-axis, time domain signal

[11] tBodyAccJerk-mean()-Z, "tBodyAccelerationJerkMeanZ", mean derived Jerk signal, body acceleration z-axis, time domain signal

[12] tBodyGyro-mean()-X, "tBodyAngularVelocityMeanX", mean estimated body angular velocity x-axis, time domain signal

[13] tBodyGyro-mean()-Y, "tBodyAngularVelocityMeanY", mean estimated body angular velocity y-axis, time domain signal

[14] tBodyGyro-mean()-Z, "tBodyAngularVelocityMeanZ", mean estimated body angular velocity z-axis, time domain signal

[15] tBodyGyroJerk-mean()-X, "tBodyAngularVelocityJerkMeanX", mean derived Jerk signal, body angular velocity x-axis, time domain signal

[16] tBodyGyroJerk-mean()-Y, "tBodyAngularVelocityJerkMeanY", mean derived Jerk signal, body angular velocity y-axis, time domain signal 

[17] tBodyGyroJerk-mean()-Z, "tBodyAngularVelocityJerkMeanZ", mean derived Jerk signal, body angular velocity z-axis, time domain signal

[18] tBodyAccMag-mean(), "tBodyAccelerationMagnitudeMean", mean body acceleration magnitude, time domain signal

[19] tGravityAccMag-mean(), "tGravityAccelerationMagnitudeMean", mean gravitational acceleration magnitude, time domain signal

[20] tBodyAccJerkMag-mean(), "tBodyAccelerationJerkMagnitudeMean", mean derived Jerk signal, body acceleration magnitude, time domain signal 

[21] tBodyGyroMag-mean(), "tBodyAngularVelocityMagnitudeMean", mean body angular velocity magnitude, time domain signal

[22] tBodyGyroJerkMag-mean()	  "tBodyAngularVelocityJerkMagnitudeMean", mean Jerk signal, body angular velocity magnitude, time domain signal 

[23] fBodyAcc-mean()-X, "fBodyAccelerationMeanX", mean estimated body acceleration x-axis, frequency domain signal

[24] fBodyAcc-mean()-Y, "fBodyAccelerationMeanY", mean estimated body acceleration y-axis, frequency domain signal

[25] fBodyAcc-mean()-Z, "fBodyAccelerationMeanZ", mean estimated body acceleration z-axis, frequency domain signal

[26] fBodyAccJerk-mean()-X, "fBodyAccelerationJerkMeanX", mean derived Jerk signal, body acceleration x-axis, frequency domain signal

[27] fBodyAccJerk-mean()-Y, "fBodyAccelerationJerkMeanY", mean derived Jerk signal, body acceleration y-axis, frequency domain signal

[28] fBodyAccJerk-mean()-Z, "fBodyAccelerationJerkMeanZ", mean derived Jerk signal, body acceleration z-axis, frequency domain signal

[29] fBodyGyro-mean()-X, "fBodyAngularVelocityMeanX", mean estimated body angular velocity x-axis, frequency domain signal

[30] fBodyGyro-mean()-Y, "fBodyAngularVelocityMeanY", mean estimated body angular velocity y-axis, frequency domain signal

[31] fBodyGyro-mean()-Z, "fBodyAngularVelocityMeanZ", mean estimated body angular velocity z-axis, frequency domain signal

[32] fBodyAccMag-mean(), "fBodyAccelerationMagnitudeMean", mean body acceleration magnitude, frequency domain signal

[33] fBodyBodyAccJerkMag-mean(), "fBodyAccelerationJerkMagnitudeMean", mean derived Jerk signal, body acceleration magnitude, frequency domain signal

[34] fBodyBodyGyroMag-mean(), "fBodyAngularVelocityMagnitudeMean", mean body angular velocity magnitude, frequency domain signal

[35] fBodyBodyGyroJerkMag-mean(), "fBodyAngularVelocityJerkMagnitudeMean", mean Jerk signal, body angular velocity magnitude, frequency domain signal 

[36] tBodyAcc-std()-X, "tBodyAccelerationStdX", standard deviation estimated body acceleration x-axis, time domain signal

[37] tBodyAcc-std()-Y, "tBodyAccelerationStdY", standard deviation estimated body acceleration y-axis, time domain signal

[38] tBodyAcc-std()-Z, "tBodyAccelerationStdZ", standard deviation estimated body acceleration z-axis, time domain signal

[39] tGravityAcc-std()-X, "tGravityAccelerationStdX", standard deviation estimated gravitational acceleration x-axis, time domain signal

[40] tGravityAcc-std()-Y, "tGravityAccelerationStdY", standard deviation estimated gravitational acceleration y-axis, time domain signal

[41] tGravityAcc-std()-Z, "tGravityAccelerationStdZ", standard deviation estimated gravitational acceleration z-axis, time domain signal

[42] tBodyAccJerk-std()-X, "tBodyAccelerationJerkStdX", standard deviation derived Jerk signal, body acceleration x-axis, time domain signal

[43] tBodyAccJerk-std()-Y, "tBodyAccelerationJerkStdY", standard deviation derived Jerk signal, body acceleration y-axis, time domain signal

[44] tBodyAccJerk-std()-Z, "tBodyAccelerationJerkStdZ", standard deviation derived Jerk signal, body acceleration z-axis, time domain signal

[45] tBodyGyro-std()-X, "tBodyAngularVelocityStdX", standard deviation estimated body angular velocity x-axis, time domain signal

[46] tBodyGyro-std()-Y, "tBodyAngularVelocityStdY", standard deviation estimated body angular velocity y-axis, time domain signal

[47] tBodyGyro-std()-Z, "tBodyAngularVelocityStdZ", standard deviation estimated body angular velocity z-axis, time domain signal

[48] tBodyGyroJerk-std()-X, "tBodyAngularVelocityJerkStdX, standard deviation derived Jerk signal, body angular velocity x-axis, time domain signal

[49] tBodyGyroJerk-std()-Y, "tBodyAngularVelocityJerkStdY", standard deviation derived Jerk signal, body angular velocity y-axis, time domain signal 

[50] tBodyGyroJerk-std()-Z, "tBodyAngularVelocityJerkStdZ", standard deviation derived Jerk signal, body angular velocity z-axis, time domain signal 

[51] tBodyAccMag-std(), "tBodyAccelerationMagnitudeStd", standard deviation body acceleration magnitude, time domain signal

[52] tGravityAccMag-std(), "tGravityAccelerationMagnitudeStd", standard deviation gravitational acceleration magnitude, time domain signal

[53] tBodyAccJerkMag-std(), "tBodyAccelerationJerkMagnitudeStd", standard deviation derived Jerk signal, body acceleration magnitude, time domain signal

[54] tBodyGyroMag-std(), "tBodyAngularVelocityMagnitudeStd", standard deviation body angular velocity magnitude, time domain signal

[55] tBodyGyroJerkMag-std(), "tBodyAngularVelocityJerkMagnitudeStd", standard deviation Jerk signal, body angular velocity magnitude, time domain signal

[56] fBodyAcc-std()-X, "fBodyAccelerationStdX", standard deviation estimated body acceleration x-axis, frequency domain signal

[57] fBodyAcc-std()-Y, "fBodyAccelerationStdY", standard deviation estimated body acceleration y-axis, frequency domain signal

[58] fBodyAcc-std()-Z, "fBodyAccelerationStdZ", standard deviation estimated body acceleration z-axis, frequency domain signal

[59] fBodyAccJerk-std()-X, "fBodyAccelerationJerkStdX", standard deviation derived Jerk signal, body acceleration x-axis, frequency domain signal

[60] fBodyAccJerk-std()-Y, "fBodyAccelerationJerkStdY", standard deviation derived Jerk signal, body acceleration y-axis, frequency domain signal

[61] fBodyAccJerk-std()-Z, "fBodyAccelerationJerkStdZ", standard deviation derived Jerk signal, body acceleration z-axis, frequency domain signal

[62] fBodyGyro-std()-X, "fBodyAngularVelocityStdX", standard deviation estimated body angular velocity x-axis, frequency domain signal

[63] fBodyGyro-std()-Y, "fBodyAngularVelocityStdY", standard deviation estimated body angular velocity y-axis, frequency domain signal

[64] fBodyGyro-std()-Z, "fBodyAngularVelocityStdZ", standard deviation estimated body angular velocity z-axis, frequency domain signal

[65] fBodyAccMag-std(), "fBodyAccelerationMagnitudeStd", standard deviation body acceleration magnitude, frequency domain signal

[66] fBodyBodyAccJerkMag-std(), "fBodyAccelerationJerkMagnitudeStd", standard deviation derived Jerk signal, body acceleration magnitude, frequency domain signal

[67] fBodyBodyGyroMag-std(), "fBodyAngularVelocityMagnitudeStd", standard deviation body angular velocity magnitude, frequency domain signal

[68] fBodyBodyGyroJerkMag-std(), "fBodyAngularVelocityJerkMagnitudeStd", standard deviation Jerk signal, body angular velocity magnitude, frequency domain signal


### Created 2nd data set
Averages across samples for each of the 66 mean and standard deviation measurements above for each subject 
doing each of the six activities.  
