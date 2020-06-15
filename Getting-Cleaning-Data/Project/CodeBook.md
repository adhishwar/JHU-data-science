# Codebook

## Variables used in OutputData.txt
outputData is a merged dataset of training and test datasets with descriptive variable names and activity labels.
It contains only mean and std deviation measures of all the measurements. 
outputData.txt is an aggregated dataset prepared from the above dataset with the average of each variable for each activity and each subject.
It contains 180 rows and 82 columns


* subjectid
* activityid
* activitytype
* tbodyaccelerometer.mean...x
* tbodyaccelerometer.mean...y
* tbodyaccelerometer.mean...z
* tbodyaccelerometer.std...x
* tbodyaccelerometer.std...y
* tbodyaccelerometer.std...z
* tgravityaccelerometer.mean...x
* tgravityaccelerometer.mean...y
* tgravityaccelerometer.mean...z
* tgravityaccelerometer.std...x
* tgravityaccelerometer.std...y
* tgravityaccelerometer.std...z
* tbodyaccelerometerjerk.mean...x
* tbodyaccelerometerjerk.mean...y
* tbodyaccelerometerjerk.mean...z
* tbodyaccelerometerjerk.std...x
* tbodyaccelerometerjerk.std...y
* tbodyaccelerometerjerk.std...z
* tbodygyroscope.mean...x
* tbodygyroscope.mean...y
* tbodygyroscope.mean...z
* tbodygyroscope.std...x
* tbodygyroscope.std...y
* tbodygyroscope.std...z
* tbodygyroscopejerk.mean...x
* tbodygyroscopejerk.mean...y
* tbodygyroscopejerk.mean...z
* tbodygyroscopejerk.std...x
* tbodygyroscopejerk.std...y
* tbodygyroscopejerk.std...z
* tbodyaccelerometermagnitude.mean..
* tbodyaccelerometermagnitude.std..
* tgravityaccelerometermagnitude.mean..
* tgravityaccelerometermagnitude.std..
* tbodyaccelerometerjerkmagnitude.mean..
* tbodyaccelerometerjerkmagnitude.std..
* tbodygyroscopemagnitude.mean..
* tbodygyroscopemagnitude.std..
* tbodygyroscopejerkmagnitude.mean..
* tbodygyroscopejerkmagnitude.std..
* fbodyaccelerometer.mean...x
* fbodyaccelerometer.mean...y
* fbodyaccelerometer.mean...z
* fbodyaccelerometer.std...x
* fbodyaccelerometer.std...y
* fbodyaccelerometer.std...z
* fbodyaccelerometer.meanfrequency...x
* fbodyaccelerometer.meanfrequency...y
* fbodyaccelerometer.meanfrequency...z
* fbodyaccelerometerjerk.mean...x
* fbodyaccelerometerjerk.mean...y
* fbodyaccelerometerjerk.mean...z
* fbodyaccelerometerjerk.std...x
* fbodyaccelerometerjerk.std...y
* fbodyaccelerometerjerk.std...z
* fbodyaccelerometerjerk.meanfrequency...x
* fbodyaccelerometerjerk.meanfrequency...y
* fbodyaccelerometerjerk.meanfrequency...z
* fbodygyroscope.mean...x
* fbodygyroscope.mean...y
* fbodygyroscope.mean...z
* fbodygyroscope.std...x
* fbodygyroscope.std...y
* fbodygyroscope.std...z
* fbodygyroscope.meanfrequency...x
* fbodygyroscope.meanfrequency...y
* fbodygyroscope.meanfrequency...z
* fbodyaccelerometermagnitude.mean..
* fbodyaccelerometermagnitude.std..
* fbodyaccelerometermagnitude.meanfrequency..
* fbodyaccelerometerjerkmagnitude.mean..
* fbodyaccelerometerjerkmagnitude.std..
* fbodyaccelerometerjerkmagnitude.meanfrequency..
* fbodygyroscopemagnitude.mean..
* fbodygyroscopemagnitude.std..
* fbodygyroscopemagnitude.meanfrequency..
* fbodygyroscopejerkmagnitude.mean..
* fbodygyroscopejerkmagnitude.std..
* fbodygyroscopejerkmagnitude.meanfrequency..


## Activity Labels
   * 1 - WALKING - Subject was walking on flat ground
   * 2 - WALKING_UPSTAIRS -  Subject was walking up a staircase
   * 3 - WALKING_DOWNSTAIRS - Subject was walking down a staircase
   * 4 - SITTING - Subject was sitting down
   * 5 - STANDING - Subject was standing upright
   * 6 - LAYING - Subject was lying down