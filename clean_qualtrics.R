#### Social Relationship Questionnaire from Qualtrics Version 4
#### 7.23.2019
#### script to run the qualtrics output through to prepare data 

clean_qualtrics <- function(qualtricsoutput) {
  qualtricsoutput <- qualtricsoutput[order(qualtricsoutput$Participant....for.the.researcher.),]
  qualtricsoutput <- qualtricsoutput[colSums(!is.na(qualtricsoutput)) > 0]
  library(tidyverse)
  newdataframe <- qualtricsoutput %>%
    rename(SubjectID = Participant....for.the.researcher.)
  return(newdataframe)
}
