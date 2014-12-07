## Read concerned data with read_household_power_consumption.R

source("read_household_power_consumption.R")

## Plot 1 generation

with(data_set, 
     hist(Global_active_power, 
          col="Red",
          main="Global Active Power",
          xlab="Global Active Power (kilowatts)", 
          ylab="Frequency")
     )
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
