# R code to a web API using a handful of special one-line comments
# https://www.rplumber.io/

#install.packages("plumber")

library(plumber)
setwd("~/Projects/github/R-tute/plumber")
r <- plumb("plumber.R")
r$run(port=8000)

# Start:
# Rscript main.R 

# http://localhost:8000/plot
# http://localhost:8000/echo?msg=hello

# curl -s "http://localhost:8000/echo" | jq
# curl -s "http://localhost:8000/echo?msg=hello" | jq
# curl -s --data "a=4&b=3" "http://localhost:8000/sum" | jq
