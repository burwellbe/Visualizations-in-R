
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

