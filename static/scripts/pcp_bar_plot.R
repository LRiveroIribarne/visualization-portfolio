# Load the necessary libraries
#install.packages("ggplot2")
library(ggplot2)

# Read the CSV file
data <- read.csv("static/data/pcp/coronel_de_maule_yearly_pcp.csv")

# Plot the bar chart
ggplot(data, aes(x = as.factor(year), y = pcp_mm)) +
  geom_bar(stat = "identity", fill="steelblue") +
  labs(x = "Year", y = "Precipitation (mm)", title = "Yearly Precipitation Coronel de Maule") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5), axis.text.x = element_text(angle = 45))


# Save the plot as a PNG file
ggsave("static/results/precipitation_plot.png")
