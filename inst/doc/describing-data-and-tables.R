## ----setup, include = FALSE---------------------------------------------------
# the vignette runs in full in GitHub CI and for the package tarball (NOT_CRAN), on r-universe
# (MY_UNIVERSE), on the package website (IN_PKGDOWN) and in an interactive session; when CRAN
# re-builds it in its check, none of these is set and only this chunk runs
if (!interactive() && !any(nzchar(Sys.getenv(c("NOT_CRAN", "MY_UNIVERSE", "IN_PKGDOWN"))))) {
  knitr::knit_exit()
}

## ----describe-setup, include = FALSE------------------------------------------
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

cpsrpt(fresh, ref = reference,
               schema = infsch(reference))

## -----------------------------------------------------------------------------
broken <- fresh
broken$score <- broken$score * 5
broken$grade[1:100] <- "z"
broken$dead <- NA_real_
broken$flat <- 7

report <- cpsrpt(broken, ref = reference,
                         schema = infsch(reference))
report

## -----------------------------------------------------------------------------
report$verdict
summary(report)

## -----------------------------------------------------------------------------
cat(head(rptmd(report), 12), sep = "\n")

## -----------------------------------------------------------------------------
messy <- data.frame(
  clean = stats::rnorm(200),
  bimodal = c(stats::rnorm(100, -3), stats::rnorm(100, 3)),
  skewed = c(stats::rexp(199), 500),
  zeros = c(rep(0, 50), stats::runif(150))
)
profcols(messy)[, c("column", "mean", "median", "sd", "mad")]

## -----------------------------------------------------------------------------
profcols(messy)[, c("column", "hist")]

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
misspat(structural)

## -----------------------------------------------------------------------------
misspat(scattered)

## -----------------------------------------------------------------------------
missruns(data.frame(
  outage = c(1, 2, rep(NA, 8), 11:20),
  sporadic = c(1, NA, 3, NA, 5, NA, 7:20)
), minrun = 2)

## -----------------------------------------------------------------------------
gappy <- data.frame(
  complete = 1:100,
  early = c(rep(NA, 30), 31:100),
  random = ifelse(stats::runif(100) < 0.3, NA, 1),
  late = c(1:70, rep(NA, 30))
)
missgrid(gappy, height = 10)

## -----------------------------------------------------------------------------
n <- 400
x <- stats::rnorm(n)
y <- x + stats::rnorm(n)

# Missing on a coin flip: nothing to find.
mcar <- data.frame(x = x, y = y)
mcar$y[sample(n, 120)] <- NA
mcartst(mcar)

## -----------------------------------------------------------------------------
# Missing whenever x is large: the complete cases are a biased sample,
# and that is detectable because the pattern's mean of x is shifted.
mar <- data.frame(x = x, y = y)
mar$y[x > 0.4] <- NA
mcartst(mar)

## -----------------------------------------------------------------------------
people <- data.frame(heightcm = stats::rnorm(300, 170, 10))
people$weightkg <- people$heightcm * 0.5 + stats::rnorm(300, 0, 5)

# Inside both marginal ranges, outside the cloud.
people[1, ] <- list(heightcm = 150, weightkg = 140)

range(people$heightcm)
range(people$weightkg)

## -----------------------------------------------------------------------------
head(mahaoutl(people), 3)

## -----------------------------------------------------------------------------
many <- people
many[1:8, ] <- list(heightcm = rep(150, 8), weightkg = rep(140, 8))

c(robust = mahaoutl(many, robust = TRUE)$distance[1],
  classical = mahaoutl(many, robust = FALSE)$distance[1])

## -----------------------------------------------------------------------------
benfordtst(10^stats::runif(2000, 0, 6))

## -----------------------------------------------------------------------------
benfordtst(as.numeric(paste0(sample(1:9, 2000, TRUE), "000")))

## ----describe-indigenous-describe---------------------------------------------
hi <- indiex("health")
profcols(hi[, c("estimate", "lower", "upper")])
table(hi$quality, useNA = "ifany")

