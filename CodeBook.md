Here the variables of the tidy.csv dataset are described.
They are divided into two classes:

**First** subject and activity groups, upon which the original measurements are splitted and averaged

* subject - 1 to 30, identifies every person whose activity was measured during the experiment
* activity - Factor w/ 6 levels "laying","sitting", "standing", "walking", "walking_downstairs",  "walking_upstairs"
 
**Second** Technical measurements from the smartphones. Original description: 

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

>The set of variables that were estimated from these signals are: 

>mean(): Mean value
>std(): Standard deviation
 
 **PLEASE NOTE that we only used mean() and std() variables from the original dataset and the variables are further averaged by subject and activity**
  * tbodyacc-mean()-x
  * tbodyacc-mean()-y
  * tbodyacc-mean()-z
  * tbodyacc-std()-x
  * tbodyacc-std()-y
  * tbodyacc-std()-z
  * tgravityacc-mean()-x
  * tgravityacc-mean()-y
  * tgravityacc-mean()-z
  * tgravityacc-std()-x
  * tgravityacc-std()-y
  * tgravityacc-std()-z
  * tbodyaccjerk-mean()-x
  * tbodyaccjerk-mean()-y
  * tbodyaccjerk-mean()-z
  * tbodyaccjerk-std()-x
  * tbodyaccjerk-std()-y
  * tbodyaccjerk-std()-z
  * tbodygyro-mean()-x
  * tbodygyro-mean()-y
  * tbodygyro-mean()-z
  * tbodygyro-std()-x
  * tbodygyro-std()-y
  * tbodygyro-std()-z
  * tbodygyrojerk-mean()-x
  * tbodygyrojerk-mean()-y
  * tbodygyrojerk-mean()-z
  * tbodygyrojerk-std()-x
  * tbodygyrojerk-std()-y
  * tbodygyrojerk-std()-z
  * tbodyaccmag-mean()
  * tbodyaccmag-std()
  * tgravityaccmag-mean()
  * tgravityaccmag-std()
  * tbodyaccjerkmag-mean()
  * tbodyaccjerkmag-std()
  * tbodygyromag-mean()
  * tbodygyromag-std()
  * tbodygyrojerkmag-mean()
  * tbodygyrojerkmag-std()
  * fbodyacc-mean()-x
  * fbodyacc-mean()-y
  * fbodyacc-mean()-z
  * fbodyacc-std()-x
  * fbodyacc-std()-y
  * fbodyacc-std()-z
  * fbodyaccjerk-mean()-x
  * fbodyaccjerk-mean()-y
  * fbodyaccjerk-mean()-z
  * fbodyaccjerk-std()-x
  * fbodyaccjerk-std()-y
  * fbodyaccjerk-std()-z
  * fbodygyro-mean()-x
  * fbodygyro-mean()-y
  * fbodygyro-mean()-z
  * fbodygyro-std()-x
  * fbodygyro-std()-y
  * fbodygyro-std()-z
  * fbodyaccmag-mean()
  * fbodyaccmag-std()
  * fbodybodyaccjerkmag-mean()
  * fbodybodyaccjerkmag-std()
  * fbodybodygyromag-mean()
  * fbodybodygyromag-std()
  * fbodybodygyrojerkmag-mean()
  * fbodybodygyrojerkmag-std()
