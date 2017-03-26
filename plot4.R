source('loadData.R')
source('plot3.R')
household <- loadData()

png('plot4.png')
par( mfrow = c(2,2) )

#Plot top left:
plot(household$Time, household$Global_active_power, type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

# Plot top right:
plot(household$Time, household$Voltage, type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Plot bottom left:
plot3()

# Plot bottom right:
plot(household$Time, household$Global_reactive_power, type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()
