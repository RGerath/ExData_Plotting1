##construct four plots:
##Global Active Power as function of datetime
##Voltage as function of datetime
##Energy sub metering as function of datetime
##Global_reactive_power as function of datetime

plot4=function(){
    png(file="plot4.png")
    
    par(mfrow=c(2,2))
    
    plot(dtable$DateTime,dtable$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
    
    plot(dtable$DateTime,dtable$Voltage,type="l",xlab="",ylab="Voltage")
    
    plot(dtable$DateTime,dtable$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
    lines(dtable$DateTime,dtable$Sub_metering_2,col="red")
    lines(dtable$DateTime,dtable$Sub_metering_3,col="blue")
    legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",lwd=c(2,2,2),col=c("black","red","blue"),inset=0)
    
    plot(dtable$DateTime,dtable$Global_reactive_power,type="l",xlab="",ylab="Global Reactive Power")
    
    dev.off()
}