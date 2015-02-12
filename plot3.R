source("project1.R")

png(filename="plot3.png")

columns = 7:9 # Sub metering 1 to 3
colors = c("black", "red", "blue")

plot(data$datetime,  data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
for (i in columns) {
  lines(data$datetime, data[, i], col=colors[i-6])
}
legend("topright", lty=1, col=colors, legend=names(data)[columns])

dev.off()
