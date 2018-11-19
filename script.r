#Fonte dos dados: http://www.inmet.gov.br/sonabra/pg_dspDadosCodigo_sim.php?QTgzOQ==
setwd("~/git/modelagem")
#pegar os dados de dezembro e janeiro de 2017
#regi√£o Itaporanga
dados_temp <- read.csv(file="dados", header = TRUE, sep=",")
dados <- data.frame(
                    cod_estacao = c(dados_temp$codigo_estacao), 
                    data = c(dados_temp$data),
                    temp_min = c(dados_temp$temp_min),
                    temp_max = c(dados_temp$temp_max)
                  )
#pegar as m√≠nimas e m√°ximas
temperatura_base <- 7.1
qnt_horas <- 24
dias <- length(dados_temp$data)/qnt_horas
minimas <- data.frame(
                      d1 = min(dados$temp_min[1:qnt_horas]),
                      d2 = min(dados$temp_min[(qnt_horas+1):(qnt_horas*2)]),
                      d3 = min(dados$temp_min[(qnt_horas*2+1):(qnt_horas*3)]),
                      d4 = min(dados$temp_min[(qnt_horas*3+1):(qnt_horas*4)]),
                      d5 = min(dados$temp_min[(qnt_horas*4+1):(qnt_horas*5)]),
                      d6 = min(dados$temp_min[(qnt_horas*5+1):(qnt_horas*6)]),
                      d7 = min(dados$temp_min[(qnt_horas*6+1):(qnt_horas*7)]),
                      d8 = min(dados$temp_min[(qnt_horas*7+1):(qnt_horas*8)]),
                      d9 = min(dados$temp_min[(qnt_horas*8+1):(qnt_horas*9)]),
                      d10 = min(dados$temp_min[(qnt_horas*9+1):(qnt_horas*10)]),
                      d11 = min(dados$temp_min[(qnt_horas*10+1):(qnt_horas*11)]),
                      d12 = min(dados$temp_min[(qnt_horas*11+1):(qnt_horas*12)]),
                      d13 = min(dados$temp_min[(qnt_horas*12+1):(qnt_horas*13)]),
                      d14 = min(dados$temp_min[(qnt_horas*13+1):(qnt_horas*14)]),
                      d15 = min(dados$temp_min[(qnt_horas*14+1):(qnt_horas*15)]),
                      d16 = min(dados$temp_min[(qnt_horas*15+1):(qnt_horas*16)]),
                      d17 = min(dados$temp_min[(qnt_horas*16+1):(qnt_horas*17)]),
                      d18 = min(dados$temp_min[(qnt_horas*17+1):(qnt_horas*18)]),
                      d19 = min(dados$temp_min[(qnt_horas*18+1):(qnt_horas*19)]),
                      d20 = min(dados$temp_min[(qnt_horas*19+1):(qnt_horas*20)]),
                      d21 = min(dados$temp_min[(qnt_horas*20+1):(qnt_horas*21)]),
                      d22 = min(dados$temp_min[(qnt_horas*21+1):(qnt_horas*22)]),
                      d23 = min(dados$temp_min[(qnt_horas*22+1):(qnt_horas*23)]),
                      d24 = min(dados$temp_min[(qnt_horas*23+1):(qnt_horas*24)]),
                      d25 = min(dados$temp_min[(qnt_horas*24+1):(qnt_horas*25)]),
                      d26 = min(dados$temp_min[(qnt_horas*25+1):(qnt_horas*26)]),
                      d27 = min(dados$temp_min[(qnt_horas*26+1):(qnt_horas*27)]),
                      d28 = min(dados$temp_min[(qnt_horas*27+1):(qnt_horas*28)]),
                      d29 = min(dados$temp_min[(qnt_horas*28+1):(qnt_horas*29)]),
                      d30 = min(dados$temp_min[(qnt_horas*29+1):(qnt_horas*30)]),
                      d31 = min(dados$temp_min[(qnt_horas*30+1):(qnt_horas*31)]),
                      d32 = min(dados$temp_min[(qnt_horas*31+1):(qnt_horas*32)]),
                      d33 = min(dados$temp_min[(qnt_horas*32+1):(qnt_horas*33)]),
                      d34 = min(dados$temp_min[(qnt_horas*33+1):(qnt_horas*34)]),
                      d35 = min(dados$temp_min[(qnt_horas*34+1):(qnt_horas*35)]),
                      d36 = min(dados$temp_min[(qnt_horas*35+1):(qnt_horas*36)]),
                      d37 = min(dados$temp_min[(qnt_horas*36+1):(qnt_horas*37)]),
                      d38 = min(dados$temp_min[(qnt_horas*37+1):(qnt_horas*38)]),
                      d39 = min(dados$temp_min[(qnt_horas*38+1):(qnt_horas*39)]),
                      d40 = min(dados$temp_min[(qnt_horas*39+1):(qnt_horas*40)]),
                      d41 = min(dados$temp_min[(qnt_horas*40+1):(qnt_horas*41)]),
                      d42 = min(dados$temp_min[(qnt_horas*41+1):(qnt_horas*42)]),
                      d43 = min(dados$temp_min[(qnt_horas*42+1):(qnt_horas*43)]),
                      d44 = min(dados$temp_min[(qnt_horas*43+1):(qnt_horas*44)]),
                      d45 = min(dados$temp_min[(qnt_horas*44+1):(qnt_horas*45)])
                    )

