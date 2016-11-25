source(file.path("dataset.R"))

dataset <- load_dataset("household_power_consumption.txt")

dateTime <- with(dataset, dmy_hms(paste(Date, Time)))
Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
Sub_metering_2 <- as.numeric(dataset$Sub_metering_2)
Sub_metering_3 <- as.numeric(dataset$Sub_metering_3)

plot(dateTime, Sub_metering_1, type="l", xlab=" ", ylab="Energy sub metering")
points(dateTime, Sub_metering_2, type="l", col="red")
points(dateTime, Sub_metering_3, type="l", col="blue")
