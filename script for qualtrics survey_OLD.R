#### Script to manipulate SNQ from qualtrics 
#### 5.15.19
#### Let's see how this goes! 

setwd("/Volumes/woodwardlab/Data_Lab Members/Nicole Burke/Social Network/Social Bias/Data/Raw Data")

####### import data and load packages ##########
snq <- read.csv("Social Network Survey version2_5.15.19_nicole manipulate.csv")
library(tidyverse)

########### explore ###############
colnames(snq)
# get subjectids 
unique(snq$ParticipantNumber)

## Summarize and get a table with just the nodes 
nodes_persubj <- snq %>%
  group_by(ParticipantNumber) %>%
  summarize(Nodes = Please.select.all.the.people.who.your.child.sees.in.a.regular.week) %>%
  mutate(Nodes = strsplit(as.character(Nodes), ",")) %>%
  unnest(Nodes)

### Dataframe with just gender for now #########
grep("isthisworking", nodes_persubj$Nodes[1])

cols <- colnames(snq)

grep("Parent.1", cols, value = TRUE)
grep("Parent.1", cols)

# let's focus on one subject for now 
snq_p21 <- subset(snq, ParticipantNumber== "21" )
snq_p21 <- snq_p21[,1:87]
grep("Sibling.1", colnames(snq_p21))
grep("Sibling.1", colnames(snq_p21), value = TRUE)

nodes_persubj$Gender <- NA

######### basic form of what you need to do ############

# first, take a relationships per subject 
if (nodes_persubj$Nodes[3] == "Sibling 1") {
  # get the index of the coloumn for gender 
  index <- grep("Sibling.1", colnames(snq_p21))
  print(index)
  # get the value of the gender per relationships
  gender <- snq_p21[1, index]
  print(gender)
  # if it is NA, print that so we know the script is working
  if (is.na(gender) == TRUE) {
    nodes_persubj[3, 3] <- "NA"
  }
  # otherwise, print the value in teh new df
  else  {
    nodes_persubj[3, 3] <- gender
  }
}

######### let's try making something bigger!########### 

# Create a vector of the subjectids 
subjids <- unique(snq$ParticipantNumber)

# Create a new dataframe where the info is going to go 
relationships <- snq %>%
  group_by(ParticipantNumber) %>%
  summarize(Nodes = Please.select.all.the.people.who.your.child.sees.in.a.regular.week) %>%
  mutate(Nodes = strsplit(as.character(Nodes), ",")) %>%
  unnest(Nodes)

# Create columns in the new dataframe 
relationships$Gender <- NA
relationships$Race <- NA


# create separate functions for race and gender for now 
snq_gender <- snq[,1:88]


