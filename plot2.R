#File was downloaded from internet link provided in Coursera Assignment
#This plot2.R will draw plot for weekly Global Active Power(Kilowatts)

#########################################Storing location of file in a variable################################
dataFile<-"C:/Vipin/R-Course/Course4- Exploratory Data Analysis/household_power_consumption.txt"

###########################################importing data into data frame######################################
data<-read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
###########################################subsetting data based on dates provided in assignment###############
subSetData<-data[data$Date %in% c("1/2/2007", "2/2/2007"),]

datetime<-strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subSetData$Global_active_power)

########################################################Drawing plots##########################################
png("C:/Vipin/R-Course/Course4- Exploratory Data Analysis/plot2.png", width = 480, height = 480)

plot(datetime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