## ----describe-describe-plots, fig.width = 7, fig.height = 5-------------------
op <- par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
for (nm in names(messy)) {
  x <- messy[[nm]]
  if (nm == "skewed") {
    hist(log10(x), breaks = 30, col = blpal()[2], main = "skewed (log10 scale)", xlab = "log10(value)")
  } else {
    hist(x, breaks = 30, col = blpal()[2], main = nm, xlab = "value")
  }
}
par(op)
plotecdf(c(reference$score, fresh$score),
         rep(c("reference", "fresh"), c(nrow(reference), nrow(fresh))),
         main = "Fresh scores against the reference")

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----missingness-and-outliers-missing-----------------------------------------
df <- data.frame(a = c(1, NA, 3), b = c(NA, NA, 3), c = 1:3)
misssmry(df)
misssmry(data.frame(x = 1:3, y = 4:6))

## ----missingness-and-outliers-pattern-----------------------------------------
set.seed(1)
big <- data.frame(id = 1:40, v = stats::rnorm(40), w = stats::rnorm(40))
big$v[c(10:14, 30)] <- NA
big$w[c(10:14)] <- NA
misspat(big)
missruns(big)

## ----missingness-and-outliers-dup---------------------------------------------
d <- data.frame(id = c(1, 2, 2, 3, 3, 3), x = c("a", "b", "b", "c", "c", "d"))
duprows(d)
duprows(d, cols = "id")

## ----missingness-and-outliers-maha--------------------------------------------
set.seed(1)
n <- 200
df <- data.frame(height = stats::rnorm(n, 170, 10))
df$weight <- df$height * 0.5 + stats::rnorm(n, 0, 5)
df[1, ] <- list(height = 155, weight = 100)      # ordinary on each, unlikely jointly

out <- mahaoutl(df)
head(out, 3)
out$row[1] == 1
range(df$height[-1])
range(df$weight[-1])

## ----missingness-and-outliers-maha-robust-------------------------------------
bad <- df
bad[2:21, ] <- list(height = 150, weight = 110)
dclassical <- mahaoutl(bad, robust = FALSE)
drobust <- mahaoutl(bad, robust = TRUE)
dclassical$distance[dclassical$row == 2] < drobust$distance[drobust$row == 2]

## ----missingness-and-outliers-hll---------------------------------------------
set.seed(1)
x <- sample(1:5000, 200000, replace = TRUE)
dstncnt(dstnskch(x))
length(unique(x))

s <- dstnskch(x[1:100000])
s <- dstnskch(x[100001:200000], regstr = s)
dstncnt(s)

a <- dstnskch(x[1:100000])
b <- dstnskch(x[100001:200000])
dstncnt(skchmrg(a, b))

## ----missingness-and-outliers-hll-small---------------------------------------
dstncnt(dstnskch(c("a", "b", "c", "a", "b")))
dstncnt(dstnskch(character(0)))

## ----missingness-and-outliers-benford-----------------------------------------
set.seed(3)
benfordtst(10^stats::runif(2000, 0, 6))$p_value
benfordtst(as.numeric(paste0(sample(1:9, 2000, TRUE), "000")))$p_value

## ----missingness-and-outliers-indigenous-missing------------------------------
im <- indiex("infantmort")
misssmry(im)
table(im$period, im$quality)

## ----missingness-and-outliers-outliers-plots, fig.width = 7, fig.height = 4.5----
plot(out)
planted <- dclassical$row %in% 2:21
plot(dclassical$distance, drobust$distance[match(dclassical$row, drobust$row)],
     pch = 19, col = ifelse(planted, blpal()[2], blpal()[1]),
     xlab = "classical distance", ylab = "robust distance",
     main = "Planted rows: classical against robust distance")
abline(0, 1, lty = 2)
legend("topleft", c("planted rows", "other rows"), pch = 19, col = blpal()[c(2, 1)], bty = "n")

## ----include = FALSE----------------------------------------------------------
# the one-time index record of this vignette stays out of the reader's configuration directory
options(rmoriebricklayer.xmssidxfile = tempfile())
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## -----------------------------------------------------------------------------
tab <- matrix(c(9000, 120, 2000, 220, 1500, 60, 4000, 1), ncol = 2, byrow = TRUE,
              dimnames = list(c("White", "Black", "Other", "Unknown"), c("no", "yes")))
tab
ref <- 120 / 9000
orchk(tab, "White", c(Black = 220 / 2000 / ref, Other = 60 / 1500 / ref,
                                 Unknown = 1 / 4000 / ref))$verdict

## -----------------------------------------------------------------------------
rotated <- tab[c("Unknown", "White", "Black", "Other"), ]
rownames(rotated) <- rownames(tab)
rref <- rotated["White", 2] / rotated["White", 1]
reported <- c(Black = rotated["Black", 2] / rotated["Black", 1] / rref,
              Other = rotated["Other", 2] / rotated["Other", 1] / rref,
              Unknown = rotated["Unknown", 2] / rotated["Unknown", 1] / rref)
