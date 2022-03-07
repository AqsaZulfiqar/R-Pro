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
