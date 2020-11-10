library(ggplot2)
data(diamonds)
summary(diamonds)
names(diamonds)

ggplot( data = diamonds) + 
  geom_point(aes(x=carat, y=price, colour=cut)) + 
  labs(x="carat weight",y="price")

ggplot(data=diamonds) + geom_bar(aes(x=cut, y=price), stat ="summary", fun="mean")

ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(stat="count")

ggplot(data=diamonds) + geom_bar(aes(x=cut, y=carat), stat ="summary", fun="mean")
