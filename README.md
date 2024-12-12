1. More detailed information about the analysis:

This analysis uses the logistic growth model to examine the growth of an isolate of the bacterium Escherichia coli grown in a test tube. During the analysis, the dataset used was the experiment.csv file, which contains values for time (t) and population size (N). The growth reflected a logistic growth pattern, whereby there was rapid initial growth, then decreasing growth as resources were depleted with a final plateau phase as the bacterial population reached its carrying capacity (K). 

Linear approximation methods were used to estimate the parameters of the logistic growth model (N0, r, and K). 
Two models were used: model 1 and model 2. 
For model 1, the data was subsetted in the early growth phase where t<1000. When K is much larger than N0 and t is small, the population growth is approximately exponential. A regression equation was established with a logarithmic transformation of N to linearise this exponential rowth. This was used to find the growth rate (r). For model 2, the data was subsetted in the later phase after the carrying capacity had been reached where t>3000. 

Results: 
•	Initial population size (N0): 879
•	Growth rate (r): 1.004 × 10^−2 (the gradient from summary(model1))
•	Carrying capacity (K): 6.000 x 10^10

2. (10 points) Use your estimates of N0 and r to calculate the population
size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?
3. (20 points) Add an R script to your repository that makes a graph
comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the README.md file so it can be viewed in the repo homepag
