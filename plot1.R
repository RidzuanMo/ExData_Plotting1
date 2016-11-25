source(file.path("dataset.R"))

dataset <- load_dataset()

png(file="plot1.png",width=480,height=480)

with(dataset, hist(as.numeric(Global_active_power), col="red", 
                   ylab="Frequency", 
                   xlab="Global Active Power (kilowatts)",
                   main="Global Active Power"))


dev.off()