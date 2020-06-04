## Data Science Specialization course series: Getting and Cleaning Data Course Project

### Purpose and goal
>
> The purpose of this project is to demonstrate the ability of > the students to collect, work with, and clean a data set.The > goal is to prepare tidy data that can be used for later
> analysis.
> Students will be graded by peers on a series of yes/no > questions related to the project. Students will be required to > submit: 
> 
>   1. a tidy data set as described below,
>   2. a link to a Github repository with your script for performing the analysis,
>   3. a code book that describes the variables, the data, and any transformations or work that studens performed to clean up the data called CodeBook.md. Students should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
>
>-------------------------------------------------------------
>
>### Input data and instructions
>
> One of the most exciting areas in all of data science right now is wearable computing - see for 
> example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most 
> advanced algorithms to attract new users. The data linked to from the course website represent data 
> collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is 
> available at the site where the data was obtained:
>
> [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
>
>Here are the data for the project:
>
> [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
>
> Students should create one R script called run_analysis.R that does the following:
>
>   1. Merges the training and the test sets to create one data set.
>   2. Extracts only the measurements on the mean and standard deviation for each measurement.
>   3. Uses descriptive activity names to name the activities in the data set
>   4. Appropriately labels the data set with descriptive variable names.
>   5. From the data set in step 4, creates a second, independent tidy data set with the average of >   each variable for each activity and each subject

--------------------------------------------------------

## My work: instruction list to reproduce the tidy data set

 * The input raw data for the run_analys.R are:


    - ./train/X_train.txt, ./train/y_train.txt, subject_train.txt;
    - ./test/X_test.txt, ./test/y_test.txt,  subjecct_test.txt;
    - ./activity_labels.txt, ./features.txt           
            
 * The output is a tidy Data set (180 rows):
 
 
    - tidydata.txt
            
            
 * Usage of the script run_analysis.R on RStudio:
    
    
    ```{r}
    source("run_analysis.R")    ## load the script
    run_analysis()              ## run the script
    ```
            
  * Steps in tun_analysis.R to process the raw dato and create a tidy data set:
    
    + Step 1: Check to see if required packages (dplyr and data.table) are installed
    + Step 2: downloading and reading raw data
    + Step 3: Extraction of the measurements on the mean and standard deviation for each measurement
    + Step 4: Merging the raw data
    + Step 5: Appropriately labels the data set with descriptive activity names
    + Step 6: Creation of tidydata.txt
             
 * The steps were performed in a PC running the OS Windows 10. The data cleaning processes were performed in Rstudio with R version 4.0.0 
            
            
            
            
            