source(file.path("dataset.R"))

dataset <- load_dataset()

dateTime <- with(dataset, ymd_hms(paste(Date, Time)))
globalActivePower <- as.numeric(dataset$Global_active_power)
voltage <- as.numeric(dataset$Voltage)
Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
Sub_metering_2 <- as.numeric(dataset$Sub_metering_2)
Sub_metering_3 <- as.numeric(dataset$Sub_metering_3)
globalReactivePower <- as.numeric(dataset$Global_reactive_power)

png(file="plot4.png",width=480,height=480)

# define plot canvas as row x column as 2 x 2
par(mfrow=c(2,2))

# This will plot into first column and top row
plot(dateTime, globalActivePower, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")

# This will plot into second column and top row
plot(dateTime, voltage, type="l", xlab="datetime", ylab="Voltage")

# This will plot into first column and bottom row
plot(dateTime, Sub_metering_1, type="l", xlab=" ", ylab="Energy sub metering")
points(dateTime, Sub_metering_2, type="l", col="red")
points(dateTime, Sub_metering_3, type="l", col="blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

# This will plot into second column and bottom row
plot(dateTime, globalReactivePower, type="l", xlab="datetime", ylab="Global_rective_power")

dev.off()