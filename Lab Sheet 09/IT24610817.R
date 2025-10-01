getwd()
setwd("C:\\Users\\Rusandi\\Desktop\\IT24610817")

#1
#i
set.seed(123)
baking_times <- rnorm (25, mean = 45, sd =2)
baking_times

#ii
t.test (baking_times, 
        mu = 46, 
        alternative = "less",
        conf.level = 0.95)