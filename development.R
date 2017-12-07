number <- "31415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
numbervek <- as.integer(unlist(strsplit(number,"")))
length(numbervek)

x <- cos(5/2*pi - numbervek/5*pi)
y <- sin(5/2*pi - numbervek/5*pi)

x <- cumsum(x)
y <- cumsum(y)
x <- c(0,x)
y <- c(0,y)
df <- data.frame(as.integer(c(0,numbervek)),x,y)
colnames(df) <- c("num", "x", "y")

rainbowColDark <- c("#EFB605","#EB8612","#DD0030","#B3005A","#80348F","#3365AA","#07A071","#7EB852")

factor(df$num)
library(ggplot2)
ggplot(df, aes(x=x,y=y,group="1"))+
  geom_path(colour=factor(df$num)) 

x[-1]
