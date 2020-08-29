# R Markdown tute

- https://bookdown.org/yihui/rmarkdown/
- https://bookdown.org
- https://github.com/brentthorne/posterdown
- https://pandoc.org

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
rmarkdown::render("src/basic.Rmd")
rmarkdown::render("src/basic.Rmd", "html_document")
rmarkdown::render("src/report.Rmd", "pdf_document")
```

Build script:

```
Rscript build.R
```

## Related

See also [workflowr](../workflowr)
