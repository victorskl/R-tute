# https://github.com/cloudyr/aws.lambda
# https://cran.r-project.org/web/packages/aws.lambda/index.html

# install.packages("aws.lambda", repos = "https://cran.ms.unimelb.edu.au")

# Rscript lambda.R

library("aws.lambda")

# funclist <- sapply(list_functions(region="ap-southeast-2"), get_function_name)
# funclist

# export MY_FUNC=my-aws-lambda-function-name
my_func <- Sys.getenv("MY_FUNC")
my_func

# export MY_PAYLOAD=gds://volume/path/to/my/fastqs
my_payload <- Sys.getenv("MY_PAYLOAD")
my_payload

# get_function(my_func, region="ap-southeast-2")

aws.lambda::invoke_function(
  my_func, 
  region="ap-southeast-2", 
  payload=list(gds_path=my_payload)
)
