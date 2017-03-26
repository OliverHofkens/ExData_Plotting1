source('loadData.R')
household <- loadData()

plot3 <- function(){
    plot(household$Time, household$Sub_metering_1, type = "l",
         xlab = "",
         ylab = "Energy sub metering")
    
    lines(household$Time, household$Sub_metering_2, col = "red")
    lines(household$Time, household$Sub_metering_3, col = "blue")
    legend("topright", 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col = c("black", "red", "blue"),
           lty = c(1,1,1))
}

png('plot3.png')
plot3()
dev.off()
