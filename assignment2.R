df = read.csv("dailykos.csv", stringsAsFactors = TRUE)
#
View(df)
str(df)
summary(df)

#set seed to 1000
set.seed(1000)
km <- kmeans(df, 7)
km$cluster
km$size

km$centers
Cluster1 = subset(df, km$cluster == 1)
Cluster2 = subset(df, km$cluster == 2)
Cluster3 = subset(df, km$cluster == 3)
Cluster4 = subset(df, km$cluster == 4)
Cluster5 = subset(df, km$cluster == 5)
Cluster6 = subset(df, km$cluster == 6)
Cluster7 = subset(df, km$cluster == 7)
nrow(Cluster1)

freq1 = head(sort(colMeans(Cluster1), decreasing=TRUE), n=10)
freq1
freq2 = head(sort(colMeans(Cluster2), decreasing=TRUE), n=10)
freq2
freq3 = head(sort(colMeans(Cluster3), decreasing=TRUE), n=10)
freq3
freq4 = head(sort(colMeans(Cluster4), decreasing=TRUE), n=10)
freq4
freq5 = head(sort(colMeans(Cluster5), decreasing=TRUE), n=10)
freq5
freq6 = head(sort(colMeans(Cluster6), decreasing=TRUE), n=10)
freq6
freq7 = head(sort(colMeans(Cluster7), decreasing=TRUE), n=10)
freq7