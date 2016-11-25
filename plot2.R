source(file.path("dataset.R"))

dataset <- load_dataset()

dateTime <- with(dataset, ymd_hms(paste(Date, Time)))
globalActivePower <- as.numeric(dataset$Global_active_power)

png(file="plot2.png",width=480,height=480)

plot(dateTime, globalActivePower, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")

dev.off()