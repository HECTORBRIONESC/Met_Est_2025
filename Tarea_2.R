# 04/09/2025
# Hector Briones Cazares
# Base de datos Iris

library("ggplot2")

data("iris")
View(iris)



summary(iris)
head(iris)


boxplot(iris$Petal.Length ~ iris$Species,
        col = "blue",
        main = "Distribucion del largo del petalo por especie",
        xlab = "Especie",
        ylab = "Largo del petalo (cm)")



data_sub <- subset(iris, Species %in% c("versicolor", "virginica"))
iris_especies <- data.frame(species = data_sub$Species,
                            petal_length = data_sub$Petal.Length) 

View(iris_especies)
head(iris_especies)
summary(iris_especies)

tapply(iris$Petal.Length, iris$Species, mean)
tapply(iris$Petal.Length, iris$Species, sd)
tapply(iris$Petal.Length, iris$Species, var)

ggplot(iris_especies, aes(x = petal_length, color = species,))+
  geom_density()

df_versi <- subset(iris_especies, species  == "versicolor")
df_virgi <- subset(iris_especies, species != "versicolor")

qqnorm(df_versi$petal_length); qqline(df_versi$petal_length)
qqnorm(df_virgi$petal_length); qqline(df_virgi$petal_length)

shapiro.test(df_versi$petal_length)
shapiro.test(df_virgi$petal_length)

var.test(df_versi$petal_length, df_virgi$petal_length)

t.test(df_versi$petal_length, df_virgi$petal_length,
       alternative = "two.sided",
       var.equal = T)

cohens_efecto <- function(x,y) {
  n1 <- length(x); n2 <- length(y)
  s1 <- sd(x); s2 <- sd(y)
  sp <- sqrt(((n1-1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 -2))
  (mean(x) - mean(y)) / sp
}

d_cal <- (cohens_efecto(df_versi$petal_length, df_virgi$petal_length))
d_cal