maximas <- data.frame(
                      d1 = max(dados$temp_max[1:qnt_horas]),
                      d2 = max(dados$temp_max[(qnt_horas+1):(qnt_horas*2)]),
                      d3 = max(dados$temp_max[(qnt_horas*2+1):(qnt_horas*3)]),
                      d4 = max(dados$temp_max[(qnt_horas*3+1):(qnt_horas*4)]),
                      d5 = max(dados$temp_max[(qnt_horas*4+1):(qnt_horas*5)]),
                      d6 = max(dados$temp_max[(qnt_horas*5+1):(qnt_horas*6)]),
                      d7 = max(dados$temp_max[(qnt_horas*6+1):(qnt_horas*7)]),
                      d8 = max(dados$temp_max[(qnt_horas*7+1):(qnt_horas*8)]),
                      d9 = max(dados$temp_max[(qnt_horas*8+1):(qnt_horas*9)]),
                      d10 = max(dados$temp_max[(qnt_horas*9+1):(qnt_horas*10)]),
                      d11 = max(dados$temp_max[(qnt_horas*10+1):(qnt_horas*11)]),
                      d12 = max(dados$temp_max[(qnt_horas*11+1):(qnt_horas*12)]),
                      d13 = max(dados$temp_max[(qnt_horas*12+1):(qnt_horas*13)]),
                      d14 = max(dados$temp_max[(qnt_horas*13+1):(qnt_horas*14)]),
                      d15 = max(dados$temp_max[(qnt_horas*14+1):(qnt_horas*15)]),
                      d16 = max(dados$temp_max[(qnt_horas*15+1):(qnt_horas*16)]),
                      d17 = max(dados$temp_max[(qnt_horas*16+1):(qnt_horas*17)]),
                      d18 = max(dados$temp_max[(qnt_horas*17+1):(qnt_horas*18)]),
                      d19 = max(dados$temp_max[(qnt_horas*18+1):(qnt_horas*19)]),
                      d20 = max(dados$temp_max[(qnt_horas*19+1):(qnt_horas*20)]),
                      d21 = max(dados$temp_max[(qnt_horas*20+1):(qnt_horas*21)]),
                      d22 = max(dados$temp_max[(qnt_horas*21+1):(qnt_horas*22)]),
                      d23 = max(dados$temp_max[(qnt_horas*22+1):(qnt_horas*23)]),
                      d24 = max(dados$temp_max[(qnt_horas*23+1):(qnt_horas*24)]),
                      d25 = max(dados$temp_max[(qnt_horas*24+1):(qnt_horas*25)]),
                      d26 = max(dados$temp_max[(qnt_horas*25+1):(qnt_horas*26)]),
                      d27 = max(dados$temp_max[(qnt_horas*26+1):(qnt_horas*27)]),
                      d28 = max(dados$temp_max[(qnt_horas*27+1):(qnt_horas*28)]),
                      d29 = max(dados$temp_max[(qnt_horas*28+1):(qnt_horas*29)]),
                      d30 = max(dados$temp_max[(qnt_horas*29+1):(qnt_horas*30)]),
                      d31 = max(dados$temp_max[(qnt_horas*30+1):(qnt_horas*31)]),
                      d32 = max(dados$temp_max[(qnt_horas*31+1):(qnt_horas*32)]),
                      d33 = max(dados$temp_max[(qnt_horas*32+1):(qnt_horas*33)]),
                      d34 = max(dados$temp_max[(qnt_horas*33+1):(qnt_horas*34)]),
                      d35 = max(dados$temp_max[(qnt_horas*34+1):(qnt_horas*35)]),
                      d36 = max(dados$temp_max[(qnt_horas*35+1):(qnt_horas*36)]),
                      d37 = max(dados$temp_max[(qnt_horas*36+1):(qnt_horas*37)]),
                      d38 = max(dados$temp_max[(qnt_horas*37+1):(qnt_horas*38)]),
                      d39 = max(dados$temp_max[(qnt_horas*38+1):(qnt_horas*39)]),
                      d40 = max(dados$temp_max[(qnt_horas*39+1):(qnt_horas*40)]),
                      d41 = max(dados$temp_max[(qnt_horas*40+1):(qnt_horas*41)]),
                      d42 = max(dados$temp_max[(qnt_horas*41+1):(qnt_horas*42)]),
                      d43 = max(dados$temp_max[(qnt_horas*42+1):(qnt_horas*43)]),
                      d44 = max(dados$temp_max[(qnt_horas*43+1):(qnt_horas*44)]),
                      d45 = max(dados$temp_max[(qnt_horas*44+1):(qnt_horas*45)])
                    )

