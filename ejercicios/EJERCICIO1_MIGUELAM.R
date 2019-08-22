#Ejercicio 1

install.packages("tidyverse")
library(tidyverse)
read_csv("C:/Users/mgozalez/Desktop/WORKSHOP/PRIMAS_EJE_CARGA.csv")
library(readr)
base1<-read_csv("C:/Users/mgozalez/Desktop/WORKSHOP/PRIMAS_EJE_CARGA.csv",skip=2)
library(dplyr)
head(base1,20)
filter(base1, NOMBRE %in% c("MIGUEL"))
filter(base1, PLAZO == 9 & SEG_SOCIAL == 2)
slice(base1, 1:10)
head(base1)
tail(base1)
select(slice(base1, 1000:1010),c(POLIZA, PRIMA, PATERNO, NOMBRE, PLAZO))
arrange(base1, PRIMA)
select(base1, -MATERNO)
base1[base1 == 700] <- 750
colnames(base1)
unique(base1$ID_PROD)
str(base1$ID_PROD)

for(i in base1$ID_PROD){
  base1$ID_PROD<-ifelse(base1$ID_PROD==700,750,base1$ID_PROD)
}


