#### Social Relationship Questionnaire from Qualtrics 
#### 5.21.2019
#### script to get gender for each relationship

gender_perrelationship <- function(dataframe, relationships) {
  # create a vector of the subjectIDs 
  subjids <- levels(dataframe$Participant....for.the.researcher.)
  # create a vector with the columns that the function is supposed to search
  snq_gender <- dataframe[,92:257]
  # create a dataframe for the columns to search for 
  for (s in 1:length(subjids)) {
    print("subjectid")
    print(s)
    print(subjids[s])
    # Creates a vector with the index of subjects
    subjindex <- grep(subjids[s], relationships$Participant....for.the.researcher.)
    print("subjindex")
    print(subjindex)
    # Where the function should start searching per subject
    starti <- subjindex[1]
    # print(starti)
    # Where the function should stop searching per subject
    endi <- subjindex[length(subjindex)]
    for (i in starti:endi) {
      ################################## PARENT 1
      if (relationships$Nodes[i] == "Parent 1") {
        # get the index of the coloumn for gender
        index <- grep("Parent.1", colnames(snq_gender))
        print("Parent 1")
        print("index 1")
        print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        print("gender")
        print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### PARENT 2
      if (relationships$Nodes[i] == "Parent 2") {
        # get the index of the coloumn for gender
        index <- grep("Parent.2", colnames(snq_gender))
        print("Parent 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### PARENT 3
      if (relationships$Nodes[i] == "Parent 3") {
        # get the index of the coloumn for gender
        index <- grep("Parent.3", colnames(snq_gender))
        print("Parent 3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### PARENT 4
      if (relationships$Nodes[i] == "Parent 4") {
        # get the index of the coloumn for gender
        index <- grep("Parent.4", colnames(snq_gender))
        print("Parent 4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 1
      if (relationships$Nodes[i] == "Sibling 1") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.1", colnames(snq_gender))
        print("Sibling 1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 2
      if (relationships$Nodes[i] == "Sibling 2") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.2", colnames(snq_gender))
        print("Sibling 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 3
      if (relationships$Nodes[i] == "Sibling 3") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.3", colnames(snq_gender))
        print("Sibling 3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 4
      if (relationships$Nodes[i] == "Sibling 4") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.4", colnames(snq_gender))
        print("Sibling 4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 5
      if (relationships$Nodes[i] == "Sibling 5") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.5", colnames(snq_gender))
        print("Sibling 5")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 6
      if (relationships$Nodes[i] == "Sibling 6") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.6", colnames(snq_gender))
        #print("Sibling 6")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 7
      if (relationships$Nodes[i] == "Sibling 7") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.7", colnames(snq_gender))
        #print("Sibling 7")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 8
      if (relationships$Nodes[i] == "Sibling 8") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.8", colnames(snq_gender))
        #print("Sibling 8")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 9
      if (relationships$Nodes[i] == "Sibling 9") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.9", colnames(snq_gender))
        #print("Sibling 9")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### SIBLING 10
      if (relationships$Nodes[i] == "Sibling 10") {
        # get the index of the coloumn for gender
        index <- grep("Sibling.10", colnames(snq_gender))
        #print("Sibling 10")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 1
      if (relationships$Nodes[i] == "Friend 1") {
        # get the index of the coloumn for gender
        index <- grep("Friend.1", colnames(snq_gender))
        #print("Friend 1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 2
      if (relationships$Nodes[i] == "Friend 2") {
        # get the index of the coloumn for gender
        index <- grep("Friend.2", colnames(snq_gender))
        #print("Friend 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 3
      if (relationships$Nodes[i] == "Friend 3") {
        # get the index of the coloumn for gender
        index <- grep("Friend.3", colnames(snq_gender))
        #print("Friend 3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 4
      if (relationships$Nodes[i] == "Friend 4") {
        # get the index of the coloumn for gender
        index <- grep("Friend.4", colnames(snq_gender))
        #print("Friend 4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 5
      if (relationships$Nodes[i] == "Friend 5") {
        # get the index of the coloumn for gender
        index <- grep("Friend.5", colnames(snq_gender))
        #print("Friend 5")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 6
      if (relationships$Nodes[i] == "Friend 6") {
        # get the index of the coloumn for gender
        index <- grep("Friend.6", colnames(snq_gender))
        #print("Friend 6")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 7
      if (relationships$Nodes[i] == "Friend 7") {
        # get the index of the coloumn for gender
        index <- grep("Friend.7", colnames(snq_gender))
        #print("Friend 7")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 8
      if (relationships$Nodes[i] == "Friend 8") {
        # get the index of the coloumn for gender
        index <- grep("Friend.8", colnames(snq_gender))
        #print("Friend 8")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 9
      if (relationships$Nodes[i] == "Friend 9") {
        # get the index of the coloumn for gender
        index <- grep("Friend.9", colnames(snq_gender))
        #print("Friend 9")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 10
      if (relationships$Nodes[i] == "Friend 10") {
        # get the index of the coloumn for gender
        index <- grep("Friend.10", colnames(snq_gender))
        #print("Friend 10")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### Teacher 1
      if (relationships$Nodes[i] == "Teacher 1") {
        # get the index of the coloumn for gender
        index <- grep("Teacher.1", colnames(snq_gender))
        #print("Teacher 1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### Teacher 2
      if (relationships$Nodes[i] == "Teacher 2") {
        # get the index of the coloumn for gender
        index <- grep("Teacher.2", colnames(snq_gender))
        #print("Teacher 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### Teacher 3
      if (relationships$Nodes[i] == "Teacher 3") {
        # get the index of the coloumn for gender
        index <- grep("Teacher.3", colnames(snq_gender))
        #print("Teacher 3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### Teacher 4
      if (relationships$Nodes[i] == "Teacher 4") {
        # get the index of the coloumn for gender
        index <- grep("Teacher.4", colnames(snq_gender))
        #print("Teacher 4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### Teacher 5
      if (relationships$Nodes[i] == "Teacher 5") {
        # get the index of the coloumn for gender
        index <- grep("Teacher.5", colnames(snq_gender))
        #print("Teacher 5")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### DAYCARE CLASS
      if (relationships$Nodes[i] == "Daycare Class") {
        # get the index of the coloumn for gender
        index <- grep("Daycare.Class", colnames(snq_gender))
        #print("Daycare Class")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 1 PARENT 1
      if (relationships$Nodes[i] == "Friend 1 Parent 1") {
        # get the index of the coloumn for gender
        index <- grep("Friend.1.Parent.1", colnames(snq_gender))
        #print("Friend 1 Parent 1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 1 PARENT 2
      if (relationships$Nodes[i] == "Friend 1 Parent 2") {
        # get the index of the coloumn for gender
        index <- grep("Friend.1.Parent.2", colnames(snq_gender))
        #print("Friend 1 Parent 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 2 PARENT 1
      if (relationships$Nodes[i] == "Friend 2 Parent 1") {
        # get the index of the coloumn for gender
        index <- grep("Friend.2.Parent.1", colnames(snq_gender))
        #print("Friend 2 Parent 1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### FRIEND 2 PARENT 2
      if (relationships$Nodes[i] == "Friend 2 Parent 2") {
        # get the index of the coloumn for gender
        index <- grep("Friend.2.Parent.2", colnames(snq_gender))
        #print("Friend 2 Parent 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 1
      if (relationships$Nodes[i] == "Extracurricular Class 1 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.1.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.1.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 2
      if (relationships$Nodes[i] == "Extracurricular Class 2 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.2.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.2.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 3
      if (relationships$Nodes[i] == "Extracurricular Class 3 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.3.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.3.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 4
      if (relationships$Nodes[i] == "Extracurricular Class 4 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.4.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.4.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 5
      if (relationships$Nodes[i] == "Extracurricular Class 5 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.5.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.5.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 6
      if (relationships$Nodes[i] == "Extracurricular Class 6 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.6.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.6.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 7
      if (relationships$Nodes[i] == "Extracurricular Class 7 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.7.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.7.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 8
      if (relationships$Nodes[i] == "Extracurricular Class 8 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.8.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.8.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 9
      if (relationships$Nodes[i] == "Extracurricular Class 9 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.9.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.9.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR TEACHER 10
      if (relationships$Nodes[i] == "Extracurricular Class 10 Teacher") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.10.Teacher", colnames(snq_gender))
        #print("Extracurricular.Class.10.Teacher")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 1
      if (relationships$Nodes[i] == "Extracurricular Class 1 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.1.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.1.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 2
      if (relationships$Nodes[i] == "Extracurricular Class 2 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.2.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.2.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 3
      if (relationships$Nodes[i] == "Extracurricular Class 3 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.3.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.3.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 4
      if (relationships$Nodes[i] == "Extracurricular Class 4 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.4.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.4.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 5
      if (relationships$Nodes[i] == "Extracurricular Class 5 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.5.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.5.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 6
      if (relationships$Nodes[i] == "Extracurricular Class 6 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.6.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.6.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 7
      if (relationships$Nodes[i] == "Extracurricular Class 7 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.7.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.7.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 8
      if (relationships$Nodes[i] == "Extracurricular Class 8 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.8.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.8.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 9
      if (relationships$Nodes[i] == "Extracurricular Class 9 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.9.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.9.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTRACIR kids 10
      if (relationships$Nodes[i] == "Extracurricular Class 10 Kids") {
        # get the index of the coloumn for gender
        index <- grep("Extracurricular.Class.10.Kids", colnames(snq_gender))
        #print("Extracurricular.Class.10.Kids")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### DAYCARE ASSISTANT 1
      if (relationships$Nodes[i] == "Daycare Assistant 1") {
        # get the index of the coloumn for gender
        index <- grep("Daycare.Assistant.1", colnames(snq_gender))
        #print("Daycare Assistant 1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### DAYCARE ASSISTANT 2
      if (relationships$Nodes[i] == "Daycare Assistant 2") {
        # get the index of the coloumn for gender
        index <- grep("Daycare.Assistant.2", colnames(snq_gender))
        #print("Daycare Assistant 2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### DAYCARE ASSISTANT 3
      if (relationships$Nodes[i] == "Daycare Assistant 3") {
        # get the index of the coloumn for gender
        index <- grep("Daycare.Assistant.3", colnames(snq_gender))
        #print("Daycare Assistant 3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 1
      if (relationships$Nodes[i] == "ExtendedFam1") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam1", colnames(snq_gender))
        #print("ExtendedFam1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 2
      if (relationships$Nodes[i] == "ExtendedFam2") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam2", colnames(snq_gender))
        #print("ExtendedFam2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 3
      if (relationships$Nodes[i] == "ExtendedFam3") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam3", colnames(snq_gender))
        #print("ExtendedFam3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 4
      if (relationships$Nodes[i] == "ExtendedFam4") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam4", colnames(snq_gender))
        #print("ExtendedFam4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 5
      if (relationships$Nodes[i] == "ExtendedFam5") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam5", colnames(snq_gender))
        #print("ExtendedFam5")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 6
      if (relationships$Nodes[i] == "ExtendedFam6") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam6", colnames(snq_gender))
        #print("ExtendedFam6")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 7
      if (relationships$Nodes[i] == "ExtendedFam7") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam7", colnames(snq_gender))
        #print("ExtendedFam7")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 8
      if (relationships$Nodes[i] == "ExtendedFam8") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam8", colnames(snq_gender))
        #print("ExtendedFam8")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 9
      if (relationships$Nodes[i] == "ExtendedFam9") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam9", colnames(snq_gender))
        #print("ExtendedFam9")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 10
      if (relationships$Nodes[i] == "ExtendedFam10") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam10", colnames(snq_gender))
        #print("ExtendedFam10")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 11
      if (relationships$Nodes[i] == "ExtendedFam11") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam11", colnames(snq_gender))
        #print("ExtendedFam11")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 12
      if (relationships$Nodes[i] == "ExtendedFam12") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam12", colnames(snq_gender))
        #print("ExtendedFam12")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 13
      if (relationships$Nodes[i] == "ExtendedFam13") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam13", colnames(snq_gender))
        #print("ExtendedFam13")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 14
      if (relationships$Nodes[i] == "ExtendedFam14") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam14", colnames(snq_gender))
        #print("ExtendedFam14")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### EXTENDED FAM 15
      if (relationships$Nodes[i] == "ExtendedFam15") {
        # get the index of the coloumn for gender
        index <- grep("ExtendedFam15", colnames(snq_gender))
        #print("ExtendedFam15")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### GRANDPARENT 1
      if (relationships$Nodes[i] == "Grandparent 1") {
        # get the index of the coloumn for gender
        index <- grep("Grandparent.1", colnames(snq_gender))
        #print("Grandparent.1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### GRANDPARENT 2
      if (relationships$Nodes[i] == "Grandparent 2") {
        # get the index of the coloumn for gender
        index <- grep("Grandparent.2", colnames(snq_gender))
        #print("Grandparent.2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### GRANDPARENT 3
      if (relationships$Nodes[i] == "Grandparent 3") {
        # get the index of the coloumn for gender
        index <- grep("Grandparent.3", colnames(snq_gender))
        #print("Grandparent.3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### GRANDPARENT 4
      if (relationships$Nodes[i] == "Grandparent 4") {
        # get the index of the coloumn for gender
        index <- grep("Grandparent.4", colnames(snq_gender))
        #print("Grandparent.4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### GRANDPARENT 5
      if (relationships$Nodes[i] == "Grandparent 5") {
        # get the index of the coloumn for gender
        index <- grep("Grandparent.5", colnames(snq_gender))
        #print("Grandparent.5")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### NANNY-BABYSITTER 1
      if (relationships$Nodes[i] == "Nanny/Babysitter 1") {
        # get the index of the coloumn for gender
        index <- grep("Nanny.Babysitter.1", colnames(snq_gender))
        #print("Nanny.Babysitter.1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### NANNY-BABYSITTER 2
      if (relationships$Nodes[i] == "Nanny/Babysitter 2") {
        # get the index of the coloumn for gender
        index <- grep("Nanny.Babysitter.2", colnames(snq_gender))
        #print("Nanny.Babysitter.2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### OTHER1
      if (relationships$Nodes[i] == "Other1") {
        # get the index of the coloumn for gender
        index <- grep("Other1", colnames(snq_gender))
        #print("Other1")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### OTHER2
      if (relationships$Nodes[i] == "Other2") {
        # get the index of the coloumn for gender
        index <- grep("Other2", colnames(snq_gender))
        #print("Other2")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### OTHER3
      if (relationships$Nodes[i] == "Other3") {
        # get the index of the coloumn for gender
        index <- grep("Other3", colnames(snq_gender))
        #print("Other3")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
      ################################### OTHER4
      if (relationships$Nodes[i] == "Other4") {
        # get the index of the coloumn for gender
        index <- grep("Other4", colnames(snq_gender))
        #print("Other4")
        #print("index")
        #print(index)
        #print("index 1")
        #print(index[1])
        index1 <- index[1]
        # get the value of the gender per relationships
        gender <- snq_gender[s, index1]
        #print("gender")
        #print(gender)
        gender <- as.character(gender)
        #print("gender characterstrng")
        #print(gender)
        # if it is NA, print that so we know the script is working
        if (is.na(gender) == TRUE) {
          relationships[i, 3] <- "NA"
        }
        # otherwise, print the value in teh new df
        else  {
          relationships[i, 3] <- gender
          #print(relationships[i, 3])
        }
      }
    }
  }
}

gender_perrelationship(dataframe, relationships)






                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             