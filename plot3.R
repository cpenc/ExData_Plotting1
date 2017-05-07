#Reading household_power_consumption_1st_and_2nd_Feb_2007.txt file#Reading household_power_consumption_1st_and_2nd_Feb_2007.txt file
r<-read.table("household_power_consumption_1st_and_2nd_Feb_2007.txt",
				header = TRUE,
				sep = ";",
				na.strings = "?"
			)

#creating Plot 3
png(file=" plot3.png",width=480,height=480)          #openig device png to plot
plot(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),     #x variable
		r$Sub_metering_1,type="l",                                    #y variable
		ylab = "Engery sub metering",
		xlab=""
	) #Black line done!
lines(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Sub_metering_2,
		col="red"
	) #Red line done!
lines(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Sub_metering_3,
		col="blue"
	) #Blue line done!
legend("topright",
			col=c("black","red","blue"),
			legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
			lty=1
	) #Legend done!
dev.off()                                                 #closing device png
rm(r)                                                     #cleaning memory