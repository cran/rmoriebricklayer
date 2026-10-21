## ----setup, include = FALSE---------------------------------------------------
# the vignette runs in full in GitHub CI and for the package tarball (NOT_CRAN), on r-universe
# (MY_UNIVERSE), on the package website (IN_PKGDOWN) and in an interactive session; when CRAN
# re-builds it in its check, none of these is set and only this chunk runs
if (!interactive() && !any(nzchar(Sys.getenv(c("NOT_CRAN", "MY_UNIVERSE", "IN_PKGDOWN"))))) {
  knitr::knit_exit()
}

## ----courts-and-crime-setup, include = FALSE----------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 8, fig.height = 4.5)
library(rmoriebricklayer)
ext <- function(f) read.csv(system.file("extdata", f, package = "rmoriebricklayer"))

## ----courts-and-crime-hub, eval = FALSE---------------------------------------
# clearance <- dload("ocj_statistics/clearance_rate_criminal")
# offences  <- dload("ocj_statistics/offence_based_criminal")
# mci       <- dload("tps_open_data/major_crime_indicators_open_data_0")

## ----courts-and-crime-flow----------------------------------------------------
f <- ext("ocj_flow_ontario.csv")
cf <- caseflow(f$received, f$disposed, pend = f$pending, prd = f$month)
cf[c(1, 12, 24), c("period", "received", "disposed", "clearance", "rolclr", "pertoclear")]
plot(cf)

## ----courts-and-crime-life----------------------------------------------------
d <- ext("ocj_time_to_disposition.csv")
last <- nrow(d)
shares <- unlist(d[last, c("under_10", "m10_15", "m15_18", "over_18")])
lt <- lifetbl(c("Under 10 Months", "Between 10-15 Months", "Between 15-18 Months", "Over 18 Months"),
                 events = shares * f$disposed[last])
lt
plot(lt)

## ----courts-and-crime-mix-----------------------------------------------------
x <- ext("ocj_dispositions.csv")
mix <- dispmix(x[, -(1:2)], prd = x$year, scores = x$year)
mix$trend[, c("outcome", "statistic", "pholm", "change")]
plot(mix)

## ----courts-and-crime-simpson, fig.height = 4.8-------------------------------
g <- ext("ocj_offence_groups.csv")
g <- g[g$year %in% c(2014, 2022), ]
cd <- clrdcmp(g$disposed, g$received, g$offence_group, g$year)
cd
plot(cd)
# a group's share of the cases received in a year, as a percentage
caseshare <- function(group, yr) {
  sprintf("%.0f%%", 100 * sum(g$received[g$offence_group == group & g$year == yr]) / sum(g$received[g$year == yr]))
}

## ----courts-and-crime-courts--------------------------------------------------
c <- ext("ocj_courts.csv")
c <- aggregate(cbind(received, disposed) ~ year + court_series, c, sum)
c <- c[c$year %in% c(2012, 2024), ]
c <- c[c$court_series %in% names(which(table(c$court_series) == 2)), ]
cc <- clrdcmp(c$disposed, c$received, c$court_series, c$year)
cc$overall
cc$simpson$type

## ----courts-and-crime-density, fig.height = 5.5-------------------------------
b <- ext("tps_break_enter_d14_2024.csv")
kd <- crmdens(b$lon, b$lat, ngrid = 150)
kd
plot(kd)

## ----courts-and-crime-knox----------------------------------------------------
b <- b[!is.na(b$lon), ]
kn <- knoxtst(b$lon, b$lat, as.Date(b$occ_date), spcbands = c(100, 200, 400),
                tmbands = c(7, 14, 28), nsim = 199, seed = 1)
kn
plot(kn)

## ----courts-and-crime-hotspots, fig.width = 9, fig.height = 4-----------------
h <- hotpers(b$lon, b$lat, quarters(as.Date(b$occ_date)), cell = 0.3)
h
plot(h)

