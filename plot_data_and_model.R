#Script to plot data and model
# assess the fit of the model to your data graphically 

growth_data <- read.csv("/cloud/project/experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)}


N0 <-  7.185544 #
  
r <- 0.009522 #
  
K <-   5.979e+10  #

ggplot(aes(t, N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() +

  scale_y_continuous(trans='log10')

#makes list of packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()

