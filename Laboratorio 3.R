# Laboratorio semana 3
# 20/08/2025
# Hector Briones Cazares


# Importar datos ----------------------------------------------------------

Temp <- read.csv("temperatura.csv", header = T)
Temp <- read.csv("Data/temperatura.csv", header = T)


# Ingresar datos de manera manual ---------------------------------------

edad <- c(18, 19, 18, 18, 25, 19, 18, 18, 18, 17, 19,
          19, 18, 17, 19, 18, 19, 19)
alumno <- seq(1,18,1)


info <- data.frame(alumno, edad)

info$Altura <- c(174, 174, 170, 160, 158, 155, 188,
                 170, 175, 170, 172, 170, 174, 180,
                 158, 161, 188, 164)

# Graficar datos --------------------------------------------------------

boxplot(info$Altura,
        #col sirve para colorear la grafica
        col = "indianred",
        #main sirve para poner titulo
        main = "Clase 3 semestre")

colores = c("navajowhite", "indianred", "skyblue")
boxplot(datos_meses,
        col = colores)

# Estadisticas descriptivas ---------------------------------------------



#Estadistica inferencial ------------------------------------------------


