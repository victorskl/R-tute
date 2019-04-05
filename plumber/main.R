# R code to a web API using a handful of special one-line comments
# https://www.rplumber.io/

#install.packages("plumber")

library(plumber)
setwd("~/Projects/github/R-tute/plumber")
r <- plumb("plumber.R")
r$run(port=8000)

# http://localhost:8000/plot
# http://localhost:8000/echo?msg=hello
# Running the swagger UI at http://127.0.0.1:8000/__swagger__/

# curl "http://localhost:8000/echo"
# curl "http://localhost:8000/echo?msg=hello"
# curl --data "a=4&b=3" "http://localhost:8000/sum"
