README.md
=========
# Data files
 ** data directory **
* activity_labels.txt
 * 2 columns by 6 rows
 * columns: activity ID number and the activity name
 * rows: 6 activity ID and activity pairs, (1, WALKING), (2, WALKING_UPSTAIRS), 
(3, WALKING_DOWNSTAIRS), (4, SITTING), (5, STANDING), (6, LAYING)
* featrues.txt
 * 2 columns by 561 rows
 * columns: variable ID number and the variable name
 * rows: 561 pairs of (id, variable name)
 ** train directory ./train **
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
* test directory ./test
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
# Process