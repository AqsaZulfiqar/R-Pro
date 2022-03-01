print("hi its my next step to genrate a new file in R studio.")
print("Allah know each and every thing.")

fileurl <- "http://app.datawrapper.de/table/1Ek23/visualize?tpl=FJZAp#refine"

download.file(fileurl, destfile = "my.csv", method = "curl", sep = ",")
cdata <- read.table("my.csv", sep = ",", header = TRUE)
head(cdata)
getwd()
ccdata <- read.csv2("my.csv")
head(ccdata)
library(readxl)
readxl_example()
examp <- readxl_example("geometry.xlsx")
read <- read_excel(examp)
