# devtools::install_github("bit2r/hsData")

library(gridlayout)
library(shiny)
library(tidyverse)
library(gt)
library(skimr)
library(GGally)
library(sortable)
library(hsData)


hsData_list <- data(package = "hsData")

hsData_df <- hsData_list$results %>%
  as_tibble() %>%
  select(Item, Title)