## ----courts-and-crime-indigenous-courts, eval = TRUE--------------------------
le <- indiex("lifeexp")
le[le$period == "2016/2021", c("group", "estimate", "lower", "upper")]

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----siu-reports-schema-------------------------------------------------------
sch <- siusch()
head(sch$name, 20)
nrow(sch)

## ----siu-reports-parse--------------------------------------------------------
f <- siuprs(system.file("extdata", "siu_synthetic_report.html",
                                      package = "rmoriebricklayer"))
f[["number_of_subject_officials"]]
f[["date_of_incident_iso"]]

## ----siu-reports-text---------------------------------------------------------
siutxt("<p>Number of SIU Investigators assigned: 3</p>")

## ----siu-reports-so-----------------------------------------------------------
siuso("Subject Officials\nSO #1 Interviewed\nSO #2 Declined interview")

## ----siu-reports-dates--------------------------------------------------------
siudate("March 4, 2024")
siudate("not a date")

## ----siu-reports-fetch, eval = FALSE------------------------------------------
# f <- siufprs("24-OCI-123")

## ----siu-reports-indigenous-siu, eval = FALSE---------------------------------
# fnservices <- c("Nishnawbe-Aski Police Service", "Anishinabek Police Service",
#                  "Treaty Three Police Service", "UCCM Anishnaabe Police Service")
# reports <- lapply(reporturls, siufprs)
# mine <- Filter(function(r) any(grepl(paste(fnservices, collapse = "|"), r$police_service)),
#                reports)
# length(mine)

## ----siu-reports-siu-timeline-plot, fig.width = 7, fig.height = 3.5-----------
rpt <- siuprs(siutxt(paste(readLines(system.file("extdata", "siu_synthetic_report.html",
                                                    package = "rmoriebricklayer"), warn = FALSE),
                           collapse = "\n")))
iso <- rpt[grepl("_iso$", names(rpt)) & grepl("^\\d{4}-\\d{2}-\\d{2}$", rpt)]
when <- as.Date(iso)
o <- order(when)
lab <- gsub("_", " ", sub("_iso$", "", names(iso)[o]))
span <- diff(range(when))
op <- par(mar = c(4, 1, 3, 1))
plot(when[o], seq_along(o), pch = 19, col = blpal()[1], yaxt = "n", xaxt = "n", xlab = "", ylab = "",
     xlim = range(when) + c(-0.1, 0.1) * as.numeric(span), ylim = c(0.5, length(o) + 0.5),
     main = "Dates in the synthetic report")
axis.Date(1, when, format = "%Y-%m-%d")
text(when[o], seq_along(o), paste0(lab, "  ", format(when[o])), cex = 0.75,
     pos = ifelse(seq_along(o) < length(o), 4, 2))
par(op)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 6, fig.height = 3.6)
library(rmoriebricklayer)

## ----air-pollution-and-health-sigmas------------------------------------------
pgsig(1000, "D")
pgsig(1000, "D", set = "urban")

## ----air-pollution-and-health-rise--------------------------------------------
r <- briggs(c(100, 500, 2000), u = 4, diam = 1, exitvel = 12,
                       stktmp = 420, ambtmp = 285)
r$flux
r$finalrise
r$rise

## ----air-pollution-and-health-plume-------------------------------------------
x <- seq(200, 5000, by = 100)
h <- 30 + r$finalrise
cd <- gplume(q = 100, u = 4, h = h, rcpt = cbind(x, 0, 0), stab = "D")
cb <- gplume(q = 100, u = 4, h = h, rcpt = cbind(x, 0, 0), stab = "B")
plot(x, cd, type = "l", xlab = "downwind distance (m)", ylab = "concentration (g/m^3)",
     main = "Ground-level centreline concentration")
lines(x, cb, col = 2)
legend("topright", c("class D (neutral)", "class B (unstable)"), col = 1:2, lty = 1, bty = "n")

## ----air-pollution-and-health-particles---------------------------------------
p <- lagrprt(n = 500, x0 = 0, y0 = 0, u = 1, v = 0, kx = 0.5, ky = 0.5,
                          dt = 1, nsteps = 50, seed = 1, grid = c(0, 100, -30, 30, 20, 12))
