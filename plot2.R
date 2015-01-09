d<-read.table("../DATA/household_power_consumption.txt",sep=";",na.strings="?",colClasses="character")
dd<-d[grep("(2007\\-02\\-01)|(2007\\-02\\-02)",as.Date(d[,1],format="%d/%m/%Y")),]
dt<-strptime(paste(dd[,1],dd[,2]),"%d/%m/%Y %H:%M:%S")
png(file="plot2.png")
plot(dt,dd[,3],type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()