# Script for questions 2 and 3

### Q2
#Use your estimates of N0 and r to calculate the population size at t = 4980 min, 
#assuming that the population grows exponentially: 
N0 <- 879
r <- 0.01004
K <- 6.000e+10

exponential_fun <- function(t) {
    N <- (N0*exp(r*t)) #Exponential growth formula: N(t)=N0e^(rt)
    return(N)
  }

exponential_fun(4980) #4.553712e+24 = 4.553712×10^24

#Under the logistic growth model, when t = 4980, N = ?
logistic_fun(4980) #6e+10 = 6×10^10

### Q3
# Y-axis with a linear scale
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, aes(colour="Logistic")) +
  geom_function(fun=exponential_fun, aes(colour="Exponential")) + 
  scale_colour_manual(name = "Growth model",
                      breaks = c("Exponential","Logistic"),
                      values = c("Exponential"= "blue","Logistic"="red")) +
  theme_bw() + 
  labs(title = "Comparing Exponential and Logistic Growth Models Over Time") 

# Y-axis transformed to a logarithmic scale
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, aes(colour="Logistic")) +
  geom_function(fun=exponential_fun, aes(colour="Exponential")) + 
  scale_colour_manual(name = "Growth model",
                      breaks = c("Exponential","Logistic"),
                      values = c("Exponential"= "blue","Logistic"="red")) +
  theme_bw() + 
  scale_y_continuous(trans='log10') + 
  labs (title = "Comparing Exponential and Logistic Growth Models Over Time", x="Time (min)", y= "Log10(N)")
