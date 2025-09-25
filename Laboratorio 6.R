# Laboratorio 6
# Correlacion de Pearson
# Datos del geyser Old Faithful
# Héctor B.C.
# 24/09/2025

data("faithful")

plot(faithful$waiting, faithful$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Erupcion (min)",
     col = "red",
     pch = 20)      # Correlacion postiva

# Correlacionar las dos variables

# ==================================================
# Pearson solo se utiliza cuando hay datos normales
# ==================================================

shapiro.test(faithful$eruptions)
shapiro.test(faithful$waiting)

cor.test(faithful$waiting, faithful$eruptions,
         method = "pearson")

# ==================================================
# Spearman se utiliza como contraparte para datos no normales
# ==================================================

cor.test(faithful$waiting, faithful$eruptions,
         method = "spearman")

# Continuacion del laboratorio 6 25/09/2025


resp <- data.frame(
  Tiempo = c(12, 15, 17, 18, 20, 21, 22, 26),
  Edad = c(13, 25, 20, 35, 45, 30, 60, 95)
)
resp

resp$Rango_Tiempo <- rank(resp$Tiempo, ties.method = "first")
resp$Rango_Edad <- rank(resp$Edad, ties.method = "first")

# Ver resultado
resp

plot(resp$Tiempo, resp$Edad)
plot(resp$Rango_Tiempo, resp$Rango_Edad)

resp$dif <- resp$Rango_Tiempo - resp$Rango_Edad
resp$dif2 <- resp$dif^2
sum(resp$dif2)

cor.test(resp$Rango_Tiempo, resp$Rango_Edad, method = "spearman")
cor.test(resp$Tiempo, resp$Edad, method = "spearman")


  # Tau Kendall
  
  tau <- data.frame (
    A = c(1,2,3,4,5,6),
    B = c(3,1,4,2,6,5)
  )
cor.test(tau$A, tau$B, method = "kendall")



# Punto Biserial
# Numero de observaciones

n <- 20

# Generar horas de estudio (entre 1 y 10)

Horas_estudio <- sample(1:10, n, replace = TRUE)

Resultado <- sapply(Horas_estudio, function(horas) {
  ifelse(runif(1) < (horas / 10), "Aprobado", "Reprobado")
})






