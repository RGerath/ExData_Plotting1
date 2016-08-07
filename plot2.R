##Construct the plot for Global Active Power as a function of time
##dtable is the subset of household_power_consumption corresponding to 2007-02-01 and 2007-02-02
##dtable$Date is of the class Date
##dtable$DateTime is of the class POSIXct

plot2 = function(){
    png(file="plot2.png")
    plot(dtable$DateTime,dtable$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
    dev.off()
}