c(mean_x = p$mean_x, meany = p$meany)

## ----air-pollution-and-health-crf---------------------------------------------
crfpm25(12)$rr
exp(log(1.08) * (12 - 5.8) / 10)          # the same, by hand
crfpm25(12, y = "ihd")$rr
crfno2(25)$rr

## ----air-pollution-and-health-crf-vec-----------------------------------------
v <- crfpm25(c(6, 10, 15, 22))
v$rr
v$extra$rrperunit

## ----air-pollution-and-health-paf---------------------------------------------
attrfrac(crfno2(25)$rr, expoprev = 1)
mortdisp(expdel = 10, pop = 1e6, brate = 0.008,
                    betaperunit = log(1.02) / 10)

## ----air-pollution-and-health-burden------------------------------------------
b <- polbrdn(expomean = 25, expoprev = 1, brate = 0.008,
                      pop = 1e6, poll = "NO2")
c(rr = b$extra$rr, paf = b$paf, attributable = b$attrcases)
b$citation

## ----air-pollution-and-health-area--------------------------------------------
areas <- data.frame(fsa = c("M6H", "M5V", "M4W", "M1B"), exposure = c(28, 18, 15, 24),
                    population = c(40000, 60000, 25000, 70000), brate = 0.008)
polbrdarea(areas)

## ----air-pollution-and-health-equity------------------------------------------
d <- data.frame(exposure = c(30, 27, 22, 18, 14), income = 1:5)
e <- expconcidx(d, "exposure", "income")
e$concidx
e$interpretation

## ----air-pollution-and-health-plr---------------------------------------------
set.seed(1)
n <- 300
sim <- data.frame(income = rnorm(n), density = rnorm(n))
sim$no2 <- 20 - 2 * sim$income + 3 * sim$density + rnorm(n)
sim$asthmarate <- 5 + 0.3 * sim$no2 - 0.5 * sim$income + rnorm(n)
fit <- exprspplr(sim, y = "asthmarate", expo = "no2",
                             confs = c("income", "density"), nboot = 30)
c(ate = fit$ate, lower = fit$cilobs, upper = fit$ciupbs)

## ----air-pollution-and-health-verify------------------------------------------
r <- vrfpol("no2", demo = TRUE, reg = "demo", years = "2024")
r$status
cat(polrpttxt(r))

## ----air-pollution-and-health-verify-fail-------------------------------------
bad <- vrfpol("pm25", expomean = -3, expoprev = 0.5)
bad$status
attr(bad, "exitstat")
none <- vrfpol("pm25")
none$status
attr(none, "exitstat")

## ----air-pollution-and-health-footprint---------------------------------------
raplok()
fp <- co2fp(sum(sqrt(seq_len(3e5))), loc = "CA-ON", cpupwrw = 45,
                        memgb = 16)
print(fp)
fp$assumptions

## ----air-pollution-and-health-usage-------------------------------------------
busy <- function() sum(sqrt(seq_len(2e5)))
a <- co2fp(busy(), loc = "CA-ON", cpupwrw = 45, memgb = 16)
b <- co2fp(busy(), loc = "CA-ON", cpupwrw = 45, memgb = 16,
                       usage = "machine", loadcur = "codecarbon")
rbind(prolin = c(usage = a$usage, cpukwh = a$enekwh$cpu),
      maccod = c(usage = b$usage, cpukwh = b$enekwh$cpu))
b$usagemode

## ----air-pollution-and-health-ci----------------------------------------------
co2int("CA-ON")[c("g_per_kwh", "year", "source")]
co2int("Kenya")[c("location", "g_per_kwh", "year")]
co2int("CA-XX")$note
tab <- co2inttab()
nrow(tab)
table(nchar(tab$location) == 2, tab$year)[, c("2024", "2025")]

## ----air-pollution-and-health-detect------------------------------------------
dtctloc()
dtctloc(envloc = "", codloc = "", tz = "Asia/Kolkata")
co2fp(1 + 1, cpupwrw = 45, memgb = 16)$assumptions[1]

