## Read concerned data 

source("read_household_power_consumption.R")

## Plot 3 generation

with(data_set, 
     plot(Date_Time, 
          Sub_metering_1,
          col="black",
          type="l",
          main="",
          xlab="",
          ylab="Global Active Power (kilowatts)")
     )
with(data_set, 
     lines(Date_Time, 
           Sub_metering_2,
           col='Red')
     )
with(data_set, 
     lines(Date_Time, 
           Sub_metering_3,
           col='Blue')
     )
legend("topright", 
       col=c("black", "red", "blue"),
       cex=0.8,
       lty=1, 
       lwd=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       )
dev.copy(png, file="plot3.png", height=640, width=640)
dev.off()
