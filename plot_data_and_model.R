#Script to plot data and model

growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  return(N)
}

logistic_fun(0) #Inserted when t = 0 to get N output 879
N0 <- 879 #Also found by looking at growth_data table - when t=0, N=879
  
summary(model1)
r <- 0.01004 #This is the gradient of the first model 
#Looking at summary(model1), the t value is 1.004e-02 i.e. 0.01004


summary(model2) 
K <- 6.000e+10 #This is the intercept of the second model
  #Looking at summary(model2), the intercept is 6.000e+10


ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point()

ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point() +
  scale_y_continuous(trans='log10')

