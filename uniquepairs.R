library("dplyr")  
df <-read.csv("/Users/EricElias/Desktop/MDSxCategorization.csv", header = TRUE)

target <- pull(df, "Target")
targetpairs <-as.data.frame(t(combn(unique(target), 2)))
targetlocation <- pull(df, "TargetLocation")
targetlocationpairs <-as.data.frame(t(combn(unique(targetlocation), 2)))

list <-data.frame(targetpairs, targetlocationpairs)
write.csv(list,"/Users/EricElias/Desktop/MDSxCategorizationPairs.csv", row.names = FALSE)