round(reported, 1)
r <- orchk(tab, "White", reported)
r$consistent
r$matches
r$verdict

## -----------------------------------------------------------------------------
orchk(tab, "White", c(Black = 36, Other = 4, Unknown = 1))$verdict

## -----------------------------------------------------------------------------
raw <- data.frame(race = c(1, 2, 2, 3, 1), stringsAsFactors = FALSE)
audcats(data.frame(race = factor(raw$race)))
race <- deccodes(raw$race, c("1" = "White", "2" = "Black", "3" = "Indigenous"))
race

## -----------------------------------------------------------------------------
x <- c("W", "B", "W", "I", "B")
y <- grdrcd(x, c(W = "White", B = "Black", I = "Indigenous"))
vrfrcd(x, y, c(W = "White", B = "Black", I = "Indigenous"))
grdlvls(y, c("White", "Black", "Indigenous"), ref = "White")

## ----error = TRUE-------------------------------------------------------------
try({
vrfrcd(c("W", "B"), c("Black", "White"), c(W = "White", B = "Black"))
})

## ----error = TRUE-------------------------------------------------------------
try({
vrfmrg(y, c(White = 2, Black = 2, Indigenous = 1))
vrfmrg(y, c(White = 2, Black = 1, Indigenous = 2))
})

## -----------------------------------------------------------------------------
key <- pqckg(height = 2)
m <- rcdmnf(x, y, c(W = "White", B = "Black", I = "Indigenous"),
                     pub = c(White = 2, Black = 2, Indigenous = 1),
                     key = key, ctx = "vignette")
p <- wrrcdmnf(m, tempfile(fileext = ".json"))
vrfrcdmnf(p, x, y)[c("ok", "signature_ok")]

## -----------------------------------------------------------------------------
yswapped <- as.character(y)
yswapped[yswapped == "Black"] <- "Indigenous"
vrfrcdmnf(p, x, yswapped)[c("ok", "reasons")]

## ----error = TRUE-------------------------------------------------------------
try({
grdbin(c("treated", "control"), "treatment")
})

## -----------------------------------------------------------------------------
arrived <- structure(c(1, 1, 2, 4, 1, 3, 1, 2),
                     labels = c(White = 1, Black = 2, Other = 3, Unknown = 4))
code_book <- c("1" = "White", "2" = "Black", "3" = "Other", "4" = "Unknown")
spssfre <- c(White = 4, Black = 2, Other = 1, Unknown = 1)
chk <- xfrvrf(arrived, spssfre, codebook = code_book)
chk$ok
levels(chk$decoded)

## -----------------------------------------------------------------------------
f <- factor(c(1, 2, 3, 4, 1))
levels(f) <- sort(unname(code_book))
data.frame(code = c(1, 2, 3, 4, 1), became = as.character(f))

## ----error = TRUE-------------------------------------------------------------
try({
relbl(factor(c(1, 2, 3, 4, 1)), sort(unname(code_book)))
relbl(factor(c(1, 2, 3, 4, 1)), code_book)
})

## ----error = TRUE-------------------------------------------------------------
try({
xfrvrf(as.character(f), c(White = 2, Black = 1, Other = 1, Unknown = 1))
})

## -----------------------------------------------------------------------------
observed <- c(White = "Black", Black = "Other", Other = "Unknown", Unknown = "White")
rlblfrns(code_book, observed)

## ----categorical-integrity-rotation-plot, fig.width = 7, fig.height = 4.5-----
odds_vs_white <- function(t) (t[, "yes"] / t[, "no"]) / (t["White", "yes"] / t["White", "no"])
r <- rbind(correct = odds_vs_white(tab), rotated = odds_vs_white(rotated))[, -1]
barplot(r, beside = TRUE, log = "y", col = blpal()[c(2, 1)], ylab = "odds ratio vs White (log scale)",
        legend.text = c("correct labels", "labels rotated one place"),
        args.legend = list(x = "topleft", bty = "n"), main = "Same counts, rotated labels")
