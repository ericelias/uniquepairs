library("dplyr")  
df <-read.csv("SourcePath.csv", header = TRUE)

target <- pull(df, "Column name fo target")
targetpairs <-as.data.frame(t(combn(unique(target), 2)))
targetlocation <- pull(df, "Column name of target source location")
targetlocationpairs <-as.data.frame(t(combn(unique(targetlocation), 2)))

list <-data.frame(targetpairs, targetlocationpairs)
write.csv(list,"OutputPath.csv", row.names = FALSE)
