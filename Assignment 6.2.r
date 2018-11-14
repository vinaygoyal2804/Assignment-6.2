#Import the Titanic Dataset

par(mar=c(1,1,1,1))

#Q1. Is there any difference in fares by different class of tickets?
#Plotting a boxplot by class
boxplot(fare~pclass, data=titanic3,  main="Fares of Tickets vs Class", xlab="Class of Ticket", ylab="Fares", col= heat.colors(3), las=2)

#Q2. Is there any association with Passenger class and gender?
#Plotting a stacked bar graph
count<- table(titanic3$sex, titanic3$pclass)
count<-as.data.frame(count)
col<-c("Gender","PClass","Frequency")
colnames(count)<-col
library("dplyr")
View(count)
count<-filter(count, Frequency>01)
library(ggplot2)
ggplot(count, aes(x=PClass, y=Frequency, col=Gender, fill=Gender)) + geom_bar(stat="identity") + 
  labs(x="Vowels", y="Frequency")