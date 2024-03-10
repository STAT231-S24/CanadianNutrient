library(tidyverse)

# NJH stubbed out the first two
# JGB should start working on the remaining 10

ConversionFactor <-  
  readr::read_csv("data-raw/CONVERSION_FACTOR.csv") |>
  janitor::clean_names() 
usethis::use_data(ConversionFactor) 

FoodGroup <-  
  readr::read_csv("data-raw/FOOD_GROUP.csv") |>
  janitor::clean_names() 
usethis::use_data(FoodGroup)  

# CONVERSION_FACTOR.csv
# FOOD_GROUP.csv
# FOOD_NAME.csv
# FOOD_SOURCE.csv
# MEASURE_NAME.csv
# NUTRIENT_AMOUNT.csv
# NUTRIENT_NAME.csv
# NUTRIENT_SOURCE.csv
# REFUSE_AMOUNT.csv
# REFUSE_NAME.csv
# YIELD_AMOUNT.csv
# YIELD_NAME.csv
