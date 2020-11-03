#the c() function concatenations individual items into a vector
xNum <- c(1, 3.14,5,7)
xNum

xLog <- c( TRUE, FALSE)
xLog

xChar <- c("foo", "bar")
xChar

#Adding elements
#you need to store into new variable
z <- c(xNum, 100, 200)
z
#if you want to change existing variable, you need to reasign


#Math on Vectors
x <- c(2,4,6,9)
#each value would add one
x + 1

x * pi

x + x

#Length
length(x)

#generate number from 1-30
xSeq <- 1:30
xSeq

#index position
xNum[1:2]
xNum[c(1,3)]

#Variables can be used as well
myStart <- 4
xNum[myStart]

#Negative indexing
#omit the elemet
xSeq
#in this case 5 would disappear from the xSeq
xSeq[-5]
xSeq[-5:-7]

#indexing with logic values(true, false)
xNum
xNum[c(TRUE, TRUE, FALSE, FALSE)]

#comparative operators to select items
xNum >3
xNum[xNum > 3 ]

friends <- c("eeyore","pooh","tiger")
length(friends)
friends[1:2]

#get the same result
friends[2:3]
friends[c(2,3)]
friends[-1]


#Dataframe
x.df <-read.csv("toy_example.csv")

x.df[2,1]
x.df[,1]
x.df[2:3, ]

#index by using column names
x.df[,1]
x.df[,]

#call the column name
x.df[, "xNum"]

x.df$xNum

#names() -> give you the column name
names(x.df)

#View() ->show the view in another window
View(x.df)

#head()
head(x.df)

tail(x.df)

#get the better understaning of your data
summary(x.df)

str(x.df)


#iris dataset is built in
View(iris)

str(iris)
summary(iris)
names(iris)

mean(iris[,1])

#get the last 2 rows in last 2 column from iris data frame
numRow <- nrow(iris)
numCol <- ncol(iris)

iris[149:150, 4:5]
iris[(numRow-1):numRow,(numCol-1),numCol ]


#get the averate Petal length over all the observation
mean(iris$Petal.Length)

# find observation whose species are versicolor
iris$Species == "versicolor"
#use row indexing to filter versicolor
iris[iris$Species == "versicolor",  ]

#Species is factor categorical data
#to create factor, you need to use factor() function

str(iris)
sex_vector = c("Male","Female","Female","Male","Female")
str(sex_vector)
summary(sex_vector)
factor_sex_vector = factor(sex_vector)

#result Levels: Female Male
factor_sex_vector

#result "Female" "Male"  
levels(factor_sex_vector)

str(factor_sex_vector )

#resilt xChar: Factor w/ 4 levels
x.df = read.csv("toy_example.csv", stringsAsFactors = TRUE)
str(x.df)

#ask for help
help(mean)
?mean
example(mean)

