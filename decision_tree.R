install.packages("rpart", dependencies = TRUE)
install.packages("rpart.plot", dependencies = TRUE)
library(caret)
library(ggplot2)
#generate decision tree
library(rpart)
library(rpart.plot)

df <- read.csv("UniversalBank.csv", stringsAsFactors=TRUE)
View(df)

#number of row
nrow(df)

#generate sequence random number
set.seed(11)
#60% training data 40%validation
train_index <- sample(1:nrow(df), nrow(df)*0.6)
train_df <- df[train_index, ]
validate_df <- train_df <- df[-train_index, ]
validate_df
train_df

#build classification tree from training data
default.ct = rpart(Personal.Loan ~.,data = train_df, method = 'class')
#plot tree
prp(default.ct)

#add more information about plot style
#number in each leaf left and right group and 
#use majority vote to determine the group
prp(default.ct, type=1, extra=1)

#grow full tree
#take a lot of memory
#full.ct <- rpart(Personal.Loan~.,data=train.df, method = class,
                    #control = rpart.control(cp=-1, minsplit=1))



#we would like to know which predictor is the most useful
#you can just ask the decision point in the tree
#income, ccavg family educatio
names(df)

#use validate dataset to the tree we create
default_ct_point_pred <- predict(default.ct, validate_df, type = 'class')

#generate confusion matrix for validation
#you need to change int personal loan into factor, since you are using class tree
confusionMatrix(default_ct_point_pred, factor(validate_df$Personal.Loan))

str(validate_df)

#train.df[, c[1,2,3,4,5,6,7]]
#選你要的


