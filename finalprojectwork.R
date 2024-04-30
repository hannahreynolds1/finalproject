library(readr)
library(sf)
library(stringr)
library(tidyverse)
library(ggmap)
library(dplyr)
library(haven)


irt_scores <- read_dta("/Users/hannahreynolds/Desktop/GitHub/finalproject/school/master/public_child_irt_scores_panel.dta")

teacher_irt_scores <- read_dta("/Users/hannahreynolds/Desktop/GitHub/finalproject/school/master/public_teacher_irt_scores_panel.dta")


public_child <-read_dta("/Users/hannahreynolds/Desktop/GitHub/finalproject/school/school2/public_child2.dta")