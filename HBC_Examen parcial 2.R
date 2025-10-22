# Examen parcial II
# Métodos Estadísticos
# Héctor Briones Cazares
# 22/10/2025


suelo <-
read.csv("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")

suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)

# Actividad 1

summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)

# P1R: Que el contenido de arcilla aumenta con la profundidad

# Actividad 2

boxplot(suelo$Clay1,
        main = "Boxplot de arcilla clay1",
        col = "green") 


# P2R:Si existe evidencia de outilers en la variable clay1
# P3R:Si los outilers se encuentran a partir del 65 a 68 en adelante, terminando por los 70 a 72

# Activiad 3

median(suelo$Clay1)

# P4R:

# Actividad 4

plot(suelo$Clay1, suelo$Clay5,
     main = "Relación entre contenido de arcilla (clay1 y clay5)",
     xlab = "Arcilla (0–10 cm)",
     ylab = "Arcilla (30–50 cm)",
     col = "green", pch = 19)
cor.test(suelo$Clay1, suelo$Clay5)

# P5R: 
# P6R:

# Actividad 5

boxplot(Clay5 ~ zone, data = suelo,
        main = "Contenido de Arcilla (30–50 cm) por Zona",
        xlab = "Zona agroecológica",
        ylab = "Porcentaje de Arcilla",
        col = c("green", "green", "green", "green"),
        border = "black")
aggregate(Clay5 ~ zone, data = suelo, mean)

# P7R:Si podemos identificar la variacion del contenido de arcilla entre zonas 
# P8R:





