library(microbenchmark)
testnumvec <- read_file("pi_dec_1m.txt")
numbers <- gsub("[[:punct:]]", "", testnumvec)
numbers <- as.integer(unlist(strsplit(numbers,"")))  
numvec <- numbers[1:10]

df <- data.frame("i"=numeric(),"new"=numeric(),"orig"=numeric())

factor(c("my","org"))
for(i in 1:5){
  de <- c(i,i,i)
}

?sample
sample(0:9, 100, replace=TRUE)

df <- rbind(df, setNames(de, names(df)))
View(df)
mbm <- microbenchmark({
  x <- cos(5/2*pi - numvec/5*pi)
  y <- sin(5/2*pi - numvec/5*pi)
  x <- cumsum(x)
  y <- cumsum(y)
  x <- c(0,x)
  y <- c(0,y)
},{
  x <- y <- rep(NULL, length(numvec))
  x[1] <- 0
  y[1] <- 0
  for (i in 2:length(numvec)){
    x[i] <- x[(i-1)] + sin((pi*2)*(numvec[i]/10))
    y[i] <- y[(i-1)] + cos((pi*2)*(numvec[i]/10))  
  }
}, times=3

)
levels(mbm$expr) <- c("My way", "Original way")
summary(mbm)$median[2]
