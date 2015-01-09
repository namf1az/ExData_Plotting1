d<-read.table("../DATA/household_power_consumption.txt",sep=";",na.strings="?",colClasses="character")
dd<-d[grep("(2007\\-02\\-01)|(2007\\-02\\-02)",as.Date(d[,1],format="%d/%m/%Y")),]
dt<-strptime(paste(dd[,1],dd[,2]),"%d/%m/%Y %H:%M:%S")
png(file="plot3.png")
plot(dt,dd[,7],type="l",ylab="Energy sub metering",xlab="")
lines(dt,dd[,8],col="red")
lines(dt,dd[,9],col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),y.intersp=0.8,cex=0.8)
dev.off()