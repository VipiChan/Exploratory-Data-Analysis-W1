#File was downloaded from internet link provided in Coursera Assignment
#This plot1.R will draw plot Frequency and Global Active Power(Kilowatts)

#########################################Storing location of file in a variable################################
dataFile<-"C:/Vipin/R-Course/Course4- Exploratory Data Analysis/household_power_consumption.txt"

###########################################importing data into data frame######################################
data<-read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
###########################################subsetting data based on dates provided in assignment###############
subSetData<-data[data$Date %in% c("1/2/2007", "2/2/2007"),]

#################################typecasting and Storing Global_active_power column in a variable##############
globalActivePower<- as.numeric(subSetData$Global_active_power)

########################################################Drawing plots##########################################
png("C:/Vipin/R-Course/Course4- Exploratory Data Analysis/plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
