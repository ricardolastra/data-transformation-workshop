library(readr)
library(dplyr)
library(data.table)


setwd("C:/PROGRAMAS_R/WORKSHOP_AGO19")


#a.Lean la base del ejercicio con alguna función de la libreria readr, y limiten la lectura a 20 rows.
read_csv("PRIMAS_EJE_CARGA.csv", n_max=20)


#b.Lean TODA la base del ejericio y asignen la información a una variable, traten de quitar el encabezado feo de los reportes de SIISA
base1 <- read_csv("PRIMAS_EJE_CARGA.csv", skip = 2)


#c.Ahora, con su variable, usen por lo menos dos de las funciones para exploración de datos.
str(base1)

head(base1,10)


#d.Por último, de la información que ahora esta en su variable, usando LOOP´S (for e ifelse) reemplacen los productos (ID_PROD) que sean IGUALES a 700 por el producto (ID_PROD) 750.

for(i in 1:length(base1$ID_PROD)){
  ifelse(base1$ID_PROD[i]==700,base1$ID_PROD[i]<-750,base1$ID_PROD[i])
}
