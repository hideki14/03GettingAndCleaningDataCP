##
library(dplyr)
## strl
#setwd("/Users/tanaka/Documents/#04e-Learning/03_GetClean2014Sep/CourseProj/data/UCI HAR Dataset")
## home
setwd("/Users/Hideki/Documents/#04_Learning/Coursera/03_GetClean_2014Sep/CourseProj/data/UCI HAR Dataset")

## activity data acquisition
activity <- read.table("./activity_labels.txt")
str(activity)
names(activity) <- c("activity.id", "activity")

## lower case transformation of activity names for easier reading 
activity$activity <- tolower(activity$activity)
activity

## feature data acquisition
features <- read.table("./features.txt")
str(features)
names(features) <- c("variable.id", "variable.name")
head(features, 20)

## initial variable names
features.vc <- as.vector(features$variable.name)
##

## 
## function: 
##
GetFileName <- function(suffix, workdir){
        paste("./" ,workdir, "/", suffix, "_", workdir,".txt", sep ="" )
}

##
## function:
##
CombineXYSubj<- function(workdir){
        ## acquisition of X data ( measurements )
        x.filename <- GetFileName("X", workdir)
        x <- read.table(x.filename, colClasses="numeric")
        
        ## acquisition of y data (activity ids)
        y.filename <- GetFileName("y", workdir)
        y <- read.table(y.filename)
        
        ## acquisition of subject data (subject ids)
        subject.filename <- GetFileName("subject", workdir)
        subject <- read.table(subject.filename)
        
        ## column binding subject id, activity id, 
        res <- cbind(subject, y, x)
        names(res) <- c("subject.id", "activity.id", features.vc)
        res
}

## get dataframe from test directory
test.raw.data <- CombineXYSubj("test")
str(test.raw.data)
## head(test.raw.data, 31)

## get dataframe from train directory
train.raw.data <- CombineXYSubj("train")

## bind train data and test data by row
raw.data <- rbind(train.raw.data, test.raw.data)

## add original row number for later sorting
raw.data1 <- cbind(row.number = as.integer(rownames(raw.data)), raw.data)
## class(raw.data1.tb)

## getting mean and standard deviation columns
## columns whose names include "mean()" were extracted
## columns whose names include "std()" were extracted
raw.data2 <- select(raw.data1, row.number, subject.id, activity.id,
                   grep("mean\\(\\)", names(raw.data1)),
                   ##grep("mean|Mean", names(raw.data1)),
                   grep("std\\(\\)", names(raw.data1))
                   )
str(raw.data2)

## add activity name column (activity) by merge funcion with activity.id
raw.data3 <- merge(raw.data2, activity, all.x = TRUE)
str(raw.data3)

## sort raw.data3.tb 
raw.data4 <- arrange(raw.data3, row.number)
str(raw.data4)

## select and change column order 
raw.data5 <- select(raw.data4, row.number, subject.id, activity.id, activity, 4:69)

## 
c.names <- names(raw.data5)
## 
VarNameTrans <- function(x){
        x <- gsub("^t", "time", x)
        x <- gsub("^f", "frequency", x)
        x <- gsub("Acc", ".accelerometer", x)
        x <- gsub("Gyro", ".gyro", x)
        x <- gsub("Jerk", ".jerk", x)
        x <- gsub("Mag", ".magnitude", x)
        x <- gsub("Gravity", ".gravity", x)
        x <- gsub("-", ".", x)
        ## correction typo and conversion
 }
newc <- tolower(VarNameTrans(c))
newc
sort(newc)