abline(h = 1, lty = 2)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----tables-statcan-----------------------------------------------------------
pyll <- data.frame(GEO = rep(c("Inuit Nunangat", "Rest of Canada"), each = 5),
                   Characteristics = rep(c("Number of potential years of life lost",
                                           "Crude rate of potential years of life lost",
                                           "Age-standardized rate of potential years of life lost",
                                           "Low 95% confidence interval, potential years of life lost",
                                           "High 95% confidence interval, potential years of life lost"), 2),
                   VALUE = c(5000, 900, 1100, 1000, 1200, 7000, 800, 950, 870, 1030), STATUS = "")
scests(pyll)[, c("GEO", "measure", "estimate", "lower", "upper")]

## -----------------------------------------------------------------------------
bands <- prsbands(c("1", "2 to 5", "6 to 10", "Greater than 10"))
bands

## -----------------------------------------------------------------------------
bandvals(bands)

## -----------------------------------------------------------------------------
counts <- c(1200, 430, 110, 38)
bandsens(bands, counts)

## -----------------------------------------------------------------------------
placements <- expbands(bands, counts, openupcap = 25)
ginicoef(placements)
topshr(placements, c(0.01, 0.05, 0.1))

## -----------------------------------------------------------------------------
c(ten = 1 - 1 / 10, thousand = 1 - 1 / 1000)

## -----------------------------------------------------------------------------
fit <- hilltlidx(placements, xmin = 1)
c(alpha = round(fit$alpha, 2), ks = round(fit$ks, 3),
  reliable = fit$reliable)

## -----------------------------------------------------------------------------
y <- c(402, 377, 190, 268, 331)
tt <- trndtst(y)
c(tau = tt$tau, p = round(tt$p_value, 4), slope = tt$slope)
tt$method

## -----------------------------------------------------------------------------
ct <- cnttrnd(y)
c(rateratio = round(ct$rateratio, 3),
  lower = round(ct$lower, 3), upper = round(ct$upper, 3),
  dispersion = round(ct$dispersion, 2))

