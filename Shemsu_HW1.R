#----------------------------------------------
# DATA 101
# Homework 1: Adefoluke Shemsu
#----------------------------------------------

# Please save this script as "YOUR LAST NAME_HW1.R" and upload the script to Canvas. 
# You should also upload a word document containing your write up and graphs.
# Please type your code into the sections outlined below. 

#----------------------------------------------
# Question 1
library(tidyverse)
mpg
?mpg

ggplot(data = mpg)+
  geom_boxplot(mapping = aes(x=cyl,y=hwy,color=class))

# I think a boxplot can serve as one of the best visualization methods for drawing
# reasonable correlations between cyl and hwy mpg because it highlights in detail 
# the range of mpg across vehicle classes in a comprehensive way, thus enabling
# a viewer to clearly see that, generally, the more cylinders a car has, the
# lower the gas mileage (with consideration for averages, outliers, and standard
# deviations to inform the perspective).

#----------------------------------------------
# Question 2

ggplot(data = mpg)+
  geom_point(mapping = aes(x=cty,y=hwy,color=class))+
  geom_abline()+
  coord_fixed(ratio=1)

# coord_fixed fixes the ration of length on x and y axes. The geom_abline
# function seems to serve as another layer to the graph that indicates the slope
# and more succinctly define the relationship between x and y.

# Conclusion 1: There is a correlation between cty and hwy mileage, where
# if one is higher, the other can be surmised to be higher as well (and vice versa).

# Conclusion 2: Subcompact/compact vehicle mpg are the least consistent, given
# what I would assume has to do with the fact that those vehicles can range
# anywhere from 4-8 or more cylinders.

# Conclusion 3: It is rare that city mileage is higher than highway mileage across
# any vehicle class in the graph.

#----------------------------------------------
# Question 3

ggplot(data = mpg)+
  geom_point(mapping = aes(x=displ,y=hwy,color=drv))

# Conclusion 1: Larger engine = less hwy mpg.

# Generally speaking, FWD vehicles have the best highway 
# gas mileage, though there seems to be much more of a correlation between mpg and
# engine size for 4WD vehicles, since 4WD exists in every vehicle class. There 
# also seems to be a relationship between engine size and whether or not a vehicle 
# is RWD, implying that only certain vehicles of a particular size/class have that
# option for their drive train.