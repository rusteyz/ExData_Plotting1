## plot2.R
  
  setwd("~/datasciencecoursera/ExploratoryDataAnalysis")

  ## Read data
  data = read.table("household_power_consumption.txt", na.string='?',sep=';',header=TRUE)
  data$Date=strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
  data=subset(data, (data$Date>=strptime("2007-02-01","%Y-%m-%d")&(data$Date<strptime("2007-02-03","%Y-%m-%d"))))
  
  with(data, plot(data$Date,data$Global_active_power,type="l", xlab="",ylab="Global Active Power (Kilowatts)")) ## line plot
  
  
  dev.copy(png, file = "plot2.png", height=480,width=480) ## Copy my plot to a PNG file
  dev.off() ## Don't forget to close the PNG device!
  
