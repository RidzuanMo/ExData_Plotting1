source(file.path("dataset.R"))

dataset <- load_dataset("household_power_consumption.txt")

dateTime <- with(dataset, dmy_hms(paste(Date, Time)))
globalActivePower <- as.numeric(dataset$Global_active_power)

plot(dateTime, globalActivePower, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
