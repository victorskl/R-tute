# workflowr-tute

https://jdblischak.github.io/workflowr/

R Console:

```
setwd("~/Projects/github/R-tute/workflowr")
getwd()
install.packages("workflowr")
library("workflowr")
?workflowr
wflow_start("myproject")
wflow_start("myproject", git = FALSE)
getwd()
wflow_build()
```

Open and serve locally:

```
open myproject/docs/index.html
```


Publishing and Git workflow:

```
?wflow_publish
wflow_publish("analysis/*", "Start my new project")
wflow_publish()

?wflow_git_push
wflow_git_push()

?wflow_git_commit
```
