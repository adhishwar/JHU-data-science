## Function that performs the necessary transformations on the data according 
## to the instructions given in the course project of Getting and Cleaning data 
## course in Coursera 

run_analysis <- function()
{
    setwd('/Users/username/coursera/CourseProject')
    
    ## Step 1: loading the neccessary files
    
        #load main data
        activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
        features <- read.table('UCI HAR Dataset/features.txt')
        
        #load test data and associated subject ID and activity id
        xTest <- read.table('UCI HAR Dataset/test/X_test.txt')
        yTest <- read.table('UCI HAR Dataset/test/y_test.txt')
        subjectTest <- read.table('UCI HAR Dataset/test/subject_test.txt')
        
        #load train data and associated subject ID and activity id
        xTrain <- read.table('UCI HAR Dataset/train/X_train.txt')
        yTrain <- read.table('UCI HAR Dataset/train/y_train.txt')
        subjectTrain <- read.table('UCI HAR Dataset/train/subject_train.txt')
    
    ## Step 2: adding column names to all the data files
        names(xTest) <- features[,2]
        names(xTrain) <- features[,2]
        names(subjectTest) <- 'subjectID'
        names(subjectTrain) <- 'subjectID'
        names(yTest) <- 'activityID'
        names(yTrain) <- 'activityID'
        names(activity_labels) <- c('activityID','activityType')
        
    ## step 3: merge subjectTest and yTest with xTest. Same for training data sets
        completeTest <- data.frame(subjectTest,yTest,xTest)
        completeTrain <- data.frame(subjectTrain,yTrain,xTrain)
        
    ## step 4: merging completeTest and completeTrain
        completeData <- rbind(completeTrain,completeTest)
        completeData <- merge(activity_labels,completeData, by = 'activityID', all.y = T)
        
            ## sub step: delete all unnecessary data now to free up space
                rm(completeTest,completeTrain,subjectTest,subjectTrain,xTest,xTrain,yTest,yTrain)
            
    ## step 5: subsetting only mean and std deviation measurements
        colIndices <- c(1,2,3,grep('(mean)|(std)',names(completeData)))   # 1,2 and 3 are added to get activityID, subjectID, activity_type 
        outputData1 <- completeData[,colIndices]
        
    ## outputData1 is a merged dataset of training and test datasets with descriptive variable names and activity labels.
    ## It contains only mean and std deviation measures of all the measurements
        
        
    ## step 6: We now rename all the variable names to make sure that they follow all tidy data principles
    
        columns <- names(outputData1)
        columns <- gsub("[-()]","",columns)
        columns <- gsub("Mag","magnitude",columns)
        columns <- gsub("Freq","frequency",columns)
        columns <- gsub("Acc","accelerometer",columns)
        columns <- gsub("Gyro","gyroscope",columns)
        columns <- gsub("BodyBody","body",columns)      ##in some columns body is typed two times
        columns <- tolower(columns)             ## now we see some are in upper and some are in lower
        ## now finally replace the columnnames of original dataset with the elaborative ones
        names(outputData1) <- columns
        
    ## step 7: 
        outputData2 <- aggregate(.~subjectid+activityid+activitytype, outputData1, mean)
    
    ## outputData2 is a dataset with the average of each variable for each activity and each subject.
        
        
    ## step 7: writing the required data frames to txt documents
        #write.csv(outputData1,file = 'OutputData1.txt',row.names = F)
        write.csv(outputData2,file = 'OutputData.txt',row.names = F)
        
            ## sub step: deleting all objects created in this function 
                rm(activity_labels,completeData,features,outputData1,outputData2,colIndices)
    
    print('OutputData2 has been created.')
    
    
    ## END
}