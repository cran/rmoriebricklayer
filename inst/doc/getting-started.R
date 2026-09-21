## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## -----------------------------------------------------------------------------
library(rmoriebricklayer)
otis <- read.csv(system.file("extdata", "otis_a01_individuals.csv",
                             package = "rmoriebricklayer"))
otis

## -----------------------------------------------------------------------------
a <- analyse_table(otis, value = "individuals", period = "year",
                   by = c("table", "group"))
a

## -----------------------------------------------------------------------------
a$change[, c("table", "group", "year", "value", "previous",
             "pct_change", "pct_lower", "pct_upper", "p_adjusted",
             "significant")]

## -----------------------------------------------------------------------------
b <- analyse_table(otis, value = "individuals", period = "year",
                   by = c("table", "group"), rounding = 5)
b$change[!is.na(b$change$previous),
         c("group", "year", "pct_change", "pct_lower", "pct_upper",
           "combined_pct_lower", "combined_pct_upper")]

## -----------------------------------------------------------------------------
a$trend

## -----------------------------------------------------------------------------
drift_calibrate(otis, n = 10)

## -----------------------------------------------------------------------------
sf <- stock_flow(days = c(21900, 23725, 20440), people = c(300, 325, 280),
                 period = c(2022, 2023, 2024), t = 365)
sf

## -----------------------------------------------------------------------------
sf <- stock_flow(days = c(21900, 23725, 20440), people = c(300, 325, 280),
                 period = c(2022, 2023, 2024), t = 365)
sf

## -----------------------------------------------------------------------------
d <- use_capsule_template(tempfile("capsule-"), example = TRUE)
list.files(d)
cat(readLines(file.path(d, "analysis.R"))[1:12], sep = "\n")

