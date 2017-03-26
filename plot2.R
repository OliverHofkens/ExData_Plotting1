source('loadData.R')
household <- loadData()

png('plot2.png')
plot(household$Time, household$Global_active_power, type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
