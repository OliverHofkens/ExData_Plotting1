source('loadData.R')
household <- loadData()

png('plot1.png')
hist(household$Global_active_power, col = "red",
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.off()
