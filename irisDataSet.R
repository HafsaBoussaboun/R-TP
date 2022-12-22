##1 en utilisant les graphes deja installer dans R

data("iris")
##consulter les données
View(iris)
##consulter les 5 premier lignes du dataset
head(iris)
##la class de notre dataset
class(iris)
str(iris)
summary(iris)
##retourner les nommes des colonnes
colnames(iris)
##stocker Petal.Length dans une variable qu'on appelle pl
pl<-iris$Petal.Length
pl
##retourner la moyenne de pl
mean(pl)
summary(pl)
## sd function --> la racine de la variance
sd(pl)

sw<-iris$Sepal.Width
sd(sw)
boxplot(pl)
boxplot(iris[,1:3])
barplot(pl)

plot(pl)
##afficher l'histogramme 
hist(pl)

counts<-table(iris$Species)
counts

pw<-iris$Petal.Width

sp<-as.factor(iris$Species)
plot(pw,pl,col=sp)
legend("topleft",levels(sp),fill = 1:3)


##on teste la correlation entre pl et pw
cor(pw,pl)

model<-lm(pw~pl)
model
plot(pl,pw,pch=8,col="red")
speciesId<-as.numeric(iris$Species)
speciesId
plot(pl,pw,pch=speciesId,col=speciesId)
plot(pl,pw,
     pch=speciesId,
     col=speciesId,
     xlab = "petal megth (cm)",
     ylab = "Petal width (cm)",
     main = "Petal width vs. length"
  
)

abline(lm(pw~pl))
##calculer la correlation
pcc<-cor(pw,pl)
pcc<-round(pcc,2)
paste("R=",pcc)


text(5,0.5,paste("R=",pcc))
legend("topleft",
       levels(iris$Species),
       pch=1:3,
       col=1:3)


ma<-as.matrix(iris[,1:4]) ##convert to matrix
colMeans(ma)
colSums(ma)
pairs(ma)
pairs(ma,col=rainbow(3)[speciesId])

##-------------------
##install the package ggplot2
install.packages("ggplot2")
##load the ggplot2 package
library(ggplot2) 
## define a canvas
ggplot(data=iris)+aes(x=Petal.Length,y=Petal.Width)+
  geom_point(aes(color=Species,shape=Species))+
  geom_smooth(method = lm)+
  annotate("text",x=5,y=0.5,label="R=0.96")+ ##annotate with taxt
  ##xlab("petal length (cm)"), ##x-axis labels
  ##ylab=("pental width (cm)"), ##y-axis labels
  ##ggtitle("correlation between petal length and width") #title


