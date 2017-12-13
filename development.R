#install.packages("bigmemory")
library(bigmemory)

#install.packages("devtools")
#library(devtools)
#install_github("jayemerson/big.char")
library(big.char)

# vi starter med at indlæse filen, og fjerne punktummet
x <- read_file("Pi-Dec.txt")
x <- gsub("[[:punct:]]", "", x)

# så vil vi godt have kørt det her:
#z <- as.integer(unlist(strsplit(x,"")))  

# udfordringen er, at vi undervejs får lavet en vektor, der alt for stor.

x <- big.char(1,1000000000,backingfile = "biggie.bac", descriptorfile = "biggie.desc")

library(readr)



substr(x, 1, 20)

y <- big.matrix(1000000000, 3, type='integer', init=0, backingfile = "bigpi.bac", descriptorfile = "bigpi.desc")
colnames(y) = c("num", "x", "y")

z <- big.char(1000000000,1,backingfile = "bigone.bac", descriptorfile = "bigone.desc")

Square root of 2 (Sqrt(2)) 
https://apod.nasa.gov/htmltest/gifcity/sqrt2.1mil


* Square root of 3 (Sqrt(3))
https://apod.nasa.gov/htmltest/gifcity/sqrt3.1mil

* Golden ratio
http://www.goldenratio.org/

* e

* Natural logarithm of 2 (Log(2))
* Natural logarithm of 3 (Log(3))
* Natural logarithm of 10 (Log(10))
* Apéry's constant (Zeta(3))
* Lemniscate constant (Lemniscate)
* Catalan's constant (Catalan)
* Euler-Mascheroni constant (Euler's Constant)