medias <- data.frame( 
                      m1 = (maximas$d1 - minimas$d1) - temperatura_base / 2,
                      m2 = (maximas$d2 - minimas$d2) - temperatura_base / 2,
                      m3 = (maximas$d3 - minimas$d3) - temperatura_base / 2,
                      m4 = (maximas$d4 - minimas$d4) - temperatura_base / 2,
                      m5 = (maximas$d5 - minimas$d5) - temperatura_base / 2,
                      m6 = (maximas$d6 - minimas$d6) - temperatura_base / 2,
                      m7 = (maximas$d7 - minimas$d7) - temperatura_base / 2,
                      m8 = (maximas$d8 - minimas$d8) - temperatura_base / 2,
                      m9 = (maximas$d9 - minimas$d9) - temperatura_base / 2,
                      m10 = (maximas$d10 - minimas$d10) - temperatura_base / 2,
                      m11 = (maximas$d11 - minimas$d11) - temperatura_base / 2,
                      m12 = (maximas$d12 - minimas$d12) - temperatura_base / 2,
                      m13 = (maximas$d13 - minimas$d13) - temperatura_base / 2,
                      m14 = (maximas$d14 - minimas$d14) - temperatura_base / 2,
                      m15 = (maximas$d15 - minimas$d15) - temperatura_base / 2,
                      m16 = (maximas$d16 - minimas$d16) - temperatura_base / 2,
                      m17 = (maximas$d17 - minimas$d17) - temperatura_base / 2,
                      m18 = (maximas$d18 - minimas$d18) - temperatura_base / 2,
                      m19 = (maximas$d19 - minimas$d19) - temperatura_base / 2,
                      m20 = (maximas$d20 - minimas$d20) - temperatura_base / 2,
                      m21 = (maximas$d21 - minimas$d21) - temperatura_base / 2,
                      m22 = (maximas$d22 - minimas$d22) - temperatura_base / 2,
                      m23 = (maximas$d23 - minimas$d23) - temperatura_base / 2,
                      m24 = (maximas$d24 - minimas$d24) - temperatura_base / 2,
                      m25 = (maximas$d25 - minimas$d25) - temperatura_base / 2,
                      m26 = (maximas$d26 - minimas$d26) - temperatura_base / 2,
                      m27 = (maximas$d27 - minimas$d27) - temperatura_base / 2,
                      m28 = (maximas$d28 - minimas$d28) - temperatura_base / 2,
                      m29 = (maximas$d29 - minimas$d29) - temperatura_base / 2,
                      m30 = (maximas$d30 - minimas$d30) - temperatura_base / 2,
                      m31 = (maximas$d31 - minimas$d31) - temperatura_base / 2,
                      m32 = (maximas$d32 - minimas$d32) - temperatura_base / 2,
                      m33 = (maximas$d33 - minimas$d33) - temperatura_base / 2,
                      m34 = (maximas$d34 - minimas$d34) - temperatura_base / 2,
                      m35 = (maximas$d35 - minimas$d35) - temperatura_base / 2,
                      m36 = (maximas$d36 - minimas$d36) - temperatura_base / 2,
                      m37 = (maximas$d37 - minimas$d37) - temperatura_base / 2,
                      m38 = (maximas$d38 - minimas$d38) - temperatura_base / 2,
                      m39 = (maximas$d39 - minimas$d39) - temperatura_base / 2,
                      m40 = (maximas$d40 - minimas$d40) - temperatura_base / 2,
                      m41 = (maximas$d41 - minimas$d41) - temperatura_base / 2,
                      m42 = (maximas$d42 - minimas$d42) - temperatura_base / 2,
                      m43 = (maximas$d43 - minimas$d43) - temperatura_base / 2,
                      m44 = (maximas$d44 - minimas$d44) - temperatura_base / 2,
                      m45 = (maximas$d45 - minimas$d45) - temperatura_base / 2
                    )

