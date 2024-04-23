library(readr)
library(sf)
library(stringr)
library(tidyverse)
library(ggmap)
library(dplyr)

crime_data <- read_csv("/Users/hannahreynolds/Desktop/GitHub/finalproject/Crime_Data_from_2020_to_Present_20240418.csv")

affordable_housing_data <- read_csv("/Users/hannahreynolds/Desktop/GitHub/finalproject/LAHD_Affordable_Housing_Projects_List__2003_to_Present__20240418.csv")

LA_shapefile <- st_read("/Users/hannahreynolds/Desktop/GitHub/finalproject/LAshapefile (1)/CAMS_ZIPCODE_PARCEL_SPECIFIC.shp")

hud_data <- read_csv("/Users/hannahreynolds/Desktop/GitHub/finalproject/hudPicture2023_573267.csv")

crime_sf <- st_as_sf(crime_data, coords = c("LAT", "LON"), remove = FALSE, crs = 4326)

LA_shapefile_sf <- st_as_sf(LA_shapefile, remove = FALSE, crs = 4326)

sf_use_s2(false)

crime_zip_merge <- st_join(LA_shapefile_sf, crime_sf,  join = st_intersects)