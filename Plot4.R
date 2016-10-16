## Plot 4
if(!file.exists("Plots")) dir.create("Plots")
png(filename = "./Plots/plot4.png", width = 480, height = 480, units="px")
par(mfrow = c(2, 2))
plot(power$Date_Time, power$Global_active_power, xlab = "", 
     ylab = "Global Active Power (kilowatt)", type = "l")
plot(power$Date_Time, power$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(power$Date_Time, power$Sub_metering_1, xlab = "", ylab = "Energy sub metering", 
     type = "l")
lines(power$Date_Time, power$Sub_metering_2, col = "red")
lines(power$Date_Time, power$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
plot(power$Date_Time, power$Global_reactive_power, xlab = "datetime", 
     ylab = "Global_reactive_power", type = "l")
dev.off()