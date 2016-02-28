
# Code Book  
> This codebook  
+	Summarizes the steps in run_analysis.R
+	Summarizes the resulting data fields in tidy.txt.

> Run_Analysis.R :  
The script Run_Analysis.R performs the below steps to generate the output file tidy.txt:  
1.	Download the dataset.zip file  
2.	Unzip the file and load the files into a folder “UCI HAR Dataset”  
3.	Load the Activity and Features lables  
4.	Summarize the lables – mean & SD  
5.	Load Training and Test data sets  and merge them   
6.	Factor the merged dataset  
7.	Write the final tidy dataset into a separate file ‘tidy.txt’   
  
> Tidy.txt:  
Tidy.txt file contains the below fields:  
* Identifiers  
  +	subject - The ID of the test subject  
  +	activity - The type of activity performed when the corresponding  
* Measurements  
  + tBodyAccMeanX  
  + tBodyAccMeanY  
  + tBodyAccMeanZ  
  + tBodyAccStdX  
  + tBodyAccStdY  
  + tBodyAccStdZ  
  + tGravityAccMeanX  
  + tGravityAccMeanY  
  + tGravityAccMeanZ  
  + tGravityAccStdX  
  + tGravityAccStdY  
  + tGravityAccStdZ  
  + tBodyAccJerkMeanX  
  + tBodyAccJerkMeanY  
  + tBodyAccJerkMeanZ  
  + tBodyAccJerkStdX  
  + tBodyAccJerkStdY  
  + tBodyAccJerkStdZ  
  + tBodyGyroMeanX  
  + tBodyGyroMeanY  
  + tBodyGyroMeanZ  
  + tBodyGyroStdX  
  + tBodyGyroStdY  
  + tBodyGyroStdZ  
  + tBodyGyroJerkMeanX  
  + tBodyGyroJerkMeanY  
  + tBodyGyroJerkMeanZ  
  + tBodyGyroJerkStdX  
  + tBodyGyroJerkStdY  
  + tBodyGyroJerkStdZ  
  + tBodyAccMagMean  
  + tBodyAccMagStd  
  + tGravityAccMagMean  
  + tGravityAccMagStd  
  + tBodyAccJerkMagMean  
  + tBodyAccJerkMagStd  
  + tBodyGyroMagMean  
  + tBodyGyroMagStd  
  + tBodyGyroJerkMagMean  
  + tBodyGyroJerkMagStd  
  + fBodyAccMeanX  
  + fBodyAccMeanY  
  + fBodyAccMeanZ  
  + fBodyAccStdX  
  + fBodyAccStdY  
  + fBodyAccStdZ  
  + fBodyAccMeanFreqX  
  + fBodyAccMeanFreqY  
  + fBodyAccMeanFreqZ  
  + fBodyAccJerkMeanX  
  + fBodyAccJerkMeanY  
  + fBodyAccJerkMeanZ  
  + fBodyAccJerkStdX  
  + fBodyAccJerkStdY  
  + fBodyAccJerkStdZ  
  + fBodyAccJerkMeanFreqX  
  + fBodyAccJerkMeanFreqY  
  + fBodyAccJerkMeanFreqZ  
  + fBodyGyroMeanX  
  + fBodyGyroMeanY  
  + fBodyGyroMeanZ  
  + fBodyGyroStdX  
  + fBodyGyroStdY  
  + fBodyGyroStdZ  
  + fBodyGyroMeanFreqX  
  + fBodyGyroMeanFreqY  
  + fBodyGyroMeanFreqZ  
  + fBodyAccMagMean  
  + fBodyAccMagStd  
  + fBodyAccMagMeanFreq  
  + fBodyBodyAccJerkMagMean  
  + fBodyBodyAccJerkMagStd  
  + fBodyBodyAccJerkMagMeanFreq  
  + fBodyBodyGyroMagMean  
  + fBodyBodyGyroMagStd  
  + fBodyBodyGyroMagMeanFreq  
  + fBodyBodyGyroJerkMagMean  
  + fBodyBodyGyroJerkMagStd  
  + fBodyBodyGyroJerkMagMeanFreq  
* Activity Labels (during the test)  
  + WALKING : subject was walking   
  + WALKING_UPSTAIRS :subject was walking up a staircase   
  + WALKING_DOWNSTAIRS :subject was walking down a staircase  
  + SITTING : subject was sitting   
  + STANDING : subject was standing   
  + LAYING : subject was laying down   
