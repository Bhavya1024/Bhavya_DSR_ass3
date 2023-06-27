library(ggplot2)
#1

dsr <- data.frame(iris)

ggplot(dsr, aes(x = Sepal.Length, y = Petal.Length, )) +
  geom_point(aes(shape = Species, col=Species))+
  labs(caption = "Sepal Length and Petal Length ranges are unique to distinct species")

#2

ty = data.frame(txhousing)
ty=ty[complete.cases(tx),]
ggplot(ty, aes(x = year, y = sales, size=volume)) +
  geom_point(aes(col=city))


#3

d = read.csv("titanic.csv")
suv=(d$Survived==1)
d[suv,2]="Survived"
died = (d$Survived==0)
d[died,2]="Died"
final_Plot=ggplot(d,aes(x= Fare, y= Survived)) +
  geom_boxplot(aes(col=Sex))+
  labs(title = "Fare vs Survival", subtitle = "Irrespective of Sex, rich people survived", y="")
final_Plot