#Reading household_power_consumption_1st_and_2nd_Feb_2007.txt file
r<-read.table("household_power_consumption_1st_and_2nd_Feb_2007.txt",
				header = TRUE,
				sep = ";",
				na.strings = "?"
			)

#creating Plot 4
png(file=" plot4.png",width=480,height=480)          #openig device png to plot

par(mfrow=c(2,2)) #make frame to plot 2 by 2 graphs

plot(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Global_active_power,
		type="l",
		ylab = "Global Active Power",
		xlab=""
	) #Graph 1 done!

plot(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Voltage,
		type="l",
		ylab = "Voltage",
		xlab="",
		sub = "datetime"
	) #Graph 2 done!

plot(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Sub_metering_1,
		type="l",
		ylab = "Engery sub metering",
		xlab=""
	) #Ploting graph 3!

lines(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Sub_metering_2,
		col="red"
	) #adding red line to graph 3

lines(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Sub_metering_3,
		col="blue"
	) #adding blue line to graph 3

legend("topright",
			col=c("black","red","blue"),
			legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
			lty=1,
			bty="n",
			xjust = 1,
			yjust = 0,
			cex=0.9
	) ##adding legend to graph 3
	 #Graph 3 done!

plot(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),
		r$Global_reactive_power,
		type="l",
		ylab = "Global_reactive_power",
		xlab="",
		sub = "datetime"
	) #Graph 4 done!



dev.off()                                                 #closing device png
rm(r)                                                     #cleaning memory