#### Script to test functions 
#### 7.23.19
#### Social Relationship Questionnaire from Qualtrics
#### this is for data coming from social network survey 4 

qualdricsoutput_df <- read.csv("Social Relationship Survey Version 4_July 30, 2019_19.31.csv")

#### test clean_qualtrics functions #### 
qualdricsoutput_df$Participant....for.the.researcher.
qualdricsoutput_df <- clean_qualtrics(qualdricsoutput_df)
qualdricsoutput_df$SubjectID
# write this out to see what it looks like
write.csv(qualdricsoutput_df, file = "/Users/nicoleburke/Desktop/To work on data off server/Social-Relationship-Questionnaire-Qualtrics/newqualtricsoutput.csv")


#### test relationship_perline functions #### 
test1 <- relationship_perline(qualdricsoutput_df)
# it works! 

# this code workded! 
df[colSums(!is.na(df)) > 0]
trythis <- dummydata[colSums(!is.na(dummydata)) > 0]




########## try getting gender ############ 
# this returns the column number that phrases appears 
testindex <- grep("Please.answer.the.following.questions.for.this.person.people...Selected.Choice", colnames(qualdricsoutput_df))
testindex

# a vector with the subjectIDs from the Qualtrics Survey 
subjids <- unique(qualdricsoutput_df$SubjectID)
# get the index in the newdataframe you are creating per subject 
for (s in 1:length(subjids)) {
  print("subjectID")
  print(s)
  print(subjids[s])
  # create a vector of index per subject of the values in the newdataframe 
  subjindex <- grep(subjids[s], test1$SubjectID)
  print("subjindex")
  print(subjindex)
  # Where the function should start searching per subject in the newdataframe
  starti <- subjindex[1]
  # print(starti)
  # Where the function should stop searching per subject in the newdataframe
  endi <- subjindex[length(subjindex)]
  for (i in starti:endi) {
    if (test1$Nodes[i] == "Parent 1") {
      print("s")
      print(s)
      # 's' will specify what row to look for in the qualtricsoupt, we need the column index
      indexcol <- grep("Please.answer.the.following.questions.for.this.person.people...Selected.Choice", colnames(qualdricsoutput_df))
      for (x in 1:length(indexcol)) {
        if (as.character(qualdricsoutput_df[s,indexcol[x]]) == "Parent 1") {
          # get the value in qualdricsoutput
          gender <- qualdricsoutput_df[s,indexcol[x]+1]
          # needs to be a value
          gender <- as.character(gender)
          test1[i,3] <- gender
        }
      }
    }
  }
}


test1 <- gender_perrelationship(qualdricsoutput_df, test1)






