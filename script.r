#Fonte dos dados: http://www.inmet.gov.br/sonabra/pg_dspDadosCodigo_sim.php?QTgzOQ==
setwd("C:\\Users\\clayton.tolotti\\git\\modelagem")

dados_temp <- read.csv(file="dados", header = TRUE, sep=",")

temperatura_base <- 7.1
qnt_horas <- 24
dias <- length(dados_temp$data)/qnt_horas
qnt_gd_larva_ita <- 21
qnt_gd_pupa_ita <- 6.6
qnt_gd_ovo_ita <- 36.8
minimas <- as.vector(dias)
maximas <- as.vector(dias)
medias <- as.vector(dias)

minimas[1] <- min(dados_temp$temp_min[1:qnt_horas])
minimas[2] <- min(dados_temp$temp_min[(qnt_horas+1):(qnt_horas*2)])

for (index in 3:dias) {
  minimas[index] <- min(dados_temp$temp_min[(qnt_horas*(index-1)+1):(qnt_horas*index)])
}

maximas[1] <- max(dados_temp$temp_max[1:qnt_horas])
maximas[2] <- max(dados_temp$temp_max[(qnt_horas+1):(qnt_horas*2)])

for (index in 3:dias) {
  maximas[index] <- max(dados_temp$temp_max[(qnt_horas*(index-1)+1):(qnt_horas*index)])
}

for (index in 1:dias) {
  medias[index] <- (maximas[index] - minimas[index]) - temperatura_base / 2
}

temp_media = (mean(maximas) + mean(minimas))/2

#Itaporanga
fase_larval_ita <- (qnt_gd_larva_ita * temperatura_base)
fase_pupa_ita <- (qnt_gd_pupa_ita * temperatura_base)
fase_ovo_adulto_ita <- (qnt_gd_ovo_ita * temperatura_base)


#Passo Fundo
fase_larval_pf <- (qnt_gd_larva_ita * temperatura_base) + 1
fase_pupa_pf <- (qnt_gd_pupa_ita * temperatura_base) + 1
fase_ovo_adulto_pf <- (qnt_gd_ovo_ita * temperatura_base) + 1
qnt_gd_larva_pf <- length(which(cumsum(medias) <= fase_larval_pf))
qnt_gd_pupa_pf <- length(which(cumsum(medias) <= fase_pupa_pf))
qnt_gd_ovo_pf <- length(which(cumsum(medias) <= fase_ovo_adulto_pf))

graus_dias_larva <- sum(medias[1:qnt_gd_larva_pf])
graus_dias_pupa <- sum(medias[1:qnt_gd_pupa_pf])
graus_dias_ovo <- sum(medias[1:qnt_gd_ovo_pf])

print("Comparação entre Itaporanga x Passo Fundo")
print(paste("Temperatura média Passo Fundo: ", round(temp_media, 1)))
print("Período: 01/10/2018 a 17/11/2018")

print(paste("Fase larval em graus dias para Passo Fundo: ", fase_larval_pf, " Itaporanga: ", fase_larval_ita))
print(paste("Fase pupa em graus dias para Passo Fundo: ", fase_pupa_pf, " Itaporanga: ", fase_pupa_ita))
print(paste("Fase ovo-adulto em graus dias para Passo Fundo: ", fase_ovo_adulto_pf, " Itaporanga: ", fase_ovo_adulto_ita))

print(paste("Quantidade de dias para desenvolvimento larval: ", qnt_gd_larva_pf, " Itaporanga: ", qnt_gd_larva_ita))
print(paste("Quantidade de dias para desenvolvimento pupa: ", qnt_gd_pupa_pf, " Itaporanga: ", qnt_gd_pupa_ita))
print(paste("Quantidade de dias para desenvolvimento ovo-adulto: ", qnt_gd_ovo_pf, " Itaporanga: ", qnt_gd_ovo_ita))
