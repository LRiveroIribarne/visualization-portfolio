# PML ET processing

#install.packages('terra')
#install.packages('lubridate')
#install.packages('ggplot2')
#install.packages('scales')
library(terra)
library(lubridate)
library(ggplot2)
library(scales)

vineyard <- vect('../data/spatial/vineyard.geojson')
vineyard_point <- vect('../data/spatial/vineyard_point.shp')
ETa_path <- '../data/et/PMLV2_2020/'


# 2020
PML <- sds(list.files(ETa_path, full.names = TRUE))

yyyy <- substr(names(PML), 8, 11)
mm <- substr(names(PML), 13, 14)
dd <- substr(names(PML), 16, 17)
date <- paste0(yyyy, '-', mm, '-', dd)
dates <- as.Date(date)

# Transpiration (mm/day)
ec_eta <- rast(crop(PML[1:length(PML), 2], vineyard))

# Evaporation (mm/day)
es_eta <- rast(crop(PML[1:length(PML), 3], vineyard))

# Actual evapotranspiration (mm/day)
Eta <- ec_eta + es_eta

mean(Eta)

# extract
Eta_point <- extract(Eta, vineyard_point)
Eta_df_2020 <- data.frame(date = dates, Eta = t(Eta_point)[2:length(Eta_point)])

# plot

ggplot(Eta_df_2020, aes(x = date, y = Eta)) +
  geom_line() +
  geom_point() +
  labs(x = "Date", y = "Eta") +
  ggtitle("Time Series Plot of Eta") +
  theme_minimal()


# 2017

ETa_path <- '../data/et/PMLV2_2017/'

PML <- sds(list.files(ETa_path, full.names = TRUE))

yyyy <- substr(names(PML), 8, 11)
mm <- substr(names(PML), 13, 14)
dd <- substr(names(PML), 16, 17)
date <- paste0(yyyy, '-', mm, '-', dd)
dates <- as.Date(date)

# Transpiration (mm/day)
ec_eta <- rast(crop(PML[1:length(PML), 2], vineyard))

# Evaporation (mm/day)
es_eta <- rast(crop(PML[1:length(PML), 3], vineyard))

# Actual evapotranspiration (mm/day)
Eta <- ec_eta + es_eta

mean(Eta)

# extract
Eta_point <- extract(Eta, vineyard_point)
Eta_df_2017 <- data.frame(date = dates, Eta = t(Eta_point)[2:length(Eta_point)])

# plot

ggplot(Eta_df_2017, aes(x = date, y = Eta)) +
  geom_line() +
  geom_point() +
  labs(x = "Date", y = "Eta") +
  ggtitle("Time Series Plot of Eta") +
  theme_minimal()


# 2017 and 2020

# Merge data_1 and data_2 into one data frame
merged_data <- rbind(Eta_df_2017, Eta_df_2020)

# Extract month and day from the date column
# TRICK: Year is set to 1900 to display all years in the same X axis.
merged_data$day_month <-  as_date(paste0(1900, '-', month(merged_data$date),'-', day(merged_data$date)))
# Extract year from the date column
merged_data$year <- format(merged_data$date, "%Y")

# Plot

ggplot(merged_data, aes(x = day_month, y = Eta)) +
  geom_line(aes(color = year), size = 1) +
  geom_point() +
  scale_color_manual(values = c("#1E88E5", "#FFC107")) +
  ylim(0, 4) +
  scale_x_date(date_breaks="1 month", date_labels="%b") +
  ggtitle("PML evapotranspiration \nCoronel de Maule vineyard") +
  labs(y = "ETa (mm/day)", x = "") +
  theme_minimal() +
  theme(legend.title = element_blank(),
        legend.spacing.y = unit(0, "mm"),
        panel.border = element_rect(colour = "black", fill=NA),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))



