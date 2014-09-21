CodeBook.md
===========
This file describes:
the variable naming rules
 and the list of all variables
 in **tidy.txt**

# 1. Variable naming rules
 - used lower case letters
 - used period for name delimiter (not "-" nor "_")
 - expanded abbreviations to full names 
  -Acc -> accelerometer
  -Mag -> magnitude
  -std was not converted

# 2. variable name list
- variable 1 was added with **subject_[test|train].txt**
- variable 2 was added with **y_[test|train].txt** and **activity_labels.txt**
- variables 3 to 68 were converted from **features.txt** with the above rules

1. subject.id (1 to 30)
1. activity (laying, sitting, standing, walking, walking.downstairs, walking.upstairs)
1. time.body.accelerometer.mean.x
1. time.body.accelerometer.mean.y
1. time.body.accelerometer.mean.z
1. time.gravity.accelerometer.mean.x
1. time.gravity.accelerometer.mean.y
1. time.gravity.accelerometer.mean.z
1. time.body.accelerometer.jerk.mean.x
1. time.body.accelerometer.jerk.mean.y
1. time.body.accelerometer.jerk.mean.z
1. time.body.gyro.mean.x
1. time.body.gyro.mean.y
1. time.body.gyro.mean.z
1. time.body.gyro.jerk.mean.x
1. time.body.gyro.jerk.mean.y
1. time.body.gyro.jerk.mean.z
1. time.body.accelerometer.magnitude.mean
1. time.gravity.accelerometer.magnitude.mean
1. time.body.accelerometer.jerk.magnitude.mean
1. time.body.gyro.magnitude.mean
1. time.body.gyro.jerk.magnitude.mean
1. frequency.body.accelerometer.mean.x
1. frequency.body.accelerometer.mean.y
1. frequency.body.accelerometer.mean.z
1. frequency.body.accelerometer.jerk.mean.x
1. frequency.body.accelerometer.jerk.mean.y
1. frequency.body.accelerometer.jerk.mean.z
1. frequency.body.gyro.mean.x
1. frequency.body.gyro.mean.y
1. frequency.body.gyro.mean.z
1. frequency.body.accelerometer.magnitude.mean
1. frequency.body.accelerometer.jerk.magnitude.mean
1. frequency.body.gyro.magnitude.mean
1. frequency.body.gyro.jerk.magnitude.mean
1. time.body.accelerometer.std.x
1. time.body.accelerometer.std.y
1. time.body.accelerometer.std.z
1. time.gravity.accelerometer.std.x
1. time.gravity.accelerometer.std.y
1. time.gravity.accelerometer.std.z
1. time.body.accelerometer.jerk.std.x
1. time.body.accelerometer.jerk.std.y
1. time.body.accelerometer.jerk.std.z
1. time.body.gyro.std.x
1. time.body.gyro.std.y
1. time.body.gyro.std.z
1. time.body.gyro.jerk.std.x
1. time.body.gyro.jerk.std.y
1. time.body.gyro.jerk.std.z
1. time.body.accelerometer.magnitude.std
1. time.gravity.accelerometer.magnitude.std
1. time.body.accelerometer.jerk.magnitude.std
1. time.body.gyro.magnitude.std
1. time.body.gyro.jerk.magnitude.std
1. frequency.body.accelerometer.std.x
1. frequency.body.accelerometer.std.y
1. frequency.body.accelerometer.std.z
1. frequency.body.accelerometer.jerk.std.x
1. frequency.body.accelerometer.jerk.std.y
1. frequency.body.accelerometer.jerk.std.z
1. frequency.body.gyro.std.x
1. frequency.body.gyro.std.y
1. frequency.body.gyro.std.z
1. frequency.body.accelerometer.magnitude.std
1. frequency.body.accelerometer.jerk.magnitude.std
1. frequency.body.gyro.magnitude.std
1. frequency.body.gyro.jerk.magnitude.std
