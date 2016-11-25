source(file.path("dataset.R"))

dataset <- load_dataset("household_power_consumption.txt")

with(dataset, hist(as.numeric(Global_active_power), col="red", 
                   ylab="Frequency", 
                   xlab="Global Active Power (kilowatts)",
                   main="Global Active Power"))
