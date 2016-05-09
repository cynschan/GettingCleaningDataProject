# GettingCleaningDataProject

## Synopsis
This repo contains an R script that collects and cleans up sets of data collected from accelerometers from the
Samsung Galaxy S smartphone.  The script merges the training and test data from the 30 subjects to extract relevant measurements,
and then create a separate dataset containing the means of those measures for each subject and activity.


## The Objective
The run_analysis.R script is intended to take the accelerometer data from all subjects and tidy the data set for later analysis.
The script combines the training and test sets into one data set, and adds subject and activity information to the corresponding
measurement observation.  Then, only mean and standard deviation variables for each measurement are extracted from the data set.
The list of the features are modified into descriptive variable names.  Finally the data are summarized into a new data set containing
the average of each variable for each subject and activity.  The script writes this new data set to an output text file named
"AveragesBySubjectActivity.txt."



## Data for the Project
A full description of the experiment and the data are available at:
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data were downloaded as a zip file, "UCI HAR Dataset."
