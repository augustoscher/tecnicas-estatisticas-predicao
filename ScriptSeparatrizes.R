# Antes de começar, lembrar de mudar o diretório
# use o getwd() para saber o diretório atual, e
# use o setwd() para definir o novo endereço

getwd()
setwd('~/git/rep/tecnicas-estatisticas-predicao')

# Para essa aula serão usados dos dados na form .csv

# Exemplo Separatrizes
  indEmpresas <- read.csv("Exemplo Separatrizes.csv", header = TRUE, sep = ";", dec = ",")

# Visualização do Banco de Dados
  View(indEmpresas)
  names(indEmpresas)

# Estatasticas Descritivas Basicas
  
  # Para Liquidez Geral
    summary(indEmpresas$LG)
  
  # Para Imobilização do Patrimonio Liquido
    summary(indEmpresas$Imb_PL)
  
  # Para Participacao do Capital de Terceiros
    summary(indEmpresas$Part_CT)
 
  # Para Giro do Ativo
    summary(indEmpresas$GA)
    
  # Para Margem Liquida
    summary(indEmpresas$ML)
    
  # Para Retorno Sobre Ativos
    summary(indEmpresas$ROA)
    
  # Para Retorno Sobre PL
    summary(indEmpresas$ROE)

#Medidas de dispersao
  # Para Liquidez Geral
    sd(indEmpresas$LG)
    
  # Para Imobilizacao do Patrimonio Liquido
    sd(indEmpresas$Imb_PL)
    
  # Para Participacaoo do Capital de Terceiros
    sd(indEmpresas$Part_CT)
    
  # Para Giro do Ativo
    sd(indEmpresas$GA)
    
  # Para Margem Liquida
    sd(indEmpresas$ML)
    
  # Para Retorno Sobre Ativos
    sd(indEmpresas$ROA)
    
  # Para Retorno Sobre PL
    sd(indEmpresas$ROE)
    
    

 
