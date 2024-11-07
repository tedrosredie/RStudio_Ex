# EDA using R with diamonds dataset
library(tidyverse)

# Load the diamonds dataset
data("diamonds")

# Get dataset dimensions
dim(diamonds)

# Summary statistics of the dataset
summary(diamonds)

# Correlation matrix of number variables
round(cor(diamonds[c('carat', 'depth', 'table', 'price', 'x', 'y', 'z')]), 2)

#Histogram of diamond prices
ggplot(data=diamonds, aes(x=price)) +
  geom_histogram(fill="steelblue", color="black") +
  ggtitle("Histogram of Diamond Prices")

# Scatterplot of carat vs price, colored by cut
ggplot(data = diamonds, aes(x=cut, y=price)) +
  geom_point(alpha=0.5) +
  ggtitle ("Diamond Price vs. Carat by Cut")

# Boxplot of price by cut
ggplot (data= diamonds, aes(x = cut, y = price)) +
  geom_boxplot(fill = "steelblue") +
  ggtitle(" Diamond Price Distribution by Cut")
