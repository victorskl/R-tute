# https://github.com/cloudyr/aws.s3
# https://cloud.r-project.org/web/packages/aws.s3/index.html

# install.packages("aws.s3", repos = "https://cran.ms.unimelb.edu.au")

# Rscript s3.R

library("aws.s3")

bucketlist()

obj_list <- get_bucket(bucket = '1000genomes')
obj_list[1]
