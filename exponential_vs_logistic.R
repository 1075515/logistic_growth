# Script for questions 2 and 3

### Q2
#Exponential growth formula: N(t)=N0e^(rt)
#Use your estimates of N0 and r to calculate the population size at t = 4980 min, 
#assuming that the population grows exponentially: 
N0 <- 879
r <- 0.01004
K <- 6.000e+10

exponential_fun <- function(t) {
    N <- (N0*exp(r*t))
    return(N)
  }

exponential_fun(4980) #4.553712e+24

logistic_fun(4980) #6e+10
#t is large so reached carrying capacity of 6e+10 as expected

#With exponential growth this value is much larger as no carrying capacity

### Q3
# y-axis with a linear scale
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, aes(colour="Logistic")) +
  geom_function(fun=exponential_fun, aes(colour="Exponential")) + 
  scale_colour_manual(name = "Growth model",
                      breaks = c("Logistic","Exponential"),
                      values = c("Logistic"= "green","Exponential"="red")) + 
  labs(title = "Exponential vs Logistic Growth Models Over Time") 

#y-axis transformed to a logarithmic scale
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, aes(colour="Logistic")) +
  geom_function(fun=exponential_fun, aes(colour="Exponential")) + 
  scale_colour_manual(name = "Growth model",
                      breaks = c("Logistic","Exponential"),
                      values = c("Logistic"= "green","Exponential"="red")) +
  scale_y_continuous(trans='log10') + 
  labs (title = "Exponential vs Logistic Growth Models Over Time")
