renaming\_file.R
================
Alan
Mon Jan 27 19:31:05 2020

Which libraries does R search for packages?

``` r
#bloo
```

Installed packages;;;

``` r
## use installed.packages() to get all installed packages

## how many packages?
#View(allpackages)
235
```

    ## [1] 235

Exploring the packages

``` r
## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on
```

Reflections

``` r
## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?
```

Going further

``` r
## if you have time to do more ...

## is every package in .Library either base or recommended?
## study package naming style (all lower case, contains '.', etc
## use `fields` argument to installed.packages() to get more info and use it!
```
