# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Based upon the coefficients calculated using the linear regression [LM Screenshot](deliverable1.png) 3 variables provide a non-random amount of variance.  Those variables are:
 - Vehicle Length (strong correlation)
 - Ground Clearance (strong correlation)
 - AWD (strong correlation)

 No the slope of the inear model is not 0.  This is due to the strong correlations mentioned above.

 No.  2 items that should have a strong correlation (spoiler angle and weight) have no correlation to mpg, which is counterintuitive to common sense.

## Summary Statistics on Suspension Coils

After performing the analysis and generating the below screenshot [Lot_Summary](deliverable2.png), it is clear that lot 3 does not meet the required manufacturing specification of variance below 100.

## T-Tests on Suspension Coils
 - 3 T-Tests were performed on each manufacturing lot per the code shown here  [T-Test by Lot](deliverable3.png)
 - These are the 3 t-test results [Lot1](lot1_d3.png), [Lot2](lot2_d3.png), [Lot3](lot3_d3.png)
 - Based on these results Lot2 is statistically different from the population mean

## Study Design: MechaCar vs Competition

A future study using the statistical test "ANOVA" would be recommended to explore next.  Using the population mean of the market in comparison to the sample mean of MechaCar in conjunction with the ANOVA statistical test would test whether there is a statiscal difference between the different lots and the population mean.  The alternative hypothesis is that there is a correlation between vehicale length and cost.  The data that could be used would be similar to the coil suspension data in that several different car makes could be compared to the mechacar data as while is cost.  Cost would need to also be added to the data set.