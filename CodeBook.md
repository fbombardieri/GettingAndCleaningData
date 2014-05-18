## Assignment CodeBook

This tidy data set contains the following variables (note that the prefix '*t*' denotes a 
signal in time domain while '*f*' in frequency domain):

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
More information on the original variables can be found in the *features_info.txt* file. 