## ----air-pollution-and-health-equiv-------------------------------------------
fpeqv(fp$co2eg * 1e4)   # if this ran ten thousand times

## ----air-pollution-and-health-indigenous-air----------------------------------
cp <- indiex("censuspop")
tot <- cp[cp$GEO_LEVEL != "Country" & cp$AGE_GROUP == "Total - Age groups" &
            cp$RESIDENCE == "Total - Residence on or off reserve" &
            grepl("^Total - Average age", cp$CHARACTERISTIC_NAME), ]
pop <- stats::setNames(tot$FIRST_NATIONS, tot$GEO_NAME)
head(pop[order(-pop)], 5)
# relative risk of all-cause mortality from PM2.5, and the share of deaths attributable to
# the excess above the guideline if the whole population breathes the scenario level
sapply(c(8, 12), function(conc) {
  rr <- crfpm25(conc, refconc = 5)$rr
  c(pm25 = conc, rr = rr, attributable = attrfrac(rr, 1))
})

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 6, fig.height = 4, dpi = 72)
library(rmoriebricklayer)

## ----first-nations-metis-inuit-health-estimates-------------------------------
d <- data.frame(REF_DATE = "2022", GEO = "Canada",
                `Indigenous identity` = rep(c("First Nations", "Metis"), each = 4),
                Statistics = rep(c("Number of persons", "Percent", "Low 95% confidence interval",
                                   "High 95% confidence interval"), 2),
                UOM = rep(c("Persons", "Percent", "Percent", "Percent"), 2),
                VALUE = c(415000, 47.1, 45.2, 49.0, 320000, 50.3, 48.1, 52.5),
                STATUS = "", check.names = FALSE)
scests(d)

## ----first-nations-metis-inuit-health-load, eval = FALSE----------------------
# indtabs("mental health")
# e <- scests("41100067")

## ----first-nations-metis-inuit-health-gap-------------------------------------
h <- indiex("health")
mh <- h[h$period == "2019/2022" & h$age == "Total, 18 years and over" &
          h$indicator == "Perceived mental health, very good or excellent", ]
g <- indgap(mh, "group", "estimate", "lower", "upper", qual = "quality")
g
plot(g)

## ----first-nations-metis-inuit-health-distinctions----------------------------
dt <- dstntst(mh[mh$group != "Non-Indigenous", ], "group", "estimate", "lower", "upper")
dt
plot(dt)

## ----first-nations-metis-inuit-health-ordinal---------------------------------
r <- indiex("mentalhealth")
r <- r[r$region == "Canada", ]
oc <- ordcmp(r, "group", "rating", "estimate", "lower", "upper",
                      lvls = c("Fair or poor", "Good", "Very good", "Excellent"),
                      ref = "M\u00e9tis", qual = "quality")
oc
plot(oc)

## ----first-nations-metis-inuit-health-prevalence------------------------------
si <- indiex("suicide")
si <- si[si$measure == "Seriously contemplated suicide in the past 12 months" &
           si$age != "Total, 15 years and over", ]
si <- si[order(si$group, si$age), ]
sp <- stdprev(si$estimate, si$lower, si$upper, std = c(20, 18, 17, 17, 28),
                             grp = si$group, qual = si$quality)
sp
plot(sp)

## ----first-nations-metis-inuit-health-wellness--------------------------------
wb <- indiex("wellbeing")
w <- welprof(wb, "group", "indicator", "estimate", "lower", "upper",
                      well = c("Life satisfaction rating of 8, 9 or 10",
                                   "Sense of meaning and purpose rating of 8, 9 or 10",
                                   "Always or often has a hopeful outlook"),
                      distress = c("Life satisfaction rating between 0 and 5",
                                   "Rarely or never has a hopeful outlook"),
                      qual = "quality")
plot(w)
frmaud(w)

## ----first-nations-metis-inuit-health-dual------------------------------------
dc <- dualcont(w, "Always or often has a hopeful outlook", "Life satisfaction rating between 0 and 5")
dc
plot(dc)

