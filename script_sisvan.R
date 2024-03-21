##  Dados SISVAN

# Limpando todos os objetos atualmente ativos no Ambiente (Environment)
rm(list=ls(all=T))

# Carregando os pacotes necessarios
if(!require(tidyverse)){install.packages("tidyverse")};library(tidyverse)

# Definindo diretorio de trabalho
getwd()
setwd("")

# Coleta de tabelas de estimas populacionais - Censo IBGE - Tabnet
Pop2008 <- read_delim("/Pop2008.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2009 <- read_delim("/Pop2009.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2010 <- read_delim("/Pop2010.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2011 <- read_delim("/Pop2011.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2012 <- read_delim("/Pop2012.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2013 <- read_delim("/Pop2013.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2014 <- read_delim("/Pop2014.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2015 <- read_delim("/Pop2015.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2016 <- read_delim("/Pop2016.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2017 <- read_delim("/Pop2017.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2018 <- read_delim("/Pop2018.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2019 <- read_delim("/Pop2019.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2020 <- read_delim("/Pop2020.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Pop2021 <- read_delim("/Pop2021.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

# criando coluna de anos em cada uma das tabelas
Pop2008$ano <- 2008
Pop2009$ano <- 2009 
Pop2010$ano <- 2010
Pop2011$ano <- 2011
Pop2012$ano <- 2012 
Pop2013$ano <- 2013
Pop2014$ano <- 2014
Pop2015$ano <- 2015 
Pop2016$ano <- 2016 
Pop2017$ano <- 2017 
Pop2018$ano <- 2018 
Pop2019$ano <- 2019
Pop2020$ano <- 2020 
Pop2021$ano <- 2021
# Acrescentar tabelas de 2022 e 2023

# Unindo tabelas com todas as estimativas populacionais do período
poptotal <- bind_rows(Pop2008,Pop2009, Pop2010, Pop2011, Pop2012, Pop2013, Pop2014,
           Pop2015, Pop2016, Pop2017, Pop2018, Pop2019, Pop2020, Pop2021)

poptotal$municipios

# Criando estimativa pop para faixaeta de crianças separadamente
poptotal_0_5 <- poptotal %>% 
  select("0 a 4 anos", "codigoIBGE", "ano") %>% 
  rename("Pop_Total" = "0 a 4 anos")

poptotal_5_10 <- poptotal %>% 
  select("5 a 9 anos", "codigoIBGE", "ano") %>% 
  rename("Pop_Total" = "5 a 9 anos")

# Lendo tabelas de Estados Nutricionais - Crianças
# 0 a 5
rel2008 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2008.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2009 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2009.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2010 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2010.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2011 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2011.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2012 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2012.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2013 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2013.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2014 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2014.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2015 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2015.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2016 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2016.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2017 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2017.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2018 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2018.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2019 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2019.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2020 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2020.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2021 <- read_delim("0_a_4_anos_municipios/RelatorioEstadoNutricional2021.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

# 5 a 10
rel2008.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2008.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2009.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2009.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2010.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2010.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2011.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2011.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2012.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2012.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2013.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2013.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2014.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2014.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2015.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2015.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2016.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2016.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2017.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2017.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2018.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2018.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2019.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2019.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2020.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2020.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

rel2021.2 <- read_delim("5_a_10_anos_municipios/RelatorioEstadoNutricional2021.csv",
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)

# Criando colunas ano e idade para cada tabela de estado nutricional
rel2008$ano <- 2008
rel2008$idade <- "0 a 5 anos"
rel2009$ano <- 2009
rel2009$idade <- "0 a 5 anos"
rel2010$ano <- 2010
rel2010$idade <- "0 a 5 anos"
rel2011$ano <- 2011
rel2011$idade <- "0 a 5 anos"
rel2012$ano <- 2012
rel2012$idade <- "0 a 5 anos"
rel2013$ano <- 2013
rel2013$idade <- "0 a 5 anos"
rel2014$ano <- 2014
rel2014$idade <- "0 a 5 anos"
rel2015$ano <- 2015
rel2015$idade <- "0 a 5 anos"
rel2016$ano <- 2016
rel2016$idade <- "0 a 5 anos"
rel2017$ano <- 2017
rel2017$idade <- "0 a 5 anos"
rel2018$ano <- 2018
rel2018$idade <- "0 a 5 anos"
rel2019$ano <- 2019
rel2019$idade <- "0 a 5 anos"
rel2020$ano <- 2020
rel2020$idade <- "0 a 5 anos"
rel2021$ano <- 2021
rel2021$idade <- "0 a 5 anos"

rel2008.2$ano <- 2008
rel2008.2$idade <- "5 a 9 anos"
rel2009.2$ano <- 2009
rel2009.2$idade <- "5 a 9 anos"
rel2010.2$ano <- 2010
rel2010.2$idade <- "5 a 9 anos"
rel2011.2$ano <- 2011
rel2011.2$idade <- "5 a 9 anos"
rel2012.2$ano <- 2012
rel2012.2$idade <- "5 a 9 anos"
rel2013.2$ano <- 2013
rel2013.2$idade <- "5 a 9 anos"
rel2014.2$ano <- 2014
rel2014.2$idade <- "5 a 9 anos"
rel2015.2$ano <- 2015
rel2015.2$idade <- "5 a 9 anos"
rel2016.2$ano <- 2016
rel2016.2$idade <- "5 a 9 anos"
rel2017.2$ano <- 2017
rel2017.2$idade <- "5 a 9 anos"
rel2018.2$ano <- 2018
rel2018.2$idade <- "5 a 9 anos"
rel2019.2$ano <- 2019
rel2019.2$idade <- "5 a 9 anos"
rel2020.2$ano <- 2020
rel2020.2$idade <- "5 a 9 anos"
rel2021.2$ano <- 2021
rel2021.2$idade <- "5 a 9 anos"

# Unindo relatórios 2008 a 2021 para crianças 0 a 5
relTotal0_5 <- bind_rows(rel2008,rel2009, rel2010, rel2011, rel2012, rel2013, 
                  rel2014,rel2015, rel2016, rel2017, rel2018, rel2019, rel2020, rel2021) %>% 
  rename("municipios" = "municipio")

# Unindo relatórios 2008 a 2021 para crianças 5 a 10
relTotal5_10 <- rbind(rel2008,rel2009, rel2010, rel2011, rel2012, rel2013, 
                      rel2014,rel2015, rel2016, rel2017, rel2018, rel2019, rel2020, rel2021) %>% 
  rename("municipios" = "municipio")

# União de estimativa populacional com relatórios sisvan
tab_final_0_5 <- poptotal_0_5 %>% 
  inner_join(relTotal0_5, by = c("codigoIBGE", "ano")) %>% 
  select(2:5,6:17,1,18,19) # reordenando colunas para melhor visualização

# União de estimativa populacional com relatórios sisvan
tab_final_5_10 <- poptotal_5_10 %>% inner_join(relTotal5_10, by = c("codigoIBGE", "ano")) %>% 
  select(2:5,6:17,1,18,19) # reordenando colunas para melhor visualização

# salvando tabelas
write.table(tab_final_0_5, file = "Crianças/tab_final_0_5.csv",
            sep = ",", quote = TRUE, row.names=FALSE)

write.table(tab_final_5_10, file = "Crianças/tab_final_5_10.csv", 
            sep = ",",quote = TRUE,row.names=FALSE)

# União tabela 0 a 5 e 5 a 10
tbl_criança_final <- bind_rows(tab_final_0_5,tab_final_5_10) 

write.table(tbl_criança_final, file = "Crianças/sisvan.csv", 
            sep = ",",quote = TRUE,row.names=FALSE)


# Calculando as razões de população atendida por estado nutricional
tbl_criança_final_2 <- tbl_criança_final

tbl_criança_final_2$por_ma_a = round((tbl_criança_final_2$`Magreza acentuada`/tbl_criança_final_2$total_atend),3) %>% 
  as.double() #por magreza acentuada

tbl_criança_final_2$por_ma = round((tbl_criança_final_2$Magreza/tbl_criança_final_2$total_atend),3) %>% 
  as.double() #por magreza

tbl_criança_final_2$por_eu = round((tbl_criança_final_2$Eutrofia/tbl_criança_final_2$total_atend),3)%>% 
  as.double() #por eutrofia

tbl_criança_final_2$por_ri_s = round((tbl_criança_final_2$`Risco de sobrepeso`/tbl_criança_final_2$total_atend),3)%>% 
  as.double() #por risco de sobrepeso

tbl_criança_final_2$por_sob = round((tbl_criança_final_2$Sobrepeso/tbl_criança_final_2$total_atend),3)%>% 
  as.double() #por sobrepeso

tbl_criança_final_2$por_ob = round((tbl_criança_final_2$Obesidade/tbl_criança_final_2$total_atend),3)%>% 
  as.double() #por obesidade

# Calculando as razões de população total por estado nutricional
tbl_criança_final_2$por_ma_a_total = round((tbl_criança_final_2$`Magreza acentuada`/tbl_criança_final_2$Pop_Total),3)%>% 
  as.double() #por magreza acentuada

tbl_criança_final_2$por_ma_total = round((tbl_criança_final_2$Magreza/tbl_criança_final_2$Pop_Total),3)%>% 
  as.double() #por magreza

tbl_criança_final_2$por_eu_total = round((tbl_criança_final_2$Eutrofia/tbl_criança_final_2$Pop_Total),3)%>% 
  as.double() #por eutrofia

tbl_criança_final_2$por_ri_s_total = round((tbl_criança_final_2$`Risco de sobrepeso`/tbl_criança_final_2$Pop_Total),3)%>% 
  as.double() #por risco de sobrepeso

tbl_criança_final_2$por_sob_total = round((tbl_criança_final_2$Sobrepeso/tbl_criança_final_2$total_atend),3)%>% 
  as.double() #por sobrepeso

tbl_criança_final_2$por_ob_total = round((tbl_criança_final_2$Obesidade/tbl_criança_final_2$Pop_Total),3)%>% 
  as.double() #por obesidade

# Calculando as razões de atendimento pela população total
tbl_criança_final_2$raz_pop_atend_total = round((tbl_criança_final_2$total_atend/tbl_criança_final_2$Pop_Total),3)%>% 
  as.double()

# Salvando tabela final e reordenando colunas
names(tbl_criança_final_2)

tbl_criança_final_2 <- tbl_criança_final_2 %>% 
  select(2,19,1,3,4,5,6,20,7,8,21,9,10,22,11,12,23,13,14,24,15,16,25,17,18,26) # reordenando colunas

write.table(tbl_criança_final_2, file = "Crianças/sisvan_final.csv", 
            sep = ",",quote = TRUE,row.names=FALSE)