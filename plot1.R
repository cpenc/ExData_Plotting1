#Reading household_power_consumption_1st_and_2nd_Feb_2007.txt file
r<-read.table("household_power_consumption_1st_and_2nd_Feb_2007.txt",
				header = TRUE,
				sep = ";",
				na.strings = "?"
			)

#creating Plot 1
png(file=" plot1.png",width=480,height=480)          #openig device png to plot
hist(r$Global_active_power,
		col = "red",
		main="Global Active Power",
		xlab = "Global Active Power (kilowatts)"
	)
dev.off()                                                 #closing device png
rm(r)                                                     #cleaning memory