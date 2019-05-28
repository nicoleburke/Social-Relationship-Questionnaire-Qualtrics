#### Social Relationship Questionnaire from Qualtrics 
#### 5.28.2019
#### function that combines all the individual functions into one function 

get_demographicdata <- function(dataframe, relationships) {
  # get separate dataframes per gender, race, lang, age
  gender_df <- gender_perrelationship(dataframe, relationships)
  race_df <- race_perrelationship(dataframe, relationships)
  lang_df <- lang_perrelationship(dataframe, relationships)
  age_df <- age_perrelationship(dataframe, relationships)
  # make a new dataframe to combine all of them
  newdf <- gender_df
  newdf$Race <- race_df$Race
  newdf$Language <- lang_df$Language
  newdf$Age <- age_df$Age
  # return the new dataframe
  return(newdf)
}
