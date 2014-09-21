README.md
=========
This file has two sections.
Section 1: describes the relationships among files used in the script.
Section 2: outlines the process.

# 1. Data files

## data directory

* activity_labels.txt
 * 2 columns by 6 rows
 * columns: activity ID number and the activity name
 * rows: 6 activity ID and activity pairs, (1, WALKING), (2, WALKING_UPSTAIRS), 
(3, WALKING_DOWNSTAIRS), (4, SITTING), (5, STANDING), (6, LAYING)
* featrues.txt
 * 2 columns by 561 rows
 * columns: variable ID number and the variable name
 * rows: 561 pairs of (id, variable name)

## train directory ./train

* X_train.txt: 7352 by 561 numerical matrix
 * columns: 561 variables
 * rows: training data observation
 * elements: normarized measurements
* subject_train.txt: 7352 by 1 integer matrix
 * rows: training data observation
 * elements: subject IDs, levels 1 to 30
 * comments: there were 30 subjects
* y_train.txt: 7352 by 1 integer matrix
 * rows: training data observation
 * elements: activity IDs, levels 1 to 6
 * comments: there were 6 activities described in activity_labels.txt

## test directory ./test 

* X_test.txt: 2947 by 561 numerical matrix
 * columns: 561 variables
 * rows: testing data observation
 * elements: normarized measurements
* subject_test.txt: 2947 by 1 integer matrix
 * rows: testing data observation
 * elements: subject IDs, levels 1 to 30
 * comments: there were 30 subjects
* y_test.txt: 2947 by 1 integer matrix
 * rows: testing data observation
 * elements: activity IDs, levels 1 to 6
 * comments: there were 6 activities described in activity_labels.txt

# 2. Process in run_analysis.R

## read activity and feature data

+ activity (6 by 2): read from activity.txt
+ feature (561 by 2):  read from features.txt
+ features.vc (1 by 561): vector of variable names

## construct data matrix

### read from test directory, line 59
+ data read
 + x (2947 by 561): measurements, read from X_test.txt
 + y (2947 by 1): activity ID, read from y_test.txt
 + subject (2947 by 1): subject ID, read from subject_test.txt
+ column combine 
 + cbind (subject, y, x)
+ give column name
 + "subject.id", "activity.id", features.vc
+ result (2947 by 563)

### read from train directory, line 64
+ data read
 + x (7352 by 561): measurements, read from X_train.txt
 + y (7352 by 1): activity ID, read from y_train.txt
 + subject (7352 by 1): subject ID, read from subject_train.txt
+ column combine 
 + cbind (subject, y, x)
+ give column name
 + "subject.id", "activity.id", features.vc
+ result (7352 by 563)

### row bind, line 67
+ get: raw.data (10299 by 563): row bind test and train data

### add row number
+ get: raw.data1 (10299 by 564): add row.number column for later sorting

## select columns, line 76
+ get: raw.data2 (10299, 69), contains columns:
 + row.number
 + subject.id
 + activity.id
 + mean columns, variable names containing mean()
 + std columns, variable names containing std()

## give activity name, line 84
+ get: raw.data3 (10299 by 70)
 + add activity name column by merging raw.data2 and activity with common activity.id

## sort raw.data3
+ get: raw.data4
 + sort raw.data3 with row.number

## reorder columns
+ get: raw.data5: select and put columns in order of:
 + subject.id, activity, mean and std variables

## transform variable names in raw.data4, line 99-115
+ get: raw.data5
+ transformation policy was described in CodeBook.md
+ correct typo BodyBody in original variable name

## group_by raw.data5, line 118
- get: by_subject.activity
- categorize raw.data5 with subject.id and activity

## calculate mean with by_subject.activity, line 121
- get: tidy.data
- used summarise_each()

## write file, line 125