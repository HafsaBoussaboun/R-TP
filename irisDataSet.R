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


##on teste la correlation ente pl et pw
cor(pw,pl)
model<-lm(pl~pw)
model
plot(pl,pw,pch=8,col="red")
speciesId<-as.numeric(iris$Species)
speciesId
