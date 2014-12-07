## Read concerned data with read_household_power_consumption.R

source("read_household_power_consumption.R")

## Plot 2 generation

with(data_set, 
     plot(Date_Time,
          Global_active_power,
          col="black",
          type="l",
          main="",
          xlab="",
          ylab="Global Active Power (kilowatts)")
     )
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
