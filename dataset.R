require(lubridate)

load_dataset <- function() {
    zipped_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    zipped_filename <- "household_power_consumption.zip"
    zipped_file <- file.path(zipped_filename)
    dataset_file <- file.path("household_power_consumption.txt")
    
    if(!file.exists(zipped_file)) {
        download.file(zipped_url, zipped_file, method="curl")
        unzip(zipped_file)
    }
    
    dataset <- read.csv(dataset_file, sep = ";", stringsAsFactors = FALSE, na.strings="?")
    dataset[[1]] <- dmy(dataset[[1]])
    
    subset(dataset, dataset$Date >= dmy("01/02/2007") & dataset$Date <= dmy("02/02/2007"))
}