## ----first-nations-metis-inuit-health-balance---------------------------------
dom <- c("Perceived health, very good or excellent" = "physical",
         "Perceived mental health, very good or excellent" = "mental",
         "Life satisfaction, satisfied or very satisfied" = "emotional",
         "Sense of belonging to local community, somewhat strong or very strong" = "community")
d <- h[h$period == "2019/2022" & h$age == "Total, 18 years and over" & h$indicator %in% names(dom), ]
d$domain <- dom[d$indicator]
hb <- holbal(d, "group", "domain", "estimate", "lower", "upper", qual = "quality")
hb
plot(hb)

## ----first-nations-metis-inuit-health-continuum-------------------------------
mw <- mhcont(wb, "group", "indicator", "estimate", "lower", "upper",
        hope = "Always or often has a hopeful outlook",
        meaning = "Sense of meaning and purpose rating of 8, 9 or 10",
        purp = "Sense of meaning and purpose rating of 8, 9 or 10", qual = "quality")
mw[, c("group", "indicator", "domain", "estimate", "shared")]
plot(mw)

## ----first-nations-metis-inuit-health-healing---------------------------------
hc <- healchg(h[h$age == "Total, 18 years and over", ], "group", "indicator", "period",
                     "estimate", "lower", "upper", from = "2015/2018", to = "2019/2022",
                     qual = "quality",
                     well = c("Perceived mental health, very good or excellent",
                                  "Sense of belonging to local community, somewhat strong or very strong"))
hc <- hc[hc$indicator %in% c("Perceived mental health, very good or excellent",
                             "Sense of belonging to local community, somewhat strong or very strong",
                             "Mood disorder", "Anxiety disorder"), ]
plot(hc)

## ----first-nations-metis-inuit-health-connection------------------------------
r <- indiex("mentalhealth")
r <- r[r$rating == "Excellent or very good" & r$region != "Canada", ]
pair <- merge(r[r$group == "First Nations", ], r[r$group == "M\u00e9tis", ], by = "region",
              suffixes = c("fn", "me"))
ca <- connassoc(pair, "region", "estimatefn", "estimateme", "lowerfn", "upperfn",
                             "lowerme", "upperme")
ca
plot(ca, xlab = "First Nations: excellent or very good (%)",
     ylab = "M\u00e9tis: excellent or very good (%)")

## ----first-nations-metis-inuit-health-community-------------------------------
h2 <- h[h$period == "2019/2022" & h$age == "Total, 18 years and over", ]
ci <- commidx(h2, "group", "indicator", "estimate", "lower", "upper", qual = "quality",
        w = c("Sense of belonging to local community, somewhat strong or very strong" = 2,
                    "Has a regular healthcare provider" = 1,
                    "Perceived life stress, most days quite a bit or extremely stressful" = -2,
                    "Heavy drinking" = -1))
plot(ci)

## ----first-nations-metis-inuit-health-census-foster---------------------------
p <- cnsprof(indiex("censuspop"))
fc <- profshr(p, "Foster children", "Total - Children in census families")
fc <- fc[fc$geo == "Canada" & fc$age == "0 to 14 years" &
           fc$group %in% c("First Nations", "M\u00e9tis", "Inuit", "Non-Indigenous"), ]
fc[, c("residence", "group", "numerator", "denominator", "estimate", "lower", "upper")]
plot(fc[fc$residence == "Total - Residence on or off reserve", ])

## ----first-nations-metis-inuit-health-census-language-------------------------
know <- "Total - Knowledge of Indigenous languages for the population in private households - 25% sample data"
la <- profshr(p, "Indigenous languages", know)
la[la$geo == "Canada" & la$age == "Total - Age groups" & la$residence == "Total - Residence on or off reserve" &
     la$group %in% c("First Nations", "M\u00e9tis", "Inuit"), c("group", "estimate", "lower", "upper")]

## ----first-nations-metis-inuit-health-census-standard-------------------------
cnsstd(p)

