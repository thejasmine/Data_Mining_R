#k means
install.packages("caret", dependencies = TRUE)
library(caret)
library(ggplot2)

df <- read.csv("Utilities.csv", stringsAsFactors=TRUE)
View(df)

#center-> mean scale->stvd
#compute mean and standard deviation of each column
norm_values <- preProcess(df,method = c("center","scale"))

#after this line, the dataset haven't been process

#we perform the transformation/ normalization
#predict is a function -> first argument is root
utilities_norm <- predict(norm_values, df )
View(df)
utilities_norm

# second argument -> number of k
# randomly select 6 center within data set
# seed would be the same
set.seed(1234)
km <- kmeans(utilities_norm, 6)

#show cluster membership
#5 3 5 4 2 5 6 1 6 4 1 6 4 5 3 1 3 5 5 4 3 4
#代表他悶在哪一組
km$cluster

# value of k means center
km$centers
#use profiling centroids to display



#within-cluster sum of squared distance
km$tot.withinss





