#!/usr/bin/env RScript

library(rmarkdown)

output_dir <- "./output"

render("./src/basic.Rmd", "html_document", output_dir = output_dir)
render("./src/rstudio.Rmd", "html_document", output_dir = output_dir)
render("./src/report.Rmd", "pdf_document", output_dir = output_dir)

# Usage:
#   Rscript build.R

# More:
# https://community.rstudio.com/t/is-it-possible-to-save-the-html-output-in-a-directory-which-is-not-the-one-where-the-rmd-file-resides/3588
