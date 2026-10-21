## ----setup, include = FALSE---------------------------------------------------
# the vignette runs in full in GitHub CI and for the package tarball (NOT_CRAN), on r-universe
# (MY_UNIVERSE), on the package website (IN_PKGDOWN) and in an interactive session; when CRAN
# re-builds it in its check, none of these is set and only this chunk runs
if (!interactive() && !any(nzchar(Sys.getenv(c("NOT_CRAN", "MY_UNIVERSE", "IN_PKGDOWN"))))) {
  knitr::knit_exit()
}

## ----survey-estimation-setup, include = FALSE---------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 7, fig.height = 4, dpi = 72)
library(rmoriebricklayer)

## ----survey-estimation-design-------------------------------------------------
set.seed(1)
n <- 600
d <- data.frame(region = sample(c("north", "south", "east"), n, replace = TRUE),
                age = sample(c("15-24", "25-49", "50+"), n, replace = TRUE),
                used = rbinom(n, 1, 0.3), drinks = rpois(n, 3), w = runif(n, 40, 160))
# a stratified design: variance by linearization
lin <- svydes(d, w = "w", strata = "region")
lin
# a replicate design: 200 bootstrap weights, made here by resampling within region
reps <- sapply(1:200, function(r) {
  m <- numeric(n)
  for (g in unique(d$region)) {
    i <- which(d$region == g)
    m[i] <- tabulate(sample(length(i), replace = TRUE), length(i)) * length(i) / (length(i) - 1)
  }
  d$w * m
})
repdes <- svydes(d, w = "w", reps = reps, type = "bootstrap")
repdes

## ----survey-estimation-estimate-----------------------------------------------
e <- svyest(repdes, d, "used", by = "age", stat = "proportion", lvls = "1")
e
plot(e)
svyest(lin, d, "drinks", by = "region")

## ----survey-estimation-compare------------------------------------------------
cmp <- svycmp(repdes, d, "used", by = "region", stat = "proportion", lvls = "1",
                      ref = "north")
cmp
plot(cmp)

## ----survey-estimation-csus, eval = FALSE-------------------------------------
# a <- dload("csus_2023/pumf")        # 36,180 respondents
# b <- dload("csus_2023/bootstrap")   # PUMF_ID, WGT_PUMF and BWGT1 ... BWGT1000

## ----survey-estimation-csus-open, eval = FALSE--------------------------------
# src <- "https://open.canada.ca/data/dataset/65e2d45e-efc6-4c29-9a9b-db59bc96aa0e/resource"
# pumf <- file.path(tempdir(), "csus2023_pumf_final.csv")
# bwt <- file.path(tempdir(), "csus2023_pumf_bwt.csv")
# bldl(paste0(src, "/c2c1795b-4501-49ba-9dd1-5b8360cc3b2e/download/",
#                            "csus2023_pumf_final.csv"), pumf)
# bldl(paste0(src, "/7d19d47a-5f42-4447-b735-aa4d677ad5ed/download/",
#                            "csus2023_pumf_bwt.csv"), bwt)
# a <- utils::read.csv(pumf)
# b <- utils::read.csv(bwt)
# # With rmorie installed, the same two files come from
# # rmorie::morie_load_dataset() with the keys "cu23mf" and "cu23bt".

## ----survey-estimation-csus-estimate, eval = FALSE----------------------------
# a$can <- ifelse(a$CAN_Q01 < 0, NA, a$CAN_Q01)   # -8: not stated
# des <- svydes(a, w = "WGT_PUMF", reps = b, id = "PUMF_ID",
#                      type = "meanboot", msize = 12)
# svyest(des, a, "can", stat = "proportion", lvls = c("1", "2"))

## ----survey-estimation-published-only-----------------------------------------
h <- indiex("health")
mh <- h[h$period == "2019/2022" & h$age == "Total, 18 years and over" &
          h$indicator == "Perceived mental health, very good or excellent", ]
indgap(mh, "group", "estimate", "lower", "upper", qual = "quality")[
  , c("group", "difference", "diflo", "difup")]
dstntst(mh[mh$group != "Non-Indigenous", ], "group", "estimate", "lower", "upper")

## ----survey-estimation-agree--------------------------------------------------
rbind(linearization = svyest(lin, d, "drinks")[, c("estimate", "se")],
      bootstrap = svyest(repdes, d, "drinks")[, c("estimate", "se")])

