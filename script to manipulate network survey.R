#### Script to manipulate SNQ from qualtrics 
#### 5.17.19
#### Let's see how this goes! 

setwd("/Volumes/woodwardlab/Data_Lab Members/Nicole Burke/Social Network/Social Bias/Data/for making the network survey")

################# import data ##############
snq <- read.csv("sample data.csv", fileEncoding = "latin1")
str(snq)

# make a dataframe for testing3
test3 <- subset(snq, Participant....for.the.researcher. == "test 3")
test3 <- test3[,1:257]

# make a new dataframe with relationship per line for test3
test3_relations <- snq %>%
  group_by()

## Summarize and get a table with just the nodes 
nodes_persubj <- snq %>%
  group_by(Participant....for.the.researcher.) %>%
  summarize(Nodes = Please.select.all.the.people.who.your.child.sees.in.a.regular.week...Selected.Choice) %>%
  mutate(Nodes = strsplit(as.character(Nodes), ",")) %>%
  unnest(Nodes)

