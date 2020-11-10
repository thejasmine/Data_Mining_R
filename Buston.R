library(ggplot2)
install.packages('cowplot')
library(cowplot)

df = read.csv("BostonHousing.csv", stringsAsFactors = TRUE)
View(df)

#look the structure of dataset
str(df)
#histogram
ggplot(data=df) + geom_histogram(aes(x=MEDV),bins=10)+labs(x="Median Value")

#declare to factor
factor(df$CHAS)
df$CHAS <- factor(df$CHAS)

#compare distribution
ggplot(data=df) + geom_boxplot(aes(x=CHAS, y=MEDV))+labs(x="CHAS")

#compare distribution
plot1 <-ggplot(data=df) + geom_boxplot(aes(x=CAT..MEDV, y=NOX))
plot2 <-ggplot(data=df) + geom_boxplot(aes(x=CAT..MEDV, y=PTRATIO))
plot_grid(plot1, plot2, labels = "AUTO")

#ptratio is a better metric to predict MEDV
#since the range of high and low are not overlap to each other