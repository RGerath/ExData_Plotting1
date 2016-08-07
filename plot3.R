##construct plot of Energy sub metering (three curves) as a function of time
##dtable is the subset of household_power_consumption corresponding to 2007-02-01 and 2007-02-02
##dtable$Date is of the class Date
##dtable$DateTime is of the class POSIXct

plot3 = function(){
    png(file="plot3.png")
    plot(dtable$DateTime,dtable$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
    lines(dtable$DateTime,dtable$Sub_metering_2,col="red")
    lines(dtable$DateTime,dtable$Sub_metering_3,col="blue")
    legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",lwd=c(2,2,2),col=c("black","red","blue"),inset=0)
    dev.off()
}