## ----first-nations-metis-inuit-health-census-cwb------------------------------
h <- cnsprof(indiex("censushh"))
cw <- cnscwb(p, h)
cw[cw$geo %in% c("Canada", "Nunavut"), c("geo", "group", "income", "education", "housing", "labour", "cwb")]
plot(cw)

## ----first-nations-metis-inuit-health-generations-----------------------------
genexpo(parent = c(TRUE, FALSE, TRUE, NA), gparent = c(TRUE, FALSE, FALSE, TRUE))
et <- exptrnd(cases = c(60, 95, 70), n = c(500, 520, 300))
plot(et)

## ----first-nations-metis-inuit-health-trc-gaps, fig.height = 9----------------
g <- trchlthgap()
g[g$measure %in% c("Life expectancy at birth", "Infant mortality rate"),
  c("measure", "period", "group", "estimate", "refest", "disratio", "lower", "upper")]
plot(g)

## ----first-nations-metis-inuit-health-trc-------------------------------------
p <- trcprog()
p
plot(p)

## ----first-nations-metis-inuit-health-continuity------------------------------
prof <- cnsprof(indiex("censuspop"))
la <- profshr(prof, "Indigenous languages", know)
la <- la[la$age == "Total - Age groups" & la$group == "First Nations" & la$geo != "Canada" &
           la$residence == "Total - Residence on or off reserve", ]
mh2 <- indiex("mentalhealth")
mh2 <- mh2[mh2$rating == "Excellent or very good" & mh2$group == "First Nations", ]
both <- merge(la[c("geo", "estimate", "lower", "upper")], mh2[c("region", "estimate", "lower", "upper")],
              by.x = "geo", by.y = "region", suffixes = c("lang", "mh"))
cc <- connassoc(both, "geo", "estimatelang", "estimatemh", "lowerlang", "upperlang",
                             "lowermh", "uppermh")
cc
plot(cc, xlab = "First Nations who know an Indigenous language (%)",
     ylab = "First Nations: mental health excellent or very good (%)")

## ----first-nations-metis-inuit-health-own-data--------------------------------
own <- data.frame(group = c("Aboriginal", "Torres Strait Islander", "Non-Indigenous Australians"),
                  pct = c(31.2, 27.5, 18.9), rse = c(4.1, 22.0, 1.2), flag = c("", "*", ""))
own <- cbind(own, limfrom(own$pct, cv = own$rse)[c("lower", "upper")])
own$quality <- qltyrcd(own$flag, suppr = "**", caution = "*")
indgap(own, "group", "pct", "lower", "upper", ref = "Non-Indigenous Australians",
               qual = "quality")

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 7, fig.height = 4.2)
library(rmoriebricklayer)

## ----search-and-rescue-list---------------------------------------------------
table(srchfig()$how)

## ----search-and-rescue-f31----------------------------------------------------
srchfig("3-1")

## ----search-and-rescue-f32----------------------------------------------------
srchfig("3-2")
srchfig("3-3")
srchfig("3-5")

## ----search-and-rescue-f34----------------------------------------------------
srchfig("3-4")

## ----search-and-rescue-f36----------------------------------------------------
srchfig("3-6")
srchfig("3-7")

## ----search-and-rescue-f38----------------------------------------------------
srchfig("3-8")
srchfig("3-9")
srchfig("3-10")

## ----search-and-rescue-f311---------------------------------------------------
srchfig("3-11")
srchfig("3-12")

## ----search-and-rescue-f313---------------------------------------------------
srchfig("3-13")
srchfig("3-14")

## ----search-and-rescue-f41, fig.height = 5------------------------------------
srchfig("4-1")

## ----search-and-rescue-f42----------------------------------------------------
srchfig("4-2")
srchfig("4-3")

## ----search-and-rescue-f44----------------------------------------------------
srchfig("4-4")
srchfig("4-5")

## ----search-and-rescue-f46----------------------------------------------------
srchfig("4-6")
srchfig("4-7")
swpwdth(ltrlrng(seq(-500, 500, by = 0.01), W = 1))

