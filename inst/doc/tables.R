## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## -----------------------------------------------------------------------------
bands <- parse_bands(c("1", "2 to 5", "6 to 10", "Greater than 10"))
bands

## -----------------------------------------------------------------------------
band_values(bands)

## -----------------------------------------------------------------------------
counts <- c(1200, 430, 110, 38)
band_sensitivity(bands, counts)

## -----------------------------------------------------------------------------
placements <- expand_bands(bands, counts, open_upper_cap = 25)
gini(placements)
top_share(placements, c(0.01, 0.05, 0.1))

## -----------------------------------------------------------------------------
c(ten = 1 - 1 / 10, thousand = 1 - 1 / 1000)

## -----------------------------------------------------------------------------
fit <- hill_tail_index(placements, x_min = 1)
c(alpha = round(fit$alpha, 2), ks = round(fit$ks, 3),
  reliable = fit$reliable)

## -----------------------------------------------------------------------------
y <- c(402, 377, 190, 268, 331)
tt <- trend_test(y)
c(tau = tt$tau, p = round(tt$p_value, 4), slope = tt$slope)
tt$method

## -----------------------------------------------------------------------------
ct <- count_trend(y)
c(rate_ratio = round(ct$rate_ratio, 3),
  lower = round(ct$lower, 3), upper = round(ct$upper, 3),
  dispersion = round(ct$dispersion, 2))

## -----------------------------------------------------------------------------
sc <- step_change(c(100, 104, 98, 60, 63, 58), x = 2018:2023)
c(after = sc$break_after, before = sc$before, after_mean = sc$after,
  p = round(sc$p_value, 4))

## -----------------------------------------------------------------------------
(1 + 2 * factorial(3)^2) / (1 + factorial(6))

## -----------------------------------------------------------------------------
cw <- data.frame(
  facility = c("North Jail", "South Jail", "Hill Jail", "Lake Jail"),
  region   = c("3557", "3520", "3553", "3520"),
  stringsAsFactors = FALSE
)
pop <- data.frame(
  region     = c("3557", "3520", "3553", "3552", "3519"),
  population = c(114094, 3025647, 171568, 22746, 1173334),
  stringsAsFactors = FALSE
)

## -----------------------------------------------------------------------------
region_map_integrity(cw, "facility", "region", regions = pop$region)

## -----------------------------------------------------------------------------
bad <- cw
bad$region[3] <- "2406"          # a code from another province
region_map_integrity(bad, "facility", "region", regions = pop$region)

## -----------------------------------------------------------------------------
recomputed <- cw
recomputed$region[2] <- "3519"
region_map_compare(cw, recomputed, "facility")

## -----------------------------------------------------------------------------
route <- c("North Jail" = "3557", "South Jail" = "3520",
           "Hill Jail" = "3552", "Lake Jail" = "3520")
region_map_second_route(cw, "facility", "region", route,
                       known = "Hill Jail")

## -----------------------------------------------------------------------------
route["South Jail"] <- "3599"    # an assignment nobody documented
d <- region_map_second_route(cw, "facility", "region", route,
                            known = "Hill Jail")
d
sum(!d$known)

## -----------------------------------------------------------------------------
length(route)

## -----------------------------------------------------------------------------
units <- vapply(pop$region, function(r) sum(cw$region == r), numeric(1))
cov <- region_coverage(pop$region, pop$population, units)
cov

## -----------------------------------------------------------------------------
a <- attr(cov, "coverage")
c(covered = a$covered_population, uncovered = a$uncovered_population,
  share = round(a$covered_share, 1))

## -----------------------------------------------------------------------------
d <- expand.grid(
  region = c("Central", "Eastern", "Northern", "Toronto", "Western"),
  age = c("18 to 24", "25 to 49", "50+"),
  stringsAsFactors = FALSE
)
d$pop <- rep(c(4000, 3000, 800, 5000, 2500), 3) *
  rep(c(0.3, 0.55, 0.15), each = 5)
set.seed(13)
rate <- c(Central = 0.006, Eastern = 0.011, Northern = 0.010,
          Toronto = 0.016, Western = 0.012)
d$n <- rpois(nrow(d), lambda = d$pop * rate[d$region])

## -----------------------------------------------------------------------------
e <- expected_counts(d$n, d$pop, d$region, strata = d$age)
e

## -----------------------------------------------------------------------------
c(observed = sum(e$observed), expected = sum(e$expected))

## -----------------------------------------------------------------------------
sir(e$observed, e$expected, e$area)

## -----------------------------------------------------------------------------
eb_rates(e$observed, e$expected, e$area)

## -----------------------------------------------------------------------------
funnel_limits(c(5, 20, 50, 200))

## -----------------------------------------------------------------------------
nb <- list(c(2L, 4L), c(1L, 3L), c(2L, 5L), c(1L, 5L), c(3L, 4L))
set.seed(1)
mi <- morans_i(e$observed / e$expected, nb, n_perm = 999L)
c(I = round(mi$I, 3), expectation = round(mi$expectation, 3),
  p = mi$p_value)

## -----------------------------------------------------------------------------
-1 / (5 - 1)

