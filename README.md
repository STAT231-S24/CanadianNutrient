# Canadian Nutrient DATA PACKAGE
Javier Gutierrez Bach
2024-04-11

This file describes the Canadian Nutrient package.

The package is interesting because it provides detailed explanations on
a lot of the foods available in the Canadian market. It lets you verify
exactly what portion of the food is each yield and refuse, as well as
telling you detailed information on every nutrient it has and how to
make scale conversions or calculations to determine how much of each
nutrient your particular meal might have. It additionally holds
information from the foods and nutrients come from (sources) and
provides names and descriptions in both English and French which is
useful for the people in French Canada.

The `CanadianNutrient` package can be installed by running:

    devtools::install_github("STAT231-S24/CanadianNutrient")
    library(CanadianNutrient)

``` r
glimpse(FoodGroup)
```

    Rows: 23
    Columns: 3
    $ food_group_id   <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,…
    $ food_group_code <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,…
    $ food_group_name <chr> "Dairy and Egg Products", "Spices and Herbs", "Babyfoo…

Here are some sample analyses:

You could wrangle the data and join tables to answer questions such as
the following:

Which foods have at least 20g of protein?

``` r
NutrientNames |> 
  inner_join(NutrientAmounts, by = 'nutrient_id') |> 
  filter(nutrient_name == 'PROTEIN', nutrient_value >= 20.00) |> 
  inner_join(FoodNames, by = 'food_id') |> 
  select(food_description, nutrient_value) |> 
  rename("protein_in_g" = nutrient_value)
```

    # A tibble: 1,266 × 2
       food_description                                     protein_in_g
       <chr>                                                       <dbl>
     1 Beef pot roast, with browned potatoes, peas and corn         21.3
     2 Cheese, blue                                                 21.4
     3 Cheese, brick                                                23.2
     4 Cheese, brie                                                 20.8
     5 Cheese, caraway                                              25.2
     6 Cheese, cheshire                                             23.4
     7 Cheese, colby                                                23.8
     8 Cheese, edam                                                 25.0
     9 Cheese, fontina                                              25.6
    10 Cheese, gruyere                                              29.8
    # ℹ 1,256 more rows

Another example is grouping all the foods by their food group, and
taking the average of trans fat that a food in that group might have, to
get an idea of the groups with the most or least fat.

``` r
NutrientNames |> 
  inner_join(NutrientAmounts, by = 'nutrient_id') |> 
  filter(nutrient_name == 'FAT (TOTAL LIPIDS)') |> 
  inner_join(FoodNames, by = 'food_id') |> 
  inner_join(FoodGroup, by = 'food_group_id') |> 
  rename("fat_in_g" = nutrient_value) |> 
  group_by(food_group_name) |> 
  summarise(num_of_foods = n(), avg_fat_per_food_in_g = mean(fat_in_g)) |> 
  arrange(desc(avg_fat_per_food_in_g))
```

    # A tibble: 23 × 3
       food_group_name             num_of_foods avg_fat_per_food_in_g
       <chr>                              <int>                 <dbl>
     1 Fats and Oils                        144                  67.2
     2 Nuts and Seeds                       139                  39.0
     3 Snacks                                93                  18.2
     4 Sausages and Luncheon meats          149                  16.2
     5 Pork Products                        209                  15.1
     6 Lamb, Veal and Game                  363                  13.7
     7 Dairy and Egg Products               241                  13.3
     8 Fast Foods                           174                  12.4
     9 Baked Products                       441                  11.8
    10 Beef Products                        170                  11.5
    # ℹ 13 more rows

You could use the data set to filter the foods by the ingredients of
your lunch today, and sum up the vitamin B-12 of all the ingredients to
verify the vitamin B-12 count of your meal, using the appropriate
conversion factor based on how much you ate.

In the case where I ate an omelet for breakfast:

``` r
NutrientNames |> 
  inner_join(NutrientAmounts, by = 'nutrient_id') |> 
  rename("vitamin_b12_in_g" = nutrient_value) |> 
  filter(nutrient_name == 'VITAMIN B-12') |> 
  inner_join(FoodNames, by = 'food_id') |> 
  filter(food_description == 'Egg, chicken, whole, cooked, scrambled or omelet') |> 
  inner_join(ConversionFactor, by = 'food_id') |> 
  inner_join(MeasureNames, by = 'measure_id') |> 
  mutate(total_vitamin_b12_in_g = vitamin_b12_in_g * conversion_factor_value) |> 
  select(measure_description, conversion_factor_value, total_vitamin_b12_in_g)
```

    # A tibble: 6 × 3
      measure_description conversion_factor_value total_vitamin_b12_in_g
      <chr>                                 <dbl>                  <dbl>
    1 1 large egg                           0.61                   0.853
    2 100ml                                 0.930                  1.30 
    3 250ml                                 2.32                   3.25 
    4 1 small egg                           0.48                   0.671
    5 110g                                  1.1                    1.54 
    6 2 large eggs                          1.22                   1.71 

Here you can see a variety of measures for our egg food item according
to the data base, and the total Vitamin B12 that comes with each
measure. So lets say I ate an omelet with two large eggs, then my meal
had roughly 1.7g of Vitamin B12

Those were a few examples of possible questions you might want to
investigate with this data set, but the possibilities are endless.

Wrangle away!
