## Read the data from just from the dates 2007-02-01 and 2007-02-02 
## rather than reading in the entire dataset.

data_set            <- read.csv("household_power_consumption.txt",
                                skip=66637, nrows=2880, sep=";")
names(data_set)     <- names(read.csv("household_power_consumption.txt", 
                                      nrows=1, sep=";"))
data_set$Date_Time  <- strptime(paste(data_set$Date, data_set$Time), 
                                format="%d/%m/%Y %H:%M:%S")