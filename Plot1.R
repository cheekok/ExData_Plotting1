## Download the zip file
setwd("D:/Documents/Data Science/Exploratory data analysis/week1")
if(!file.exists("data")) dir.create("data")
FileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(FileUrl, destfile = "./data/power.zip")
unzip("./data/power.zip", exdir = "./data")

## Load the data into R
power <- read.csv(text = grep("^Date|^[1,2]/2/2007",
                              readLines("./data/household_power_consumption.txt"),
                              value=TRUE), 
                  sep = ";", header = TRUE, na.strings = "?")
## Plot 1
if(!file.exists("Plots")) dir.create("Plots")
png(filename = "./Plots/plot1.png", height = 480, width = 480, units = "px")
with(power, hist(Global_active_power, col = "red", main = "Global Active Power", 
                 xlab = "Global Active Power (kilowatts)"))
dev.off()