## -----------------------------------------------------------------------------
sc <- stepchg(c(100, 104, 98, 60, 63, 58), x = 2018:2023)
c(after = sc$breakafter, before = sc$before, aftermean = sc$after,
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
rgnmapintg(cw, "facility", "region", regs = pop$region)

## -----------------------------------------------------------------------------
bad <- cw
bad$region[3] <- "2406"          # a code from another province
rgnmapintg(bad, "facility", "region", regs = pop$region)

## -----------------------------------------------------------------------------
recomputed <- cw
recomputed$region[2] <- "3519"
rgnmapcmp(cw, recomputed, "facility")

## -----------------------------------------------------------------------------
route <- c("North Jail" = "3557", "South Jail" = "3520",
           "Hill Jail" = "3552", "Lake Jail" = "3520")
rgnmapalt(cw, "facility", "region", route,
                       known = "Hill Jail")

## -----------------------------------------------------------------------------
route["South Jail"] <- "3599"    # an assignment nobody documented
d <- rgnmapalt(cw, "facility", "region", route,
                            known = "Hill Jail")
d
sum(!d$known)

## -----------------------------------------------------------------------------
length(route)

## -----------------------------------------------------------------------------
units <- vapply(pop$region, function(r) sum(cw$region == r), numeric(1))
cov <- rgncov(pop$region, pop$population, units)
cov

## -----------------------------------------------------------------------------
a <- attr(cov, "coverage")
c(covered = a$covpop, uncovered = a$uncpop,
  share = round(a$covshr, 1))

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
e <- expcnts(d$n, d$pop, d$region, strata = d$age)
e

## -----------------------------------------------------------------------------
c(observed = sum(e$observed), expected = sum(e$expected))

## -----------------------------------------------------------------------------
stdinc(e$observed, e$expected, e$area)

## -----------------------------------------------------------------------------
ebrates(e$observed, e$expected, e$area)

## -----------------------------------------------------------------------------
fnllim(c(5, 20, 50, 200))

## -----------------------------------------------------------------------------
nb <- list(c(2L, 4L), c(1L, 3L), c(2L, 5L), c(1L, 5L), c(3L, 4L))
set.seed(1)
mi <- morani(e$observed / e$expected, nb, nperm = 999L)
c(I = round(mi$I, 3), expectation = round(mi$expectation, 3),
  p = mi$p_value)

## -----------------------------------------------------------------------------
-1 / (5 - 1)

## ----tables-indigenous-tables-------------------------------------------------
le <- indiex("lifeexp")
inuit <- le[le$group == "Inuit", ]
inuit[, c("period", "estimate", "lower", "upper")]
trndtst(inuit$estimate, x = 1:3)$p_value

## ----tables-tables-plots, fig.width = 7, fig.height = 4.5---------------------
plot(ct)
plot(cov)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----banded-tables-and-concentration-parse------------------------------------
prsbands(c("1", "2 to 5", "6 to 10", "Greater than 10"))
prsbands(c("18 to 24", "25 to 49", "50+"))

## ----banded-tables-and-concentration-parse-bad--------------------------------
prsbands(c("3", "unknown", "not stated"))

## ----banded-tables-and-concentration-values-----------------------------------
b <- prsbands(c("1", "2 to 5", "6 to 10", "Greater than 10"))
bandvals(b, rule = "midpoint", openupcap = 20)
bandvals(b, rule = "geometric", openupcap = 20)

## ----banded-tables-and-concentration-expand-----------------------------------
x <- expbands(c("1", "2 to 5", "Greater than 5"), cnts = c(10, 4, 2),
                  openupcap = 12)
table(x)
ginicoef(x)

## ----banded-tables-and-concentration-gini-------------------------------------
ginicoef(rep(1, 10))             # no concentration
ginicoef(c(rep(0, 9), 1))        # one unit holds everything
1 - 1 / 10                   # the maximum for ten units

placements <- c(rep(1, 1200), rep(3, 430), rep(8, 110), rep(20, 38))
ginicoef(placements)
topshr(placements, c(0.01, 0.05, 0.1))
head(lorenzc(placements))

## ----banded-tables-and-concentration-sens-------------------------------------
counts <- c(1200, 430, 110, 38)
bandsens(b, counts)
bandsens(b, counts, stat = mean)

## ----banded-tables-and-concentration-hill-------------------------------------
k <- 1:10000
p <- k^(-2.5) / sum(k^(-2.5))
set.seed(2)
z <- sample(k, 5000, replace = TRUE, prob = p)
c(exact = round(hilltlidx(z, xmin = 1)$alpha, 2),
  approx = round(hilltlidx(z, xmin = 1, approx = TRUE)$alpha, 2))

## ----banded-tables-and-concentration-hill-short-------------------------------
short <- hilltlidx(c(3, 4, 5, 9), xmin = 3)
c(alpha = round(short$alpha, 2), n = short$ntl, reliable = short$reliable)

## ----banded-tables-and-concentration-indigenous-concentration-----------------
cp <- indiex("censuspop")
tot <- cp[cp$GEO_LEVEL != "Country" & cp$AGE_GROUP == "Total - Age groups" &
            cp$RESIDENCE == "Total - Residence on or off reserve" &
            grepl("^Total - Average age", cp$CHARACTERISTIC_NAME), ]
ginicoef(tot$FIRST_NATIONS)
topshr(tot$FIRST_NATIONS, fracs = c(0.25, 0.5))

## ----banded-tables-and-concentration-bands-lorenz-plot, fig.width = 8, fig.height = 4----
op <- par(mfrow = c(1, 2))
barplot(counts, names.arg = b$label, col = blpal()[2], main = "Counts by band", ylab = "count")
plotlrnz(placements, main = "Concentration of placements")
par(op)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## -----------------------------------------------------------------------------
seg <- data.frame(
  EndFiscalYear = rep(2019:2023, each = 2),
  Gender = rep(c("Female", "Male"), 5),
  NumberOfPlacements = c(31, 402, 28, 377, 12, 190, 19, 268, 24, 331)
)

## -----------------------------------------------------------------------------
y <- yoy(seg,
  value = NumberOfPlacements,
  prd = EndFiscalYear,
  by = "Gender",
  dir = "lower"
)
y

## -----------------------------------------------------------------------------
stats::poisson.test(c(331, 268), c(1, 1))$conf.int

## -----------------------------------------------------------------------------
gap <- data.frame(year = c(2019, 2020, 2022, 2023), n = c(100, 120, 140, 150))
yoy(gap, value = n, prd = year)

## -----------------------------------------------------------------------------
tiny <- data.frame(year = 2019:2021, n = c(2, 20, 25))
as.data.frame(yoy(tiny, value = n, prd = year))[, c("year", "pctchg",
                                                     "pctlo", "pctup")]

## -----------------------------------------------------------------------------
as.data.frame(yoy(tiny, value = n, prd = year, minbase = 20))$flag

## -----------------------------------------------------------------------------
rate <- data.frame(year = 2019:2023, share = c(4.1, 4.6, 5.2, 5.0, 5.4))
yoy(rate, value = share, prd = year, units = "percent")

## -----------------------------------------------------------------------------
m <- stats::ts(c(10:21, 20:31), start = c(2021, 1), frequency = 12)
head(as.data.frame(yoy(m, minbase = 0))[12:14, c("period", "value",
                                                  "previous", "change")], 3)

## -----------------------------------------------------------------------------
yoysmry(y)

## -----------------------------------------------------------------------------
stops <- data.frame(
  division = c("North", "South", "East"),
  stops = c(412, 77, 3),
  residents = c(120000, 41000, 9500))

rtcalc(stops, stops, residents, by = "division", per = "100k")

## -----------------------------------------------------------------------------
shrs(stops, stops, by = "division")

## -----------------------------------------------------------------------------
d <- data.frame(
  year = rep(2021:2023, each = 2),
  division = rep(c("North", "South"), 3),
  stops = c(400, 70, 430, 66, 455, 61),
  residents = c(120000, 41000, 122000, 41500, 125000, 42000))

ratechg(d, stops, residents, year, by = "division", per = "100k")

## -----------------------------------------------------------------------------
dir <- tempdir()
for (ext in c("csv", "tsv", "json", "md", "html", "pdf")) {
  f <- file.path(dir, paste0("placements.", ext))
  yoywr(y, f, title = "Placements by gender")
  cat(sprintf("%-5s %6d bytes\n", ext, file.size(f)))
}

## -----------------------------------------------------------------------------
cat(yoycsv(y, NULL, digits = 1L))

## -----------------------------------------------------------------------------
cat(yoymd(yoy(gap, value = n, prd = year), NULL))

## -----------------------------------------------------------------------------
yoypals()

## ----include = FALSE----------------------------------------------------------
unlink(file.path(dir, paste0("placements.",
                             c("csv", "tsv", "json", "md", "html", "pdf"))))

## ----yoy-indigenous-yoy-------------------------------------------------------
hi <- indiex("health")
m <- hi[hi$age == "Total, 18 years and over" &
          hi$indicator == "Perceived mental health, very good or excellent", ]
# yoy() steps through consecutive periods: number the two survey cycles 1 and 2
m$cycle <- match(m$period, c("2015/2018", "2019/2022"))
for (g in unique(m$group)) {
  s <- m[m$group == g, ]
  print(as.data.frame(yoy(s, value = estimate, prd = cycle, units = "percent"))[
    2, c("value", "previous", "ppchg", "verdict")])
}

## ----yoy-yoy-plot, fig.width = 7, fig.height = 4.5----------------------------
plot(y)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----trends-and-change-mk-----------------------------------------------------
y <- c(402, 377, 190, 268, 331)        # five years of placements
trndtst(y)

## ----trends-and-change-mk-mono------------------------------------------------
trndtst(c(1, 2, 3, 4, 5))

## ----trends-and-change-mk-outlier---------------------------------------------
trndtst(c(100, 100, 100, 100, 900))$p_value

## ----trends-and-change-mk-df--------------------------------------------------
d <- data.frame(year = 2019:2023, n = y)
trndtst(d, value = "n", prd = "year")$slope
trndtst(d, value = "n", prd = "year", alt = "decreasing")$p_value

## ----trends-and-change-poisson------------------------------------------------
set.seed(3)
y <- stats::rpois(8, lambda = 200 * 0.85^(0:7))   # falling ~15% a year
fit <- cnttrnd(y)
round(fit$rateratio, 3)

## ----trends-and-change-offset-------------------------------------------------
cnttrnd(c(20, 25, 30), offset = c(1000, 1500, 2500))$rateratio

## ----trends-and-change-step---------------------------------------------------
stepchg(c(100, 104, 98, 60, 63, 58))

## ----trends-and-change-step-noise---------------------------------------------
set.seed(2)
stepchg(stats::rnorm(12))$p_value

## ----trends-and-change-two-periods--------------------------------------------
h <- indiex("health")
h <- h[h$age == "Total, 18 years and over" &
         h$indicator == "Perceived mental health, very good or excellent", ]
healchg(h, "group", "indicator", "period", "estimate", "lower", "upper",
               from = "2015/2018", to = "2019/2022", qual = "quality")

## ----trends-and-change-trc-pace-----------------------------------------------
trcprog()

## ----trends-and-change-trend-plot, fig.width = 7, fig.height = 4.5------------
plot(fit)

## ----plotting-results-setup, include = FALSE----------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 7, fig.height = 4.2,
                      dpi = 72)
