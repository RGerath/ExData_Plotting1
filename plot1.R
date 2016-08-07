##construct the plot for histogram of Global Active Power
##dtable is the subset of household_power_consumption corresponding to 2007-02-01 and 2007-02-02

plot1 = function(){
    png(file="plot1.png")
    gap = as.numeric(dtable$Global_active_power)
    hist(gap, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
    dev.off()
}