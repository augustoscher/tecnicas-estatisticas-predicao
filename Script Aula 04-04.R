# ______________________________________________
#
#           Script da Aula de 04/04/2020
#
# ______________________________________________

#1 Primeiro passo - Mudar o diret?rio
setwd('~/git/rep/tecnicas-estatisticas-predicao')

#2 Baixar o banco de dados
#   Neste caso sera um arquivo ".csv"

Municipios<-read.csv("Municipios_SC.csv", sep=";", dec=",", header=T)

#3 buscar o nome das variaveis da base de dados
names(Municipios)

#4 calcular a media para a variavel peso
mean(Municipios$Populacao)
mean(Municipios$Area)
mean(Municipios$Densidade)

#5 calcular a mediana para a variavel peso
median(Municipios$Populacao)
median(Municipios$Area)
median(Municipios$Densidade)

#6 gerar uma estatistica geral da vari?vel peso  
summary(Municipios$Populacao)
summary(Municipios$Area)
summary(Municipios$Densidade)

# Alternativa para o "Run" e "Ctrl + Enter"


#7 Para calcular os percentis
#os valores internos ao vetor c, indicam as proporcoes dos percentis
quantile(Municipios$Populacao, c(0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95))
quantile(Municipios$Area, c(0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95))
quantile(Municipios$Densidade, c(0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95))

#8 Medidas de dispersao
#Amplitude
max(Municipios$Populacao)
max(Municipios$Area)
max(Municipios$Densidade)
min(Municipios$Populacao)
min(Municipios$Area)
min(Municipios$Densidade)
# Amplitude Popula??o
max(Municipios$Popula??o)-min(Municipios$Populacao)
# Amplitude ?rea
max(Municipios$Area)-min(MunicipiosArea)
# Amplitude Densidade
max(Municipios$Densidade)-min(Municipios$Densidade)

#Desvio-Padr?o
sd(Municipios$Populacao)
sd(Municipios$Area)
sd(Municipios$Densidade)

#Vari?ncia
var(Municipios$Populacao)
var(Municipios$Area)
var(Municipios$Densidade)

#Coeficiente de Vari?ncia
sd(Municipios$Populacao)/mean(Municipios$Populacao)
sd(Municipios$Area)/mean(Municipios$Area)
sd(Municipios$Densidade)/mean(Municipios$Densidade)

#Existe pacotes que fazem o c?lculo geral para todas as Estat?sticas
# ? preciso instalar o pacote "fBasics"
library(fBasics) 
basicStats(Municipios$Populacao)
basicStats(Municipios$Area)
basicStats(Municipios$Densidade)

#Histogramas
hist(Municipios$Populacao,  breaks = 100, xlab="Populacao", ylab="")
hist(Municipios$Area ,  breaks = 50, xlab="?rea", ylab="")
hist(Municipios$Densidade ,  breaks = 500, xlab="Densidade", ylab="")

# Normaliza??o pelo Logaritmo
# Aplicando o log sobre as vari?veis de popula??o

ln_Pop=log(Municipios$Popula??o)
hist(ln_Pop,  breaks = 10, xlab="Popula??o", ylab="")

ln_Area=log(Municipios$Area)
hist(ln_Area,  breaks = 10, xlab="Popula??o", ylab="")

ln_Dens=log(Municipios$Densidade)
hist(ln_Dens,  breaks = 10, xlab="Popula??o", ylab="")
