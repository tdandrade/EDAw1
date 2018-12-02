#Plot2:
household_power_consumption <- read.table("./household_power_consumption.txt",header=TRUE, colClasses=(c("character","character",rep("numeric",7))), sep=";",na.strings = "?")
feb_data2<-subset(household_power_consumption,Date=='1/2/2007' | Date=='2/2/2007',select = c(Date:Global_active_power))
Sys.setlocale("LC_TIME", "en_GB.UTF-8")
feb_data2$DateTime<-as.POSIXct(paste(feb_data2$Date,feb_data2$Time),format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480,height=480,units="px")
plot(x=feb_data2$DateTime, y=feb_data2$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()
