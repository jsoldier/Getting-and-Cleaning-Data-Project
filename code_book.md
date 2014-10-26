This code book is an update to the file "features_info.txt" and "features.txt" that are available in the original data source (see Readme.md file)

The tidy data set output from the script "run_analysis.R" only contains the mean and standard deviation measurements of the original variables. In addition, the variable names has been expanded to be more descriptive as described below:

tBodyAcc-XYZ becomes timeBodyAccelerometer-XYZ
So, tBodyAcc-mean()-X becomes timeBodyAccelerometerMeanX, tBodyAcc-mean()-Y becomes timeBodyAccelerometerMeanY, and so on

fBodyGyro-XYZ becomes frequencyBodyGyroscope-XYZ
So, fBodyGyro-mean()-X becomes frequencyBodyGyroscopeMeanX, fBodyGyro-mean()-Y becomes frequencyBodyGyroscopeMeanY, and so on

The full list of variables in the tidy_data.txt is as follow

- activity - the name of the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- subject - the subject identifier (1-30)
- timeBodyAccelerometerMeanX
- timeBodyAccelerometerMeanX
- timeBodyAccelerometerMeanY
- timeBodyAccelerometerMeanZ
- timeGravityAccelerometerMeanX
- timeGravityAccelerometerMeanY
- timeGravityAccelerometerMeanZ
- timeBodyAccelerometerJerkMeanX
- timeBodyAccelerometerJerkMeanY
- timeBodyAccelerometerJerkMeanZ
- timeBodyGyroscopeMeanX
- timeBodyGyroscopeMeanY
- timeBodyGyroscopeMeanZ
- timeBodyGyroscopeJerkMeanX
- timeBodyGyroscopeJerkMeanY
- timeBodyGyroscopeJerkMeanZ
- timeBodyAccelerometerMagnitudeMean
- timeGravityAccelerometerMagnitudeMean
- timeBodyAccelerometerJerkMagnitudeMean
- timeBodyGyroscopeMagnitudeMean
- timeBodyGyroscopeJerkMagnitudeMean
- frequencyBodyAccelerometerMeanX
- frequencyBodyAccelerometerMeanY
- frequencyBodyAccelerometerMeanZ
- frequencyBodyAccelerometerJerkMeanX                                          
- frequencyBodyAccelerometerJerkMeanY
- frequencyBodyAccelerometerJerkMeanZ
- frequencyBodyGyroscopeMeanX
- frequencyBodyGyroscopeMeanY
- frequencyBodyGyroscopeMeanZ
- frequencyBodyAccelerometerMagnitudeMean
- frequencyBodyAccelerometerJerkMagnitudeMean
- frequencyBodyGyroscopeMagnitudeMean
- frequencyBodyGyroscopeJerkMagnitudeMean
- timeBodyAccelerometerStandardDeviationX
- timeBodyAccelerometerStandardDeviationY
- timeBodyAccelerometerStandardDeviationZ
- timeGravityAccelerometerStandardDeviationX
- timeGravityAccelerometerStandardDeviationY
- timeGravityAccelerometerStandardDeviationZ
- timeBodyAccelerometerJerkStandardDeviationX
- timeBodyAccelerometerJerkStandardDeviationY
- timeBodyAccelerometerJerkStandardDeviationZ
- timeBodyGyroscopeStandardDeviationX
- timeBodyGyroscopeStandardDeviationY
- timeBodyGyroscopeStandardDeviationZ
- timeBodyGyroscopeJerkStandardDeviationX
- timeBodyGyroscopeJerkStandardDeviationY
- timeBodyGyroscopeJerkStandardDeviationZ
- timeBodyAccelerometerMagnitudeStandardDeviation
- timeGravityAccelerometerMagnitudeStandardDeviation
- timeBodyAccelerometerJerkMagnitudeStandardDeviation
- timeBodyGyroscopeMagnitudeStandardDeviation
- timeBodyGyroscopeJerkMagnitudeStandardDeviation
- frequencyBodyAccelerometerStandardDeviationX
- frequencyBodyAccelerometerStandardDeviationY
- frequencyBodyAccelerometerStandardDeviationZ
- frequencyBodyAccelerometerJerkStandardDeviationX
- frequencyBodyAccelerometerJerkStandardDeviationY
- frequencyBodyAccelerometerJerkStandardDeviationZ
- frequencyBodyGyroscopeStandardDeviationX
- frequencyBodyGyroscopeStandardDeviationY
- frequencyBodyGyroscopeStandardDeviationZ
- frequencyBodyAccelerometerMagnitudeStandardDeviation
- frequencyBodyAccelerometerJerkMagnitudeStandardDeviation
- frequencyBodyGyroscopeMagnitudeStandardDeviation
- frequencyBodyGyroscopeJerkMagnitudeStandardDeviation
