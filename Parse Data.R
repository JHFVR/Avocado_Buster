library(data.table)
library(stringr)
file <- "/Users/d059566/Downloads/2018-03-18-19;22;17.txt"
v.apple <- readLines(paste0(file))
v.apple <- v.apple[-1]
v.apple <- str_remove_all(v.apple, pattern = "[^0-9]")
v.apple <- gsub("(.{3})", "\\1, ", v.apple)
v.apple <- gsub('.{2}$', '', v.apple)
l.apple <- as.list(strsplit(v.apple, ", "))

for (i in 1:length(l.apple)){
  l.apple[1,1] <- 22
}
lapply(l.apple, tail, 1) 

l.apple[] <-  "22" 
list.append(l.apple, "22")

df.apple <- data.frame(R = as.numeric(), S = as.numeric(), T = as.numeric()
                       , U = as.numeric(), V = as.numeric(), W = as.numeric(), TempF = as.numeric(),
                       Timestamp = as.character())

for (i in 1:length(l.apple)){
  df.apple[i+nrow(df.apple), ] <- l.apple[[i]]
}


