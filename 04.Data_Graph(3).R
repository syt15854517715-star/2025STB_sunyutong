library(readxl)
survey <- read_excel("04. 2025STB_survey.xlsx")
View(survey)

table(survey$Gender)

prop.table(table(survey$Gender)) 

table(survey$Gender, survey$Grade)
prop.table(table(survey$Gender, survey$Grade), margin=1)

barplot(table(survey$Nationality), col="skyblue", main="Nationality", xlab="Nationality", ylab="Count")

res_tab <- table(survey$ResidentialArea)
bp <- barplot(res_tab, horiz=TRUE, col=rainbow(length(res_tab)), main="Residential Area", xlab="Count", xlim=c(0, max(res_tab)*1.1))
text(res_tab, bp, labels=res_tab, pos=4)

barplot(table(survey$Gender, survey$Grade), beside=TRUE, col=c("pink","lightblue"), legend=TRUE, main="Gender by Grade") 

grade_tab <- table(survey$Grade)
pct <- round(prop.table(grade_tab)*100, 1)
labels <- paste(names(grade_tab), " (", pct, "%)", sep="")
pie(grade_tab, labels=labels, col=rainbow(length(grade_tab)))

hist(survey$Age, col="lightgreen", main="Age Distribution", xlab="Age")

boxplot(Age ~ Grade, data=survey, col="lightblue", main="Age by Grade", xlab="Grade", ylab="Age")
aggregate(Age ~ Grade, data=survey, summary)

plot(survey$Grade, survey$Age, pch=19, main="Grade vs Age", xlab="Grade", ylab="Age", col="blue")
