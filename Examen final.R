# Hector Briones Cazares
# Examen final
# 20/11/2025

# Ejercicio 1

# Datos del ejercicio
DAP_cm <- c(
  19.57, 29.99, 26.41, 17.47, 22.11, 33.26, 12.87, 22.86, 31.33, 20.67,
  21.61, 24.53, 32.46, 21.81, 22.78, 22.83, 36.03, 35.93, 30.02, 26.93,
  28.69, 32.45, 20.32, 30.88, 18.73, 21.81, 29.54, 17.86, 24.3, 20.69)

Altura_m <- c(
  17.23, 9.6, 12.69, 15.9, 20.78, 17.48, 18.01, 20.06, 15.36, 18.85,
  15.58, 12.82, 16.83, 19.72, 19.02, 17.96, 25.18, 19.24, 20.94, 24.71,
  14.12, 14.88, 23.23, 15.61, 18.09, 21.21, 20.67, 23.26, 22.49, 21.21)

datos <- data.frame(DAP_cm, Altura_m)

# Vista de los datos
head(datos)
summary(datos)

# ¿Existe una relación estadísticamente significativa entre el DAP (cm) 
# y la altura total (m) de los árboles en un rodal mixto de pino?

# H0: r = 0  (no existe correlación entre DAP y altura)
# H1: r ≠ 0 (sí existe correlación entre DAP y altura)

# Medias y desviaciones estándar
mean(DAP_cm); sd(DAP_cm)
mean(Altura_m); sd(Altura_m)

# Resumen de ambas variables
summary(datos)

# Prueba de normalidad
shapiro.test(DAP_cm)
shapiro.test(Altura_m)

cor.test(DAP_cm, Altura_m, method = "pearson")

plot(DAP_cm, Altura_m,
     main = "Relación entre DAP y Altura",
     xlab = "DAP (cm)",
     ylab = "Altura (m)",
     pch = 19, col = "black")

abline(lm(Altura_m ~ DAP_cm), col = "red", lwd = 2)

# ============================
# Interpretación y Conclusión
# ============================

# Interpretación:
# Al analizar los datos, se observa que la correlación entre el DAP y la altura 
# es muy baja y negativa, con un valor de p mayor a 0.05, lo que indica que no 
# existe una relación lineal significativa entre estas dos variables. 
# El gráfico de dispersión también muestra que los puntos están bastante 
# dispersos y la línea de tendencia es casi horizontal. 
# Esto sugiere que, en este rodal de pino, el crecimiento en diámetro y en 
# altura no ocurre de manera sincronizada, posiblemente por diferencias de 
# edad de los árboles, competencia por luz, genética o manejo del bosque.

# Conclusión:
# No se rechaza la hipótesis nula, lo que significa que no hay correlación 
# significativa entre el DAP y la altura total de los árboles. 
# En términos prácticos, esto indica que el diámetro de los árboles no se puede 
# usar como un buen indicador de su altura en este rodal específico.








