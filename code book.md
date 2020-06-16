
# Code Book
**Getting and Cleaning Data Project**

By: Syed Abdullah Muzaffar

Language: R

Related Script: "data_analysis.R"

**Dataset: UCI HAR Dataset**

**Script Variables:**

**Step 1:**
 - **dir**
	 - The directory that the dataset is stored in:
 - **activity**
	 - The list of activities with their numeric id and description
 - **features**
	 -  The list of features
 - **train_sub**
	 - Subject tests for the training dataset
 - **train_X**
	 - Feature values for the training dataset
 - **train_y**
	 - Activity ID's for the training dataset
 - **test_sub**
	 - Subject tests for the test dataset
 - **test_X**
	 - Feature values for the test dataset
 - **test_y**
	 - Activity ID's for the test dataset
 
 - **sub**
	 - Merges **train_sub** and **test_sub**
 - **X**
	 - Merges **train_X** and **test_X**
 - **y**
	 - Merges **train_y** and **test_y**

The **train_*** and  **test_*** data frames are removed

 - **Data** 
	 - Merges **sub**, **y**, **X** by columns
	 - The column names for Data columns **X** are replaced by Descriptive **features**

**Step 2:**
 - **Data**
	 - Only the mean and standard deviation measurements are extracted.

**Step 3:**
 - **Data**
	 - Replace Activity ID with Activity Name in the 2nd column

**Step 4:**
 - **Data**
	 - Columns 2:END are labelled with descriptive names
		 - Acc -> Accelerometer
		 - Gyro -> Gyroscope
		 - Mag -> Magnitude
		 - mean -> Mean
		 - std -> SD
		 - Freq \f -> Frequency
		 - t -> Time
		 -  "-" (dashes) are removed
		 - Some minor issues are fixed (extra brackets)

**Step 5:**
 - **Data2**
	 - Contains the averages for each activity and group feature
	 - exported to **"Data2.txt"**


**Dataset Variables:**

**Data2.txt**  