## ----search-and-rescue-f51----------------------------------------------------
srchfig("5-1")

## ----search-and-rescue-f52----------------------------------------------------
srchfig("5-2")
srchfig("5-3")
srchfig("5-4")
srchfig("5-5")

## ----search-and-rescue-f56----------------------------------------------------
srchfig("5-6")
srchfig("5-7")
srchpod(c(0.5, 1, 2), "mbeta", m = 0.25)

## ----search-and-rescue-f58----------------------------------------------------
srchfig("5-8")
pswppod(W = 1, S = 1)

## ----search-and-rescue-f59----------------------------------------------------
srchfig("5-9")

## ----search-and-rescue-f61----------------------------------------------------
srchfig("6-1")
srchfig("6-2")

## ----search-and-rescue-f63----------------------------------------------------
optsqr(4)
srchfig("6-3")
srchfig("6-4")

## ----search-and-rescue-f65----------------------------------------------------
srchfig("6-5")

## ----search-and-rescue-f66----------------------------------------------------
srchfig("6-6")

## ----search-and-rescue-own-recipes--------------------------------------------
# an HTML table with each line in <code>: in a Markdown table a `$` starts a formula and a `|`
# ends the cell, so both are written as entities
tab <- srchfig()[, c("fig", "caption", "yours")]
esc <- function(x) {
  for (r in list(c("&", "&amp;"), c("<", "&lt;"), c(">", "&gt;"), c("$", "&#36;"), c("|", "&#124;"))) {
    x <- gsub(r[1], r[2], x, fixed = TRUE)
  }
  x
}
tab$caption <- esc(tab$caption)
tab$yours <- sprintf("<code>%s</code>", esc(tab$yours))
knitr::kable(tab, format = "html", escape = FALSE, row.names = FALSE,
             col.names = c("Figure", "Caption", "From your own numbers"))

## ----search-and-rescue-own-lateral--------------------------------------------
lr <- ltrlrng(seq(-3, 3, by = 0.05), W = 0.8)
plot(lr)
plot(lr, equiv = TRUE)

## ----search-and-rescue-own-sweep----------------------------------------------
d <- c(-3, -2, -1.5, -1, -0.5, -0.25, 0, 0.25, 0.5, 1, 1.5, 2, 3)
p <- c(0.01, 0.08, 0.2, 0.45, 0.75, 0.9, 0.95, 0.9, 0.75, 0.45, 0.2, 0.08, 0.01)
swpwdth(d, p)

## ----search-and-rescue-own-pod------------------------------------------------
pd <- srchpod(seq(0, 3, by = 0.1), model = "invcube")
plot(pd)
pswppod(W = 0.8, S = 1, navsd = 0.1)

## ----search-and-rescue-own-update---------------------------------------------
srchscs(poc = c(0.5, 0.3, 0.2), pod = c(0.8, 0.5, 0))

## ----search-and-rescue-plan-map-----------------------------------------------
xe <- seq(-4, 8, by = 0.5)
ye <- seq(-3, 9, by = 0.5)
m <- datumpmap(xe, ye, center = c(2, 3), sigma = 1.5)
plot(m)

## ----search-and-rescue-plan-day1----------------------------------------------
day1 <- opteffort(m, W = 0.6, effort = 40)
day1$pos
plot(day1)

## ----search-and-rescue-plan-day2----------------------------------------------
upd <- srchscs(as.vector(m$poc), as.vector(day1$pod))
poc2 <- matrix(upd$pocupd, nrow = nrow(m$poc))
day2 <- opteffort(poc2, area = rep(0.25, length(poc2)), W = 0.6, effort = 40)
day2$pos

## ----search-and-rescue-grid---------------------------------------------------
m <- datumpmap(seq(-6, 6, by = 0.5), seq(-6, 6, by = 0.5), sigma = 2)
a <- opteffort(m, W = 1, effort = 30)
a$pos
optcrcsrch(sigma = 2, W = 1, effort = 30)$pos
plot(a)
srchscs(c(0.5, 0.3, 0.2), c(0.8, 0.5, 0))

