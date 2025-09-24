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
