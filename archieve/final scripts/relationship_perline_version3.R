#### Social Relationship Questionnaire from Qualtrics 
#### 5.21.2019
#### script to make a dataframe with each relationships per line

# create a function that separates out the dataframe 
relationship_perline <- function(dataframe) {
  library(tidyverse)
  newdataframe <- dataframe %>%
    group_by(Participant....for.the.researcher.) %>%
    summarize(Nodes = Please.select.all.the.people.who.your.child.sees.in.a.regular.week...Selected.Choice) %>%
    mutate(Nodes = strsplit(as.character(Nodes), ",")) %>%
    unnest(Nodes)
  newdataframe$Gender <- NA
  newdataframe$Race <- NA
  newdataframe$Language <- NA
  newdataframe$Age <- NA
  return(newdataframe)
}
