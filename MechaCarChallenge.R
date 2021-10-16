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
t.test(subset(Suspension_Coil$Manufacturing_Lot, isTRUE('Lot1')),mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$Manufacturing_Lot, isTRUE('Lot2')),mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$Manufacturing_Lot, isTRUE('Lot3')),mu=mean(Suspension_Coil$PSI))