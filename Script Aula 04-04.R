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
# Amplitude Populacao
max(Municipios$Populacao)-min(Municipios$Populacao)
# Amplitude Area
max(Municipios$Area)-min(Municipios$Area)
# Amplitude Densidade 2601 habitantes por km**
max(Municipios$Densidade)-min(Municipios$Densidade)

#Desvio-Padrao
sd(Municipios$Populacao)
sd(Municipios$Area)
sd(Municipios$Densidade)

#Variancia
var(Municipios$Populacao)
var(Municipios$Area)
var(Municipios$Densidade)

#Coeficiente de Variancia
sd(Municipios$Populacao)/mean(Municipios$Populacao)
sd(Municipios$Area)/mean(Municipios$Area)
sd(Municipios$Densidade)/mean(Municipios$Densidade)

# Baixar o pacote "moments"
install.packages("moments")
library(moments)

#Coeficiente de Assimetria
skewness(Municipios$Populacao)
skewness(Municipios$Area)
skewness(Municipios$Densidade)

#Coeficiente de Curtose
kurtosis(Municipios$Populacao)
kurtosis(Municipios$Area)
kurtosis(Municipios$Densidade)

#Existe pacotes que fazem o calculo geral para todas as Estatisticas
# e preciso instalar o pacote "fBasics"
library(fBasics) 
basicStats(Municipios$Populacao)
basicStats(Municipios$Area)
basicStats(Municipios$Densidade)

#Histogramas
hist(Municipios$Populacao,  breaks = 100, xlab="Populacao", ylab="")
hist(Municipios$Area ,  breaks = 50, xlab="area", ylab="")
hist(Municipios$Densidade ,  breaks = 500, xlab="Densidade", ylab="")

# Normalizacao pelo Logaritmo
# Aplicando o log sobre as variaveis de Populacao

ln_Pop=log(Municipios$Populacao)
hist(ln_Pop,  breaks = 10, xlab="Populacao", ylab="")

ln_Area=log(Municipios$Area)
hist(ln_Area,  breaks = 10, xlab="Populacao", ylab="")

ln_Dens=log(Municipios$Densidade)
hist(ln_Dens,  breaks = 10, xlab="Populacao", ylab="")
