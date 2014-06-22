
#########################################################################
# Create  dataframe to hold  activity numbers and labels                #
#########################################################################
activitynum = c(1,2,3,4,5,6)
activitylabels = c("WALKING","WALKING_UPSTRS","WALKING_DOWNSTRS","SITTING","STANDING","LAYING")
df <- data.frame(activitynum, activitylabels)
setwd("~/UCI\ HAR\ Dataset/test/")
#########################################################################
# Now read in the test data and merge it with activity subject data     #
#########################################################################

testdata <- read.csv("x_test.txt",header=FALSE,sep='')
activity <- read.csv("y_test.txt",header=FALSE)
subject <- read.csv("subject_test.txt",header=FALSE)
testdata$activity <- activity[,]
testdata$subject  <- subject[,]

#########################################################################
# Now read in the training data data and merge it with activity subject # 
data                                                                    #
#########################################################################

# ------------------------- -----------------------------------

setwd("~/UCI\ HAR\ Dataset/train/")
# ------------------------------------------------------------
traindata <- read.csv("x_train.txt",header=FALSE,sep='')
trainactivity <- read.csv("y_train.txt",header=FALSE)
trainsubject <- read.csv("subject_train.txt",header=FALSE)
traindata$activity <- trainactivity[,]
traindata$subject  <- trainsubject[,]

#########################################################################
# Now merge the test and training data                                  #
#########################################################################

test_mrgd_train <- rbind(testdata,traindata)

#########################################################################
# Now select ONLY activity measures with means and  standard deviations #
#########################################################################