library(rmoriebricklayer)

## ----plotting-results-stock-flow----------------------------------------------
sf <- stkflow(days = c(13500, 14600, 15100, 14200), people = c(300, 320, 310, 290),
                 prd = 2020:2023)
plot(sf)

## ----plotting-results-yoy-----------------------------------------------------
y <- yoy(data.frame(year = 2018:2023, n = c(40, 44, 41, 55, 52, 61)), value = "n",
         prd = "year")
plot(y)

## ----plotting-results-yoy-small-----------------------------------------------
plot(yoy(data.frame(year = 2019:2023, n = c(10, 12, 11, 15, 14)), value = "n", prd = "year"))

## ----plotting-results-rates---------------------------------------------------
d <- data.frame(division = rep(c("north", "east", "west"), 2), year = rep(2022:2023, each = 3),
                stops = c(120, 90, 60, 150, 85, 70), residents = c(1e4, 8e3, 5e3, 1e4, 8e3, 5e3))
plot(rtcalc(d[d$year == 2023, ], count = "stops", pop = "residents", by = "division"))
plot(ratechg(d, count = "stops", pop = "residents", prd = "year", by = "division"))

## ----plotting-results-checks--------------------------------------------------
set.seed(1)
amounts <- round(exp(rnorm(400, 6, 1.4)))
plot(benfordtst(amounts))
dd <- data.frame(x = rnorm(120), y = rnorm(120))
shift <- function(z, s) {
  z$y <- z$y + s * z$x
  z
}
plot(cpspwr(dd, function(z) cor(z$x, z$y), inject = shift, trt = "x",
                   sizes = c(0, 0.2, 0.4, 0.6), n = 49, reps = 6, seed = 1))

