## Plot 2
##  Convert Date and Time
power$Date <- as.Date(power$Date, format="%d/%m/%Y")
power$Date_Time <- strptime(paste(power$Date, power$Time), format = "%Y-%m-%d %H:%M:%S")
## Plot the figure
if(!file.exists("Plots")) dir.create("Plots")
png(filename = "./Plots/plot2.png", height = 480, width = 480, units = "px")
plot(power$Date_Time, power$Global_active_power, xlab = "",
     ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()