## ----causal-effects-setup, include = FALSE------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----causal-effects-sim-------------------------------------------------------
set.seed(42)
n <- 2000
sim <- data.frame(x1 = rnorm(n), x2 = rnorm(n))
sim$d <- rbinom(n, 1, plogis(1.5 * sim$x1))
sim$y <- 2 * sim$d + 3 * sim$x1 + sim$x2 + rnorm(n)
mean(sim$y[sim$d == 1]) - mean(sim$y[sim$d == 0])   # biased by x1
fit <- plrcf(sim, "y", "d", c("x1", "x2"))
fit$ate
fit$ate + c(-1.96, 1.96) * fit$se

## ----causal-effects-nsw-load, eval = FALSE------------------------------------
# tr <- dload("nsw_dw/treated")
# ct <- dload("nsw_dw/control")
# ps <- dload("nsw_dw/psid_controls")

## ----causal-effects-nsw-open, eval = FALSE------------------------------------
# cols <- c("treat", "age", "educ", "black", "hisp", "married", "nodegree", "re74", "re75", "re78")
# nber <- function(f) {
#   dest <- file.path(tempdir(), f)
#   bldl(paste0("https://users.nber.org/~rdehejia/data/", f), dest)
#   stats::setNames(utils::read.table(dest), cols)
# }
# tr <- nber("nswre74_treated.txt")
# ct <- nber("nswre74_control.txt")
# ps <- nber("psid_controls.txt")

## ----causal-effects-nsw-fit, eval = FALSE-------------------------------------
# x <- c("age", "educ", "black", "hisp", "married", "nodegree", "re74", "re75")
# exp <- rbind(tr, ct)
# obs <- rbind(tr, ps)
# mean(tr$re78) - mean(ct$re78)                 # the experiment
# mean(tr$re78) - mean(ps$re78)                 # treated against the PSID, unadjusted
# plrcf(exp, "re78", "treat", x)
# plrcf(obs, "re78", "treat", x)
# plrcf(obs, "re78", "treat", x, kfol = 10, seed = 2)

## ----causal-effects-overlap-balance-------------------------------------------
set.seed(7)
n <- 1500
d <- data.frame(age = runif(n, 18, 70), income = rnorm(n))
d$t <- rbinom(n, 1, plogis(-2 + 0.04 * d$age + 0.5 * d$income))
d$y <- 10 + 3 * d$t + 0.2 * d$age + d$income + rnorm(n)
fit <- aipwcf(d, "y", "t", c("age", "income"), lrn = "ols")
fit
plot(fit)
plot(fit, type = "estimate")
pr <- attr(fit, "propensity")
e <- pmin(pmax(pr$propensity, 0.01), 0.99)
d$ipw <- ifelse(d$t == 1, 1 / e, 1 / (1 - e))
plot(baltab(d, "t", c("age", "income")),
     after = baltab(d, "t", c("age", "income"), w = "ipw"))

## ----causal-effects-indigenous-causal-----------------------------------------
hi <- indiex("health")
x <- hi[hi$period == "2019/2022" & hi$age == "Total, 18 years and over" &
          hi$indicator == "Perceived mental health, very good or excellent", ]
indgap(x, "group", "estimate", "lower", "upper", qual = "quality")[
  , c("group", "estimate", "refest", "difference", "diflo",
      "difup")]

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 6, fig.height = 4, dpi = 72)
library(rmoriebricklayer)

## ----policy-evaluation-data---------------------------------------------------
p <- polex()
head(p)

## ----policy-evaluation-did----------------------------------------------------
plndid(p, "district", "month", "crmrate", "reformed")

## ----policy-evaluation-trends, fig.height = 3.5-------------------------------
plot(cohtrnd(p, "district", "month", "crmrate", "refmonth", win = c(-10, 10)))

## ----policy-evaluation-event, fig.height = 3.5--------------------------------
es <- evstudy(p, "district", "month", "crmrate", "refmonth", leads = 4, lags = 6)
es
plot(es)

## ----policy-evaluation-bacon, fig.height = 3.5--------------------------------
b <- bacondcmp(p, "district", "month", "crmrate", "reformed")
tapply(b$weight, b$type, sum)
plot(b)

## ----policy-evaluation-cs, fig.height = 3.5-----------------------------------
s <- stgatt(p, "district", "month", "crmrate", "refmonth", reps = 99, seed = 1)
s$overall
plot(s)

## ----policy-evaluation-switching----------------------------------------------
swtdid(p, "district", "month", "crmrate", "reformed", reps = 99, seed = 1)

## ----policy-evaluation-perm, fig.height = 3-----------------------------------
r <- perminf(p, "district", "month", c("crmrate", "arrrate"), "refmonth",
                           cl = "region")