## ----plotting-results-pollution, fig.height = 3.6-----------------------------
plot(crfno2(25))
plot(polbrdn(25, 1, 0.008, 1e6, poll = "NO2"))

## ----plotting-results-report, fig.width = 9, fig.height = 3.4-----------------
plot(vrfpol("no2", demo = TRUE))

## ----plotting-results-dispersion----------------------------------------------
plot(plmfld(q = 100, u = 5, h = 50, x = seq(100, 3000, by = 100),
                 y = seq(-500, 500, by = 50)))
plot(lagrprt(500, 0, 0, u = 2, v = 0.5, kx = 1, ky = 1, dt = 1, nsteps = 60,
                          grid = c(0, 200, -60, 100, 40, 32)))

## ----plotting-results-footprint-----------------------------------------------
plot(co2fp(for (i in 1:20) sum(sqrt(seq_len(2e5))), loc = "CA",
                       cpupwrw = 45, memgb = 8))

## ----plotting-results-courts-data---------------------------------------------
ext <- function(f) read.csv(system.file("extdata", f, package = "rmoriebricklayer"))
f <- ext("ocj_flow_ontario.csv")
d <- ext("ocj_time_to_disposition.csv")
x <- ext("ocj_dispositions.csv")
g <- ext("ocj_offence_groups.csv")
g <- g[g$year %in% c(2014, 2022), ]
b <- ext("tps_break_enter_d14_2024.csv")
b <- b[!is.na(b$lon), ]

## ----plotting-results-case-flow, fig.height = 5-------------------------------
plot(caseflow(f$received, f$disposed, pend = f$pending, prd = f$month))

## ----plotting-results-life-table----------------------------------------------
last <- nrow(d)
plot(lifetbl(c(0, 10, 15, 18, Inf), unlist(d[last, 2:5]) * f$disposed[last]))

## ----plotting-results-disposition-mix-----------------------------------------
plot(dispmix(x[, -(1:2)], prd = x$year))

## ----plotting-results-simpson, fig.height = 5.5-------------------------------
plot(clrdcmp(g$disposed, g$received, g$offence_group, g$year))

## ----plotting-results-density, fig.height = 5---------------------------------
plot(crmdens(b$lon, b$lat, ngrid = 120))
plot(knoxtst(b$lon, b$lat, as.Date(b$occ_date), c(100, 200, 400), c(7, 14, 28),
               nsim = 99, seed = 1))

## ----plotting-results-indigenous-data-----------------------------------------
h <- indiex("health")
adults <- h[h$age == "Total, 18 years and over", ]
mh <- adults[adults$period == "2019/2022" & adults$indicator == "Perceived mental health, very good or excellent", ]

