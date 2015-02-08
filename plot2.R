source("project1.R")

png(filename="plot2.png")

with(data, plot(datetime, Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l"))

dev.off()
