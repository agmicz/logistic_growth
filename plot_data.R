#Script to plot the logistic growth data

file.choose()
growth_data <- read.csv("/cloud/project/experiment1.csv")

install.packages("ggplot2")
library(ggplot2)

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

#transform graph w/ log
ggplot(aes(t,log(N)), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
