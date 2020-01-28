rm(list =ls()) 

# install tree library 
install.packages("tree")
# import tree library
library(tree)

# import dataset
library(ISLR)
attach(Carseats)
# check the intial columns with few datapoints
head(Carseats)

?Carseats
# summarization of dataset
summary(Carseats)

# encoding attribute and doing feature engg*
High <- ifelse(Sales <=8, "No", "Yes")

# view the dataset
View(Carseats)

# using data.frame() function to merge "High" with the rest of the carseats data
Carseats <- data.frame(Carseats, High)

# fitting the tree model
tree.carseats = tree(High ~ .- Sales, data = Carseats)

# summarizing the model 
summary(tree.carseats)

# plotting the model to see the tree hierarchy  
plot(tree.carseats) 

# view all the text attribute calculations
text(tree.carseats, pretty = 0)
# seeing the decision tree from the model
tree.carseats
