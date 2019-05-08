# Download the file and extract it if not already exists
if(!file.exists("data.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip", method = "curl")
  if(!file.exists("UCI HAR Dataset")){
    unzip("./data.zip")
  }
}


#load dplyr library
library(dplyr)

# read training data, format data by adding columns activity and subject values to the data
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainLabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainData <- bind_cols(trainLabels, trainData)
trainData <- bind_cols(trainSubject, trainData)

# read training data, format data by adding columns activity and subject values to the data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
testData <- bind_cols(testLabels, testData)
testData <- bind_cols(testSubject, testData)

#merge both test and training data
mergedData <- bind_rows(trainData, testData)

# features.txt contains all variable names, read the data and assign it to names(mergedData)
variableNames <- read.table("./UCI HAR Dataset/features.txt")
# add two extra column names activity and subject that we added to data
names(mergedData) <- c("subject", "activity", as.character(variableNames[[2]]))

# Use descriptive activity names that are provided in activity_labels.txt file
lables <-  c(1,2,3,4,5,6)
labelNames <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
mergedData[[2]] <- factor(mergedData[[2]], levels = lables, labels = labelNames)

#remove other unsed temporary variables to free up memory
listValues <- ls()
rm(list = listValues[!(listValues == "mergedData")])


# Get columns which involve only mean and standard deviation, Also extract first 2 columns also which
# contain activity and subject data
mergedData <- mergedData[,-grep("angle", names(mergedData), ignore.case = TRUE)]
mergedData <- mergedData[,c(1,2,grep("mean|std", names(mergedData), ignore.case = TRUE))]

# tidy the variable names, remove special characters, expand abbreviations
colVariableNames <- names(mergedData)
colVariableNames <- gsub("\\(\\)-|\\(\\)|-", "", colVariableNames)
colVariableNames <- gsub("^t", "timeDomain", colVariableNames)
colVariableNames <- gsub("^f", "frequencyDomain", colVariableNames)
colVariableNames <- gsub("mean", "Mean", colVariableNames, ignore.case = TRUE)
colVariableNames <- gsub("std", "StandardDeviation", colVariableNames, ignore.case = TRUE)
colVariableNames <- gsub("freq", "Frequency", colVariableNames, ignore.case = TRUE)
colVariableNames <- gsub("gyro", "Gyroscope", colVariableNames, ignore.case = TRUE)
colVariableNames <- gsub("mag", "Magnitude", colVariableNames, ignore.case = TRUE)
colVariableNames <- gsub("acc", "Accelerometer", colVariableNames, ignore.case = TRUE)

# assign the tidied variable names back to data
names(mergedData) <- colVariableNames

# summarise means of each variable grouped by activity and subject
subjectActivityMeans <- mergedData %>% group_by(activity, subject) %>% summarise_all(mean)

#write this tidy data to file
write.table(subjectActivityMeans, file = "tidy_data.txt", sep = " ", quote = FALSE, row.names = FALSE)
