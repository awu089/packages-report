#'---
#'output: github_document
#'---

#' Which libraries does R search for packages?

# try .libPaths(), .Library
.libPaths()
.Library

library(dplyr)
library(tidyverse)

#' Installed packages

## use installed.packages() to get all installed packages
## if you like working with data frame or tibble, make it so right away!
allpackages <- installed.packages() %>% as.tibble()
## remember to use View(), dplyr::glimpse(), or similar to inspect
View(allpackages)

## how many packages?
nrow(allpackages)
#235

#' Exploring the packages

## count some things! inspiration
library(tidyverse)
##   * tabulate by LibPath, Priority, or both
allpackages %>% count(Priority) %>% arrange(desc(n))
allpackages %>% count(Priority, LibPath) %>% arrange(desc(n))

##   * what proportion need compilation?
#allpackages %>% group_by(NeedsCompilation) %>% summarize(proportion = n()/nrow(.)) %>% arrange(desc(proportion))
allpackages %>% count(NeedsCompilation) %>% mutate(prop = n/sum(n))  

##   * how break down re: version of R they were built on
allpackages %>% count(Built) %>% arrange(desc(n))

## for tidyverts, here are some useful patterns
# data %>% count(var)
# data %>% count(var1, var2)
# data %>% count(var) %>% mutate(prop = n / sum(n))

#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
#Yes, that's all the default
##   * how does the result of .libPaths() relate to the result of .Library?
# different folder?

#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
# no most aren't
## study package naming style (all lower case, contains '.', etc)
# varied - some camel, some lower, 
## use `fields` argument to installed.packages() to get more info and use it!
