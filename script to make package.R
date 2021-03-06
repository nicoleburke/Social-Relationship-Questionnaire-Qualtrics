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
# write.csv(qualdricsoutput_df, file = "/Users/nicoleburke/Desktop/To work on data off server/Social-Relationship-Questionnaire-Qualtrics/newqualtricsoutput.csv")


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

# test the race function
test1 <- race_perrelationship(qualdricsoutput_df, test1)


### Import the manuel check and compare to script output
manuelentry <- read.csv("Manual Social Network Entry_tocheck.csv")
str(manuelentry)

# make sure both dfs have the same column names 
colnames(manuelentry)
colnames(test1)

# make sure both dfs have the same subjectIDs
unique(manuelentry$SubjectID)
unique(test1$SubjectID)
# exclude subject 22 from test1
test1 <- subset(test1, SubjectID < 22)
test1 <- subset(test1, SubjectID != 17)

### test to see if they are giving the same values 
compare_df <- test1 == manuelentry

#### import the check dataframe 
checkdf <- read.csv("Manual Social Network Entry_tocheck.csv")
unique(checkdf$check.what.went.wrong)
checkdf <- subset(checkdf, check.what.went.wrong == "check")

# see what nodes are causing problems
problemnodes <- as.data.frame(checkdf$Nodes[1:55])
# write out sheet 
write.csv(problemnodes, file = "/Volumes/woodwardlab/Data_Lab Members/Nicole Burke/Social Network/Social Bias/Data/for making the network survey/Social-Relationship-Questionnaire-Qualtrics/problemnodes.csv")

# where you're at - you have at least identified the problem lines. 
#     There are 56 relationships that have mismatches 


###################### 9.4.19 ###################### 
# fantastic news - for several of those lines, the nodes didn't exisit 
#   you accidentily delted "3"; ExtendedFam3, Other 3, etc. 

# trying this again....but we are cautiously optimistic!

### import qualtrics output 
qualdricsoutput_df <- read.csv("Social+Relationship+Survey+Version+4_September+5,+2019_12.25.csv")

# clean qualtrics survey
qualdricsoutput_df$Participant....for.the.researcher.
qualdricsoutput_df <- clean_qualtrics(qualdricsoutput_df)
qualdricsoutput_df$SubjectID

# make the relationshipdf and run gender and race function
test1 <- relationship_perline(qualdricsoutput_df)
test1 <- gender_perrelationship(qualdricsoutput_df, test1)
test1 <- race_perrelationship(qualdricsoutput_df, test1)


### import the manuel check and compare to script output
manuelentry <- read.csv("Manual Social Network Entry_tocheckRound2.csv")
str(manuelentry)

# make sure both dfs have the same column names 
colnames(manuelentry)
colnames(test1)

# make sure both dfs have the same subjectIDs
unique(manuelentry$SubjectID)
unique(test1$SubjectID)
# exclude subject 9 from manuel entry
manuelentry <- subset(manuelentry, SubjectID != 9)

### test to see if they are giving the same values 
compare_df <- test1 == manuelentry
# write out file to see what is wrong
write.csv(compare_df, file = "/Volumes/woodwardlab/Data_Lab Members/Nicole Burke/Social Network/Social Bias/Data/for making the network survey/Social-Relationship-Questionnaire-Qualtrics/compare_round3.csv")

# write out the manuelentry and test to check "Race" info
write.csv(test1, file = "/Volumes/woodwardlab/Data_Lab Members/Nicole Burke/Social Network/Social Bias/Data/for making the network survey/Social-Relationship-Questionnaire-Qualtrics/scriptoutput_round3.csv")
write.csv(manuelentry, file = "/Volumes/woodwardlab/Data_Lab Members/Nicole Burke/Social Network/Social Bias/Data/for making the network survey/Social-Relationship-Questionnaire-Qualtrics/manuelentry_round3.csv")








                                                                                                                                                