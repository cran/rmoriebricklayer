## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)
set.seed(1)

## -----------------------------------------------------------------------------
reference <- data.frame(
  id = 1:300,
  score = stats::runif(300, 0, 10),
  grade = sample(c("a", "b", "c"), 300, TRUE),
  stringsAsFactors = FALSE
)

fresh <- reference
fresh$score <- stats::runif(300, 0, 10)

capsule_report(fresh, reference = reference,
               schema = infer_schema(reference))

## -----------------------------------------------------------------------------
broken <- fresh
broken$score <- broken$score * 5
broken$grade[1:100] <- "z"
broken$dead <- NA_real_
broken$flat <- 7

report <- capsule_report(broken, reference = reference,
                         schema = infer_schema(reference))
report

## -----------------------------------------------------------------------------
report$verdict
summary(report)

## -----------------------------------------------------------------------------
cat(head(report_markdown(report), 12), sep = "\n")

## -----------------------------------------------------------------------------
messy <- data.frame(
  clean = stats::rnorm(200),
  bimodal = c(stats::rnorm(100, -3), stats::rnorm(100, 3)),
  skewed = c(stats::rexp(199), 500),
  zeros = c(rep(0, 50), stats::runif(150))
)
profile_columns(messy)[, c("column", "mean", "median", "sd", "mad")]

## -----------------------------------------------------------------------------
profile_columns(messy)[, c("column", "hist")]

## -----------------------------------------------------------------------------
structural <- data.frame(
  id = 1:20,
  a = c(rep(NA, 6), 7:20),
  b = c(rep(NA, 6), 7:20)
)
scattered <- data.frame(
  id = 1:20,
  a = c(rep(NA, 6), 7:20),
  b = c(1:14, rep(NA, 6))
)

c(structural = sum(is.na(structural$a)), scattered = sum(is.na(scattered$a)))

## -----------------------------------------------------------------------------
missingness_pattern(structural)

## -----------------------------------------------------------------------------
missingness_pattern(scattered)

## -----------------------------------------------------------------------------
missing_runs(data.frame(
  outage = c(1, 2, rep(NA, 8), 11:20),
  sporadic = c(1, NA, 3, NA, 5, NA, 7:20)
), min_run = 2)

## -----------------------------------------------------------------------------
gappy <- data.frame(
  complete = 1:100,
  early = c(rep(NA, 30), 31:100),
  random = ifelse(stats::runif(100) < 0.3, NA, 1),
  late = c(1:70, rep(NA, 30))
)
missingness_map(gappy, height = 10)

## -----------------------------------------------------------------------------
n <- 400
x <- stats::rnorm(n)
y <- x + stats::rnorm(n)

# Missing on a coin flip: nothing to find.
mcar <- data.frame(x = x, y = y)
mcar$y[sample(n, 120)] <- NA
mcar_test(mcar)

## -----------------------------------------------------------------------------
# Missing whenever x is large: the complete cases are a biased sample,
# and that is detectable because the pattern's mean of x is shifted.
mar <- data.frame(x = x, y = y)
mar$y[x > 0.4] <- NA
mcar_test(mar)

## -----------------------------------------------------------------------------
people <- data.frame(height_cm = stats::rnorm(300, 170, 10))
people$weight_kg <- people$height_cm * 0.5 + stats::rnorm(300, 0, 5)

# Inside both marginal ranges, outside the cloud.
people[1, ] <- list(height_cm = 150, weight_kg = 140)

range(people$height_cm)
range(people$weight_kg)

## -----------------------------------------------------------------------------
head(mahalanobis_outliers(people), 3)

## -----------------------------------------------------------------------------
many <- people
many[1:8, ] <- list(height_cm = rep(150, 8), weight_kg = rep(140, 8))

c(robust = mahalanobis_outliers(many, robust = TRUE)$distance[1],
  classical = mahalanobis_outliers(many, robust = FALSE)$distance[1])

## -----------------------------------------------------------------------------
benford_test(10^stats::runif(2000, 0, 6))

## -----------------------------------------------------------------------------
benford_test(as.numeric(paste0(sample(1:9, 2000, TRUE), "000")))

