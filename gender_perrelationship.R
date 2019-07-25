#### Social Relationship Questionnaire from Qualtrics Version 4
#### 7.24.2019
#### gender information per relationship 

gender_perrelationship <- function(qualtricsoutput, relationshipdf) {
  # a vector with the subjectIDs from the Qualtrics Survey 
  subjids <- unique(qualtricsoutput$SubjectID)
  # get the index in the newdataframe you are creating per subject 
  for (s in 1:length(subjids)) {
    print("subjectID")
    print(s)
    print(subjids[s])
    # create a vector of index per subject of the values in the newdataframe 
    subjindex <- grep(subjids[s], relationshipdf$SubjectID)
    print("subjindex")
    print(subjindex)
    # Where the function should start searching per subject in the newdataframe
    starti <- subjindex[1]
    # print(starti)
    # Where the function should stop searching per subject in the newdataframe
    endi <- subjindex[length(subjindex)]
    for (i in starti:endi) {
      if (relationshipdf$Nodes[i] == "Parent 1") {
        print("s")
        print(s)
        # 's' will specify what row to look for in the qualtricsoupt, we need the column index
        indexcol <- grep("Please.answer.the.following.questions.for.this.person.people...Selected.Choice", colnames(qualtricsoutput))
        for (x in 1:length(indexcol)) {
          if (as.character(qualtricsoutput[s,indexcol[x]]) == "Parent 1") {
            # get the value in qualdricsoutput
            gender <- qualtricsoutput[s,indexcol[x]+1]
            # needs to be a value
            gender <- as.character(gender)
            relationshipdf[i,3] <- gender
          }
        }
      }
    }
  }
  return(relationshipdf)
}

