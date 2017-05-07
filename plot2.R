#Reading household_power_consumption_1st_and_2nd_Feb_2007.txt file
r<-read.table("household_power_consumption_1st_and_2nd_Feb_2007.txt",
				header = TRUE,
				sep = ";",
				na.strings = "?"
			)

#creating Plot 2
png(file=" plot2.png",width=480,height=480)          #openig device png to plot
plot(strptime(paste(r$Date,r$Time),format = "%d/%m/%Y %H:%M:%S"),   #x variable
		r$Global_active_power,                                      #y variable
		type="l",
		ylab = "Global Active Power (kilowatts)",
		xlab=""
	)

dev.off()                                                 #closing device png
rm(r)                                                     #cleaning memory
