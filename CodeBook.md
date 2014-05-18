## Assignment CodeBook

The *run_analysis.R* script does the following (the txt files from the original data ser have to be
available):

- Acquires the original input variable names reading the *features.txt* file and elaborates them
to remove special character ( *(*, *)*, *,* and *-*). More information on the variables can be found 
in the *features_info.txt* file
- Selects the indexes corresponding to variable names related to mean and standard deviation
values (i.e. selects the variable names that contains *-mean()* or *-std()* before the name 
standardization)
- Acquires the activities labels reading the *activity_labels.txt* file. This 
allows to derive the activity name from the corresponding numeric id
- Acquires the test set containing the input sensor measurements reading the *X_test.txt*
file
- Acquires the activity corresponding to each input measurement observation
from the input test set reading the *y_test.txt* file (i.e. activity ids)
- Acquires the subjects corresponding to the test set reading the *subject_test.txt*
file
- Binds the input, output and subject observations from the test sets to obtain the 
complete test set containing all the available variables (i.e. input sensor measurement 
variables, activity id and corresponding subjects)
- Acquires the training set containing the sensor measurements reading the *X_train.txt*
file
- Acquires the activity corresponding to each input measurement observation
from the input training set reading the *y_train.txt* file (i.e. activity ids)
- Acquires the subjects corresponding to the training set reading the *subject_train.txt*
file
- Binds the input, output and subject observations from the training sets to obtain the 
complete training set containing all the available variables (i.e. input sensor measurement 
variables, activity id and corresponding subjects)
- Concatenates the complete training and test sets to produce one data set containing 
both training and test data
- Using the indexes corresponding to mean and standard deviation obtained before the 
script selects only the corresponding variables from the complete dataset. Also the 
variables containing the subject and activity ids are maintained
- Using the <activity id-activity label> lookup data set the script then associate to
each activity numeric id the corresponding label (e.g. *1* for *WALKING*)

Note that the files contained inside the *Inertial Signals* are not considered.

The script then proceeds to aggregate the data computing the mean of each of the numeric 
sensor measurements with respect to the related activity and subject (i.e. it computes the 
average value of the sensor measurements for each activity and subject). Missing values are 
omitted from the computation.  
The output of this elaboration is then written to a text file name *TidyData.txt* using *;* 
as separator.

This tidy data set contains the following variables (note that the prefix *t* denotes a 
signal in time domain while *f* in frequency domain):

