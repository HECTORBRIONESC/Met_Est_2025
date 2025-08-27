#Pruebas de t
# caso de muestras independientes
# MAGT
# 27/08/2025

# Importar datos de Indice de cailidad

calidad <- read.csv("Calidad_plantas.csv", header = T)

calidad$Tratamiento <- as.factor(calidad$Tratamiento)
