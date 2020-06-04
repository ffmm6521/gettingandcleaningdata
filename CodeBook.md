## CodeBook: Data Science Specialization course series: Getting and Cleaning Data Course Project

### Original raw data sets: Human Activity Recognition Using Smartphones Dataset Version 1.0:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto and Xavier Parra.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Italy.
CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain

-------------------------------------------------------------------------------------------------
#### List of the original data sets inside the downloaded zip file:

	- 'README.txt'
	
	- 'features_info.txt': Shows information about the variables used on the feature vector.

	- 'features.txt': List of all features.

	- 'activity_labels.txt': Links the class labels with their activity name.

	- 'train/X_train.txt': Training set.
	
	- 'train/y_train.txt': Training labels.

	- 'test/X_test.txt': Test set.

	- 'test/y_test.txt': Test labels.
   
   	- 'train/subject_train.txt':   Each row identifies the subject who performed the activity for each window sample.
    Its range is from 1 to 30. (for training set)
   
   	- 'test/subject_test.txt':  Each row identifies the subject who performed the activity for each window sample.
   	Its range is from 1 to 30. (for test set)
      
   	  
-------------------------------------------------------------------------------------------------------------
#### Data Set information:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
>Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
>wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,
>they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
>The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
>partitioned into two sets, where 70 of the volunteers was selected for generating the training data
>and 30 the test data.
>
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
>and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
>Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency
>of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration
>signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
>(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
>using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,
>fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
>(Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>- 
>		- tBodyAcc-XYZ
>		- tGravityAcc-XYZ
>		- tBodyAccJerk-XYZ
>		- tBodyGyro-XYZ
>		- tBodyGyroJerk-XYZ
>		- tBodyAccMag
>		- tGravityAccMag
>		- tBodyAccJerkMag
>		- tBodyGyroMag
>		- tBodyGyroJerkMag
>		- fBodyAcc-XYZ
>		- fBodyAccJerk-XYZ
>		- fBodyGyro-XYZ
>		- fBodyAccMag
>		- fBodyAccJerkMag
>		- fBodyGyroMag
>		- fBodyGyroJerkMag
>
>
>	The set of variables that were estimated from these signals are: 
>
>		- mean(): Mean value
>		- std(): Standard deviation
>		- mad(): Median absolute deviation 
>		- max(): Largest value in array
>		- min(): Smallest value in array
>		- sma(): Signal magnitude area
>		- energy(): Energy measure. Sum of the squares divided by the number of values. 
>		- iqr(): Interquartile range 
>		- entropy(): Signal entropy
>		- arCoeff(): Autorregresion coefficients with Burg order equal to 4
>		- correlation(): correlation coefficient between two signals
>		- maxInds(): index of the frequency component with largest magnitude
>		- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
>		- skewness(): skewness of the frequency domain signal 
>		- kurtosis(): kurtosis of the frequency domain signal 
>		- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
>		- angle(): Angle between to vectors.
>
>       Additional vectors obtained by averaging the signals in a signal window sample. 
>       These are used on the angle() variable:
>
>       - gravityMean
>       - tBodyAccMean
>       - tBodyAccJerkMean
>       - tBodyGyroMean
>       - tBodyGyroJerkMean

##### Unit:

Features are normalized and bounded within [-1,1]. In other words, they are unitless.

------------------------------------------------------------------------------------------------
#### Data sets: variables

I only selected those input variables related to the measurements on the mean and st||andard deviation      

        "timeBodyAccmeanX"                     "timeBodyAccmeanY"                      "timeBodyAccmeanZ"                 
        "timeBodyAccstdX"                      "timeBodyAccstdY"                       "timeBodyAccstdZ"                  
        "timeGravityAccmeanX"                  "timeGravityAccmeanY"                   "timeGravityAccmeanZ"              
        "timeGravityAccstdX"                   "timeGravityAccstdY"                    "timeGravityAccstdZ"               
        "timeBodyAccJerkmeanX"                 "timeBodyAccJerkmeanY"                  "timeBodyAccJerkmeanZ"             
        "timeBodyAccJerkstdX"                  "timeBodyAccJerkstdY"                   "timeBodyAccJerkstdZ"             
        "timeBodyGyromeanX"                    "timeBodyGyromeanY"                     "timeBodyGyromeanZ"               
        "timeBodyGyrostdX"                     "timeBodyGyrostdY"                      "timeBodyGyrostdZ"                
        "timeBodyGyroJerkmeanX"                "timeBodyGyroJerkmeanY"                 "timeBodyGyroJerkmeanZ"           
        "timeBodyGyroJerkstdX"                 "timeBodyGyroJerkstdY"                  "timeBodyGyroJerkstdZ"            
        "timeBodyAccMagmean"                   "timeBodyAccMagstd"                     "timeGravityAccMagmean"           
        "timeGravityAccMagstd"                 "timeBodyAccJerkMagmean"                "timeBodyAccJerkMagstd"           
        "timeBodyGyroMagmean"                  "timeBodyGyroMagstd"                    "timeBodyGyroJerkMagmean"         
        "timeBodyGyroJerkMagstd"               "fouTranBodyAccmeanX"                   "fouTranBodyAccmeanY"             
        "fouTranBodyAccmeanZ"                  "fouTranBodyAccstdX"                    "fouTranBodyAccstdY"              
        "fouTranBodyAccstdZ"                   "fouTranBodyAccmeanFreqX"               "fouTranBodyAccmeanFreqY"         
        "fouTranBodyAccmeanFreqZ"              "fouTranBodyAccJerkmeanX"               "fouTranBodyAccJerkmeanY"         
        "fouTranBodyAccJerkmeanZ"              "fouTranBodyAccJerkstdX"                "fouTranBodyAccJerkstdY"          
        "fouTranBodyAccJerkstdZ"               "fouTranBodyAccJerkmeanFreqX"           "fouTranBodyAccJerkmeanFreqY"     
        "fouTranBodyAccJerkmeanFreqZ"          "fouTranBodyGyromeanX"                  "fouTranBodyGyromeanY"            
        "fouTranBodyGyromeanZ"                 "fouTranBodyGyrostdX"                   "fouTranBodyGyrostdY"             
        "fouTranBodyGyrostdZ"                  "fouTranBodyGyromeanFreqX"              "fouTranBodyGyromeanFreqY"        
        "fouTranBodyGyromeanFreqZ"             "fouTranBodyAccMagmean"                 "fouTranBodyAccMagstd"            
        "fouTranBodyAccMagmeanFreq"            "fouTranBodyAccJerkMagmean"             "fouTranBodyAccJerkMagstd"        
        "fouTranBodyAccJerkMagmeanFreq"        "fouTranBodyGyroMagmean"                "fouTranBodyGyroMagstd"           
        "fouTranBodyGyroMagmeanFreq"           "fouTranBodyGyroJerkMagmean"            "fouTranBodyGyroJerkMagstd"       
        "fouTranBodyGyroJerkMagmeanFreq"       "angletBodyAccMeangravity"              "angletBodyAccJerkMeangravityMean" 
        "angletBodyGyroMeangravityMean"        "angletBodyGyroJerkMeangravityMean"     "angleXgravityMean"                
        "angleYgravityMean"                    "angleZgravityMean"                                                        

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
### Tidy data sets

#### Tidy data set: data structure

* There are 180 observations of 68 variables.

		Classes ‘data.table’ and 'data.frame':	180 obs. of  88 variables:
 		$ subject                          : int
 		$ activity                         : chr
 		$ timeBodyAccmeanX                 : num
 		$ timeBodyAccmeanY                 : num
		$ timeBodyAccmeanZ                 : num
 		$ timeBodyAccstdX                  : num
 		$ timeBodyAccstdY                  : num
 		$ timeBodyAccstdZ                  : num
 		$ timeGravityAccmeanX              : num
 		$ timeGravityAccmeanY              : num
 		$ timeGravityAccmeanZ              : num
 		$ timeGravityAccstdX               : num
 		$ timeGravityAccstdY               : num
 		$ timeGravityAccstdZ               : num
 		$ timeBodyAccJerkmeanX             : num
 		$ timeBodyAccJerkmeanY             : num
 		$ timeBodyAccJerkmeanZ             : num
		$ timeBodyAccJerkstdX              : num
 		$ timeBodyAccJerkstdY              : num
 		$ timeBodyAccJerkstdZ              : num
 		$ timeBodyGyromeanX                : num
 		$ timeBodyGyromeanY                : num
 		$ timeBodyGyromeanZ                : num
 		$ timeBodyGyrostdX                 : num
 		$ timeBodyGyrostdY                 : num
 		$ timeBodyGyrostdZ                 : num
 		$ timeBodyGyroJerkmeanX            : num
 		$ timeBodyGyroJerkmeanY            : num
 		$ timeBodyGyroJerkmeanZ            : num
 		$ timeBodyGyroJerkstdX             : num
 		$ timeBodyGyroJerkstdY             : num
 		$ timeBodyGyroJerkstdZ             : num
 		$ timeBodyAccMagmean               : num
 		$ timeBodyAccMagstd                : num
 		$ timeGravityAccMagmean            : num
 		$ timeGravityAccMagstd             : num
 		$ timeBodyAccJerkMagmean           : num
 		$ timeBodyAccJerkMagstd            : num
 		$ timeBodyGyroMagmean              : num
		$ timeBodyGyroMagstd               : num
		$ timeBodyGyroJerkMagmean          : num
 		$ timeBodyGyroJerkMagstd           : num
 		$ fouTranBodyAccmeanX              : num
 		$ fouTranBodyAccmeanY              : num
 		$ fouTranBodyAccmeanZ              : num
 		$ fouTranBodyAccstdX               : num
 		$ fouTranBodyAccstdY               : num
 		$ fouTranBodyAccstdZ               : num
 		$ fouTranBodyAccmeanFreqX          : num
 		$ fouTranBodyAccmeanFreqY          : num
 		$ fouTranBodyAccmeanFreqZ          : num
 		$ fouTranBodyAccJerkmeanX          : num
 		$ fouTranBodyAccJerkmeanY          : num
 		$ fouTranBodyAccJerkmeanZ          : num
 		$ fouTranBodyAccJerkstdX           : num
		$ fouTranBodyAccJerkstdY           : num
 		$ fouTranBodyAccJerkstdZ           : num
 		$ fouTranBodyAccJerkmeanFreqX      : num
 		$ fouTranBodyAccJerkmeanFreqY      : num
 		$ fouTranBodyAccJerkmeanFreqZ      : num
 		$ fouTranBodyGyromeanX             : num
 		$ fouTranBodyGyromeanY             : num
 		$ fouTranBodyGyromeanZ             : num
 		$ fouTranBodyGyrostdX              : num
 		$ fouTranBodyGyrostdY              : num
 		$ fouTranBodyGyrostdZ              : num
 		$ fouTranBodyGyromeanFreqX         : num
 		$ fouTranBodyGyromeanFreqY         : num
 		$ fouTranBodyGyromeanFreqZ         : num
 		$ fouTranBodyAccMagmean            : num
 		$ fouTranBodyAccMagstd             : num
 		$ fouTranBodyAccMagmeanFreq        : num
 		$ fouTranBodyAccJerkMagmean        : num
 		$ fouTranBodyAccJerkMagstd         : num
 		$ fouTranBodyAccJerkMagmeanFreq    : num
 		$ fouTranBodyGyroMagmean           : num
 		$ fouTranBodyGyroMagstd            : num
 		$ fouTranBodyGyroMagmeanFreq       : num
 		$ fouTranBodyGyroJerkMagmean       : num
 		$ fouTranBodyGyroJerkMagstd        : num
 		$ fouTranBodyGyroJerkMagmeanFreq   : num
 		$ angletBodyAccMeangravity         : num
 		$ angletBodyAccJerkMeangravityMean : num
 		$ angletBodyGyroMeangravityMean    : num
 		$ angletBodyGyroJerkMeangravityMean: num
 		$ angleXgravityMean                : num
 		$ angleYgravityMean                : num
 		$ angleZgravityMean                : num
