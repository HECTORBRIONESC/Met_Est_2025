temperatura <- read.csv("C:/Users/Usuario/Downloads/temperatura.csv")
View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de filas y columnas
names(temperatura) #nombres de las columnas
str(temperatura) #estructura del objeto

#Resumen estadistico
summary(temperatura)

#Modificar nombre de columnas
names(temperatura) <- c("anio", "Ene", "Feb", "Mar", "Abr", "May",
                        "Jun", "Jul", "Ago", "Sep", "Oct", "Nov","Dic")

names(temperatura)

#Crear columna Media_anual con temperatura media anual
temperatura$Ene
temperatura$Media_anual <- rowMeans(temperatura[,2:13])
head(temperatura)

#Crear objeto con medias mensuales de temperatura
medias_mensuales <- colMeans(temperatura[,2:13])
medias_mensuales
help("boxplot")

#Bloxpot para un solo mes
boxplot(temperatura$Ene,
        main="temperatura de enero",
        ylab="*C",
        col="lightblue")

datos_meses <- temperatura[,2:13]
bloxplot(datos_meses, 
        main="temperatura",
        ylab="*C",
        col="lightgreen",
        names = c("Ene", "Feb", "Mar", "Abr", "May",
                  "Jun", "Jul", "Ago", "Sep", "Oct", "Nov","Dic"))
