source("project1.R")

png(filename="plot4.png")

par(mfrow=c(2, 2))

# top left (plot 2)
with(data, plot(datetime, Global_active_power, xlab="", ylab="Global Active Power", type="l"))

# top right
with(data, plot(datetime, Voltage, type="l"))

# bottom left (plot 3)
columns = 7:9
colors = c("black", "red", "blue")
plot(data$datetime,  data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
for (i in columns) {
  lines(data$datetime, data[, i], col=colors[i-6])
}
legend("topright", lty=1, col=colors, legend=names(data)[columns], bty="n")

# bottom right
with(data, plot(datetime, Global_reactive_power, type="l"))

dev.off()

