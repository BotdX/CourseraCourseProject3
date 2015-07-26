# CourseraCourseProject3
Repository for Coursera Data Science Course Project

Sourcing run_analysis.R will read in the UIC HAR Dataset, reshape and rename it and write to a table the mean of the mean and standard deviation of the measurements for each subject and activity.

CODE BOOK

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


All rows correspond to means of the variable for that Subject and Activity.

VARIABLES:

"Subject" \\
"Activity" 
"tBodyAccmeanX.mean" 
"tBodyAccmeanY.mean" 
"tBodyAccmeanZ.mean" 
"tBodyAccstdX.mean" 
"tBodyAccstdY.mean" 
"tBodyAccstdZ.mean" 
"tGravityAccmeanX.mean" 
"tGravityAccmeanY.mean" 
"tGravityAccmeanZ.mean" 
"tGravityAccstdX.mean" 
"tGravityAccstdY.mean" 
"tGravityAccstdZ.mean" 
"tBodyAccJerkmeanX.mean" 
"tBodyAccJerkmeanY.mean" 
"tBodyAccJerkmeanZ.mean" 
"tBodyAccJerkstdX.mean" 
"tBodyAccJerkstdY.mean" 
"tBodyAccJerkstdZ.mean" 
"tBodyGyromeanX.mean" 
"tBodyGyromeanY.mean" 
"tBodyGyromeanZ.mean" 
"tBodyGyrostdX.mean" 
"tBodyGyrostdY.mean" 
"tBodyGyrostdZ.mean" 
"tBodyGyroJerkmeanX.mean" 
"tBodyGyroJerkmeanY.mean" 
"tBodyGyroJerkmeanZ.mean"
"tBodyGyroJerkstdX.mean"
"tBodyGyroJerkstdY.mean"
"tBodyGyroJerkstdZ.mean"
"tBodyAccMagmean.mean"
"tBodyAccMagstd.mean"
"tGravityAccMagmean.mean"
"tGravityAccMagstd.mean"
"tBodyAccJerkMagmean.mean"
"tBodyAccJerkMagstd.mean"
"tBodyGyroMagmean.mean"
"tBodyGyroMagstd.mean"
"tBodyGyroJerkMagmean.mean"
"tBodyGyroJerkMagstd.mean"
"fBodyAccmeanX.mean"
"fBodyAccmeanY.mean"
"fBodyAccmeanZ.mean"
"fBodyAccstdX.mean"
"fBodyAccstdY.mean"
"fBodyAccstdZ.mean"
"fBodyAccJerkmeanX.mean"
"fBodyAccJerkmeanY.mean"
"fBodyAccJerkmeanZ.mean"
"fBodyAccJerkstdX.mean"
"fBodyAccJerkstdY.mean"
"fBodyAccJerkstdZ.mean"
"fBodyGyromeanX.mean"
"fBodyGyromeanY.mean"
"fBodyGyromeanZ.mean"
"fBodyGyrostdX.mean"
"fBodyGyrostdY.mean"
"fBodyGyrostdZ.mean"
"fBodyAccMagmean.mean"
"fBodyAccMagstd.mean"
"fBodyBodyAccJerkMagmean.mean"
"fBodyBodyAccJerkMagstd.mean"
"fBodyBodyGyroMagmean.mean"
"fBodyBodyGyroMagstd.mean"
"fBodyBodyGyroJerkMagmean.mean"
"fBodyBodyGyroJerkMagstd.mean"
