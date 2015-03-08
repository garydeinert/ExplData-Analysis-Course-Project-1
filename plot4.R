
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

png(filename = "plot4.png", width = 480, height = 480)

par(mfcol = c(2,2))           ## set up 2x2 plotting grid; two existing plots in left column

## draw first plot (former plot2), upper left
plot(my.subset$Time,my.subset$Global_active_power,type = "l",xlab = "", ylab = "Global active power (kilowatts)")

## draw second plot (former plot3), lower left
plot(my.subset$Time,my.subset$Sub_metering_1, type = "l", xlab = "", ylab="Energy sub metering")
      lines(my.subset$Time,my.subset$Sub_metering_2, col="red")
      lines(my.subset$Time, my.subset$Sub_metering_3, col = "blue")
      legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 2, col = c("black","red","blue"))

## draw third plot, upper right
plot(my.subset$Time,my.subset$Voltage,type = "l",xlab = "datetime", ylab = "Voltage")

## draw fourth plot, lower right
plot(my.subset$Time,my.subset$Global_reactive_power,type = "l",xlab = "", ylab = "Global_reactive_power")

dev.off()
