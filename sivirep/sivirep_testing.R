remove.packages("sivirep")
pak::pak("epiverse-trace/sivirep@fix-review-items")

rm(list = ls())

library(sivirep)
library(tidyverse)

list_events <- list_events()

data_event <- import_data_event(nombre_event = "Intento De Suicidio",
                                years = c(2007:2022))

ano <- data_event %>% group_by (year = ano) %>% summarise(cases = n())

ggplot(ano) +
  geom_col(aes (x = year, y = cases)) +
  cowplot::theme_cowplot()

data_event <- import_data_event(nombre_event = "Cáncer Infantil", years = c(2015:2022))

