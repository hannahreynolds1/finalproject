library(readr)
library(sf)
library(stringr)
library(tidyverse)
library(ggmap)
library(dplyr)
library(haven)

pakistan_shape_1 <- st_read("/Users/hannahreynolds/Desktop/GitHub/finalproject/gadm36_PAK_0.shp")

ggplot(data = pakistan_shape_1, aes(geometry = geometry)) +
  geom_sf() +
  labs(title = "Map 0") +
  theme_minimal()



pakistan_shape_1 <- st_read("/Users/hannahreynolds/Desktop/GitHub/finalproject/gadm36_PAK_1.shp")

ggplot(data = pakistan_shape_1, aes(geometry = geometry)) +
  geom_sf() +
  labs(title = "Map 1") +
  theme_minimal()

pakistan_shape_2 <- st_read("/Users/hannahreynolds/Desktop/GitHub/finalproject/gadm36_PAK_2.shp")

ggplot(data = pakistan_shape_2, aes(geometry = geometry)) +
  geom_sf() +
  labs(title = "Map 2") +
  theme_minimal()

pakistan_shape_3 <- st_read("/Users/hannahreynolds/Desktop/GitHub/finalproject/gadm36_PAK_3.shp")

ggplot(data = pakistan_shape_3, aes(geometry = geometry)) +
  geom_sf() +
  labs(title = "Map 3") +
  theme_minimal()





scores_train %>%
  ggplot( aes(factor(father_educ), eng_theta_eap)) +
  geom_boxplot() +
  labs(title = "Effect of Maternal Education Levels on Math Test Scores")+
  theme_minimal()


```{r}
avg_scores <- scores_train %>%
  filter(age > 4) %>%
  group_by(age) %>%
  summarize(avg_math_score = mean(math_theta_eap))

# Plot the average math score per age group
ggplot(avg_scores, aes(x = age, y = avg_math_score)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Math Test Scores by Age") +
  theme_minimal()

avg_scores %>%
  ggplot(aes(factor(age), avg_math_score)) +
  geom_boxplot() +
  labs(title = "Effect of Maternal Education Levels on Math Test Scores")+
  theme_minimal()