r
plot(r, type = "histogram")

## ----policy-evaluation-loo, fig.height = 3.5----------------------------------
plot(loounit(p, "district", "month", "crmrate", "reformed"))

## ----policy-evaluation-grid, fig.height = 3.5---------------------------------
plotevgrid(list(
  "Crime rate" = es,
  "Arrest rate" = evstudy(p, "district", "month", "arrrate", "refmonth", leads = 4,
                              lags = 6)), style = "stata")

## ----policy-evaluation-pois---------------------------------------------------
plnpois(p, "district", "month", "crimes", "reformed", offset = "logpop")

## ----policy-evaluation-synth, fig.height = 3.5--------------------------------
p13 <- p[is.na(p$refmonth) | p$district == "D13", ]
sc <- synctl(p13, "district", "month", "crmrate", "D13", adopt = 13)
sc
plot(sc)

## ----policy-evaluation-measures-----------------------------------------------
d <- data.frame(city = rep(c("A", "B"), each = 3), year = 2024,
                offence = rep(c("homicide", "robbery", "burglary"), 2),
                n = c(5, 120, 300, 2, 90, 410), pop = rep(c(250000, 180000), each = 3))
sevidx(d, "city", "year", "offence", "n",
               w = c(homicide = 25, robbery = 8, burglary = 4), pop = "pop")
cmlrisk(16:20, c(900, 1400, 1700, 1600, 1400), rep(1e5, 5))

## ----policy-evaluation-wild---------------------------------------------------
wcb(p, "district", "month", "crmrate", "reformed", cl = "region")

## ----policy-evaluation-sens---------------------------------------------------
tse(es, seed = 1)

## ----policy-evaluation-covs---------------------------------------------------
set.seed(4)
p$x1 <- rnorm(20)[match(p$district, unique(p$district))]
stgatt(p, "district", "month", "crmrate", "refmonth", covs = "x1", reps = 49,
              seed = 1)$overall
m <- mtchdid(p, "district", "month", "crmrate", "refmonth", ratio = 2)
m$estimate

## ----policy-evaluation-sdid, fig.height = 3.5---------------------------------
sd <- syndid(p13, "district", "month", "crmrate", "refmonth", reps = 50, seed = 1)
sd
plot(sd)

## ----policy-evaluation-power, fig.height = 3.5--------------------------------
pw <- plnpwr(p[p$month <= 12, ], "district", "month", "crmrate", ntrt = 10,
                  adopt = 7:10, eff = c(0, 0.5, 1, 1.5), reps = 40, seed = 1)
pw
plot(pw)

## ----policy-evaluation-indigenous-policy--------------------------------------
hi <- indiex("health")
x <- hi[hi$age == "Total, 18 years and over" &
          hi$indicator == "Perceived mental health, very good or excellent", ]
gaps <- do.call(rbind, lapply(split(x, x$period), function(p) {
  cbind(period = p$period[1],
        indgap(p, "group", "estimate", "lower", "upper")[
          , c("group", "difference", "diflo", "difup")])
}))
rownames(gaps) <- NULL
gaps

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----falsification-and-power-falsify------------------------------------------
set.seed(1)
d <- data.frame(x = rnorm(200))
d$y <- 0.8 * d$x + rnorm(200)

real <- cpsfals(d, function(z) cor(z$x, z$y), trt = "x", n = 199, seed = 42)
real$controls[, c("control", "passed")]

## ----falsification-and-power-falsify-fake-------------------------------------
fake <- cpsfals(d, function(z) 0.5, trt = "x", n = 199, seed = 42)
fake$controls[fake$controls$control == "permutation", "passed"]

## ----falsification-and-power-power--------------------------------------------
set.seed(1)
d <- data.frame(x = rnorm(120), y = rnorm(120))
inj <- function(z, size) {
  z$y <- z$y + size * z$x
  z
}

pw <- cpspwr(d, function(z) cor(z$x, z$y), inj,
                    sizes = c(0, 0.3, 0.6), trt = "x",
                    n = 99, reps = 5, seed = 42)
pw$curve

## ----falsification-and-power-power-zero---------------------------------------
pw$curve[pw$curve$size == 0, "rate"]

