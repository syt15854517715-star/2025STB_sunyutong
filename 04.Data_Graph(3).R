library(readxl)
survey <- read_excel("04. 2025STB_survey.xlsx")
View(survey)

table(survey$Gender)

ECN <- table(survey$Gender)
prop.table(ECN) 

table(survey$Gender, survey$Grade)

barplot(table(survey$Nationality), col="skyblue", main="Nationality", xlab="Nationality", ylab="Count")

res_tab <- table(survey$ResidentialArea)
bp <- barplot(res_tab, horiz=TRUE, col=rainbow(length(res_tab)), main="Residential Area", xlab="Count",xlim=c(0, max(res_tab)*1.1))
text(res_tab, bp, labels=res_tab, pos=4)

barplot(table(survey$Gender, survey$Grade), beside=TRUE, col=c("pink","lightblue"), legend=TRUE, main="Gender by Grade") 

colors <- c("red","green", "blue")
pie(table(survey$Grade), col=colors, main="Grade Distribution")

hist(survey$Age, main="Age Distribution", xlab="Age", col=terrain.colors(12))

boxplot(Age ~ Grade, data=survey, col="yellow", main="Age by Grade", xlab="Grade", ylab="Age")
aggregate(Age ~ Grade, data=survey, summary)

plot(survey$Grade, survey$Age, pch=19, main="Grade vs Age", xlab="Grade", ylab="Age")
