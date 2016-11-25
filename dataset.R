require(lubridate)

load_dataset <- function(filename) {
    dataset <- read.csv(filename, sep = ";", stringsAsFactors = FALSE, skip = 66637, nrows = 2880,
                        na.strings="?")
    colnames(dataset) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", 
                           "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", 
                           "Sub_metering_3")
    
    return(dataset)
}