## ----plotting-results-indigenous-gap------------------------------------------
plot(indgap(mh, "group", "estimate", "lower", "upper", qual = "quality"))

## ----plotting-results-indigenous-ordinal--------------------------------------
r <- indiex("mentalhealth")
r <- r[r$region == "Canada", ]
plot(ordcmp(r, "group", "rating", "estimate", "lower", "upper",
                     lvls = c("Fair or poor", "Good", "Very good", "Excellent"),
                     ref = "M\u00e9tis", qual = "quality"))

## ----plotting-results-indigenous-wellness, fig.height = 5---------------------
wb <- indiex("wellbeing")
w <- welprof(wb, "group", "indicator", "estimate", "lower", "upper",
                      well = c("Always or often has a hopeful outlook",
                                   "Sense of meaning and purpose rating of 8, 9 or 10"),
                      distress = c("Rarely or never has a hopeful outlook",
                                   "Life satisfaction rating between 0 and 5"),
                      qual = "quality")
plot(w)
plot(dualcont(w, "Always or often has a hopeful outlook", "Life satisfaction rating between 0 and 5"))

## ----plotting-results-indigenous-change---------------------------------------
hc <- healchg(adults[adults$indicator %in% c("Perceived mental health, very good or excellent",
                                                    "Mood disorder"), ],
                     "group", "indicator", "period", "estimate", "lower", "upper",
                     from = "2015/2018", to = "2019/2022", qual = "quality",
                     well = "Perceived mental health, very good or excellent")
plot(hc)

## ----plotting-results-indigenous-trc------------------------------------------
plot(trcprog())

## ----plotting-results-policy-data---------------------------------------------
p <- polex()

## ----plotting-results-policy-design, fig.height = 3.5-------------------------
plot(cohtrnd(p, "district", "month", "crmrate", "refmonth", win = c(-10, 10)))
es <- evstudy(p, "district", "month", "crmrate", "refmonth", leads = 4, lags = 6)
plot(es)
plot(bacondcmp(p, "district", "month", "crmrate", "reformed"))
plot(perminf(p, "district", "month", "crmrate", "refmonth", cl = "region"))

## ----plotting-results-policy-one, fig.height = 3.5----------------------------
plot(loounit(p, "district", "month", "crmrate", "reformed"))
p13 <- p[is.na(p$refmonth) | p$district == "D13", ]
plot(synctl(p13, "district", "month", "crmrate", "D13", adopt = 13))
plot(syndid(p13, "district", "month", "crmrate", "refmonth", reps = 50, seed = 1))

## ----plotting-results-policy-checks, fig.height = 3.5-------------------------
plot(plnpwr(p[p$month <= 12, ], "district", "month", "crmrate", ntrt = 10, adopt = 7:10,
            eff = c(0, 0.5, 1, 1.5), reps = 40, seed = 1))
set.seed(7)
n <- 600
d <- data.frame(age = runif(n, 18, 70), income = rnorm(n))
d$t <- rbinom(n, 1, plogis(-2 + 0.04 * d$age + 0.5 * d$income))
d$y <- 10 + 3 * d$t + 0.2 * d$age + d$income + rnorm(n)
fit <- aipwcf(d, "y", "t", c("age", "income"), lrn = "ols")
plot(fit)
plot(fit, type = "estimate")
e <- pmin(pmax(attr(fit, "propensity")$propensity, 0.01), 0.99)
d$ipw <- ifelse(d$t == 1, 1 / e, 1 / (1 - e))
plot(baltab(d, "t", c("age", "income")), after = baltab(d, "t", c("age", "income"), w = "ipw"))

## ----plotting-results-custom--------------------------------------------------
plot(sf, what = "alos", col = "firebrick", main = "Length of stay (days)", lwd = 3)
old <- plotopt(palette = "grey", grid = FALSE)
plot(y, what = "value")
plotopt(palette = old$palette, grid = old$grid)
blpal("okabe", 4)

## ----plotting-results-returned------------------------------------------------
drawn <- plot(y)
head(drawn, 3)

## ----plotting-results-helpers-------------------------------------------------
plotlrnz(c(1, 1, 2, 3, 5, 8, 13, 21))
plotfnl(obs = c(4, 20, 50, 9, 31), expd = c(5, 22, 40, 20, 30),
            area = c("a", "b", "c", "d", "e"))

