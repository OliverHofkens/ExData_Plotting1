loadData <- function (){
    filename <- "household_power_consumption.txt"
    
    data <- read.csv(filename, 
               header = TRUE, 
               sep = ";",
               na.strings = c("?"),
               colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
               )
    
    wantedDates <- grepl("^[12]/2/2007", data$Date)
    data <- data[wantedDates,]
   
    data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %T")
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    
    data
}