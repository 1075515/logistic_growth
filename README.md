1) This analysis uses the logistic growth model to examine the growth of an isolate of the bacterium Escherichia coli grown in a test tube. During the analysis, the dataset used was the **experiment.csv** file, which contains values for time (t) and population size (N). The growth reflected a logistic growth pattern, whereby there was rapid initial growth, then decreasing growth as resources were depleted with a final plateau phase as the bacterial population reached its carrying capacity (K). Linear approximation methods were used to estimate the parameters of the logistic growth model (N0, r, and K). Two models were used: model 1 and model 2. For model 1, the data was subsetted in the early growth phase where t<1000. When K is much larger than N0 and t is small, the population growth is approximately exponential. A regression equation was established with a logarithmic transformation of N to linearise this exponential growth. This was used to find the growth rate (r). For model 2, the data was subsetted in the later phase after the carrying capacity had been reached where t>3000. When t is large, the population size remains constant as it has reached the carrying capacity (K). A regression equation was established without any logarithmic transformation and this was used to find the carrying capacity (K).

   Results: 
     - Initial population size (N0): 879
     - Growth rate (r): 1.004 × 10^−2 (the gradient from summary(model1))
     - Carrying capacity (K): 6.000 x 10^10 (the intercept from summary(model2))

2) SEE EXPONENTIAL_LOGISTIC_COMPARISON FILE (ADD LINK HERE)

   Using the estimates of N0 and r, the population size at t=4980 min was found to be 4.553712×10^24, assuming the population grows exponentially. At the same time point, under logistic growth, the population size is predicted to be 6×10^10. The population size under exponential growth is larger than under logistic growth, as expected. As t is large, under the logistic growth model the carrying capacity of 6×10^10 has been reached, whereas with exponential growth the population size is much larger as there is no carrying capacity in this growth model. 

4) SEE EXPONENTIAL_LOGISTIC_COMPARISON FILE (ADD LINK HERE) This graph compares the exponential and logistic growth curves (using the same parameter estimates from above):

  ![exponential_logistic_comparison_plot](https://github.com/user-attachments/assets/e6bef9a0-cc13-498d-871c-33f7eedf4bc2)

 _(A preliminary plot was also made without the y-axis transformed to a logarithmic scale, it can be found in the R script)_
