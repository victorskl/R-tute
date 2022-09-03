# R Package

Packaging functions implemented in R as software library

### RStudio
```
File > New Project > New Directory > R Package > ...

Type: Package
Package Name: rpkgboiler
```

### devtools

- https://ourcodingclub.github.io/tutorials/writing-r-package/
- https://r-pkgs.org/

```
R
> install.packages("devtools")
> install.packages("roxygen2")
> q()
```

#### creating skel

```
mkdir -p TempConverter/R
touch TempConverter/R/temp_conversion.R
touch TempConverter/DESCRIPTION
cd TempConverter
```

#### local dev

```
R
> getwd()
> library(devtools)
> load_all(".")
ℹ Loading TempConverter

> F_to_C(79);
[1] 26.11111

> C_to_F(20);
[1] 68
```

You can also install the package locally as follows:

```
R
> library(devtools)
> devtools::install(".")
```


#### man doc

```
> library(roxygen2);
> roxygenise();
First time using roxygen2. Upgrading automatically...
Setting `RoxygenNote` to "7.2.1"
ℹ Loading TempConverter
Writing NAMESPACE
Writing NAMESPACE
Writing F_to_C.Rd
Writing C_to_F.Rd
Warning message:
roxygen2 requires Encoding: "UTF-8"
ℹ Current encoding is NA
> ?F_to_C;
ℹ Rendering development documentation for "F_to_C"
```

#### github

```
R
> library(devtools)
> install_github("victorskl/R-tute/packages/TempConverter");
```

```
R
> library(remotes)
> remotes::install_github("victorskl/R-tute/packages/TempConverter")
```

#### Building a source package

- building a source package i.e., a zipped version of the R package

```
RStudio > Build > Build Source Package
```
