#checks if the pacman package is installed, and if not will install it
if (!require("pacman")) install.packages("pacman")

#pacman has already been installed so nothing happens in the console

#loads in more packages with pacman
pacman::p_load(pacman, party, psych, rio, tidyverse)

#loads in default packages
library(datasets)



#imports AAPL stock data as .csv under "apple"
(apple <- read_csv("desktop/aapl/AAPL.csv"))

#plotting
#plots - bar chart
barplot(apple$Volume)

#plots - histogram
hist(apple$Volume)

#plots - scatter plot using piping
apple %>%
  select(Year:Volume) %>%
  plot()

#plots - advanced histogram
hist(apple,
     main = "Histogram for AAPL Stock Volume",
     xlab = "Years",
     border = NA,
     col = "green",
     xlim = c(2010,2020),
)

#plots - line charts
plot.ts(apple)
ts.plot(apple)

#plots - linear regression
lm(apple$Year ~ apple$Volume) %>% abline()
#horizontal line is the linear regression line for the above graph



#clears environment
rm(list = ls())
#clears plots
dev.off()
#removes all add-ons