temp_media = (rowMeans(maximas) + rowMeans(minimas))/2
vetor_medias <- c(t(medias))

#Itaporanga
fase_larval_ita <- (21 * temperatura_base)
fase_pupa_ita <- (6.6 * temperatura_base)
fase_ovo_adulto_ita <- (36.8 * temperatura_base)
qnt_gd_larva_ita <- 21
qnt_gd_pupa_ita <- 6.6
qnt_gd_ovo_ita <- 36.8

#Passo Fundo
fase_larval_pf <- (21 * temperatura_base) + 1
fase_pupa_pf <- (6.6 * temperatura_base) + 1
fase_ovo_adulto_pf <- (36.8 * temperatura_base) + 1
qnt_gd_larva_pf <- length(which(cumsum(vetor_medias) <= fase_larval_pf))
qnt_gd_pupa_pf <- length(which(cumsum(vetor_medias) <= fase_pupa_pf))
qnt_gd_ovo_pf <- length(which(cumsum(vetor_medias) <= fase_ovo_adulto_pf))

graus_dias_larva <- sum(medias[1:qnt_gd_larva_pf])
graus_dias_pupa <- sum(medias[1:qnt_gd_pupa_pf])
graus_dias_ovo <- sum(medias[1:qnt_gd_ovo_pf])

print("ComparaÁ„o entre Itaporanga x Passo Fundo")
print(paste("Temperatura mÈdia Passo Fundo: ", round(temp_media, 1)))
print("PerÌodo: 01/10/2018 a 17/11/2018")

print(paste("Fase larval em graus dias para Passo Fundo: ", fase_larval_pf, " Itaporanga: ", fase_larval_ita))
print(paste("Fase pupa em graus dias para Passo Fundo: ", fase_pupa_pf, " Itaporanga: ", fase_pupa_ita))
print(paste("Fase ovo-adulto em graus dias para Passo Fundo: ", fase_ovo_adulto_pf, " Itaporanga: ", fase_ovo_adulto_ita))

print(paste("Quantidade de dias para desenvolvimento larval: ", qnt_gd_larva_pf, " Itaporanga: ", qnt_gd_larva_ita))
print(paste("Quantidade de dias para desenvolvimento pupa: ", qnt_gd_pupa_pf, " Itaporanga: ", qnt_gd_pupa_ita))
print(paste("Quantidade de dias para desenvolvimento ovo-adulto: ", qnt_gd_ovo_pf, " Itaporanga: ", qnt_gd_ovo_ita))
