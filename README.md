# ExplData-Analysis-Course-Project-1
Course Project #1 for Exploratory Data Analysis course

R coding is located in plotx.R, where "x" is the number of the plot as identified in the instructions
Plots are located in plotx.png (x as above)

Data is first loaded into local computer directory.  
If you want to test the R coding, first redirect the working directory to your own.
Only managed through local working directory due to the size of the file to avoid the unzipping process.

All four R files are coded with info on the data.  Copy enclosed below.
## Date: Date in format dd/mm/yyyy, Time in format hh:mm:ss
## Global_active_power: household global minute-averaged active power (in kilowatt)
## Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
## Voltage: minute-averaged voltage (in volt)
## Global_intensity: household global minute-averaged current intensity (in ampere)
## ---  All sub-metering in watt-hours of active energy.  
##          Sub_metering_1: kitchen - dishwasher, oven, microwave
##          Sub_metering_2: laundry room - washing-machine,dryer, refrigerator, light.       
##          Sub_metering_3: an electric water-heater and an air-conditioner.

The variable x was introduced in order to paste the dates and times together.  It is transient and not relative to the
final outcome.  
Data frame my.subset limited our plotting to the data range provided of February 1-2, 2007.  If you wish to plot on different dates, change the range identified in the origination of my.subset from my.data (the entire data set).  

