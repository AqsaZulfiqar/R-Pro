start <- function(p= 19, n= 45) {
  print(p)
  print(n)
}
start(, 90)



x<- 1:6; y<- 6:9
x+y
x > 2
x >=2
x * y
x - y
x / y
rep(20,5)
x<- matrix(1:, 2,2); y<- matrix(rep(10,4), 2,2)
x * y
x
y
x / y
x %*% y



j
class(m)
j-m







#lapply
h <- list(a=1:5, b = rnorm(20), c = rnorm(10, 1), d = rnorm(5, 1))
lapply(h, meamn)
h <- list(a=1:5, b = rnorm(20), c = rnorm(10, 1), d = rnorm(5, 1))
 sapply(h, mean)

 h <- list(a=1:5, b = rnorm(20), c = rnorm(10, 1), d = rnorm(5, 1))
 apply(h, mean)
x<-matrix(rnorm(200), 20, 10) 
apply(x, 2, mean)


library(datasets)
head(airquality)
s <- split(airquality, airquality$Month)
fc(s, function(x), colSums(x[, c("ozone", "solar.R", "wind")]))
lapply(s, function(x), colSums(x[, c("ozone", "solar.R", "wind")]))
lapply(s, fc)
sapply(s, function(x), colMeans(x[, c("ozone", "solar.R", "wind")]))
sapply(s, function(x), colMeans(x[, c("ozone", "solar.R", "wind")], na.rm = TRUE))
