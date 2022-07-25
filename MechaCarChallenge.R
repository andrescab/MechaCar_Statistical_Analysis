
### Challenge Deliverable 1

# 3. Use the library() function to load the dplyr package
library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
MechaCar_mpg_df <- read.csv(file="C:/Users/andca/Class/MechaCar_Statistical_Analysis/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_df)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_df)) 



### Challenge Deliverable 2

#2. Import and read in the Suspension_Coil.csv file as a table
mecha_coil <- read.csv(file="C:/Users/andca/Class/MechaCar_Statistical_Analysis/Suspension_Coil.csv",check.names=F,stringsAsFactors = F) 

#3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- mecha_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Var=var(PSI), SD=sd(PSI), .groups = 'keep') 

#4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


### Challenge Deliverable 3

#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(mecha_coil$PSI,mu=1500)

#2. use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop.mean of 1,500 PSI
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

