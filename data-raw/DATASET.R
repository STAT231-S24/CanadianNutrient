library(tidyverse)

# NJH stubbed out the first two
# JGB should start working on the remaining 10

ConversionFactor <-  
  readr::read_csv("data-raw/CONVERSION_FACTOR.csv") |>
  janitor::clean_names() 
usethis::use_data(ConversionFactor, overwrite = TRUE) 

FoodGroup <-  
  readr::read_csv("data-raw/FOOD_GROUP.csv") |>
  janitor::clean_names() |> 
  select(-food_group_name_f)
usethis::use_data(FoodGroup, overwrite = TRUE)  

FoodNames <-  
  readr::read_csv("data-raw/FOOD_NAME.csv") |>
  janitor::clean_names() |> 
  select(-food_description_f)
usethis::use_data(FoodNames, overwrite = TRUE)  


FoodSources <-  
  readr::read_csv("data-raw/FOOD_SOURCE.csv") |>
  janitor::clean_names() |> 
  select(-food_source_description_f)
usethis::use_data(FoodSources, overwrite = TRUE)  

MeasureNames <-  
  readr::read_csv("data-raw/MEASURE_NAME.csv") |>
  janitor::clean_names() 
usethis::use_data(MeasureNames, overwrite = TRUE)  

NutrientAmounts <-  
  readr::read_csv("data-raw/NUTRIENT_AMOUNT.csv") |>
  janitor::clean_names() 
usethis::use_data(NutrientAmounts, overwrite = TRUE) 

NutrientNames <-  
  readr::read_csv("data-raw/NUTRIENT_NAME.csv") |>
  janitor::clean_names() |> 
  select(-nutrient_name_f)
usethis::use_data(NutrientNames, overwrite = TRUE) 

NutrientSources <-  
  readr::read_csv("data-raw/NUTRIENT_SOURCE.csv") |>
  janitor::clean_names() |> 
  select(-nutrient_sourc_description_f)
usethis::use_data(NutrientSources, overwrite = TRUE) 

RefuseAmounts <-  
  readr::read_csv("data-raw/REFUSE_AMOUNT.csv") |>
  janitor::clean_names() 
usethis::use_data(RefuseAmounts, overwrite = TRUE) 

RefuseNames <-  
  readr::read_csv("data-raw/REFUSE_NAME.csv") |>
  janitor::clean_names() |> 
  select(-refuse_description_f)
usethis::use_data(RefuseNames, overwrite = TRUE) 

YieldAmounts <-  
  readr::read_csv("data-raw/YIELD_AMOUNT.csv") |>
  janitor::clean_names() 
usethis::use_data(YieldAmounts, overwrite = TRUE) 

YieldNames <-  
  readr::read_csv("data-raw/YIELD_NAME.csv") |>
  janitor::clean_names() |> 
  select(-yield_description_f)
usethis::use_data(YieldNames, overwrite = TRUE) 

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