# let's try the fucntion!!
for (s in 1:length(subjids)) {
  # print("subjectid")
  # print(s)
  # print(subjids[s])
  # Creates a vector with the index of subjects
  subjindex <- grep(subjids[s], relationships$ParticipantNumber)
  # print("subjindex")
  # print(subjindex)
  # Where the function should start searching for hits to neccessaryAOI
  starti <- subjindex[1]
  # print(starti)
  # Where the function should stop searching for hits to neccessaryAOI
  endi <- subjindex[length(subjindex)]
  for (i in starti:endi) {
    ################################## PARENT 1
    if (relationships$Nodes[i] == "Parent 1") {
      # get the index of the coloumn for gender
      index <- grep("Parent.1", colnames(snq_gender))
      # print("index 1")
      # print(index[1])
      index1 <- index[1]
      # get the value of the gender per relationships
      gender <- snq_gender[s, index1]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### PARENT 2
    if (relationships$Nodes[i] == "Parent 2") {
      # get the index of the coloumn for gender
      index <- grep("Parent.2", colnames(snq_gender))
      # print("index 1")
      # print(index[1])
      index1 <- index[1]
      # get the value of the gender per relationships
      gender <- snq_gender[s, index1]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 1
    if (relationships$Nodes[i] == "Sibling 1") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.1", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 2
    if (relationships$Nodes[i] == "Sibling 2") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.2", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 3
    if (relationships$Nodes[i] == "Sibling 3") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.3", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 4
    if (relationships$Nodes[i] == "Sibling 4") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.4", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 5
    if (relationships$Nodes[i] == "Sibling 5") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.5", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 6
    if (relationships$Nodes[i] == "Sibling 6") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.6", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 7
    if (relationships$Nodes[i] == "Sibling 7") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.7", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### SIBLING 8
    if (relationships$Nodes[i] == "Sibling 8") {
      # get the index of the coloumn for gender
      index <- grep("Sibling.8", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### GRANDPARENT 1
    if (relationships$Nodes[i] == "Grandparent 1") {
      # get the index of the coloumn for gender
      index <- grep("Grandparent.1", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### GRANDPARENT 2
    if (relationships$Nodes[i] == "Grandparent 2") {
      # get the index of the coloumn for gender
      index <- grep("Grandparent.2", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### GRANDPARENT 3
    if (relationships$Nodes[i] == "Grandparent 3") {
      # get the index of the coloumn for gender
      index <- grep("Grandparent.3", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################### GRANDPARENT 4
    if (relationships$Nodes[i] == "Grandparent 4") {
      # get the index of the coloumn for gender
      index <- grep("Grandparent.4", colnames(snq_gender))
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
      gender <- as.character(gender)
      # if it is NA, print that so we know the script is working
      if (is.na(gender) == TRUE) {
        relationships[i, 3] <- "NA"
      }
      # otherwise, print the value in teh new df
      else  {
        relationships[i, 3] <- gender
        print(relationships[i, 3])
      }
    }
    ################################## FRIEND 1
    if (relationships$Nodes[i] == "Friend 1") {
      # get the index of the coloumn for gender
      index <- grep("Friend.1", colnames(snq_gender))
      # print("index")
      # print(index)
      # print("index 1")
      # print(index[1])
      index1 <- index[1]
      # get the value of the gender per relationships
      gender <- snq_gender[s, index1]
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
    ################################## FRIEND 2
    if (relationships$Nodes[i] == "Friend 2") {
      # get the index of the coloumn for gender
      index <- grep("Friend.2", colnames(snq_gender))
      # print("index")
      # print(index)
      # print("index 1")
      # print(index[1])
      index1 <- index[1]
      # get the value of the gender per relationships
      gender <- snq_gender[s, index1]
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
    ################################## FRIEND 3
    if (relationships$Nodes[i] == "Friend 3") {
      # get the index of the coloumn for gender
      index <- grep("Friend.3", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 4
    if (relationships$Nodes[i] == "Friend 4") {
      # get the index of the coloumn for gender
      index <- grep("Friend.4", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 5
    if (relationships$Nodes[i] == "Friend 5") {
      # get the index of the coloumn for gender
      index <- grep("Friend.5", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 6
    if (relationships$Nodes[i] == "Friend 6") {
      # get the index of the coloumn for gender
      index <- grep("Friend.6", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 7
    if (relationships$Nodes[i] == "Friend 7") {
      # get the index of the coloumn for gender
      index <- grep("Friend.7", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 8
    if (relationships$Nodes[i] == "Friend 8") {
      # get the index of the coloumn for gender
      index <- grep("Friend.8", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 9
    if (relationships$Nodes[i] == "Friend 9") {
      # get the index of the coloumn for gender
      index <- grep("Friend.9", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## FRIEND 10
    if (relationships$Nodes[i] == "Friend 10") {
      # get the index of the coloumn for gender
      index <- grep("Friend.10", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## TEACHER 1
    if (relationships$Nodes[i] == "Teacher 1") {
      # get the index of the coloumn for gender
      index <- grep("Teacher.1", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## TEACHER 2
    if (relationships$Nodes[i] == "Teacher 2") {
      # get the index of the coloumn for gender
      index <- grep("Teacher.2", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## TEACHER 3
    if (relationships$Nodes[i] == "Teacher 3") {
      # get the index of the coloumn for gender
      index <- grep("Teacher.3", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## TEACHER 4
    if (relationships$Nodes[i] == "Teacher 4") {
      # get the index of the coloumn for gender
      index <- grep("Teacher.4", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## TEACHER 5
    if (relationships$Nodes[i] == "Teacher 5") {
      # get the index of the coloumn for gender
      index <- grep("Teacher.5", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
    ################################## DAYCARE CLASS
    if (relationships$Nodes[i] == "Daycare Class") {
      # get the index of the coloumn for gender
      index <- grep("Daycare.Class", colnames(snq_gender))
      # print("index")
      # print(index)
      # get the value of the gender per relationships
      gender <- snq_gender[s, index]
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
  }
}

unique(relationships$Nodes)
colnames(snq_gender)




