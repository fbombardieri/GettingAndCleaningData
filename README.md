### Introduction

The purpose of this repository is to contain the results (script, dataset, 
etc.) of the projects related to the "Getting and Cleaning Data" course
from Coursera.

### First Course Project

The assignment required to download from the UC Irvine Machine Learning 
Repository all the datasets produced by University of Genoa during their
"Human Activity Recognition Using Smartphones" study 
[link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
and to merge and elaborate these datasets into a single dataset and from this produce
a separated tidy data set containing aggregated data.  
To performs the elaboration the *run_analysis.R* script has been used.
The *CodeBook.md* file contains all the informations about the considered variables.

The *run_analysis.R* script does the following (the txt files from the original data set have to be
available):

- Acquires the original input variable names reading the *features.txt* file and elaborates them
to remove special character ( '*(*', '*)*', '*,*' and '*-*'). More information on the variables can be found 
in the *features_info.txt* file
- Selects the indexes corresponding to variable names related to mean and standard deviation
values (i.e. selects the variable names that contains '*-mean()*' or '*-std()*' before the name 
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