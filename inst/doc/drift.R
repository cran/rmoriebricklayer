## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)
set.seed(1)

## -----------------------------------------------------------------------------
reference <- data.frame(
  value = rnorm(500),
  size  = runif(500, 1, 10),
  grade = sample(c("a", "b", "c"), 500, TRUE),
  stringsAsFactors = FALSE
)

current <- data.frame(
  value = rnorm(500),
  size  = runif(500, 1, 10),
  grade = sample(c("a", "b", "c"), 500, TRUE),
  stringsAsFactors = FALSE
)

## -----------------------------------------------------------------------------
digest_object(reference) == digest_object(current)

## -----------------------------------------------------------------------------
capsule_drift(reference, current)

## -----------------------------------------------------------------------------
moved <- current
moved$size <- moved$size * 3
moved$grade[1:200] <- "z"

capsule_drift(reference, moved)

## -----------------------------------------------------------------------------
a <- data.frame(v = rnorm(80))
b <- data.frame(v = rnorm(80))

# Two draws from the SAME distribution.
capsule_drift(a, b)$columns[, c("p_value", "psi")]

## -----------------------------------------------------------------------------
x <- sample(c("p", "q", "r"), 300, TRUE)
y <- sample(c("p", "q", "r"), 300, TRUE)

# The homogeneity test is the more conservative, and the correct one here.
c(homogeneity = drift_homogeneity(x, y)[["p_value"]],
  goodness_of_fit = drift_chisq(y, x)[["p_value"]])

## -----------------------------------------------------------------------------
# A quantity spanning several orders of magnitude.
benford_test(10^runif(2000, 0, 6))

## -----------------------------------------------------------------------------
# Leading digits drawn uniformly -- not what measurement looks like.
benford_test(as.numeric(paste0(sample(1:9, 2000, TRUE), "000")))

## -----------------------------------------------------------------------------
schema <- infer_schema(reference)
schema

## -----------------------------------------------------------------------------
# It accepts the data it learned from.
length(validate_schema(reference, list(schema = schema)))

# And catches the rescaled column, which is now outside its pinned range.
issues <- validate_schema(moved, list(schema = schema))
issues[["range_size"]]$message