## ----falsification-and-power-family-------------------------------------------
set.seed(1)
d <- data.frame(x = rnorm(150))
d$y <- 0.6 * d$x + rnorm(150)
d$a <- rnorm(150)
d$b <- rnorm(150)
fam <- list(
  real    = cpsfals(d, function(z) cor(z$x, z$y), trt = "x", n = 199, seed = 1),
  noisea = cpsfals(d, function(z) cor(z$a, z$y), trt = "a", n = 199, seed = 2),
  noiseb = cpsfals(d, function(z) cor(z$b, z$y), trt = "b", n = 199, seed = 3)
)
falsfam(fam)

## ----falsification-and-power-family-p-----------------------------------------
falsfam(c(a = 0.01, b = 0.04, c = 0.2, d = 0.5))$results

## ----falsification-and-power-evalue-------------------------------------------
evlrr(2)                       # needs a confounder associated by 3.41 with both
evlrr(0.5)                     # a protective effect is inverted; same answer
evlrr(2, lo = 0.9, hi = 4.4)   # an interval that includes the null needs nothing
evlrr(3, lo = 2.1, hi = 4.3)   # a strong result with a limit well above the null

## ----falsification-and-power-indigenous-falsify-------------------------------
hi <- indiex("health")
s <- hi[hi$period == "2019/2022" & hi$age == "Total, 18 years and over" &
          hi$quality == "ok", ]
fn <- s[s$group == "First Nations", ]
ni <- s[s$group == "Non-Indigenous", ]
both <- merge(fn, ni, by = "indicator", suffixes = c("fn", "ni"))
se <- function(l, u) (u - l) / (2 * 1.96)
z <- (both$estimatefn - both$estimateni) /
  sqrt(se(both$lowerfn, both$upperfn)^2 + se(both$lowerni, both$upperni)^2)
p <- stats::setNames(2 * stats::pnorm(-abs(z)), both$indicator)
res <- falsfam(p, meth = "holm")
head(res)

## ----falsification-and-power-falsification-plots, fig.width = 7, fig.height = 4.5----
plot(real)
plot(fake)
plot(pw)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 6, fig.height = 3.8)
library(rmoriebricklayer)

## ----small-area-rates-expected------------------------------------------------
d <- data.frame(
  region = rep(c("North", "South", "East"), each = 2),
  age = rep(c("18 to 24", "25 to 49"), 3),
  n = c(30, 45, 12, 60, 8, 20),
  pop = c(1000, 6000, 900, 9000, 400, 3500)
)
expcnts(d$n, d$pop, d$region)

## ----small-area-rates-expected-strata-----------------------------------------
expcnts(d$n, d$pop, d$region, strata = d$age)

## ----small-area-rates-direct--------------------------------------------------
r <- agestd(events = c(4, 9, 11, 6, 3, 40, 70, 90, 80, 60),
                     pop = c(9000, 8000, 6000, 4000, 2000, 300000, 320000, 350000, 340000, 300000),
                     std = c(30, 25, 20, 15, 10),
                     grp = rep(c("Inuit", "Non-Indigenous"), each = 5))
r
rategap(r, "Inuit", "Non-Indigenous")

## ----small-area-rates-sir-----------------------------------------------------
stdinc(obs = c(30, 12, 3), expd = c(20, 14, 5),
    area = c("North", "South", "East"))

## ----small-area-rates-sir3----------------------------------------------------
stdinc(3, 5)

## ----small-area-rates-eb------------------------------------------------------
ebrates(obs = c(30, 45, 2), expd = c(25, 50, 0.5),
         area = c("North", "South", "Tiny"))

## ----small-area-rates-funnel--------------------------------------------------
fnllim(c(2, 20, 200))

## ----small-area-rates-funnel-plot---------------------------------------------
e <- seq(2, 200, length.out = 60)
lim <- fnllim(e)
plot(e, lim$upper_95, type = "l", ylim = c(0, 3), xlab = "expected count",
     ylab = "observed / expected", main = "Funnel limits")
lines(e, lim$lower_95)
lines(e, lim$upper_998, lty = 2)
lines(e, lim$lower_998, lty = 2)
abline(h = 1, col = "grey")
points(c(20, 14, 5), c(30, 12, 3) / c(20, 14, 5), pch = 19, col = 2)

## ----small-area-rates-moran---------------------------------------------------
nb <- list(2L, c(1L, 3L), c(2L, 4L), c(3L, 5L), c(4L, 6L), 5L)   # six areas in a line

set.seed(1)
morani(c(1, 2, 3, 4, 5, 6), nb, nperm = 999L)[c("I", "p_value")]   # a gradient

set.seed(1)
morani(c(1, 6, 1, 6, 1, 6), nb, nperm = 999L)[c("I", "p_value")]   # alternating

