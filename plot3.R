#File was downloaded from internet link provided in Coursera Assignment
#This plot3.R will draw plot for weekly Energy sub metering which includes sub_metering1, sub_metering3, sub_metering3 

#########################################Storing location of file in a variable################################
dataFile<-"C:/Vipin/R-Course/Course4- Exploratory Data Analysis/household_power_consumption.txt"

###########################################importing data into data frame######################################
data<-read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
###########################################subsetting data based on dates provided in assignment###############
subSetData<-data[data$Date %in% c("1/2/2007", "2/2/2007"),]

datetime<-strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subSetData$Global_active_power)

subMetering1<-as.numeric(subSetData$Sub_metering_1)
subMetering2<-as.numeric(subSetData$Sub_metering_2)
subMetering3<-as.numeric(subSetData$Sub_metering_3)

########################################################Drawing plots##########################################
png("C:/Vipin/R-Course/Course4- Exploratory Data Analysis/plot3.png", width = 480, height = 480)
plot(datetime, subMetering1, type = "l", ylab = "Energy Submetering", xlab = "")
lines(datetime, subMetering2, type = "l", col="red")
lines(datetime, subMetering3, type = "l", col="blue")
legend("topright", c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()










