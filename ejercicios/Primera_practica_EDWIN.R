## solicitando librerias
library(readr)
library(data.table)
library(dplyr)

## Habilitando direccionde archivo
setwd("C:/Users/KARLAAM/Desktop/Curso_Atlas/Ejercicios_Curso")

## Lectura de 20 rows
ID_PROD <- read_csv("PRIMAS_EJE_CARGA.csv", skip=2, n_ma=20)

## Usando funciones para exploracion de datos
filter(ID_PROD, ENDOSO== 2)
select(slice(ID_PROD, 5:10), c(PATERNO, MATERNO, NOMBRE))

##utilizando for e ifelse
