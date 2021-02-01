
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ccconnectr

<!-- badges: start -->

<!-- badges: end -->

ccconnectr was created for the City Colleges of Chicago (CCC) Decision
Support team.

The goal of ccconnectr is to:

  - make connecting to CCC databases easy for R users
  - make reading in SQL files easy, directly outputting a dataframe with
    clean column names

## Installation

You can install the released version of ccconnectr from GitHub with:

``` r
remotes::install_github("whitneymichelle/ccconnectr")
```

## Example

Please note that you can only be connected to one database at a time,
and connecting to another database will automatically terminate your
connection with the other.

Connect to databases:

``` r
library(ccconnectr)

#connect to OpenBook
con_ob()

#connect to Campus Solutions
con_cs()
```

Read in SQL files:

``` r
library(ccconnectr)

file <- 'sql_file.sql'
FUN <- con_ob() or con_cs()
#specify parameter values denoted as '?' in the sql file
list <- list(paste(param), paste(param), paste(param))

#read in sql files with no unspecified parameters
read_sql(FUN, file)

#read in sql files with unspecified parameters (noted by '?' in the sql code)
read_sql_params(FUN, file, list)
```
