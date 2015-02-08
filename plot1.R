source("project1.R")

png(filename="plot1.png")

hist(data$Global_active_power, col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

dev.off()
