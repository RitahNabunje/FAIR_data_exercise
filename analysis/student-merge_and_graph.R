#Read files into R
d1=read.table("student-mat.csv",sep=";",header=TRUE)
d2=read.table("student-por.csv",sep=";",header=TRUE)

#merge the files to one
d3=merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
print(nrow(d3)) # 382 students

#plot  Age
library(ggplot2)
ggplot(d4, aes(age)) +
  geom_bar(fill = "#0073C2FF") +
  ggtitle("Participant Age Distribution")+
  theme(plot.title = element_text(hjust = 0.5))
