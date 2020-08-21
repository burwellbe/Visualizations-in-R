
stdata <- read.csv("/home/administrator/Downloads/3_StateSAT (1).csv", sep=";")
stdata

summary(stdata)

plot(stdata$satMath, stdata$satVerbal, 
     main = "Math vs Verbal",
     xlab = "SAT Math", ylab = "SAT Verbal",
     pch=18, 
     cex=2, 
     col="cornflowerblue")

plot(stdata$region, stdata$teacherPay,
     main = "Teacher Pay in Each Region",
     xlab = "Region", ylab = "Teacher Pay",
     col ="darkseagreen3")

library(ggplot2)

p <-ggplot(stdata, aes(x=satMath, y=satVerbal)) +
  geom_point( color = "deepskyblue3")

p + labs(x = "SAT Math", y = "SAT Verbal", title = "Math vs Verbal")

q <- ggplot(stdata, aes(x=as.factor(region), y=teacherPay)) +
  geom_boxplot(fill="slateblue", alpha=0.3) +
  theme(legend.position="none") +
  scale_fill_brewer(palette="BuPu")
  
q + labs(x= "Region", y= "Teacher Pay", title= "Teacher Pay in Each Region")
