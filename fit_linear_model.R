#Script to estimate the model parameters using a linear approximation

install.packages("dplyr")
library(dplyr)

growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small

summary(model1) 

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>3000)
model2 <- lm(N ~ 1, data_subset2)
summary(model2)
