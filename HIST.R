pollution <- read.csv("C:/Users/Mohsin Ali/Documents/R-Pro/airdata.csv")
head(pollution)
str(pollution)
dim(pollution)


summary(pollution$Daily.Mean.PM2.5.Concentration)

boxplot(pollution$Daily.Mean.PM2.5.Concentration, col = "green")
hist(pollution$Daily.Mean.PM2.5.Concentration, col = "pink")
hist(pollution$Daily.Mean.PM2.5.Concentration, col = "pink", breaks = 50)
abline(v =15, lwd = 2)

boxplot(pollution$Daily.Mean.PM2.5.Concentration, col = "green", main = " plot a air graph data")
abline(h = 12)

boxplot(Daily.Mean.PM2.5.Concentration ~ COUNTY, data = pollution, col = "red")
abline(h = 15)


# scatterplot
with(pollution, plot(Date, Daily.Mean.PM2.5.Concentration))
abline(h = 15, lwd = 2, lty = 2)

#Base plotting

library(lattice)


library(datasets)
hist(airquality$Ozone)
with(airquality, lines(Wind, Ozone, col = "orange"))
with(airquality, plot(Wind, Ozone, col = "blue"))


#lattice plotting
library(lattice)
library(datasets)
xyplot(Ozone ~ Wind, data= airquality, col = "red" )

set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c ("Group1", "Group2"))
xyplot(y ~ x | f, layout = c(2, 1))
panel.lmline(x , y, col = 2)

str(maacs)
qplot(log(eno), data = maacs)
library(ggplot2)

qplot(log(eno), data = maacs, fill = mopos)
qplot(log(eno), data = maacs, geom = "density")
qplot(log(eno), data = maacs, geom = "density", color = mopos)
qplot(log(pm25), log(eno), data = maacs, color = mopos, geom = c("point","smooth"), method = "lm")
qplot(log(pm25), log(eno), data = maacs, color = mopos, geom = c("point","smooth"), method = "lm", facets = . ~ mopos)


#ggplot2
library(ggplot2)
maacs_2 <- read.csv("bmi_pm25.csv", header = TRUE)
g <- ggplot(maacs_2, aes(logpm25, NocturnalSympt))
g + geom_point()
g + geom_point() + geom_smooth(method = lm)
g + geom_point() + geom_smooth(method = lm) + facet_grid(. ~bmicat)

g + geom_point(color = "skyblue", size = 4, alpha = 1/2)

g <- ggplot(testdat, aes(x =x, y = y))
g + geom_line()



#final graph
cutpoints <- quantile(maacs_2$logno2_new, seq(0,1, length = 4), na.rm = TRUE)
maacs_2$no2tert <- cut(maacs_2$logno2_new, cutpoints)
levels(maacs_2$no2tert)

g <- ggplot(maacs_2, aes(logpm25, NocturnalSympt))
g + geom_point(aplha = 1/3) +
  facet_wrap(bmicat ~ no2tert, nrow = 2, ncol = 4) +
  geom_smooth(method = "lm", se = FALSE, color = "steelblue") +
  theme_bw(base_family = "Avenir", base_size = 10) +
  labs(x = expression("log" * PM[2.5])) +
  labs(y = "Nocturnal Symptoms") +
  labs(title = "MAACS Cohort")

