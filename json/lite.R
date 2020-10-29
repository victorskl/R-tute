# https://cran.r-project.org/web/packages/jsonlite/index.html
# https://cran.r-project.org/web/packages/jsonlite/jsonlite.pdf
# https://cran.r-project.org/web/packages/jsonlite/vignettes/json-aaquickstart.html

# install.packages("dplyr", repos = "https://cran.ms.unimelb.edu.au")
# install.packages("jsonlite", repos = "https://cran.ms.unimelb.edu.au")

# Rscript lite.R

library(dplyr)
library(jsonlite)

my_df <- fromJSON("./mock.json")
my_df

my_df$fastq_map$SAMPLE_NAME1$fastq_list

r1 <- my_df$fastq_map$SAMPLE_NAME1$fastq_list[1]
r1

r2 <- my_df$fastq_map$SAMPLE_NAME1$fastq_list[2]
r2