r <- test_mrgd_train
names(r)[1]   <- "tBodyAcc_mean_X"
names(r)[2]   <- "tBodyAcc_mean_Y"
names(r)[3]   <-  "tBodyAcc_mean_Z"
names(r)[4]   <-  "tBodyAcc_std_X"
names(r)[5]   <-  "tBodyAcc_std_Y"
names(r)[6]   <-  "tBodyAcc_std_Z"
names(r)[41]  <-  "tGravityAcc_mean_X"
names(r)[42]  <-  "tGravityAcc_mean_Y"
names(r)[43]  <- "tGravityAcc_mean_Z"
names(r)[44]  <-  "tGravityAcc_std_X"
names(r)[45]  <-  "tGravityAcc_std_Y"
names(r)[46]  <- "tGravityAcc_std_Z"
names(r)[81]  <-  "tBodyAccJerk_mean_X"
names(r)[82]  <-   "tBodyAccJerk_mean_Y"
names(r)[83]  <- "tBodyAccJerk_mean_Z"
names(r)[84]  <-  "tBodyAccJerk_std_X"
names(r)[85]  <-  "tBodyAccJerk_std_Y"
names(r)[86]  <-  "tBodyAccJerk_std_Z"
names(r)[121] <- "tBodyGyro_mean_X"
names(r)[122] <- "tBodyGyro_mean_Y"
names(r)[123] <- "tBodyGyro_mean_Z"
names(r)[124] <- "tBodyGyro_std_X"
names(r)[125] <-  "tBodyGyro_std_Y"
names(r)[126] <-  "tBodyGyro_std_Z"
names(r)[161] <-  "tBodyGyroJerk_mean_X"
names(r)[162] <-  "tBodyGyroJerk_mean_Y"
names(r)[163] <-  "tBodyGyroJerk_mean_Z"
names(r)[164] <-  "tBodyGyroJerk_std_X"
names(r)[165] <-  "tBodyGyroJerk_std_Y"
names(r)[166] <-  "tBodyGyroJerk_std_Z"
names(r)[201] <-  "tBodyAccMag_mean"
names(r)[202] <- "tBodyAccMag_std"
names(r)[214] <- "tGravityAccMag_mean"
names(r)[215] <- "tGravityAccMag_std"
names(r)[227] <- "tBodyAccJerkMag_mean"
names(r)[228] <- "tBodyAccJerkMag_std"
names(r)[240] <- "tBodyGyroMag_mean"
names(r)[241] <- "tBodyGyroMag_std"
names(r)[253] <- "tBodyGyroJerkMag_mean"
names(r)[254] <- "tBodyGyroJerkMag_std"
names(r)[266] <- "fBodyAcc_mean_X"
names(r)[267] <- "fBodyAcc_mean_Y"
names(r)[268] <- "fBodyAcc_mean_Z"
names(r)[269] <- "fBodyAcc_std_X"
names(r)[270] <- "fBodyAcc_std_Y"
names(r)[271] <- "fBodyAcc_std_Z"
names(r)[294] <- "fBodyAcc_meanFreq_X"
names(r)[295] <- "fBodyAcc_meanFreq_Y"
names(r)[296] <- "fBodyAcc_meanFreq_Z"
names(r)[345] <- "fBodyAccJerk_mean_X"
names(r)[346] <- "fBodyAccJerk_mean_Y"
names(r)[347] <- "fBodyAccJerk_mean_Z"
names(r)[348] <- "fBodyAccJerk_std_X"
names(r)[349] <- "fBodyAccJerk_std_Y"
names(r)[350] <- "fBodyAccJerk_std_Z"
names(r)[373] <- "fBodyAccJerk_meanFreq_X"
names(r)[374] <- "fBodyAccJerk_meanFreq_Y"
names(r)[375] <- "fBodyAccJerk_meanFreq_Z"
names(r)[424] <- "fBodyGyro_mean_X"
names(r)[425] <- "fBodyGyro_mean_Y"
names(r)[426] <- "fBodyGyro_mean_Z"
names(r)[427] <- "fBodyGyro_std_X"
names(r)[428] <- "fBodyGyro_std_Y"
names(r)[429] <- "fBodyGyro_std_Z"
names(r)[452] <- "fBodyGyro_meanFreq_X"
names(r)[453] <- "fBodyGyro_meanFreq_Y"
names(r)[454] <- "fBodyGyro_meanFreq_Z"
names(r)[503] <- "fBodyAccMag_mean"
names(r)[504] <- "fBodyAccMag_std"
names(r)[513] <- "fBodyAccMag_meanFreq"
names(r)[516] <- "fBodyBodyAccJerkMag_mean"
names(r)[517] <- "fBodyBodyAccJerkMag_std"
names(r)[526] <- "fBodyBodyAccJerkMag_meanFreq"
names(r)[529] <- "fBodyBodyGyroMag_mean"
names(r)[530] <- "fBodyBodyGyroMag_std"
names(r)[539] <- "fBodyBodyGyroMag_meanFreq"
names(r)[542] <- "fBodyBodyGyroJerkMag_mean"
names(r)[552] <-  "fBodyBodyGyroJerkMag_meanFreq"
names(r)[562] <-  "activity"
names(r)[563] <-  "subject"


r1 <- r[,c(1,  2,  3,  4,  5,  6,  41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121,
122, 123, 124, 125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,
241,253,254,266,267,268,269,270,271,294,295,296,345,346,347,348,349,350,373,
374,375,424,425,426,427,428,429,452,453,454,503,504,513,516,517,526,529,530,
539,542,552,562,563)]

#########################################################################
# Now merge activity labels with the dataset generated so far           #
#########################################################################


data_with_activitylabels <- merge(r1,df,by.x=c("activity"),by.y=c("activitynum" ))

#########################################################################
# Now melt the data so that it can be reshaped                          #
#########################################################################

library(reshape)
meltdata <- melt(data_with_activitylabels, id=c("subject", "activity","activitylabels"))
library("reshape2")

#########################################################################
# Now creates a second, independent tidy data set with the average of   # 
# each variable for each activity and each subject                      #
#########################################################################

seconddataset <-dcast(meltdata,variable ~ activitylabels +subject,mean)

#########################################################################
# Now write the data frame to a file                                    #
#########################################################################


write.csv(seconddataset, file = "seconddataset.csv")
