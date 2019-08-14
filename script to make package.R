#### Script to test functions 
#### 7.23.19
#### Social Relationship Questionnaire from Qualtrics
#### this is for data coming from social network survey 4 

qualdricsoutput_df <- read.csv("Social Relationship Survey Version 4_July 30, 2019_19.31.csv")
# create a copy to mess around with 
# copy <- qualdricsoutput_df

#### test clean_qualtrics functions #### 
qualdricsoutput_df$Participant....for.the.researcher.
qualdricsoutput_df <- clean_qualtrics(qualdricsoutput_df)
qualdricsoutput_df$SubjectID
# write this out to see what it looks like
write.csv(qualdricsoutput_df, file = "/Users/nicoleburke/Desktop/To work on data off server/Social-Relationship-Questionnaire-Qualtrics/newqualtricsoutput.csv")


#### test relationship_perline functions #### 
test1 <- relationship_perline(qualdricsoutput_df)
# it works! 

# this code delets cols that are NA
df[colSums(!is.na(df)) > 0]
trythis <- dummydata[colSums(!is.na(dummydata)) > 0]
# this code will replace NAs 
copy[is.na(copy)] <- 9999
View(copy[,1:25])


### test the gender function
test1 <- gender_perrelationship(qualdricsoutput_df, test1)

### where you're at: the script won't find stuff if you write it in...
# if you write out a name for a node, it won't show up 



###################### 8.14.19 ###################### 

# i fixed something in the qualtrics survey - all the nodes should work now
qualdricsoutput_df <- read.csv("Social+Relationship+Survey+Version+4_newexport.csv")

# clean qualtrics survey
qualdricsoutput_df$Participant....for.the.researcher.
qualdricsoutput_df <- clean_qualtrics(qualdricsoutput_df)
qualdricsoutput_df$SubjectID

# make the relationshipdf and do gender function
test1 <- relationship_perline(qualdricsoutput_df)
test1 <- gender_perrelationship(qualdricsoutput_df, test1)











