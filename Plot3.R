## Plot 3
if(!file.exists("Plots")) dir.create("Plots")
png(filename = "./Plots/plot3.png", width = 480, height = 480, units="px")
plot(power$Date_Time, power$Sub_metering_1, xlab = "", ylab = "Energy sub metering", 
     type = "l")
lines(power$Date_Time, power$Sub_metering_2, col = "red")
lines(power$Date_Time, power$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()