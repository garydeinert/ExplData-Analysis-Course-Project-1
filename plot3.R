
##  ========  set directory and filename here. 
dir <- "C:/Users/Gary/Desktop/Data Science Specialzation/Exploratory Data Course Proj 1"
setwd(dir)
filenm <- "household_power_consumption.txt"
## ========= end set directory and filename

my.data <- as.data.frame(read.table(filenm, header=TRUE, sep = ";", na.strings = "?"))
x <- paste(my.data$Date,my.data$Time)
my.data$Date <- as.Date(my.data$Date,"%d/%m/%Y")
my.data$Time <- strptime(x,"%d/%m/%Y %H:%M:%S")

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

png(filename = "plot3.png", width = 480, height = 480)

      plot(my.subset$Time,my.subset$Sub_metering_1, type = "l", xlab = "", ylab="Energy sub metering")
      lines(my.subset$Time,my.subset$Sub_metering_2, col="red")
      lines(my.subset$Time, my.subset$Sub_metering_3, col = "blue")
      legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 2, col = c("black","red","blue"))

dev.off()
