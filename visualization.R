#ggplot
#create a coordinate system

install.packages('ggplot2', dependencies = TRUE)

library(ggplot2)

#create scatter plot
View(mpg)

#column name
names(mpg)

#create scatter plot
ggplot( data = mpg) + 
  geom_point(aes(x=displ, y=hwy, color=class)) + 
  labs(y="highway miles per gallon")

#grammer of graphics
#specify plot building blocks and combine them

mower.df = read.csv("RidingMowers.csv", stringsAsFactors = TRUE)
names(mower.df)
ggplot(data=mower.df) + geom_point( aes(x = Income, y=Lot_Size, color=Ownership))


#bar chart
ggplot(data=mpg) + geom_bar(aes(x=class))

#?stat_summary()
#fun: mean, median, sum, sd
ggplot(data=mpg) + geom_bar(aes(x=class, y=hwy), stat ="summary", fun="mean")


ggplot(data=mower.df) + geom_bar(aes(x=Ownership, y=Income), stat ="summary", fun="mean")


#box_plot
ggplot(data = mpg) + geom_boxplot(aes(x=class, y=hwy))

#histograms
ggplot(data= mpg) + geom_histogram(aes(x=cty), bins=10)
