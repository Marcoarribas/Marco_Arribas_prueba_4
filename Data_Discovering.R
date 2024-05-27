#Data_Discovering:
#EXAMEN R04:
library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
#Parte Data Discovering y Data Cleaning(2p)
setwd("C://Users//marco//Downloads//Examen//Examen_4")
df<-read.csv("real_estate.csv")
str(df)

#DATA DISCOVERING:
variables_num<-df %>% select_if(is.numeric)
variables_num<-variables_num[,-c(1,5)]
summary(variables_num)

#¿Tienen todas las variables el tipo que debería corresponderle? En caso contrario realiza los ajustes que consideres oportunos
str(df)
df$Date.Recorded<-as.Date(df$Date.Recorded)

#¿Cuántos tipos residenciales diferentes hay? 
length(unique(df$Property.Type))
