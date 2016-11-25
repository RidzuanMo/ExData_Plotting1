source(file.path("dataset.R"))

dataset <- load_dataset()

dateTime <- with(dataset, ymd_hms(paste(Date, Time)))
Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
Sub_metering_2 <- as.numeric(dataset$Sub_metering_2)
Sub_metering_3 <- as.numeric(dataset$Sub_metering_3)

png(file="plot3.png",width=480,height=480)

plot(dateTime, Sub_metering_1, type="l", xlab=" ", ylab="Energy sub metering")
points(dateTime, Sub_metering_2, type="l", col="red")
points(dateTime, Sub_metering_3, type="l", col="blue")

dev.off()