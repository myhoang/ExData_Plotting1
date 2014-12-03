## Read concerned data 

source("read_household_power_consumption.R")

## Plot 4 generation

par(mfrow=c(2,2), mar=c(4,4,2,2))
with(data_set, 
     {
       plot(Date_Time, 
            Global_active_power, 
            type="l",
            main="",
            xlab="",
            ylab="Global Active Power (kilowatts)")
       plot(Date_Time, 
            Voltage, 
            type="l",
            main="",
            xlab="",
            ylab="Voltage (volt)")
       plot(Date_Time, 
            Sub_metering_1,
            col="black",
            type="l",
            main="",
            xlab="",
            ylab="Global Active Power (kilowatts)")
       lines(Date_Time, 
             Sub_metering_2,
             col='Red')
       lines(Date_Time, 
             Sub_metering_3,
             col='Blue')
       legend("topright", 
              col=c("black", "red", "blue"), 
              bty="n",
              cex=0.8,
              lty=1, 
              lwd=1,
              legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
       plot(Date_Time, 
            Global_reactive_power, 
            type="l", 
            xlab="",
            ylab="Global Rective Power (kilowatts)")
       }
     )
dev.copy(png, file="plot4.png", height=640, width=640)
dev.off()
