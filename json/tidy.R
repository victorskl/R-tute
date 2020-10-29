# https://cran.r-project.org/web/packages/tidyjson/vignettes/introduction-to-tidyjson.html

# install.packages("dplyr", repos = "https://cran.ms.unimelb.edu.au")
# install.packages("tidyjson", repos = "https://cran.ms.unimelb.edu.au")

# Rscript tidy.R

library(dplyr)
library(tidyjson)

people <- c('{"age": 32, "name": {"first": "Bob",   "last": "Smith"}}',
            '{"age": 54, "name": {"first": "Susan", "last": "Doe"}}',
            '{"age": 18, "name": {"first": "Ann",   "last": "Jones"}}')

people %>% spread_all

# help(select)

my_df <- spread_all(people)
select(my_df, document.id, age)

# To make JSON one liner. But read_json() work with pretty format, anyway.
#     jq -c . mock.json > mock.jsonl

my_mock <- read_json("./mock.json")
my_mock %>% spread_all
my_mock %>% spread_all %>% select(gds_path)

# Nested
my_mock %>% enter_object(fastq_map) %>% gather_object

my_mock %>% 
  enter_object(fastq_map) %>% 
  enter_object(SAMPLE_NAME1) %>% 
  enter_object(fastq_list) %>% 
  gather_array
