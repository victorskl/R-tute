# R Markdown tute

- https://bookdown.org/yihui/rmarkdown/
- https://bookdown.org
- https://github.com/brentthorne/posterdown

R Console:

```
install.packages('rmarkdown')
install.packages('tinytex')
tinytex::install_tinytex()
```

Create using RStudio:

```
File > New File > R Markdown... > rstudio.Rmd
(Press Knit button)
```

Compile via R Console:

```
setwd("~/Projects/github/R-tute/Rmd")
getwd()
rmarkdown::render("basic.Rmd")
rmarkdown::render("basic.Rmd", "html_document")
rmarkdown::render("report.Rmd", "pdf_document")
```

## Related

See also [workflowr](../workflowr)