1. **Activity**: descriptive label for the activity
2. **SubjectId**: subject id
3. **tBodyAccMeanX**: mean of the average body acceleration along X axis
4. **tBodyAccMeanY**: mean of the average body acceleration along Y axis
5. **tBodyAccMeanZ**: mean of the average body acceleration along Z axis
6. **tBodyAccStdX**: mean of the standard deviation of body acceleration along X axis
7. **tBodyAccStdY**: mean of the standard deviation of body acceleration along Y axis
8. **tBodyAccStdZ**: mean of the standard deviation of body acceleration along Z axis
9. **tGravityAccMeanX**: mean of the average gravity acceleration along X axis
10. **tGravityAccMeanY**: mean of the average gravity acceleration along Y axis
11. **tGravityAccMeanZ**: mean of the average gravity acceleration along Z axis
12. **tGravityAccStdX**: mean of the standard deviation of gravity acceleration along X axis
13. **tGravityAccStdY**: mean of the standard deviation of gravity acceleration along Y axis
14. **tGravityAccStdZ**: mean of the standard deviation of gravity acceleration along Z axis
15. **tBodyAccJerkMeanX**: mean of the average Jerk signal of the body linear acceleration along X axis
16. **tBodyAccJerkMeanY**: mean of the average Jerk signal of the body linear acceleration along Y axis
17. **tBodyAccJerkMeanZ**: mean of the average Jerk signal of the body linear acceleration along Z axis
18. **tBodyAccJerkStdX**: mean of the standard deviation of Jerk signal of the body linear acceleration along X axis
19. **tBodyAccJerkStdY**: mean of the standard deviation of Jerk signal of the body linear acceleration along Y axis
20. **tBodyAccJerkStdZ**: mean of the standard deviation of Jerk signal of the body linear acceleration along Z axis
21. **tBodyGyroMeanX**: mean of the average body angular velocity along X axis
22. **tBodyGyroMeanY**: mean of the average body angular velocity along Y axis
23. **tBodyGyroMeanZ**: mean of the average body angular velocity along Z axis
24. **tBodyGyroStdX**: mean of the standard deviation of body angular velocity along X axis
25. **tBodyGyroStdY**: mean of the standard deviation of body angular velocity along Y axis
26. **tBodyGyroStdZ**: mean of the standard deviation of body angular velocity along Z axis
27. **tBodyGyroJerkMeanX**: mean of the average Jerk signal of the body angular velocity along X axis
28. **tBodyGyroJerkMeanY**: mean of the average Jerk signal of the body angular velocity along Y axis
29. **tBodyGyroJerkMeanZ**: mean of the average Jerk signal of the body angular velocity along Z axis
30. **tBodyGyroJerkStdX**: mean of the standard deviation of Jerk signal of the body angular velocity along X axis
31. **tBodyGyroJerkStdY**: mean of the standard deviation of Jerk signal of the body angular velocity along Y axis
32. **tBodyGyroJerkStdZ**: mean of the standard deviation of Jerk signal of the body angular velocity along Z axis
33. **tBodyAccMagMean**: mean of the average magnitude of body acceleration
34. **tBodyAccMagStd**: mean of the standard deviation of the magnitude of body acceleration
35. **tGravityAccMagMean**: mean of the average magnitude of gravity acceleration
36. **tGravityAccMagStd**: mean of the standard deviation of the magnitude of gravity acceleration
37. **tBodyAccJerkMagMean**: mean of the average magnitude of Jerk signal of the body linear acceleration
38. **tBodyAccJerkMagStd**: mean of the standard deviation of the magnitude of Jerk signal of the body linear acceleration
39. **tBodyGyroMagMean**: mean of the average magnitude of body angular velocity
40. **tBodyGyroMagStd**: mean of the standard deviation of the magnitude of body angular velocity
41. **tBodyGyroJerkMagMean**: mean of the average magnitude of Jerk signal of body angular velocity
42. **tBodyGyroJerkMagStd**: mean of the standard deviation of the magnitude of Jerk signal of body angular velocity
43. **fBodyAccMeanX**: mean of the average FFT of body acceleration along X axis 
44. **fBodyAccMeanY**: mean of the average FFT of body acceleration along Y axis  
45. **fBodyAccMeanZ**: mean of the average FFT of body acceleration along Z axis 
46. **fBodyAccStdX**: mean of the standard deviation of the FFT of body acceleration along X axis 
47. **fBodyAccStdY**: mean of the standard deviation of the FFT of body acceleration along Y axis 
48. **fBodyAccStdZ**: mean of the standard deviation of the FFT of body acceleration along Z axis 
49. **fBodyAccJerkMeanX**: mean of the average FFT of the Jerk signal of the body linear acceleration along X axis 
50. **fBodyAccJerkMeanY**: mean of the average FFT of the Jerk signal of the body linear acceleration along Y axis
51. **fBodyAccJerkMeanZ**: mean of the average FFT of the Jerk signal of the body linear acceleration along Z axis
52. **fBodyAccJerkStdX**: mean of the standard deviation of the FFT of the Jerk signal of the body linear acceleration along X axis
53. **fBodyAccJerkStdY**: mean of the standard deviation of the FFT of the Jerk signal of the body linear acceleration along Y axis
54. **fBodyAccJerkStdZ**: mean of the standard deviation of the FFT of the Jerk signal of the body linear acceleration along Z axis
55. **fBodyGyroMeanX**: mean of the average FFT of the body angular velocity along X axis
56. **fBodyGyroMeanY**: mean of the average FFT of the body angular velocity along Y axis
57. **fBodyGyroMeanZ**: mean of the average FFT of the body angular velocity along Z axis
58. **fBodyGyroStdX**: mean of the standard deviation of the FFT of the body angular velocity along X axis
59. **fBodyGyroStdY**: mean of the standard deviation of the FFT of the body angular velocity along Y axis
60. **fBodyGyroStdZ**: mean of the standard deviation of the FFT of the body angular velocity along Z axis
61. **fBodyAccMagMean**: mean of the average FFT of the magnitude of body acceleration
62. **fBodyAccMagStd**: mean of the standard deviation of the FFT of the magnitude of body acceleration
63. **fBodyBodyAccJerkMagMean**: mean of the average FFT of the magnitude of Jerk signal of the body linear acceleration 
64. **fBodyBodyAccJerkMagStd**: mean of the standard deviation of the FFT of the magnitude of Jerk signal of the body linear acceleration 
65. **fBodyBodyGyroMagMean**: mean of the average FFT of thr magnitude of the body angular velocity 
66. **fBodyBodyGyroMagStd**: mean of the standard deviation of the FFT of thr magnitude of the body angular velocity
67. **fBodyBodyGyroJerkMagMean**: mean of the average FFT of the magnitude of Jerk signal of the body angular velocity
68. **fBodyBodyGyroJerkMagStd**: mean of the standard deviation of the FFT of the magnitude of Jerk signal of the body angular velocity

Note that the original accelerometer and gyroscope 3-axial raw signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency
of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity
acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
The body linear acceleration and angular velocity were also derived in time to obtain Jerk signals and the
magnitude of these signals were calculated using the Euclidean norm.