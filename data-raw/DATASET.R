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

FoodNames <-  
  readr::read_csv("data-raw/FOOD_NAME.csv") |>
  janitor::clean_names() 
usethis::use_data(FoodNames)  

FoodSources <-  
  readr::read_csv("data-raw/FOOD_SOURCE.csv") |>
  janitor::clean_names() 
usethis::use_data(FoodSources)  

MeasureNames <-  
  readr::read_csv("data-raw/MEASURE_NAME.csv") |>
  janitor::clean_names() 
usethis::use_data(MeasureNames)  

NutrientAmounts <-  
  readr::read_csv("data-raw/NUTRIENT_AMOUNT.csv") |>
  janitor::clean_names() 
usethis::use_data(NutrientAmounts) 

NutrientNames <-  
  readr::read_csv("data-raw/NUTRIENT_NAME.csv") |>
  janitor::clean_names() 
usethis::use_data(NutrientNames) 

NutrientSources <-  
  readr::read_csv("data-raw/NUTRIENT_SOURCE.csv") |>
  janitor::clean_names() 
usethis::use_data(NutrientSources) 

RefuseAmounts <-  
  readr::read_csv("data-raw/REFUSE_AMOUNT.csv") |>
  janitor::clean_names() 
usethis::use_data(RefuseAmounts) 

RefuseNames <-  
  readr::read_csv("data-raw/REFUSE_NAME.csv") |>
  janitor::clean_names() 
usethis::use_data(RefuseNames) 

YieldAmounts <-  
  readr::read_csv("data-raw/YIELD_AMOUNT.csv") |>
  janitor::clean_names() 
usethis::use_data(YieldAmounts) 

YieldNames <-  
  readr::read_csv("data-raw/YIELD_NAME.csv") |>
  janitor::clean_names() 
usethis::use_data(YieldNames) 

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
