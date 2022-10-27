library(tidyverse)

#Deliverable 1
mechacar_mpg_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
ground_clearance + AWD, data=mechacar_mpg_data)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
ground_clearance + AWD, data=mechacar_mpg_data))


#Deliverable 2
suspension_coil_data = read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% 
summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


#Deliverable 3
t.test(suspension_coil_data$PSI,mu=1500)

t.test(PSI ~ 1,mu=1500,data=suspension_coil_data,subset=Manufacturing_Lot == "Lot1")
t.test(PSI ~ 1,mu=1500,data=suspension_coil_data,subset=Manufacturing_Lot == "Lot2")
t.test(PSI ~ 1,mu=1500,data=suspension_coil_data,subset=Manufacturing_Lot == "Lot3")
