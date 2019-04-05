# magrittr package introduces the chaining/piping workflow
# https://github.com/tidyverse/magrittr
# https://magrittr.tidyverse.org/
#
# install.packages("magrittr")

library(magrittr)
iris %>% head()

# The infix operator %>% is not part of base R, but is in fact defined by the package magrittr
# https://stackoverflow.com/questions/24536154/what-does-mean-in-r

# iris %>% head() is equivalent to head(iris)

head(iris)

# %>% is called multiple times to "chain" functions together,

iris %>% head() %>% summary()

# iris %>% head() %>% summary() is equivalent to summary(head(iris))

summary(head(iris))
