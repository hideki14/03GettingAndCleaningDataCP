README.md
=========
# Data files
* activity_labels.txt
 * 2 columns by 6 rows
 * columns: activity ID number and the activity name
 * rows: 6 activity ID and activity pairs, (1, WALKING), (2, WALKING_UPSTAIRS), (3, WALKING_DOWNSTAIRS), (4, SITTING), (5, STANDING), (6, LAYING)
* featrues.txt
 * 2 columns by 561 rows
 * columns: variable ID number and the variable name
 * rows: 561 pairs of (id, variable name)
* train directory ./train
 * X_tran.txt: 7352 by 561 numerical matrix
  * columns: 561 variables
  * rows: training data observation
  * elements: normarized measurements