## ----small-area-rates-moran-null----------------------------------------------
-1 / (6 - 1)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 6, fig.height = 3.5)
library(rmoriebricklayer)

## ----hawkes-processes-simulate------------------------------------------------
simhwk <- function(mu, alpha, beta, horizon, seed = 1) {
  set.seed(seed)
  t <- 0
  events <- numeric(0)
  while (t < horizon) {
    lambdamax <- mu + alpha * beta * sum(exp(-beta * (t - events)))
    t <- t + stats::rexp(1, lambdamax)
    if (t >= horizon) break
    lambdat <- mu + alpha * beta * sum(exp(-beta * (t - events)))
    if (stats::runif(1) <= lambdat / lambdamax) events <- c(events, t)
  }
  events
}
times <- simhwk(mu = 1, alpha = 0.5, beta = 2, horizon = 300)
length(times)

## ----hawkes-processes-fit-----------------------------------------------------
fit <- chwkfit(times, hor = 300, kernel = "exponential")
fit$theta
fit$braratio

## ----hawkes-processes-kernels-------------------------------------------------
sapply(c("exponential", "weibull", "lomax"), function(k) {
  chwkfit(times, 300, kernel = k)$aic
})

## ----hawkes-processes-sinus---------------------------------------------------
chwkfit(times, 300, kernel = "exponential", base = "sinusoidal")$aic

## ----hawkes-processes-residuals-----------------------------------------------
U <- chwkres(times, 300, "exponential", fit$theta)
stats::ks.test(U, "punif")$p.value

## ----hawkes-processes-qq------------------------------------------------------
plot(stats::qunif(stats::ppoints(length(U))), sort(U), pch = 20, cex = .6,
     xlab = "uniform quantiles", ylab = "rescaled residuals",
     main = "Time-rescaling check")
abline(0, 1, col = 2)

## ----hawkes-processes-jitter--------------------------------------------------
days <- c(0, 0, 0, 1, 3, 3)
chwkjit(days)
anyDuplicated(chwkjit(days))

## ----hawkes-processes-nll-----------------------------------------------------
chwknll(times, 300, "exponential", fit$theta)
chwknll(times, 300, "exponential", fit$theta * 1.5)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----stock-and-flow-adp-------------------------------------------------------
# Lakner's worked example: 3,000 inmates served 13,500 detention days in a year
adp(13500)

# per-person days over a 30-day period give the same total
adp(c(10, 20, 30), t = 30)

## ----stock-and-flow-alos------------------------------------------------------
# Lakner: 2,700 inmates admitted and released served 12,150 detention days
alos(12150, 2700)

## ----stock-and-flow-admissions------------------------------------------------
alosimplied <- 25 * 365 / 1750
round(alosimplied, 1)
admits(25, alosimplied)

## ----stock-and-flow-stockflow-------------------------------------------------
stkflow(
  days = c(115674, 126121), people = c(12647, 9608),
  prd = c("2023", "2025"),
  expo = c(15495050, 16256538)
)

## ----stock-and-flow-stays-----------------------------------------------------
stays <- c(rep(1, 40), rep(3, 30), rep(10, 20), 60, 90, 120)
staysmry(stays)
staysmry(stays)[, c("mean", "median", "max")]

## ----stock-and-flow-periods---------------------------------------------------
perdays("2024-04-01", "2025-03-31")
fylbl(2024)

## ----stock-and-flow-indigenous-stock------------------------------------------
cp <- indiex("censuspop")
fc <- cp[cp$GEO_NAME == "Canada" & cp$AGE_GROUP == "0 to 14 years" &
           cp$RESIDENCE == "Total - Residence on or off reserve", ]
kids <- fc[grepl("Total - Children in census families", fc$CHARACTERISTIC_NAME),
           c("FIRST_NATIONS", "NON_IND")]
fost <- fc[grepl("Foster children", fc$CHARACTERISTIC_NAME), c("FIRST_NATIONS", "NON_IND")]
round(100 * unlist(fost) / unlist(kids), 2)

## ----stock-and-flow-stock-flow-plots, fig.width = 8, fig.height = 4-----------
op <- par(mfrow = c(1, 2))
per1000 <- unlist(fost) / unlist(kids) * 1000
barplot(per1000, names.arg = c("First Nations", "non-Indigenous"), col = blpal()[1:2],
        ylab = "per 1,000 children", main = "Children in foster care")
hist(stays, breaks = 30, col = blpal()[2], xlab = "length of stay", main = "Lengths of stay")
par(op)

