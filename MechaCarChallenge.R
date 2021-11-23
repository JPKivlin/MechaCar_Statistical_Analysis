## Install packages

install.packages('tidyverse')
library(tidyverse)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(model)


Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarise(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

sample_table <- Suspension_Coil %>% sample_n(50)
t.test(sample_table$PSI, mu=mean(Suspension_Coil$PSI))

## t.test lot by lot
SC.df <- data.frame(Suspension_Coil)
## Lot 1
Lot1 <- subset(SC.df, SC.df$Manufacturing_Lot == 'Lot1')
Lot1
t.test(Lot1$PSI,mu=mean(Suspension_Coil$PSI))

## Lot 2
Lot2 <- subset(SC.df, SC.df$Manufacturing_Lot == 'Lot2')
Lot2
t.test(Lot2$PSI,mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$Manufacturing_Lot, isTRUE('Lot2')),mu=mean(Suspension_Coil$PSI))

## Lot 3
Lot3 <- subset(SC.df, SC.df$Manufacturing_Lot == 'Lot3')
Lot3
t.test(Lot3$PSI,mu=mean(Suspension_Coil$PSI))
