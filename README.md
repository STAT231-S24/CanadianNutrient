Canadian Nutrient DATA PACKAGE
================
Javier Gutierrez Bach
2024-01-01

This file describes the Canadian Nutrient package.

The package is interesting because it provides detailed explanations on a lot of the foods available in the canadian market. It lets you verify exactly what portion of the food is each yield and refuse, as well as telling you detailed information on every nutrient it has and how to make scale conversions or calculations to determine how much of each nutrient your particular meal might have. It additionally holds information from the foods and nutrients come from (sources) and provides names and descriptions in both english and franch which is useful for the people in French Canada.

The `CanadianNutrient` package can be installed by running:

    devtools::install_github("nicholasjhorton/CanadianNutrient")
    library(CanadianNutrient)

``` r
glimpse(FoodGroup)
```

    Rows: 23
    Columns: 4
    $ food_group_id     <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1…
    $ food_group_code   <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1…
    $ food_group_name   <chr> "Dairy and Egg Products", "Spices and Herbs", "Babyf…
    $ food_group_name_f <chr> "Produits laitiers et d'oeufs\n", "\xc9pices et fine…

Here are some sample analyses:

You could wrangle the data and join tables to answer questions such as the following:

Which foods with at least 20g of protein have the least percentage of the portion to be refuse (waste)?

You could use the data set to filter the foods by the ingredients of your lunch today, and sum up the calories of all the ingredients to verify the calorie count of your meal.

Another example is grouping all the foods by their food group, and taking the average of trans fat that a food in that group might have, tyo get an idea of the groups with the most or least fat.

Wrangle away!
