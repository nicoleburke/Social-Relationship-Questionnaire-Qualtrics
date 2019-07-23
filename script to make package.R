#### Script to test functions 
#### 7.23.19
#### Social Relationship Questionnaire from Qualtrics
#### this is for data coming from social network survey 4 

qualdricsoutput_df <- read.csv("Social Relationship Survey Version 4_July 23, 2019_09.16.csv")

#### test clean_qualtrics functions #### 
qualdricsoutput_df <- clean_qualtrics(qualdricsoutput_df)


#### test relationship_perline functions #### 
test1 <- relationship_perline(qualdricsoutput_df)
# it works! 


########## try getting gender ############ 
qualdricsoutput_df
test1 

# a vector with the subjectIDs from the Qualtrics Survey 
subjids <- unique(qualdricsoutput_df$SubjectID)
# get the index in the newdataframe you are creating per subject 
for (s in 1:length(subjids)) {
  print("subjectID")
  print(s)
  print(subjids[s])
  # create a vector of index per subject for the newdataframe
  subjindex <- grep(subjids[s], test1$SubjectID)
  print("subjindex")
  print(subjindex)
  # Where the function should start searching per subject
  starti <- subjindex[1]
  # print(starti)
  # Where the function should stop searching per subject
  endi <- subjindex[length(subjindex)]
  for (i in starti:endi) {
    if (test1$Nodes[i] == "Parent 1") {
      test1[i,3] <- "it worked"
    }
  }
}





# make a vector for subjectids 
subjids <- unique(qualdricsoutput_df$Participant....for.the.researcher.)
# now for the hard stuff!
for (s in 1:length(subjids)) {
  print("subjectid")
  print(s)
  print(subjids[s])
  # Creates a vector with the index of subjects
  subjindex <- grep(subjids[s], test1$SubjectID)
  print("subjindex")
  print(subjindex)
  # Where the function should start searching per subject
  starti <- subjindex[1]
  # print(starti)
  # Where the function should stop searching per subject
  endi <- subjindex[length(subjindex)]




# Please.answer.the.following.questions.for.this.person.people...Selected.Choice