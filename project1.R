# Subset data with Awk in Bash:
# awk 'NR==1 || /^[12]\/2\/2007/' household_power_consumption.txt > household_power_consumption_subset.txt

data = read.csv("household_power_consumption_subset.txt", sep=";", na.strings="?")
data$datetime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# Check data
head(data)
str(data)

# Set locale to english
Sys.setlocale("LC_TIME", "English")

