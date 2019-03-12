# Discrete Event Simulation (DES) using R and Simmer library
#
# YouTube     : https://www.youtube.com/watch?v=Qe1NvHJcmZs
# Entities    : is an object. Person, Car, Train, so on. They interact each other, e.g. competing for resources.
# Attributes  : are variables that pertain to individual Entity.
# Resource    : server or sink?... e.g. an ATM that serve individual person.
# Queue       : a queue is the list that an entity enters if a resource is occupied. e.g. FIFO, LIFO, HVF, so on.
# Event       : any change in the state of the system. e.g. entity is created, entity competes with another entity, entity leaves the system.
#
# https://r-simmer.org/
# https://r-simmer.org/extensions/plot/

#install.packages("simmer", dependencies = T)
#install.packages("simmer.plot")
#vignette(package = "simmer.plot")

# setup outpatient clinic environment
library(simmer)
library(simmer.plot)
env <- simmer("outpatient clinic")
env

# setup patient trajectory i.e. path or graph
# +---+    +---+    +---+
# | N + -> + D + -> + A |
# +---+    +---+    +---+
patient <- trajectory("patients' path") %>%
  
  # first, node N
  seize("nurse", 1) %>% # patient seize 1 nurse
  timeout(function() rnorm(1, 15)) %>% # activity time delay, mean = 15 minutes, normal distribution
  release("nurse", 1) %>% # patient release the resource, and continue the system
  
  # next, node D
  seize("doctor", 1) %>%
  timeout(function() rnorm(1, 20)) %>%
  release("doctor", 1) %>%
  
  # final, node A
  seize("admin", 1) %>%
  timeout(function() rnorm(1, 5)) %>%
  release("admin", 1)

# add resources to outpatient clinic environment  
env %>%
  
  # model current status as 2 nurses, 3 doctors, 2 admin staffs
  add_resource("nurse", 2) %>% # parameter tuning, increase from 2 to 3
  add_resource("doctor", 3) %>% # parameter tuning, increase from 3 to 4
  add_resource("admin", 2) %>%
  
  # add generator for rate of arrival for patient
  add_generator("patient", patient, function() rnorm(1, 5, 0.5)) # inter-arrival time, mean = 5 minutes, normal distribution
  
env %>% run(until=540) # run simulation for 9 hours or 540 minutes, working hour 8am till 5pm

# note: 
# inter-arrival time (IAT) = time between arrival of patient follows normal distribution

# plot simulation results
plot(env, what = "resources", metric = "usage", c("nurse", "doctor", "admin"), items = c("server", "queue"))
#plot(env, what = "arrivals", metric = "waiting_time")


