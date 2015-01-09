d<-read.table("../DATA/household_power_consumption.txt",sep=";",na.strings="?",colClasses="character")
dd<-d[grep("(2007\\-02\\-01)|(2007\\-02\\-02)",as.Date(d[,1],format="%d/%m/%Y")),]
png(file="plot1.png")
hist(as.numeric(dd[,3]),breaks=12,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
