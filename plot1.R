
##  ========  set directory and filename here. 
dir <- "C:/Users/Gary/Desktop/Data Science Specialzation/Exploratory Data Course Proj 1"
setwd(dir)
filenm <- "household_power_consumption.txt"
## ========= end set directory and filename

my.data <- as.data.frame(read.table(filenm, header=TRUE, sep = ";", na.strings = "?"))
my.data$Date <- as.Date(my.data$Date,"%d/%m/%Y")
my.data$Time <- strptime(my.data$Time,"%H:%M:%S")

## Date: Date in format dd/mm/yyyy, Time in format hh:mm:ss
## Global_active_power: household global minute-averaged active power (in kilowatt)
## Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
## Voltage: minute-averaged voltage (in volt)
## Global_intensity: household global minute-averaged current intensity (in ampere)
## ---  All sub-metering in watt-hours of active energy.  
##          Sub_metering_1: kitchen - dishwasher, oven, microwave
##          Sub_metering_2: laundry room - washing-machine,dryer, refrigerator, light.       
##          Sub_metering_3: an electric water-heater and an air-conditioner.

my.subset <- my.data[my.data$Date=="2007-02-01" | my.data$Date == "2007-02-02",]

png(filename = "plot1.png", width = 480, height = 480)
hist(my.subset$Global_active_power,main="Global Active Power", col="Red",xlab = "Global Active Power (Kilowatts)")
dev.off()
