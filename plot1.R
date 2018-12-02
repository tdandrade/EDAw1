#Plot 1:
household_power_consumption <- read.table("./household_power_consumption.txt",header=TRUE, colClasses=(c("character","character",rep("numeric",7))), sep=";",na.strings = "?")
feb_data1<-subset(household_power_consumption,Date=='1/2/2007' | Date=='2/2/2007',select = c(Date:Global_active_power))
feb_data1$Date<-as.Date(feb_data1$Date,format="%d/%m/%Y")
png(filename="plot1.png",width=480,height=480,units="px")
hist(feb_data1$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()