Columns (Enclosed in Quotation Marks):

 - **"Subject"** Column: 1 |Numeric(Counting) |The Test Subject ID
 - **"Activity"** Column: 2 |String(Converted From Numeric ID to Descriptive String) | The Activity that the Subject is performing
	-   WALKING : 1
	-   WALKING_UPSTAIRS : 2
	-   WALKING_DOWNSTAIRS : 3
	-   SITTING : 4
	-   STANDING :5
	-   LAYING: 6

 - **Features** Columns: 3-88 |Numeric |The means of each of the features in the UCI HAR Dataset by Subject and Activity
 
 	"TimeBodyAccelerometerMean()X"
	
	"TimeBodyAccelerometerMean()Y"
	
	"TimeBodyAccelerometerMean()Z"
	
	"TimeGravityAccelerometerMean()X"
	
	"TimeGravityAccelerometerMean()Y"
	
	"TimeGravityAccelerometerMean()Z"
	
	"TimeBodyAccelerometerJerkMean()X"
	
	"TimeBodyAccelerometerJerkMean()Y"
	
	"TimeBodyAccelerometerJerkMean()Z"
	
	"TimeBodyGyroscopeMean()X"
	
	"TimeBodyGyroscopeMean()Y"
	
	"TimeBodyGyroscopeMean()Z"
	
	"TimeBodyGyroscopeJerkMean()X"
	
	"TimeBodyGyroscopeJerkMean()Y"
	
	"TimeBodyGyroscopeJerkMean()Z"
	
	"TimeBodyAccelerometerMagnitudeMean()"
	
	"TimeGravityAccelerometerMagnitudeMean()"
	
	"TimeBodyAccelerometerJerkMagnitudeMean()"
	
	"TimeBodyGyroscopeMagnitudeMean()"
	
	"TimeBodyGyroscopeJerkMagnitudeMean()"
	
	"FrequencyBodyAccelerometerMean()X"
	
	"FrequencyBodyAccelerometerMean()Y"
	
	"FrequencyBodyAccelerometerMean()Z"
	
	"FrequencyBodyAccelerometerMeanFrequency()X"
	
	"FrequencyBodyAccelerometerMeanFrequency()Y"
	
	"FrequencyBodyAccelerometerMeanFrequency()Z"
	
	"FrequencyBodyAccelerometerJerkMean()X"
	
	"FrequencyBodyAccelerometerJerkMean()Y"
	
	"FrequencyBodyAccelerometerJerkMean()Z"
	
	"FrequencyBodyAccelerometerJerkMeanFrequency()X"
	
	"FrequencyBodyAccelerometerJerkMeanFrequency()Y"
	
	"FrequencyBodyAccelerometerJerkMeanFrequency()Z"
	
	"FrequencyBodyGyroscopeMean()X"
	
	"FrequencyBodyGyroscopeMean()Y"
	
	"FrequencyBodyGyroscopeMean()Z"
	
	"FrequencyBodyGyroscopeMeanFrequency()X"
	
	"FrequencyBodyGyroscopeMeanFrequency()Y"
	
	"FrequencyBodyGyroscopeMeanFrequency()Z"
	
	"FrequencyBodyAccelerometerMagnitudeMean()"
	
	"FrequencyBodyAccelerometerMagnitudeMeanFrequency()"
	
	"FrequencyBodyBodyAccelerometerJerkMagnitudeMean()"
	
	"FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFrequency()"
	
	"FrequencyBodyBodyGyroscopeMagnitudeMean()"
	
	"FrequencyBodyBodyGyroscopeMagnitudeMeanFrequency()"
	
	"FrequencyBodyBodyGyroscopeJerkMagnitudeMean()"
	
	"FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFrequency()"
	
	"Angle(TimeBodyAccelerometerMean,Gravity)"
	
	"Angle(TimeBodyAccelerometerJerkMean,GravityMean)"
	
	"Angle(TimeBodyGyroscopeMean,GravityMean)"
	
	"Angle(TimeBodyGyroscopeJerkMean,GravityMean)"
	
	"Angle(X,GravityMean)"
	
	"Angle(Y,GravityMean)"
	
	"Angle(Z,GravityMean)"
	
	"TimeBodyAccelerometerSD()X"
	
	"TimeBodyAccelerometerSD()Y"
	
	"TimeBodyAccelerometerSD()Z"
	
	"TimeGravityAccelerometerSD()X"
	
	"TimeGravityAccelerometerSD()Y"
	
	"TimeGravityAccelerometerSD()Z"
	
	"TimeBodyAccelerometerJerkSD()X"
	
	"TimeBodyAccelerometerJerkSD()Y"
	
	"TimeBodyAccelerometerJerkSD()Z"
	
	"TimeBodyGyroscopeSD()X"
	
	"TimeBodyGyroscopeSD()Y"
	
	"TimeBodyGyroscopeSD()Z"
	
	"TimeBodyGyroscopeJerkSD()X"
	
	"TimeBodyGyroscopeJerkSD()Y"
	
	"TimeBodyGyroscopeJerkSD()Z"
	
	"TimeBodyAccelerometerMagnitudeSD()"
	
	"TimeGravityAccelerometerMagnitudeSD()"
	
	"TimeBodyAccelerometerJerkMagnitudeSD()"
	
	"TimeBodyGyroscopeMagnitudeSD()"
	
	"TimeBodyGyroscopeJerkMagnitudeSD()"
	
	"FrequencyBodyAccelerometerSD()X"
	
	"FrequencyBodyAccelerometerSD()Y"
	
	"FrequencyBodyAccelerometerSD()Z"
	
	"FrequencyBodyAccelerometerJerkSD()X"
	
	"FrequencyBodyAccelerometerJerkSD()Y"
	
	"FrequencyBodyAccelerometerJerkSD()Z"
	
	"FrequencyBodyGyroscopeSD()X"
	
	"FrequencyBodyGyroscopeSD()Y"
	
	"FrequencyBodyGyroscopeSD()Z"
	
	"FrequencyBodyAccelerometerMagnitudeSD()"
	
	"FrequencyBodyBodyAccelerometerJerkMagnitudeSD()"
	
	"FrequencyBodyBodyGyroscopeMagnitudeSD()"
	
	"FrequencyBodyBodyGyroscopeJerkMagnitudeSD()"
