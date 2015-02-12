source("project1.R")

png(filename="plot4.png")

par(mfrow=c(2, 2))

# top left (plot 2)
with(data, plot(datetime, Global_active_power, xlab="", ylab="Global Active Power", type="l"))

# top right
with(data, plot(datetime, Voltage, type="l"))

# bottom left (plot 3)
columns = 7:9 # Sub metering 1 to 3
colors = c("black", "red", "blue")
plot(data$datetime,  data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_1, col=colors[1])
lines(data$datetime, data$Sub_metering_2, col=colors[2])
lines(data$datetime, data$Sub_metering_3, col=colors[3])
legend("topright", lty=1, col=colors, legend=names(data)[columns], bty="n")

# bottom right
with(data, plot(datetime, Global_reactive_power, type="l"))

dev.off()

