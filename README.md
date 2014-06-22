The script works as follows

| **Steps** | **Activity** |
| --- | --- |
| 1 | Create data frame to hold activity numbers and labels |
| 2 | Read in the test data and merge it with activity file subject data |
| 3 | Read in the training data data and merge it with activity file subject data |
| 4 | Merge the test and training data  |
| 5 | Select **ONLY** activity measures with means and standard deviations |
| 6 | Merge activity labels with the dataset generated so far |
| 7 | Melt the data so that it can be reshaped  |
| 8 | Creates a second, independent tidy data set with the average of each variable for each activity and each subject |
| 9 | Write the final data frame to an output csv file |
