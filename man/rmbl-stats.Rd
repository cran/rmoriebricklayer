\name{rmbl-stats}
\alias{agestd}
\alias{aipwcf}
\alias{attrfrac}
\alias{bacondcmp}
\alias{baltab}
\alias{bandsens}
\alias{format.rmbl_band_sensitivity}
\alias{print.rmbl_band_sensitivity}
\alias{bandvals}
\alias{benfordtst}
\alias{bufasgn}
\alias{cbootmean}
\alias{ccovm}
\alias{cgamcdf}
\alias{chgenv}
\alias{chwkfit}
\alias{chwkjit}
\alias{chwknll}
\alias{chwkres}
\alias{chwksim}
\alias{cipw}
\alias{clncolnms}
\alias{cmlrisk}
\alias{cmom}
\alias{cnormlpdf}
\alias{cnormpdf}
\alias{cnttrnd}
\alias{co2fp}
\alias{co2int}
\alias{co2inttab}
\alias{commidx}
\alias{concentration}
\alias{ginicoef}
\alias{lorenzc}
\alias{topshr}
\alias{connassoc}
\alias{cortbl}
\alias{cpsdrft}
\alias{cpsfals}
\alias{cpspwr}
\alias{cramerv}
\alias{crank}
\alias{cspr}
\alias{cmidrk}
\alias{crfpm25}
\alias{crfno2}
\alias{crob}
\alias{cqnt}
\alias{cmed}
\alias{cmad}
\alias{ciqr}
\alias{ctkyfnc}
\alias{csha256}
\alias{cspread}
\alias{csdev}
\alias{cdistm}
\alias{cstat}
\alias{cmn}
\alias{cvari}
\alias{ccorr}
\alias{ctrm}
\alias{ctrmmean}
\alias{cwinsmean}
\alias{cunif}
\alias{cwbscr}
\alias{cwtd}
\alias{drftcal}
\alias{drftchisq}
\alias{drfthomog}
\alias{drftks}
\alias{drftpsi}
\alias{drp}
\alias{drpempty}
\alias{drpconst}
\alias{dstfit}
\alias{format.rmbl_dstfit}
\alias{print.rmbl_dstfit}
\alias{dstn}
\alias{dstnskch}
\alias{dstncnt}
\alias{skchmrg}
\alias{dstntst}
\alias{dtctloc}
\alias{dualcont}
\alias{ebrates}
\alias{envdiff}
\alias{evstudy}
\alias{expbands}
\alias{expcnts}
\alias{expconcidx}
\alias{exprspplr}
\alias{exptrnd}
\alias{fnllim}
\alias{fpeqv}
\alias{freqtbl}
\alias{frmaud}
\alias{genexpo}
\alias{healchg}
\alias{hilltlidx}
\alias{holbal}
\alias{hotpers}
\alias{hurwzeta}
\alias{indgap}
\alias{indiex}
\alias{indtabs}
\alias{inlhist}
\alias{limfrom}
\alias{mahaoutl}
\alias{mcartst}
\alias{mhcont}
\alias{missgrid}
\alias{misspat}
\alias{missruns}
\alias{morani}
\alias{mortdisp}
\alias{mtchdid}
\alias{onl}
\alias{onlsmry}
\alias{smryupd}
\alias{smrymrg}
\alias{smrystat}
\alias{ordcmp}
\alias{perminf}
\alias{pgsig}
\alias{briggs}
\alias{gplume}
\alias{gspuff}
\alias{advdif2d}
\alias{lagrprt}
\alias{piperate}
\alias{plndid}
\alias{plndml}
\alias{plnpois}
\alias{plnpwr}
\alias{plot.rmbl_dstfit}
\alias{plothwk}
\alias{plrcf}
\alias{polbrdarea}
\alias{polbrdn}
\alias{polex}
\alias{prsbands}
\alias{pubbnd}
\alias{qltyrcd}
\alias{raplok}
\alias{ratechg}
\alias{ratechg.default}
\alias{ratechg.data.frame}
\alias{rategap}
\alias{rsv}
\alias{rsvidx}
\alias{rsvsmp}
\alias{rtcalc}
\alias{rtcalc.data.frame}
\alias{rtcalc.default}
\alias{scanadj}
\alias{scests}
\alias{sctidy}
\alias{sevidx}
\alias{shrs}
\alias{shrs.data.frame}
\alias{shrs.default}
\alias{sprd}
\alias{stdinc}
\alias{stdprev}
\alias{stepchg}
\alias{stgatt}
\alias{stpdnpv}
\alias{svycmp}
\alias{svydes}
\alias{svyest}
\alias{swtdid}
\alias{synctl}
\alias{syndid}
\alias{topcors}
\alias{trccmpl}
\alias{trcprog}
\alias{trndtst}
\alias{tse}
\alias{vrfpol}
\alias{polrpttxt}
\alias{wcb}
\alias{welprof}
\alias{yoybnd}
\alias{yoypv}
\title{Statistics and analysis}
\usage{

agestd(events, pop, std, grp = NULL, per = 1e+05, conflvl = 0.95)


aipwcf(
  data,
  y,
  trt,
  covs,
  estd = c("ATE", "ATT"),
  lrn = "lasso",
  basis = c("linear", "poly2"),
  w = NULL,
  des = NULL,
  folds = 5L,
  trim = 0.01,
  seed = 1L,
  conflvl = 0.95
)


attrfrac(rr, expoprev, rrlo = NULL, rrup = NULL)


bacondcmp(data, unit, time, y, trtd)


baltab(data, grp, covs, w = NULL)


bandsens(bands, cnts, stat = ginicoef, caps = NULL, rule = "midpoint")

\method{format}{rmbl_band_sensitivity}(x, digits = 4L, ...)

\method{print}{rmbl_band_sensitivity}(x, ...)


bandvals(
  bands,
  rule = c("midpoint", "lower", "upper", "geometric"),
  openupcap = NULL,
  openupfac = 2,
  openloflr = NULL
)


benfordtst(x)


bufasgn(x, y, sitex, sitey, comx, comy, radius, buffer = 3 * radius)


cbootmean(x, B = 1000L, seed = 42L)


ccovm(x)


cgamcdf(shape, x)


chgenv(now, prev, pop = NULL, prepop = NULL, per = 1000)


chwkfit(
  times,
  hor,
  kernel = c("exponential", "weibull", "gamma", "lomax"),
  base = c("constant", "sinusoidal"),
  meth = "auto",
  eps = 1e-09,
  start = NULL
)


chwkjit(times, res = 1, seed = 42, hor = Inf)


chwknll(
  times,
  hor,
  kernel = c("exponential", "weibull", "lomax", "gamma"),
  par = NULL
)


chwkres(
  times,
  hor,
  kernel = c("exponential", "weibull", "gamma", "lomax"),
  par,
  base = c("constant", "sinusoidal")
)


chwksim(fit, hor = NULL, seed = 1L)


cipw(treat, ps, trimlo = 0.01, trimhi = 0.99)


clncolnms(
  data,
  case = c("snake", "lower_camel", "upper_camel", "screaming_snake", "none"),
  sep = "_",
  quiet = FALSE
)


cmlrisk(age, fireve, pop, atrisk = NULL, dthrate = NULL, conflvl = 0.95)


cmom(x)


cnormlpdf(x, mean = 0, sd = 1)


cnormpdf(x, mean = 0, sd = 1)


cnttrnd(y, x = NULL, offset = NULL, conflvl = 0.95)


co2fp(
  expr,
  loc = NULL,
  meth = c("auto", "rapl", "model"),
  cpupwrw = NULL,
  usage = "process",
  loadcur = c("linear", "codecarbon"),
  cores = NULL,
  memgb = NULL,
  mempwrwpergb = 0.3725,
  pue = 1,
  rapldir = "/sys/class/powercap",
  procstat = "/proc/stat"
)


co2int(loc = "WORLD")

co2inttab()


commidx(
  data,
  grp,
  ind,
  est,
  lower,
  upper,
  w = NULL,
  qual = NULL,
  conflvl = 0.95
)


ginicoef(x, na.rm = TRUE)

lorenzc(x, na.rm = TRUE)

topshr(x, fracs = c(0.01, 0.05, 0.1, 0.25), na.rm = TRUE)


connassoc(
  data,
  place,
  x,
  y,
  xlo = NULL,
  xup = NULL,
  ylo = NULL,
  yup = NULL,
  reps = 10000,
  seed = 1,
  conflvl = 0.95
)


cortbl(data, meth = c("spearman", "pearson"), minprs = 3L)


cpsdrft(
  ref,
  cur,
  alpha = 0.01,
  psithr = 0.25,
  psiminn = 1000L,
  bins = 10L,
  idelvls = 100L,
  seed = 1L
)


cpsfals(data, stat, trt = NULL, n = 199L, subfrac = 0.8, seed = NULL)


cpspwr(
  data,
  stat,
  inject,
  sizes = c(0, 0.2, 0.5),
  trt = NULL,
  n = 99L,
  reps = 10L,
  alpha = 0.05,
  seed = NULL
)


cramerv(tbl, biascor = TRUE, minexp = 5, seed = 1L)


cspr(x, y)

cmidrk(x)


crfpm25(expo, y = "allcause", refconc = 5.8)

crfno2(expo, y = "allcause", refconc = 10, betaper10 = NULL)


cqnt(x, probs = c(0, 0.25, 0.5, 0.75, 1))

cmed(x)

cmad(x, const = 1.4826)

ciqr(x)

ctkyfnc(x, k = 1.5)


csha256(x)


csdev(x, ddof = 1L)

cdistm(a, b)


cmn(x)

cvari(x)

ccorr(x, y)


ctrmmean(x, trim = 0.1)

cwinsmean(x, trim = 0.1)


cunif(n, seed)


cwbscr(
  incpercap,
  highsch20p,
  uni25p,
  notcro,
  nomajrep,
  partic,
  empl,
  bounds = c(2650, 75000)
)


cwtd(x, w)


drftcal(data, n = 50L, alpha = 0.01, seed = 1L, ...)


drftchisq(obs, expd)


drfthomog(x, y, seed = 1L)


drftks(x, y)


drftpsi(x, y, bins = 10L, eps = 1e-06)


drpempty(data, which = c("rows", "cols"), quiet = FALSE)

drpconst(data, naasval = FALSE, quiet = FALSE)


dstfit(x, fams = NULL, nboot = 200L, conflvl = 0.95, seed = 1L, k = NULL)

\method{format}{rmbl_dstfit}(x, digits = 4L, ...)

\method{print}{rmbl_dstfit}(x, ...)


dstnskch(x, p = 14L, regstr = NULL)

dstncnt(regstr)

skchmrg(a, b)


dstntst(
  data,
  grp,
  est,
  lower,
  upper,
  qual = NULL,
  conflvl = 0.95,
  pooled = NULL
)


dtctloc(
  envloc = Sys.getenv("RMBL_LOCATION"),
  codloc = Sys.getenv("CODECARBON_COUNTRY_ISO_CODE"),
  tz = Sys.timezone(),
  locale = Sys.getlocale("LC_TIME")
)


dualcont(x, well, distress, conflvl = 0.95)


ebrates(obs, expd, area = NULL)


envdiff(a, b)


evstudy(
  data,
  unit,
  time,
  y,
  ftreat,
  leads = 4L,
  lags = 4L,
  ref = -1L,
  bin = TRUE,
  covs = NULL,
  cl = NULL,
  conflvl = 0.95,
  w = NULL
)


expbands(bands, cnts, ..., drpunp = FALSE)


expcnts(cnts, pop, area, strata = NULL)


expconcidx(data, expo, income)


exprspplr(data, y, expo, confs, nboot = 100L, rstate = 42L, estr = plrcf)


exptrnd(cases, n, dose = seq_along(cases) - 1L, conflvl = 0.95)


fnllim(expd, target = 1, lvls = c(0.95, 0.998))


fpeqv(co2eg)


freqtbl(data, col = NULL, maxlvl = 25L, sort = TRUE)


frmaud(x)


genexpo(parent, gparent, partial = c("na", "lowerbnd"))


healchg(
  data,
  grp,
  ind,
  prd,
  est,
  lower,
  upper,
  from,
  to,
  well = NULL,
  qual = NULL,
  conflvl = 0.95,
  distress = NULL
)


hilltlidx(x, xmin = NULL, discrete = TRUE, approx = FALSE, mintl = 3L)


holbal(
  data,
  grp,
  domain,
  est,
  lower,
  upper,
  w = NULL,
  qual = NULL,
  reps = 10000,
  seed = 1,
  conflvl = 0.95
)


hotpers(lon, lat, prd, cell = 0.25, top = 0.05, xy = c("lonlat", "planar"))


hurwzeta(s, q = 1)


indgap(
  data,
  grp,
  est,
  lower,
  upper,
  ref = "Non-Indigenous",
  qual = NULL,
  conflvl = 0.95,
  pooled = NULL
)


indiex(
  name = c("health", "mentalhealth", "wellbeing", "suicide",
           "censuspop", "censushh", "lifeexp", "infantmort")
)


indtabs(pat = NULL, refresh = FALSE)


inlhist(x, bins = 10L)


limfrom(est, se = NULL, cv = NULL, moe = NULL, moelev = 0.9, conflvl = 0.95)


mahaoutl(data, alpha = 0.001, robust = TRUE)


mcartst(data, maxit = 500L, tol = 1e-07)


mhcont(
  data,
  grp,
  ind,
  est,
  lower,
  upper,
  hope = NULL,
  belong = NULL,
  meaning = NULL,
  purp = NULL,
  qual = NULL,
  conflvl = 0.95
)


missgrid(data, height = 20L, width = 12L)


misspat(data, maxpat = 20L)


missruns(data, minrun = 2L)


morani(x, nbrs, style = c("W", "B"), nperm = 9999L)


mortdisp(expdel, pop, brate, betaperunit, rare = FALSE, hirate = FALSE)


mtchdid(
  data,
  unit,
  time,
  y,
  ftreat,
  covs = NULL,
  ratio = 1L,
  exact = NULL,
  caliper = NULL,
  covm = c("pooled", "full"),
  conflvl = 0.95,
  cl = NULL
)


onlsmry(x = NULL)

smryupd(acc, x)

smrymrg(a, b)

smrystat(acc)


ordcmp(
  data,
  grp,
  cat,
  est,
  lower,
  upper,
  lvls,
  ref,
  qual = NULL,
  conflvl = 0.95,
  pooled = NULL
)


perminf(
  data,
  unit,
  time,
  y,
  ftreat,
  cl = NULL,
  stat = c("t", "estimate"),
  reps = 999L,
  seed = NULL,
  ties = c("count", "strict")
)


pgsig(x, stab = "D", set = "rural")

briggs(
  x,
  u,
  diam,
  exitvel,
  stktmp,
  ambtmp,
  stab = "D",
  dthdz = NULL,
  g = 9.80616
)

gplume(q, u, h, rcpt, stab = "D", set = "rural", mixh = NULL, nimg = 3)

gspuff(mass, u, h, rcpt, t, stab = "D", set = "rural", mixh = NULL, nimg = 3)

advdif2d(c0, u, v, kx, ky, dx, dy, dt, nsteps, source = NULL, maxwork = 1e+08)

lagrprt(
  n,
  x0,
  y0,
  u,
  v,
  kx,
  ky,
  dt,
  nsteps,
  seed = 0,
  grid = NULL,
  normals = NULL,
  maxwork = 1e+08
)


piperate(num, den, win = 12L, lag = 0L, grp = NULL)


plndid(
  data,
  unit,
  time,
  y,
  trtd,
  covs = NULL,
  cl = NULL,
  fe = c("unit", "time"),
  w = NULL,
  comb = NULL,
  conflvl = 0.95
)


plndml(
  data,
  unit,
  time,
  y,
  trt,
  covs,
  fe = c("unit", "time"),
  lrn = "lasso",
  basis = c("linear", "poly2"),
  folds = 5L,
  nrep = 1L,
  seed = 1L,
  cl = NULL,
  conflvl = 0.95
)


plnpois(
  data,
  unit,
  time,
  y,
  trtd,
  covs = NULL,
  offset = NULL,
  cl = NULL,
  family = c("poisson", "negbin"),
  conflvl = 0.95
)


plnpwr(
  data,
  unit,
  time,
  y,
  ntrt,
  adopt,
  eff = NULL,
  cl = NULL,
  reps = 200L,
  alpha = 0.05,
  power = 0.8,
  seed = NULL
)


\method{plot}{rmbl_dstfit}(
  x,
  ...,
  which = c("density", "qq", "pp", "tail"),
  fams = NULL,
  main = NULL,
  col = NULL,
  palette = NULL
)


plothwk(
  fit,
  times,
  what = c("intensity", "qq", "tree"),
  ngrid = 600L,
  ...,
  main = NULL,
  col = NULL,
  pal = NULL
)


plrcf(data, y, trt, covs, kfol = 5L, seed = 1L)


polbrdarea(
  areatab,
  areacol = "fsa",
  expcol = "exposure",
  popcol = "population",
  basratecol = "brate",
  poll = "NO2",
  y = "allcause",
  rare = FALSE,
  hirate = FALSE
)


polbrdn(
  expomean,
  expoprev,
  brate,
  pop,
  poll = "NO2",
  y = "allcause",
  refconc = NULL,
  rare = FALSE,
  hirate = FALSE
)


polex(seed = 20240101)


prsbands(x, clsup = TRUE, intsca = TRUE)


pubbnd(
  x,
  rnd = NULL,
  rndkind = c("nearest", "random"),
  suplim = NULL,
  supmar = c("x", "X", "s", "..", "F", "suppressed", "n/a")
)


qltyrcd(x, suppr = c("F", "x", "..", "..."), caution = "E")


raplok(rapldir = "/sys/class/powercap")


ratechg(x, ...)

\method{ratechg}{default}(x, ...)

\method{ratechg}{data.frame}(
  x,
  count,
  pop,
  prd,
  by = NULL,
  lag = 1L,
  per = 1000,
  conflvl = 0.95,
  mincnt = 0,
  prdord = NULL,
  ...
)


rategap(x, grp, ref)


rsvidx(n, k, seed = 42L)

rsvsmp(x, k, seed = 42L)


rtcalc(x, ...)

\method{rtcalc}{data.frame}(x, count, pop, by = NULL, per = 1000,
  conflvl = 0.95, mincnt = 0, ...)

\method{rtcalc}{default}(x, pop, per = 1000, conflvl = 0.95, mincnt = 0, ...)


scanadj(x, meth = "BH", alpha = 0.05)


scests(x)


sctidy(x)


sevidx(data, unit, time, offence, count, w, pop = NULL, per = 1e+05)


shrs(x, ...)

\method{shrs}{data.frame}(x, count = NULL, by = NULL, total = NULL, conflvl = 0.95, ...)

\method{shrs}{default}(x, total = NULL, conflvl = 0.95, ...)


sprd(
  x,
  des = c("auto", "sample", "census", "finite"),
  N = NULL,
  w = NULL,
  wtype = c("frequency", "reliability"),
  narm = FALSE
)


stdinc(obs, expd, area = NULL, conflvl = 0.95)


stdprev(
  est,
  lower,
  upper,
  std,
  grp = NULL,
  qual = NULL,
  conflvl = 0.95,
  scale = 100
)


stepchg(y, x = NULL, minseg = 2L, nperm = 9999L, seed = 1L)


stgatt(
  data,
  unit,
  time,
  y,
  ftreat,
  ctrl = c("notyet", "never"),
  meth = c("csa", "wooldridge"),
  cl = NULL,
  reps = 499L,
  seed = NULL,
  conflvl = 0.95,
  covs = NULL,
  estmeth = c("dr", "ipw", "reg")
)


stpdnpv(obs, null)


svycmp(
  des,
  data,
  y,
  by = NULL,
  stat = c("mean", "total", "proportion", "ratio"),
  den = NULL,
  lvls = NULL,
  ref = NULL,
  conflvl = 0.95
)


svydes(
  data,
  w,
  strata = NULL,
  psu = NULL,
  fpc = NULL,
  reps = NULL,
  id = NULL,
  type = c("bootstrap", "meanboot", "jk1", "jkn", "brr", "fay"),
  msize = 1,
  rho = NULL,
  mse = TRUE,
  lonely = c("fail", "remove", "adjust"),
  rscales = NULL,
  degf = NULL
)


svyest(
  des,
  data,
  y,
  by = NULL,
  stat = c("mean", "total", "proportion", "ratio"),
  den = NULL,
  lvls = NULL,
  conflvl = 0.95,
  ci = c("auto", "wilson", "logit", "wald"),
  minn = 30,
  df = Inf
)


swtdid(
  data,
  unit,
  time,
  y,
  trtd,
  cl = NULL,
  reps = 499L,
  seed = NULL,
  conflvl = 0.95
)


synctl(data, unit, time, y, treunit, adopt, plac = TRUE)


syndid(data, unit, time, y, ftreat, reps = 200L, seed = NULL, conflvl = 0.95)


topcors(data, n = 10L, meth = c("spearman", "pearson"), minabs = 0)


trccmpl()


trcprog(
  done = trccmpl()$cumulative,
  yearend = trccmpl()$yearend,
  total = 94,
  start = 2015.96,
  conflvl = 0.95
)


trndtst(
  y,
  x = NULL,
  value = NULL,
  prd = NULL,
  exact = NULL,
  alt = c("two.sided", "increasing", "decreasing"),
  conflvl = 0.95
)


tse(
  x,
  mbar = c(0, 0.5, 1, 1.5, 2),
  target = "average",
  draws = 5000L,
  seed = NULL,
  conflvl = 0.95
)


vrfpol(
  poll,
  y = "allcause",
  reg = NULL,
  years = NULL,
  demo = FALSE,
  expcsv = NULL,
  expomean = NULL,
  expoprev = NULL,
  ref = NULL,
  brate = 500,
  basrateper = 1e+05,
  pop = 1e+06,
  rare = FALSE,
  hirate = FALSE
)

polrpttxt(report)


wcb(
  data,
  unit,
  time,
  y,
  trtd,
  covs = NULL,
  cl = NULL,
  reps = 9999L,
  wtype = c("rademacher", "webb"),
  seed = NULL,
  ties = c("count", "strict"),
  conflvl = 0.95
)


welprof(
  data,
  grp,
  ind,
  est,
  lower,
  upper,
  well,
  distress,
  domain = NULL,
  qual = NULL
)


yoybnd(y, rnd = NULL, rndkind = c("nearest", "random"), suplim = NULL)


yoypv(y)

}
\arguments{
\item{events}{Numbers of events and of people, one per age group (and
group).}
\item{pop}{For \code{agestd}: Numbers of events and of people, one per age group (and
group).

For \code{chgenv}: Optional numeric exposures (for
example residents) for a rate envelope of the current and the previous
cell; the rate is \code{per * count / population}. Default \code{NULL}.
\code{prepop} is used only with \code{pop}.

For \code{cmlrisk}: The population at each age.

For \code{expcnts}: Numeric vector of the population at risk (positive),
the same length as \code{cnts}.

For \code{mortdisp}: At-risk population, a non-negative number of persons.

For \code{polbrdn}: At-risk population (persons; any non-negative number).

For \code{ratechg}: Column of exposure (unquoted or a string): positive.

For \code{rtcalc}: For the data-frame method, the column of exposure,
unquoted or as a string; for the default method, a numeric vector the
length of \code{x} (or one number, recycled). Positive. Person-years,
stops, residents -- whatever the events were at risk of happening to.

For \code{sevidx}: Optional column name of the population; without it \code{count}
is taken as a rate already.

For \code{vrfpol}: Population at risk (persons).}
\item{std}{For \code{agestd}: The standard population, one count per age group (its shares are
the weights).

For \code{stdprev}: The standard population, one count (or share) per age group.}
\item{grp}{For \code{agestd}: Optional labels: one rate per group, each over the same age groups
in the same order.

For \code{baltab}: Column name of the 0/1 group (1 = treated).

For \code{commidx}: Column names; every indicator must be on one
scale (percent, for example: a rate per 1,000 beside a percentage makes the
weights meaningless).

For \code{dstntst}: Column names.

For \code{healchg}: Column names: the change is in the
estimate's own units (percentage points for percentages).

For \code{holbal}: Column names: the group, the domain of the
indicator (any set of domains: Medicine Wheel, Te Whare Tapa Wha, a
Nation's own), the percentage of wellness (0 to 100, strictly inside;
multiply proportions by 100) and its published limits.

For \code{indgap}: Column names: the group label, the estimate, and
its published confidence limits, on one scale.

For \code{mhcont}: Column names: the group, the indicator,
the estimate (percent) and its published limits.

For \code{ordcmp}: Column names: the group, the category, the
share in it (percent or proportion: only relative shares matter) and its
published limits on the same scale.

For \code{piperate}: Optional grouping (for example a court or municipality), the
counts in period order within it.

For \code{rategap}: The labels of the group and of the reference group.

For \code{stdprev}: Optional labels, one per row: one result per group. Rows are
matched to \code{std} by position, so order each group's rows by age in the
order of \code{std} (sort by an age order, not alphabetically).

For \code{welprof}: Column names: the group, the indicator,
the percentage and its published limits.}
\item{per}{For \code{agestd}: Rate per this many people (default 100,000).

For \code{chgenv}: Numeric scalar, the rate base when exposures are given; default
\code{1000} (per 1,000).

For \code{ratechg}, \code{rtcalc}: The rate denominator: a positive number, or \code{"1k"},
\code{"10k"}, \code{"100k"}, \code{"1m"}. Default 1000.

For \code{sevidx}: Rate base (default 100000).}
\item{conflvl}{For \code{agestd}: Confidence level of the Fay-Feuer intervals (default 0.95).

For \code{aipwcf}: Confidence level of the interval (default 0.95).

For \code{cmlrisk}: Confidence level of the cumulative risk limits (default 0.95).

For \code{cnttrnd}: Number in (0, 1), default 0.95: the confidence level of
the rate-ratio interval.

For \code{commidx}: Confidence level of each group's index limits (default 0.95).

For \code{connassoc}: Confidence level of rho's drawn interval (default 0.95).

For \code{dstfit}: Number in (0, 1), default 0.95: the bootstrap and Hill
interval level.

For \code{dstntst}: Confidence level of the published intervals, and the level of
the verdict printed (default 0.95).

For \code{dualcont}: Confidence level of the published intervals and of the ratio
(default 0.95).

For \code{evstudy}, \code{mtchdid}, \code{plndid}, \code{plndml}, \code{plnpois}, \code{stgatt}, \code{swtdid}, \code{syndid}, \code{wcb}: Confidence level of the intervals reported (default 0.95).

For \code{exptrnd}: Confidence level of the odds ratios' intervals (default 0.95).

For \code{healchg}: Confidence level of each change's interval (default 0.95).

For \code{holbal}: Confidence level of the balance intervals (default 0.95).

For \code{indgap}: The confidence level of the published intervals and of the
ones returned (default 0.95).

For \code{limfrom}: The level of the limits returned (default 0.95).

For \code{mhcont}: Confidence level of the published intervals (default 0.95).

For \code{ordcmp}: Confidence level of the published limits and of the result
(default 0.95).

For \code{ratechg}, \code{rtcalc}, \code{shrs}: Number in (0, 1), default 0.95: the confidence level of
the interval.

For \code{stdinc}: Number in (0, 1), default \code{0.95}: the two-sided
confidence level of the interval.

For \code{stdprev}: Confidence level of the prevalence intervals (default 0.95).

For \code{svycmp}, \code{svyest}: Numeric scalar in (0, 1), the confidence level; default
\code{0.95}.

For \code{trcprog}: Confidence level of the completion rate (default 0.95).

For \code{trndtst}: Number in (0, 1), default 0.95: the confidence level of
the slope interval.

For \code{tse}: Confidence level of the robust interval, a number strictly
between 0 and 1 (default 0.95: the 2.5\\% and 97.5\\% quantiles of the
drawn bounds).}
\item{data}{For \code{aipwcf}: A data frame, one row per person.

For \code{bacondcmp}, \code{evstudy}, \code{mtchdid}, \code{perminf}, \code{plndid}, \code{plndml}, \code{plnpois}, \code{plnpwr}, \code{stgatt}, \code{swtdid}, \code{synctl}, \code{syndid}, \code{wcb}: A data frame, one row per unit and period.

For \code{baltab}: A data frame, one row per unit.

For \code{clncolnms}: A data frame, or a character vector of names.

For \code{commidx}: A data frame, one row per group (or place) and indicator.

For \code{connassoc}: A data frame, one row per place.

For \code{cortbl}: A data frame; its numeric columns are correlated in pairs.

For \code{cpsfals}: A data frame that the statistic \code{stat} is computed on.

For \code{cpspwr}: A data frame, passed to \code{stat} and \code{inject}.

For \code{drftcal}: The capsule's data frame.

For \code{drp}: A data frame whose empty rows or columns are dropped.

For \code{dstntst}: A data frame, one row per group.

For \code{expconcidx}: A data frame with one row per person or area.

For \code{exprspplr}, \code{plrcf}: A data frame with one row per unit.

For \code{freqtbl}: A data frame, or a vector.

For \code{healchg}: A data frame, one row per group, indicator and period.

For \code{holbal}, \code{welprof}: A data frame, one row per group and indicator (as
\code{\link{scests}} gives).

For \code{indgap}: A data frame, one row per group (filtered to one period, age
group, sex and place: a group appearing twice is refused).

For \code{mahaoutl}: A data frame or numeric matrix; non-numeric
columns are dropped. Rows with any missing value are skipped, and
reported as \code{NA}.

For \code{mcartst}: A data frame or numeric matrix. Non-numeric
columns are dropped with a warning, since the statistic is defined on
moments.

For \code{mhcont}: A data frame, one row per group and indicator.

For \code{missgrid}: A data frame whose missing cells are drawn as a grid.

For \code{misspat}: A data frame whose missingness patterns are counted.

For \code{missruns}: A data frame, in the row order that carries meaning.

For \code{ordcmp}: A data frame, one row per group and category (as
\code{\link{scests}} gives, filtered to one geography, age group and
gender).

For \code{sevidx}: A data frame, one row per unit, period and offence.

For \code{svycmp}, \code{svyest}: The data frame the design was built on.

For \code{svydes}: A data frame, one row per respondent.

For \code{topcors}: A data frame; its numeric pairs are ranked by correlation.}
\item{y}{For \code{aipwcf}: Column names: the outcome and the 0/1 treatment.

For \code{bacondcmp}, \code{evstudy}, \code{mtchdid}, \code{plndid}, \code{plndml}, \code{plnpois}, \code{plnpwr}, \code{stgatt}, \code{swtdid}, \code{synctl}, \code{syndid}, \code{wcb}: Column names: the unit, the period (numeric, for example a
year or a month index) and the outcome.

For \code{bufasgn}: Coordinates of the places.

For \code{cnttrnd}: Numeric vector of counts (non-negative whole numbers), in period
order.

For \code{connassoc}: Columns of the two indicators.

For \code{crank}: Numeric (or logical) vectors of the same length.

For \code{crfpm25}: PM2.5: \code{"allcause"}, \code{"ihd"} or
\code{"stroke"} (deaths). NO2: \code{"allcause"} and
\code{"respiratory"} (deaths; Huangfu and Atkinson 2020, RR 1.02 and
1.03 per 10 micrograms per cubic metre) or \code{"chiast"}
(incident cases, not deaths; Khreis et al. 2017, OR 1.05 per 4
micrograms per cubic metre, scaled to per 10).

For \code{cstat}: Numeric (or logical) vectors. \code{ccorr()} needs
\code{x} and \code{y} of the same length.

For \code{drfthomog}: Factor or character vectors (or named count
vectors) -- the reference and the new sample.

For \code{drftks}: Numeric vectors, the reference and the new sample. Logical
vectors are read as 0/1.

For \code{drftpsi}: Numeric vectors, the reference and the new sample.
Binned on the quantiles of \code{x}, so the reference defines the bins.

For \code{exprspplr}: Column names: the outcome and the
exposure (single strings) and the confounders (one or more strings).

For \code{perminf}: One outcome column, or several.

For \code{plrcf}: Column names (single strings) of the outcome
and of the continuous treatment or exposure; both numeric.

For \code{polbrdarea}: Passed to
\code{\link{polbrdn}} for every area: the pollutant
(default \code{"NO2"}), the outcome (default all-cause mortality), and
the switches that admit a rate below 1e-5 or above 0.1 per
person-year.

For \code{polbrdn}: Outcome key passed to the concentration-response function;
\code{extra$unit} says whether the attributable count is deaths or
incident cases.

For \code{stepchg}: Numeric vector, the series in period order.

For \code{svycmp}, \code{svyest}: Character scalar, the analysis column: numeric for a mean, total
or ratio; any type for a proportion (each distinct value is a category).

For \code{trndtst}: Numeric vector, the series in period order, or a data frame.

For \code{vrfpol}: Outcome key for the concentration-response function; the
mortality outcomes count deaths, \code{"chiast"} incident
cases.

For \code{yoybnd}: An \code{rmbl_yoy} object from \code{\link[=yoy]{yoy()}}, with counts as
values.

For \code{yoypv}: An \code{rmbl_yoy} object from \code{\link{yoy}} with
\code{units = "count"}.}
\item{trt}{For \code{aipwcf}: Column names: the outcome and the 0/1 treatment.

For \code{cpsfals}: Name of the column the finding is
about, permuted for the permutation and placebo controls. Optional:
without it those two controls are skipped and reported as such rather
than silently omitted.

For \code{cpspwr}: Name of the column permuted to build the null, as
in \code{\link[=cpsfals]{cpsfals()}}. Required.

For \code{plndml}: Column name of the treatment (continuous, or 0/1).

For \code{plrcf}: Column names (single strings) of the outcome
and of the continuous treatment or exposure; both numeric.}
\item{covs}{For \code{aipwcf}: Column names of the confounders (numeric; code categories as
indicators).

For \code{baltab}: Column names to compare.

For \code{evstudy}, \code{plndid}, \code{plnpois}, \code{wcb}: Optional column names of time-varying controls.

For \code{mtchdid}: Optional covariate columns to match on (their pre-period means).

For \code{plndml}: Column names of the time-varying covariates.

For \code{plrcf}: Column names of the confounders (one or more strings),
numeric. Code a categorical confounder as indicator columns first.

For \code{stgatt}: Optional column names of covariates for conditional parallel
trends (\code{meth = "csa"} only).}
\item{estd}{\code{"ATE"} (default) or \code{"ATT"}.}
\item{lrn}{For \code{aipwcf}: The outcome learner (as in \code{\link{plndml}}).

For \code{plndml}: \code{"lasso"} (default), \code{"ridge"}, \code{"ols"}, or a
function.}
\item{basis}{\code{"linear"} (default) or \code{"poly2"}.}
\item{w}{For \code{aipwcf}: Optional column name of survey or sampling weights.

For \code{baltab}: Optional column name of weights.

For \code{commidx}: Named weights, one per indicator used: positive for a protective
factor, negative for a risk factor.

For \code{cwtd}: Numeric vector of non-negative weights, the same length as
\code{x}. Only their relative sizes matter for the mean; the variance's
correction uses them as given.

For \code{evstudy}, \code{plndid}: Optional column name of non-negative weights, such as population or
matching weights, for weighted least squares with weighted within-means.
Rows of weight 0 take no part in the fit.

For \code{holbal}: Optional named weights, one per domain (they are rescaled to sum to
one).

For \code{sevidx}: Named weights, one per offence counted.

For \code{sprd}: Optional non-negative weights, one per value.

For \code{svydes}: The final (full-sample) weight: a column name
or a numeric vector with one non-negative value per row.}
\item{des}{For \code{aipwcf}: Optional survey design from \code{\link{svydes}}, built on
\code{data}, in place of \code{w}: the standard error then comes from its
replicate weights or its strata and primary sampling units.

For \code{sprd}: \code{"auto"} (default), \code{"sample"}, \code{"census"} or
\code{"finite"}.

For \code{svycmp}, \code{svyest}: A \code{\link[=svydes]{svydes()}} built on \code{data}.}
\item{folds}{For \code{aipwcf}: Cross-fitting folds (default 5).

For \code{plndml}: Cross-fitting folds of units (default 5).}
\item{trim}{For \code{aipwcf}: Propensity clipping (default 0.01).

For \code{ctrm}: Proportion trimmed (or winsorized) at \emph{each} end, a single
number in \eqn{[0, 0.5]} (default 0.1, i.e. 10\% at each end). At
\code{0.5} both reduce to the median.}
\item{seed}{For \code{aipwcf}, \code{plndml}: Seed for the folds (default 1).

For \code{cbootmean}: Seed for the core's generator, a single non-negative whole
number (default 42). It does not use or change \code{\link[=set.seed]{set.seed()}}'s
stream.

For \code{chwkjit}: Seed of the uniforms, as in
\code{\link[=cunif]{cunif()}}; default 42.

For \code{chwksim}: Whole number, default 1, for this call only (the session's stream
is left as it was).

For \code{connassoc}: Seed for the draws (default 1).

For \code{cpsdrft}: Seed for the Monte Carlo branch of the homogeneity test,
\code{\link[=drfthomog]{drfthomog()}}. The caller's RNG stream is
left
untouched.

For \code{cpsfals}: Optional integer seed. Supplied, the result is
reproducible; omitted (\code{NULL}, the default), the current random number
stream is used and only the generator kind is recorded.

For \code{cpspwr}: Optional integer seed; \code{NULL} (the default) uses the
session's random number state.

For \code{cramerv}: Integer scalar, default \code{1}: the seed for the Monte Carlo
branch; the caller's random number stream is restored afterwards.

For \code{cunif}: The seed, one whole number in \eqn{[0, 2^{53})} (so that it is
exact as an R double).

For \code{drftcal}: Integer or \code{NULL}, default 1: the seed for the splits.

For \code{drfthomog}: Integer, default 1: seed for the Monte Carlo branch (small
expected counts). The draw is made under this seed and the caller's RNG
stream is restored, so the same inputs give the same p-value and nothing
downstream moves.

For \code{dstfit}: Whole number, default 1: the seed of the bootstrap.

For \code{holbal}: Seed for the draws, so the intervals are reproducible (default
1).

For \code{perminf}: Optional seed for the random assignments, or NULL for none.

For \code{pgsig}: Number, default 0: the seed of the particle random walk.

For \code{plnpwr}: Optional seed for the power simulations.

For \code{plrcf}: Seed of the fold assignment (default 1), so the estimate is
reproducible.

For \code{polex}: The seed (default 20240101).

For \code{rsv}: Seed for the core's generator, a whole number from 0 to below
\eqn{2^{53}} (default 42).

For \code{stepchg}: Integer, default 1: the seed for the permutations, so the
p-value is reproducible.

For \code{stgatt}, \code{swtdid}: Optional seed for the bootstrap.

For \code{syndid}: Optional seed for the placebo draws.

For \code{tse}: Optional seed for the bootstrap draws.

For \code{wcb}: Optional seed for the bootstrap weights.}
\item{rr}{Relative risk among the exposed, a single finite positive
number. A relative risk below 1 gives a negative fraction (a protective
exposure); 0, negative, infinite and missing values are errors.}
\item{expoprev}{For \code{attrfrac}: Proportion of the population exposed, in
\code{[0, 1]}.

For \code{polbrdn}: Proportion of the population at that level (1
for ambient air), in \code{[0, 1]}.

For \code{vrfpol}: Scalar inputs used when neither \code{demo} nor
\code{expcsv} is given: the mean exposure among the exposed and the share
of the population exposed. A wrapper must never default one of them to
zero: a prevalence of zero silently zeroes the burden, which is why the two
are required together.}
\item{rrlo}{Optional confidence limits of \code{rr}; when
both are given the fraction carries the limits that the same formula
gives at them (Levin's formula is monotone in the relative risk, so the
interval of the fraction is the image of the interval of the risk).}
\item{rrup}{Optional confidence limits of \code{rr}; when
both are given the fraction carries the limits that the same formula
gives at them (Levin's formula is monotone in the relative risk, so the
interval of the fraction is the image of the interval of the risk).}
\item{unit}{For \code{bacondcmp}, \code{evstudy}, \code{mtchdid}, \code{plndid}, \code{plndml}, \code{plnpois}, \code{plnpwr}, \code{stgatt}, \code{swtdid}, \code{synctl}, \code{syndid}, \code{wcb}: Column names: the unit, the period (numeric, for example a
year or a month index) and the outcome.

For \code{perminf}: Column names: the unit and the period (numeric).

For \code{sevidx}: Column names.}
\item{time}{For \code{bacondcmp}, \code{evstudy}, \code{mtchdid}, \code{plndid}, \code{plndml}, \code{plnpois}, \code{plnpwr}, \code{stgatt}, \code{swtdid}, \code{synctl}, \code{syndid}, \code{wcb}: Column names: the unit, the period (numeric, for example a
year or a month index) and the outcome.

For \code{perminf}: Column names: the unit and the period (numeric).

For \code{sevidx}: Column names.}
\item{trtd}{Column name of the treatment indicator (0 or 1).}
\item{bands}{For \code{bandsens}, \code{expbands}: A data frame from \code{\link{prsbands}}, or labels to
parse.

For \code{bandvals}: A data frame from \code{\link{prsbands}}, or a character
vector of labels to parse with its defaults.}
\item{cnts}{For \code{bandsens}: Numeric vector, one per band: how many units fall in each
band. Non-integer counts are truncated by \code{rep()}.

For \code{expbands}: Numeric vector, one non-negative count per band.

For \code{expcnts}: Numeric vector of observed counts (non-negative), one per
row of the area-by-stratum table.}
\item{stat}{For \code{bandsens}: A function that takes a numeric vector of per-unit
values and returns one number. Default \code{\link{ginicoef}}.

For \code{cpsfals}: A function of one data frame returning
a single finite number.

For \code{cpspwr}: A function of one data frame returning
a single finite number (for example a correlation or a difference in
means).

For \code{perminf}: \code{"t"} (default) or \code{"estimate"}.

For \code{svycmp}, \code{svyest}: \code{"mean"}, \code{"total"}, \code{"proportion"} or \code{"ratio"}
(of \code{y} to \code{den}).}
\item{caps}{Numeric vector of caps to try, in the units of the labels.
Default \code{NULL}: the geometric sweep described in Details. Values are
sorted and de-duplicated.}
\item{rule}{For \code{bandsens}: Character, default \code{"midpoint"}: the placement rule passed
to \code{\link{bandvals}}.

For \code{bandvals}: Character, one of \code{"midpoint"} (the default),
\code{"lower"}, \code{"upper"} or \code{"geometric"}. The geometric
mean suits quantities whose distribution inside a band is closer to
log-uniform than uniform, which is usual for counts and durations.}
\item{x}{For \code{bandsens}: An \code{rmbl_band_sensitivity} object.

For \code{benfordtst}: Numeric vector; zero and non-finite values are dropped.

For \code{bufasgn}: Coordinates of the places.

For \code{cbootmean}: Numeric (or logical) vector to resample.

For \code{ccovm}: A numeric matrix, or a data frame whose columns are all
numeric (rows = observations, columns = variables).

For \code{cgamcdf}: Numeric vector of quantiles at which the gamma CDF is evaluated.

For \code{cmom}, \code{crob}, \code{ctrm}: Numeric (or logical) vector; coerced with
\code{\link[=as.numeric]{as.numeric()}}.

For \code{cnormlpdf}: Numeric vector of quantiles (the observed values).

For \code{cnormpdf}: Numeric vector of quantiles at which the density is evaluated.

For \code{cnttrnd}: Numeric vector of periods, default \code{NULL} (the position).
The rate ratio is per unit of \code{x}.

For \code{concentration}: Numeric vector of non-negative values, one per unit (for example
the days or the count of placements of each person). \code{NA} values
are dropped; \code{Inf}, negative values and non-numeric input are
errors.

For \code{connassoc}: Columns of the two indicators.

For \code{crank}: Numeric (or logical) vectors of the same length.

For \code{csha256}: A character vector, or a raw vector. Other atomic vectors are
converted with \code{as.character()}.

For \code{cspread}: Numeric (or logical) vectors; coerced with
\code{\link[=as.numeric]{as.numeric()}}.
\code{a} and \code{b} must have the same length.

For \code{cstat}: Numeric (or logical) vectors. \code{ccorr()} needs
\code{x} and \code{y} of the same length.

For \code{cwtd}: Numeric vector of observations.

For \code{drfthomog}: Factor or character vectors (or named count
vectors) -- the reference and the new sample.

For \code{drftks}: Numeric vectors, the reference and the new sample. Logical
vectors are read as 0/1.

For \code{drftpsi}: Numeric vectors, the reference and the new sample.
Binned on the quantiles of \code{x}, so the reference defines the bins.

For \code{dstfit}: Numeric vector, the variable.

For \code{dstn}: A vector; coerced to character, since distinctness is
compared on the rendered value. \code{NA} is skipped.

For \code{dualcont}: A wellness profile from \code{\link{welprof}}.

For \code{frmaud}: A \code{\link{welprof}} result, whose rows are counted by side.

For \code{hilltlidx}: Numeric vector of positive values, one per unit.

For \code{inlhist}: Numeric vector drawn as an inline histogram.

For \code{morani}: Numeric vector, one value per area, no missing values.

For \code{onl}: Numeric vector (finite; \code{NA} is skipped and an infinite value
refused): the first block, or \code{NULL} (the default) for
an empty accumulator; for \code{smryupd()}, the next block.

For \code{pgsig}: Downwind distance(s) in metres.

For \code{plot.rmbl_dstfit}: A \code{\link[=dstfit]{dstfit()}} result.

For \code{prsbands}: Character vector (or factor) of band labels.

For \code{pubbnd}: Published values: a numeric vector, or a character vector (or
factor) in which suppressed cells appear as one of
\code{supmar} or as \code{"<k"} for a limit \code{k}.

For \code{qltyrcd}: The flags, one per row.

For \code{ratechg}: A data frame.

For \code{rategap}: Output of \code{\link{agestd}} (two or more groups).

For \code{rsv}: Vector to sample from.

For \code{rtcalc}, \code{shrs}: A data frame, or a numeric vector of counts.

For \code{scanadj}: An \code{rmbl_yoy} or \code{rmbl_rate_change} object, or any
data frame with a \code{p_value} column.

For \code{scests}: A table read by \code{\link{sctidy}}, a data frame as downloaded, or
a table key.

For \code{sctidy}: A data frame read from a Statistics Canada table (English-language
full-table CSV), or a key of the data service
(\code{"statcan_indigenous/tbl_13100924"}, or the eight-digit table id
alone). A key needs a data service key: sign in once with
\code{\link{dlogin}} (see \code{\link{dload}}); a data frame you read
yourself needs none.

For \code{sprd}: A numeric vector.

For \code{stepchg}: Numeric or date periods, default \code{NULL} (the position),
strictly increasing and not missing where \code{y} has a value. Used only
to label the break.

For \code{trndtst}: Numeric vector of periods, default \code{NULL}: the position
\code{1, 2, ...}, which is right for an evenly spaced series. Ignored
when \code{y} is a data frame and \code{prd} is given.

For \code{tse}: An \code{\link{evstudy}} result with one lead at least.}
\item{digits}{For \code{bandsens}: Significant digits of the printed numbers.

For \code{dstfit}: Significant digits of the fit table's numbers.}
\item{...}{For \code{bandsens}: Further arguments to print(); the band table ignores them.

For \code{drftcal}: Further arguments to \code{\link[=cpsdrft]{cpsdrft()}}, such
as
\code{psithr}, \code{psiminn}, \code{bins} or
\code{idelvls}.

For \code{dstfit}: For \code{print()} and \code{plot()}: see
\code{\link[=plot.rmbl_dstfit]{plot.rmbl_dstfit()}}.

For \code{expbands}: Further arguments to \code{\link{bandvals}}: \code{rule},
\code{openupcap}, \code{openupfac} and
\code{openloflr}.

For \code{plot.rmbl_dstfit}: Further graphical arguments to the first panel's \code{plot()} call.

For \code{plothwk}: Further arguments to the \code{plot()} call that opens the panel.

For \code{ratechg}, \code{rtcalc}, \code{shrs}: Passed to methods.}
\item{openupcap}{Number or \code{NULL} (the default). The upper bound
assumed for every open top band, in the units of the labels.}
\item{openupfac}{Number, default \code{2}. When no cap is given,
the open top band's upper bound is its lower bound times this factor
(so \dQuote{Greater than 10} becomes 11 to 22).}
\item{openloflr}{Number or \code{NULL} (the default). The lower bound assumed
for an open bottom band (\dQuote{under 18}). \code{NULL} uses 0, or the
band's own upper bound when that is below 0. A floor above a band's upper
bound is refused.}
\item{sitex}{Coordinates of the sites.}
\item{sitey}{Coordinates of the sites.}
\item{comx}{Coordinates of the comparison points (for example
the nearest major intersections).}
\item{comy}{Coordinates of the comparison points (for example
the nearest major intersections).}
\item{radius}{The treatment radius.}
\item{buffer}{The distance from every site a comparison place must keep
(default \code{3 * radius}).}
\item{B}{Number of bootstrap replicates, a single whole number of at
least 1 (default 1000).}
\item{shape}{Shape parameter \eqn{a}, a single positive number.}
\item{now}{\code{rmbl_bounds} objects from
\code{\link[=pubbnd]{pubbnd()}} (or data frames with numeric
\code{lower} and
\code{upper}) for the current and the earlier cell, with the same number
of rows.}
\item{prev}{\code{rmbl_bounds} objects from
\code{\link[=pubbnd]{pubbnd()}} (or data frames with numeric
\code{lower} and
\code{upper}) for the current and the earlier cell, with the same number
of rows.}
\item{prepop}{Optional numeric exposures (for
example residents) for a rate envelope of the current and the previous
cell; the rate is \code{per * count / population}. Default \code{NULL}.
\code{prepop} is used only with \code{pop}.}
\item{times}{For \code{chwkfit}, \code{chwkres}: Numeric vector of event times, sorted increasingly, all in
\code{[0, horizon]}, in any time unit (days are the natural unit for the
sinusoidal baseline's yearly cycle). At least 50 events.

For \code{chwkjit}: Numeric event times, each the start of its resolution
interval (for example whole days since an origin).

For \code{chwknll}: Numeric vector of event times, sorted increasing, each in
\verb{[0, horizon]}, in the time unit of your data (days, hours, ...).
May be empty.

For \code{plothwk}: The event times the fit was made on.}
\item{hor}{For \code{chwkfit}, \code{chwkres}: End of the observation window, one positive number in the
same unit as \code{times}; the window is \code{[0, horizon]}. With the
sinusoidal baseline (an annual cycle, \code{times} in days) at most
4194304 days: that baseline is integrated a day at a time.

For \code{chwkjit}: End of the observation window, when it cuts an interval short: an
event recorded at \code{t} is spread over \code{[t, min(t + resolution,
horizon)]}, so a time dated on the horizon itself stays there (\code{Inf},
the default: no window).

For \code{chwknll}: End of the observation window, a single positive finite
number in the same unit; the window starts at 0.

For \code{chwksim}: Number, the end of the window; default the fit's horizon.}
\item{kernel}{For \code{chwkfit}, \code{chwkres}: The triggering kernel: \code{"exponential"} (the default),
\code{"weibull"}, \code{"gamma"} or \code{"lomax"}.

For \code{chwknll}: The triggering kernel, one of \code{"exponential"} (the
default), \code{"weibull"}, \code{"lomax"} and \code{"gamma"}. Partial names are
matched.}
\item{base}{\code{"constant"} (the default) or \code{"sinusoidal"}
(trend plus a 365.25-unit cycle).}
\item{meth}{For \code{chwkfit}: One of \code{"auto"} (the default), \code{"exact"}, \code{"soe"},
\code{"truncate"}, \code{"em"}, \code{"inar"}. \code{"auto"} is
\code{"exact"} for the exponential kernel, \code{"truncate"} for Weibull
and \code{"soe"} for Lomax and gamma.

For \code{co2fp}: Character scalar: \code{"auto"} (the default; RAPL when
readable, else the model), \code{"rapl"} (measured; an error when the
counters are not readable) or \code{"model"} (always the Green
Algorithms model).

For \code{cortbl}: \code{"spearman"} (default) or \code{"pearson"}. See
\code{\link[=topcors]{topcors()}} for why the rank correlation is
the default.

For \code{scanadj}: Character, default \code{"BH"}. It can be any method of
\code{\link[stats]{p.adjust}} (\code{"BH"}, \code{"holm"},
\code{"bonferroni"}, \code{"BY"}, \code{"hochberg"}, \code{"hommel"},
\code{"fdr"}, \code{"none"}).

For \code{stgatt}: \code{"csa"} (default) or \code{"wooldridge"}.

For \code{topcors}: \code{"spearman"} (default) or \code{"pearson"}.}
\item{eps}{For \code{chwkfit}: Error level, one number in (0, 1), default \code{1e-9}: the
relative error per intensity of \code{"soe"} and the kernel tail mass
dropped by \code{"truncate"}. Ignored by the other routes.

For \code{drftpsi}: Floor applied to empty bins in the PSI (default
1e-6), any value in (0, 1). An empty bin contributes
\eqn{(p - eps)\log(p/eps)} to the index, so the floor is part of the
statistic: the default reports the raw index, and a larger floor (0.01,
0.05) smooths an empty bin toward that share, which dampens the PSI.
Compare runs only at one \code{eps}.}
\item{start}{For \code{chwkfit}: Optional numeric vector of starting values in the order of
\code{theta}: the baseline terms (\code{a0}, or \code{a0..a3}), then
\code{eta}, then the kernel parameters. Values outside the parameter box
are moved onto it. \code{NULL} (the default) uses a start from the data.

For \code{trcprog}: When counting began, as a year with a fraction (2015.96:
December 15, 2015).}
\item{res}{The width of the interval a recorded time stands for,
one positive number in the unit of \code{times}: 1 (the default) for
daily dates in days, \code{1/24} for hourly times in days.}
\item{par}{For \code{chwknll}: Numeric parameter vector (required), as described above: length 3
(\code{a0}, \code{eta}, \code{beta}) for \code{"exponential"}, length 4 (\code{a0},
\code{eta} and
the kernel's two parameters) for the others. Rates are per unit of
\code{times}.

For \code{chwkres}: Numeric vector of parameters, as \code{chwkfit()} returns them in
\code{theta}: the baseline terms, \code{eta} and the kernel parameters.
Its length is 3 for the exponential kernel with a constant
baseline, one more for a two-parameter kernel, three more for the
sinusoidal baseline.}
\item{fit}{A \code{\link[=chwkfit]{chwkfit()}} result.}
\item{treat}{Numeric or logical treatment indicator, coded 0/1
(\code{1} / \code{TRUE} is treated); \code{NA} allowed.}
\item{ps}{Numeric vector of propensity scores (the estimated
probability of treatment), each in \eqn{[0, 1]}, the same length as
\code{treat}; \code{NA} allowed.}
\item{trimlo}{Clamp bounds for the score, single numbers with
\verb{0 < trimlo < trimhi < 1} (defaults 0.01 and 0.99).}
\item{trimhi}{Clamp bounds for the score, single numbers with
\verb{0 < trimlo < trimhi < 1} (defaults 0.01 and 0.99).}
\item{case}{\code{"snake"} (default, \code{total_pop}), \code{"lower_camel"}
(\code{totalPop}), \code{"upper_camel"} (\code{TotalPop}),
\code{"screaming_snake"} (\code{TOTAL_POP}), or \code{"none"} to normalise
separators only and keep the letters' case.}
\item{sep}{Separator, a string, used between words for \code{"snake"},
\code{"screaming_snake"} and \code{"none"}, and before the number that
disambiguates a duplicate in every case (default \code{"_"}).}
\item{quiet}{For \code{clncolnms}: Logical: \code{TRUE} skips the boxed list of the names that
changed, which is otherwise sent through \code{message()} (so
\code{suppressMessages()} also silences it); default \code{FALSE}.

For \code{drp}: Logical: \code{TRUE} skips the boxed summary of what was
dropped (rows and columns before and after, the columns removed), which is
otherwise sent through \code{message()}; default \code{FALSE}.}
\item{age}{The ages, in order.}
\item{fireve}{First events at each age.}
\item{atrisk}{Optional: the persons at risk at each age, when known, in place
of the synthetic-cohort assumption.}
\item{dthrate}{Optional death rates by age (probability of dying within the
age).}
\item{mean}{For \code{cnormlpdf}: The distribution's mean, a single number in the units of
\code{x} (default 0).

For \code{cnormpdf}: Number, default \code{0}: the mean \eqn{\mu}.}
\item{sd}{For \code{cnormlpdf}: The distribution's standard deviation, a single positive
number in the units of \code{x} (default 1).

For \code{cnormpdf}: Number, default \code{1}: the standard deviation \eqn{\sigma};
must be positive for a finite result.}
\item{offset}{For \code{cnttrnd}: Optional numeric vector of exposures, one per period -- a
population, a number of admissions, a number of days. Positive. The
trend is then in the rate rather than in the count.

For \code{plnpois}: Optional column name of the log exposure (for example log
population).}
\item{expr}{The expression to evaluate. It is evaluated once, in the
calling environment, when the function reaches it (lazily, as a
promise).}
\item{loc}{For \code{co2fp}: The location, passed to \code{\link{co2int}}. It is a location
code, alpha-3 code or name, a number in gCO2e/kWh, or \code{NULL} (the
default) to detect it.

For \code{co2int}: A location code, alpha-3 code or name; a number in
gCO2e/kWh, returned as a user-supplied value; or \code{NULL} to detect
the location from the environment, time zone or locale.}
\item{cpupwrw}{The CPU's total thermal design power in watts (the
model's \eqn{P_{cpu}}); \code{NULL} uses codecarbon's unknown-CPU fallback.}
\item{usage}{\code{"process"} (measured from this process's CPU time),
\code{"machine"} (measured from the whole machine's CPU accounting), or a
number in between 0 and 1. \code{NULL} means \code{"process"}.}
\item{loadcur}{Character scalar: \code{"linear"} (the default; power
proportional to utilisation, as Green Algorithms) or \code{"codecarbon"}
(codecarbon's curves, see Details). Applies only when
\code{cpupwrw} is given.}
\item{cores}{Number of logical cores the process utilisation is measured
against; \code{NULL} detects it.}
\item{memgb}{Memory charged to the computation in GB; \code{NULL}
detects the machine's total memory where it can, else assumes 8 GB.}
\item{mempwrwpergb}{Memory power per GB (default 0.3725 W/GB,
Green Algorithms; codecarbon v2 used 0.375).}
\item{pue}{Power usage effectiveness: 1 for a laptop or desktop (default);
1.67 is the Green Algorithms default for a data centre, 1.56 the Uptime
Institute 2024 global average. Must be a single number of at least 1.}
\item{rapldir}{For \code{co2fp}: Character scalar, the powercap directory holding the RAPL
domains; default \code{"/sys/class/powercap"} (Linux).

For \code{raplok}: Character scalar, the powercap directory; default
\code{"/sys/class/powercap"}, the Linux location. Another path is useful
for testing against a copy of the directory tree.}
\item{procstat}{Character scalar, the kernel CPU accounting file read for
\code{usage = "machine"}; default \code{"/proc/stat"} (Linux).}
\item{ind}{For \code{commidx}: Column names; every indicator must be on one
scale (percent, for example: a rate per 1,000 beside a percentage makes the
weights meaningless).

For \code{healchg}: Column names: the change is in the
estimate's own units (percentage points for percentages).

For \code{mhcont}: Column names: the group, the indicator,
the estimate (percent) and its published limits.

For \code{welprof}: Column names: the group, the indicator,
the percentage and its published limits.}
\item{est}{For \code{commidx}: Column names; every indicator must be on one
scale (percent, for example: a rate per 1,000 beside a percentage makes the
weights meaningless).

For \code{dstntst}: Column names.

For \code{healchg}: Column names: the change is in the
estimate's own units (percentage points for percentages).

For \code{holbal}: Column names: the group, the domain of the
indicator (any set of domains: Medicine Wheel, Te Whare Tapa Wha, a
Nation's own), the percentage of wellness (0 to 100, strictly inside;
multiply proportions by 100) and its published limits.

For \code{indgap}: Column names: the group label, the estimate, and
its published confidence limits, on one scale.

For \code{limfrom}: The estimates the limits are centred on.

For \code{mhcont}: Column names: the group, the indicator,
the estimate (percent) and its published limits.

For \code{ordcmp}: Column names: the group, the category, the
share in it (percent or proportion: only relative shares matter) and its
published limits on the same scale.

For \code{stdprev}: Numeric vectors (not column names): the estimate in
each age group (and group) and its published limits.

For \code{welprof}: Column names: the group, the indicator,
the percentage and its published limits.}
\item{lower}{For \code{commidx}: Column names; every indicator must be on one
scale (percent, for example: a rate per 1,000 beside a percentage makes the
weights meaningless).

For \code{dstntst}: Column names.

For \code{healchg}: Column names: the change is in the
estimate's own units (percentage points for percentages).

For \code{holbal}: Column names: the group, the domain of the
indicator (any set of domains: Medicine Wheel, Te Whare Tapa Wha, a
Nation's own), the percentage of wellness (0 to 100, strictly inside;
multiply proportions by 100) and its published limits.

For \code{indgap}: Column names: the group label, the estimate, and
its published confidence limits, on one scale.

For \code{mhcont}: Column names: the group, the indicator,
the estimate (percent) and its published limits.

For \code{ordcmp}: Column names: the group, the category, the
share in it (percent or proportion: only relative shares matter) and its
published limits on the same scale.

For \code{stdprev}: Numeric vectors (not column names): the estimate in
each age group (and group) and its published limits.

For \code{welprof}: Column names: the group, the indicator,
the percentage and its published limits.}
\item{upper}{For \code{commidx}: Column names; every indicator must be on one
scale (percent, for example: a rate per 1,000 beside a percentage makes the
weights meaningless).

For \code{dstntst}: Column names.

For \code{healchg}: Column names: the change is in the
estimate's own units (percentage points for percentages).

For \code{holbal}: Column names: the group, the domain of the
indicator (any set of domains: Medicine Wheel, Te Whare Tapa Wha, a
Nation's own), the percentage of wellness (0 to 100, strictly inside;
multiply proportions by 100) and its published limits.

For \code{indgap}: Column names: the group label, the estimate, and
its published confidence limits, on one scale.

For \code{mhcont}: Column names: the group, the indicator,
the estimate (percent) and its published limits.

For \code{ordcmp}: Column names: the group, the category, the
share in it (percent or proportion: only relative shares matter) and its
published limits on the same scale.

For \code{stdprev}: Numeric vectors (not column names): the estimate in
each age group (and group) and its published limits.

For \code{welprof}: Column names: the group, the indicator,
the percentage and its published limits.}
\item{qual}{For \code{commidx}, \code{healchg}, \code{mhcont}: Optional column of quality flags: \code{"E"} rows are marked use
with caution, and suppressed ones (\code{"F"}, \code{"x"}, \code{".."})
get no estimate.

For \code{dstntst}: Optional column of quality flags; suppressed rows are left out
(see \code{\link{qltyrcd}}).

For \code{holbal}: Optional column of quality flags for the estimates.

For \code{indgap}: Optional column of quality flags in the package's vocabulary
(\code{"E"}, \code{"F"}, \code{"x"}, \code{".."}, \code{"..."}; see
\code{\link{qltyrcd}} for other agencies' flags).

For \code{ordcmp}: Optional column of quality flags (see \code{\link{qltyrcd}}).

For \code{stdprev}: Optional quality flags, one per row (a vector; see
\code{\link{qltyrcd}}).

For \code{welprof}: Optional column of quality flags, one per row of \code{data}.}
\item{na.rm}{Logical. Missing values are dropped whatever its value; the
argument exists so the call reads the same as base R's. Default
\code{TRUE}.}
\item{fracs}{Numeric vector of fractions of the units, each in
\code{[0, 1]}: for each one the share of the total held by that fraction
of units, taking the largest units first. Default
\code{c(0.01, 0.05, 0.1, 0.25)}.}
\item{place}{Column of place names.}
\item{xlo}{Optional columns of their published limits (for
the interval).}
\item{xup}{Optional columns of their published limits (for
the interval).}
\item{ylo}{Optional columns of their published limits (for
the interval).}
\item{yup}{Optional columns of their published limits (for
the interval).}
\item{reps}{For \code{connassoc}: Draws for the interval and, past 8 places, for the p-value
(default 10,000).

For \code{cpspwr}: Repetitions per size, a whole number of at least 1 (default
10). The detection rate at each size is out of this many, so its
resolution is \code{1 / reps}.

For \code{holbal}: Monte Carlo draws for the intervals (default 10,000).

For \code{perminf}: The number of random assignments (default 999).

For \code{plnpwr}: Replications per effect size (default 200).

For \code{stgatt}, \code{swtdid}: Bootstrap replications (default 499; 0 for none).

For \code{svydes}: Optional replicate weights: a data frame or
matrix with one column per replicate, or the names of
replicate weight columns in \code{data}.

For \code{syndid}: Placebo replications (default 200).

For \code{wcb}: Bootstrap replications (default 9999).}
\item{minprs}{Minimum complete pairs required before
a correlation is computed, a whole number of at least 2 (default 3).
Below it the pair is \code{NA} rather than a number computed from almost
nothing.}
\item{ref}{For \code{cpsdrft}: Data frame the capsule was built from.

For \code{evstudy}: The period left out (default -1).

For \code{indgap}: The label of the reference group (default
\code{"Non-Indigenous"}).

For \code{ordcmp}: The label of the reference group (required: any group of
\code{data}).

For \code{rategap}: The labels of the group and of the reference group.

For \code{svycmp}: The reference domain, as its label (for several
\code{by} columns, the labels joined with \code{" / "}); a number is
matched as the label it prints as. Default \code{NULL}: the first domain.

For \code{vrfpol}: Counterfactual reference concentration; \code{NULL} takes
the pollutant's default (PM2.5 5.8, NO2 10; see \code{\link{crfpm25}}).}
\item{cur}{Data frame just fetched.}
\item{alpha}{For \code{cpsdrft}: Significance level for the \code{drifted} flag
(default 0.01; deliberately stricter than 0.05 because a wide table runs
many tests).

For \code{cpspwr}: Significance threshold for counting a
detection (default 0.05).

For \code{drftcal}: Number in (0, 1), default 0.01: the significance level
passed to \code{\link[=cpsdrft]{cpsdrft()}}.

For \code{mahaoutl}: Significance level for the \code{outlier} flag
(default 0.001, deliberately strict: at 0.05 one row in twenty is
flagged by construction).

For \code{plnpwr}: Test level (default 0.05).

For \code{scanadj}: Number, default 0.05: the level at which \code{significant}
is decided, applied to the adjusted p-values.}
\item{psithr}{PSI above which a numeric
column is flagged even when its p-value is not significant (default
0.25, the conventional \dQuote{material shift} line).}
\item{psiminn}{Minimum size BOTH samples must reach
before \code{psithr} is allowed to flag a column on its own
(default 1000). The PSI bands are large-sample heuristics with no
calibrated null distribution: on a few hundred rows, binning noise alone
routinely pushes the index past 0.25, so applying the threshold there
manufactures drift. Below this size the flag rests on the
Kolmogorov-Smirnov p-value, which is calibrated, and the PSI is still
reported as an effect size.}
\item{bins}{For \code{cpsdrft}: Bins passed to
\code{\link[=drftpsi]{drftpsi()}} (default 10).

For \code{drftpsi}: Whole number, default 10: the number of quantile bins of the
reference. Fewer bins are used when the reference has tied quantiles.

For \code{inlhist}: Number of bins, and so of characters, one positive whole
number (default 10).}
\item{idelvls}{A character column with more distinct values
than this (or at least 20 distinct values covering more than a fifth of
the rows) is an identifier,
not a distribution: it gets \code{type = "identifier"}, its \code{unseen_share}
(the fraction of current rows whose value the reference never had) and
\code{drifted = NA}. Character columns that parse as dates are compared as
dates (\code{type = "date"}).}
\item{n}{For \code{cpsfals}: Integer scalar, the number of permutations and of subsets, at
least 9; default 199. The permutation p-value cannot be smaller than
\code{1 / (n + 1)}, which is reported.

For \code{cpspwr}: Permutations per test, a whole number of at least 9 (default
99).

For \code{cunif}: Number of uniforms, one non-negative whole number (0 gives
\code{numeric(0)}).

For \code{drftcal}: Whole number, default 50: the number of random half-splits.

For \code{exptrnd}: Number of people at each level.

For \code{pgsig}: Whole number of particles, at most 100 million.

For \code{rsv}: Length of the stream, one non-negative number.

For \code{topcors}: Number of pairs to return, one positive whole number (default
10).}
\item{subfrac}{Numeric scalar strictly between 0 and 1, the fraction of
rows kept by the subset control; default 0.8.}
\item{inject}{A function of \code{(data, size)} returning
the data with an effect of that size added. It is the caller's, because
what counts as an effect of size 0.2 is a modelling decision and not
something this function can guess.}
\item{sizes}{Numeric vector of effect sizes to try (default
\code{c(0, 0.2, 0.5)}). \code{0} is added if absent, since the detection
rate there is the false-positive rate and belongs on the same curve.
Duplicates are removed and the sizes sorted.}
\item{tbl}{A table or matrix of non-negative counts, at least 2 by 2
after empty rows and columns are dropped.}
\item{biascor}{Logical scalar, default \code{TRUE}: whether to apply
Bergsma's
correction, which removes most of V's upward bias in a sparse table.
Worth having: uncorrected V on a sparse table reports association that
is an artefact of the table's size.}
\item{minexp}{Numeric scalar, default \code{5}: the expected count
below which the chi-square approximation is treated as unreliable.
Reported, and it switches the p-value to the Monte Carlo one; it does not
stop the calculation.}
\item{expo}{For \code{crfpm25}: Ambient concentration in micrograms per cubic metre, a
single non-negative number or a vector of them (one per area, day or
person).

For \code{expconcidx}: Column names (single strings): the exposure (a
non-negative concentration) and the income measure (numeric).

For \code{exprspplr}: Column names: the outcome and the
exposure (single strings) and the confounders (one or more strings).}
\item{refconc}{For \code{crfpm25}: Counterfactual concentration below which no excess
risk is assumed. PM2.5 default 5.8, the lower bound of the GBD 2019
theoretical minimum risk exposure level (the WHO 2021 guideline is 5);
NO2 default 10, the WHO 2021 guideline.

For \code{polbrdn}: Counterfactual concentration; \code{NULL} takes the
pollutant's default (PM2.5 5.8, NO2 10; see \code{\link{crfpm25}}).}
\item{betaper10}{Optional log relative risk per 10 micrograms per cubic
metre (a single finite number, e.g. \code{log(1.04)}) overriding the
NO2 outcome table; \code{NULL} (the default) uses the table.}
\item{probs}{Numeric vector of probabilities, each in \eqn{[0, 1]}
(default the minimum, quartiles and maximum).}
\item{const}{Scale factor for \code{cmad()}. The
default \code{1.4826} makes the MAD consistent for the standard
deviation under normality, and is the same rounded value
\code{\link[stats:mad]{stats::mad()}} uses, so the two agree exactly.
The unrounded consistency constant is \code{1 / qnorm(3/4)} =
1.4826022185...; pass it explicitly if you want the extra digits, or
\code{1} for the unscaled median deviation.}
\item{k}{For \code{crob}: Fence width in IQRs, a single non-negative number (default
1.5, Tukey's convention; 3 is the usual \dQuote{far out} cutoff).

For \code{dstfit}: Whole number or \code{NULL}: the upper order statistics of the Hill
estimate.

For \code{rsv}: Sample size, one non-negative number. Values above the stream
length give the whole stream; 0 gives an empty result.}
\item{a}{For \code{cspread}: Numeric (or logical) vectors; coerced with
\code{\link[=as.numeric]{as.numeric()}}.
\code{a} and \code{b} must have the same length.

For \code{dstn}: Register sets to merge.

For \code{envdiff}: Environment records from \code{\link[=capenv]{capenv()}}, or whole
manifests (such
as \code{\link[=mkmnf]{mkmnf()}} returns) that hold an \code{environment} element.

For \code{onl}: Accumulators from \code{onlsmry()}.}
\item{b}{For \code{cspread}: Numeric (or logical) vectors; coerced with
\code{\link[=as.numeric]{as.numeric()}}.
\code{a} and \code{b} must have the same length.

For \code{dstn}: Register sets to merge.

For \code{envdiff}: Environment records from \code{\link[=capenv]{capenv()}}, or whole
manifests (such
as \code{\link[=mkmnf]{mkmnf()}} returns) that hold an \code{environment} element.

For \code{onl}: Accumulators from \code{onlsmry()}.}
\item{ddof}{Delta degrees of freedom, a single number;
\code{\link[=as.integer]{as.integer()}} truncates it to an integer. The divisor is
\code{n - ddof}. The default \code{1} gives the sample standard deviation, matching
\code{\link[stats:sd]{stats::sd()}}; \code{0} gives the population figure.}
\item{incpercap}{Income per capita, in the dollars of the series' bounds.}
\item{highsch20p}{Percentages for education.}
\item{uni25p}{Percentages for education.}
\item{notcro}{Percentages for housing.}
\item{nomajrep}{Percentages for housing.}
\item{partic}{Percentages for labour force activity.}
\item{empl}{Percentages for labour force activity.}
\item{bounds}{The income bounds (default the 2016 and 2021 series: 2650 and
75000).}
\item{obs}{For \code{drftchisq}: Named numeric vector of counts in the
new sample, or a factor/character vector to be tabulated.

For \code{ebrates}: Numeric vector of observed counts (non-negative, no
\code{NA}).

For \code{stdinc}: Numeric vector of observed counts (non-negative).

For \code{stpdnpv}: The observed statistics, one per hypothesis.}
\item{expd}{For \code{drftchisq}: Named numeric vector of reference counts
or proportions, or a factor/character vector to be tabulated. Rescaled
to the total of \code{obs}.

For \code{ebrates}: Numeric vector of expected counts (positive), the same
length, for example from \code{\link{expcnts}}.

For \code{fnllim}: Numeric vector of expected counts (positive) at which to
compute limits, for example a grid from the smallest to the largest
area.

For \code{stdinc}: Numeric vector of expected counts (positive), for example
from \code{\link{expcnts}}; the same length as \code{obs},
or length one.}
\item{which}{For \code{drp}: \code{"rows"}, \code{"cols"}, or both (the
default, \code{c("rows", "cols")}).

For \code{plot.rmbl_dstfit}: One of \code{"density"}, \code{"qq"}, \code{"pp"} or
\code{"tail"}.}
\item{naasval}{Logical: treat \code{NA} as a distinct
value, so a column of \code{NA}s plus one real value counts as two
(default \code{FALSE}).}
\item{fams}{For \code{dstfit}: Character vector of families (see Details), or \code{NULL} for every
family the data allow.

For \code{plot.rmbl_dstfit}: Families to draw; default the three best by AIC.}
\item{nboot}{For \code{dstfit}: Whole number, default 200: bootstrap resamples (0 for none).

For \code{exprspplr}: Number of resamples, a non-negative whole number
(default 100); at least 10 must succeed.}
\item{p}{Log2 of the register count, a whole number from 4 to 20
(default 14, so 16,384 registers). Larger \code{p} is more precise and
uses more memory.}
\item{regstr}{Registers from a previous call (with the same \code{p}),
to fold another chunk into the same sketch; \code{NULL} (the default)
starts a new one. For \code{dstncnt()}, the registers to estimate
from.}
\item{pooled}{For \code{dstntst}: Optional labels of rows that pool other groups.

For \code{indgap}: Optional labels of the rows that pool other groups (for example
\code{"Aboriginal and Torres Strait Islander"} beside its parts, or a
\dQuote{Total Indigenous} row); by default the labels described in Details.
Each label must be a group of \code{data}: one that matches no row (a
typo) is refused rather than ignored.

For \code{ordcmp}: Optional labels of rows that pool other groups (see
\code{\link{indgap}}).}
\item{envloc}{The inputs, exposed so a
caller or a test can supply them; the defaults read the running session.}
\item{codloc}{The inputs, exposed so a
caller or a test can supply them; the defaults read the running session.}
\item{tz}{The inputs, exposed so a
caller or a test can supply them; the defaults read the running session.}
\item{locale}{The inputs, exposed so a
caller or a test can supply them; the defaults read the running session.}
\item{well}{For \code{dualcont}: One wellness and one distress indicator of \code{x}.

For \code{healchg}: Optional indicators of wellness (listed first) and of
distress; with \code{distress} given, any other indicator is marked
\code{"other"}.

For \code{welprof}: The indicators that measure wellness or strength, and
those that measure distress; rows for any other indicator (totals,
\dQuote{not specified}) are left out.}
\item{distress}{For \code{dualcont}: One wellness and one distress indicator of \code{x}.

For \code{healchg}: Optional indicators of wellness (listed first) and of
distress; with \code{distress} given, any other indicator is marked
\code{"other"}.

For \code{welprof}: The indicators that measure wellness or strength, and
those that measure distress; rows for any other indicator (totals,
\dQuote{not specified}) are left out.}
\item{area}{For \code{ebrates}, \code{stdinc}: Optional vector of area labels, added as the first column.
Default \code{NULL}.

For \code{expcnts}: Vector of area labels, one per row (converted to character).}
\item{ftreat}{Column name of the period a unit is first treated (\code{NA},
0 or \code{Inf} for a unit never treated). Treatment is taken as staying on.}
\item{leads}{The number of periods before and after adoption to estimate
(default 4 and 4).}
\item{lags}{The number of periods before and after adoption to estimate
(default 4 and 4).}
\item{bin}{Bin the periods beyond the window into its end points (default
\code{TRUE}).}
\item{cl}{Column name of the clusters (default the unit), or two column names
for two-way clustering (Cameron, Gelbach and Miller 2011): \eqn{V_a + V_b -
V_{ab}}, each term with the small-sample factor of the dimension with fewer
clusters, and t on its \eqn{G - 1} degrees of freedom. A composite cluster
(district by month, say) is one column made with \code{interaction()}.
Fewer than ten clusters give a warning (CR1 errors are unreliable with
so few; \code{\link{wcb}} is made for that case), and so does a
cluster that changes within a unit.}
\item{drpunp}{Logical, default \code{FALSE}. \code{FALSE} makes a
band whose label could not be parsed, yet which has a count, an error;
\code{TRUE} leaves those units out with a warning instead.}
\item{strata}{For \code{expcnts}: Optional vector of stratum labels, one per row: an age
band, a gender, or their interaction. Default \code{NULL}: one stratum,
so only size is adjusted for. With strata the standardisation is
indirect in the usual sense: the overall stratum-specific rates are
applied to each area's own stratum populations.

For \code{svydes}: Optional stratum and primary sampling unit:
column names or vectors. A PSU label need only be unique
within its stratum.}
\item{income}{Column names (single strings): the exposure (a
non-negative concentration) and the income measure (numeric).}
\item{confs}{Column names: the outcome and the
exposure (single strings) and the confounders (one or more strings).}
\item{rstate}{Seed for the resampling (default 42).}
\item{estr}{A function \code{(data, outcome, treatment, covariates)}
returning a list with \code{ate} and \code{se}. The default is
\code{\link{plrcf}}; rmorie's \code{morie_estimate_double_ml()}
has the same interface.}
\item{cases}{Number with the outcome at each exposure level.}
\item{dose}{The exposure levels, in order (default \code{0, 1, 2, ...}); the
trend test scores them.}
\item{target}{For \code{fnllim}: Number, default \code{1}: the ratio the limits are centred
on. One is the overall experience.

For \code{tse}: \code{"average"} (the mean of the post-period effects, default)
or an event time.}
\item{lvls}{For \code{fnllim}: Numeric vector of two-sided coverage levels in (0, 1),
default \code{c(0.95, 0.998)}; one pair of limits per level.

For \code{ordcmp}: The categories, from the lowest (least favourable) to the
highest.

For \code{svycmp}, \code{svyest}: For a proportion, the categories to report
(default all observed).}
\item{co2eg}{Numeric scalar, grams of CO2-equivalent; finite and
non-negative (for example the \code{co2eg} element of a
\code{\link{co2fp}} result).}
\item{col}{For \code{freqtbl}: Column name (a string), when \code{data} is a data
frame; ignored for a vector.

For \code{plot.rmbl_dstfit}: The title, colours, and a \code{\link[=blpal]{blpal()}}
palette name.

For \code{plothwk}: The title, colours, and a \code{\link[=blpal]{blpal()}} name.}
\item{maxlvl}{Maximum value rows to return, most
frequent first (default 25). The remainder are folded into one
\code{"(other)"} row so the percentages still sum to 100.}
\item{sort}{Logical: sort by descending count (default \code{TRUE});
\code{FALSE} keeps the sorted order of the values.}
\item{parent}{Logical vectors: did a parent, did a grandparent
attend.}
\item{gparent}{Logical vectors: did a parent, did a grandparent
attend.}
\item{partial}{What a known attendance with the other generation unknown
counts as: \code{"na"} (not known, the default) or \code{"lowerbnd"} (1).}
\item{prd}{For \code{healchg}: Column names: the change is in the
estimate's own units (percentage points for percentages).

For \code{hotpers}: The period of each incident (a year, a month, a
date, a label such as \code{"Q1"}); periods are taken in sorted order.

For \code{ratechg}: Column of periods (unquoted or a string). Sorted within
each group; see Details for how the earlier period is found.

For \code{trndtst}: Column names (strings), when \code{y} is a data
frame. \code{value} is required; \code{prd} is optional and must be
convertible with \code{as.numeric()}.}
\item{from}{The two periods.}
\item{to}{The two periods.}
\item{xmin}{Numeric scalar or \code{NULL} (the default): the threshold at
and above which the power law is fitted. A power law is a statement about
the tail, so a threshold is required; \code{NULL} takes the 50th largest
value (which leaves at least 50 observations in the tail), or the
minimum if there are fewer than 50 values.}
\item{discrete}{Logical scalar, default \code{TRUE}: whether the quantity
is integer-valued.
A count is, and then the likelihood maximised is the zeta
distribution's, whose normalising constant is a Hurwitz zeta.}
\item{approx}{Logical scalar, default \code{FALSE}. For discrete data,
whether to use the
closed-form continuity-corrected estimator instead of maximising the
exact likelihood. It is much faster and much worse: the correction is an
asymptotic approximation in \code{xmin}, and at \code{xmin = 1} --
where administrative counts start -- it returns about 2.0 from data
generated with an exponent of 2.5. Off by default for that reason.}
\item{mintl}{Integer scalar, default \code{3}: the fewest tail
observations for which an estimate is reported at all (values below 2 are
raised to 2). Below it there is nothing to estimate from and \code{alpha}
is \code{NA}.}
\item{domain}{For \code{holbal}: Column names: the group, the domain of the
indicator (any set of domains: Medicine Wheel, Te Whare Tapa Wha, a
Nation's own), the percentage of wellness (0 to 100, strictly inside;
multiply proportions by 100) and its published limits.

For \code{welprof}: Optional named character vector giving each indicator's
holistic domain, for example \code{c("Life satisfaction 8 to 10" =
"mental", ...)}.}
\item{lon}{Incident coordinates: longitude and latitude
in degrees, or planar coordinates with \code{coords = "planar"}.}
\item{lat}{Incident coordinates: longitude and latitude
in degrees, or planar coordinates with \code{coords = "planar"}.}
\item{cell}{Side of a grid cell: kilometres for longitude and
latitude, map units otherwise; one positive number, default 0.25.}
\item{top}{Share of the ever-active cells counted as hot in
each period, in (0, 1]; default 0.05 (the busiest 5\%).}
\item{xy}{\code{"lonlat"} (the default, degrees) or \code{"planar"}
(projected coordinates, such as metres in a UTM zone).}
\item{s}{Numeric vector of exponents. The series converges for \code{s > 1};
below 1 the value is the analytic continuation (so \code{hurwzeta(0.5,
0.5)} is \eqn{-0.6049}), and \code{s = 1} is a pole (\code{NA}).}
\item{q}{For \code{hurwzeta}: Numeric scalar, the lower limit; default \code{1} (the Riemann
zeta). Any real number but zero or a negative integer (poles, \code{NA}). For
a negative non-integer \code{q} the value is real only for a whole \code{s};
a fractional \code{s} gives \code{NA}.

For \code{pgsig}: Emission rate (mass per second, for example g/s).}
\item{name}{Which excerpt.}
\item{pat}{Optional regular expression matched against the descriptions (case
ignored).}
\item{refresh}{Fetch the manifest again (default \code{FALSE}).}
\item{se}{Give one: standard errors, coefficients of variation
(relative standard errors, in percent), or margins of error.}
\item{cv}{Give one: standard errors, coefficients of variation
(relative standard errors, in percent), or margins of error.}
\item{moe}{Give one: standard errors, coefficients of variation
(relative standard errors, in percent), or margins of error.}
\item{moelev}{The confidence level of the margins of error (default 0.90).}
\item{robust}{Use the median/MAD centre and scale (default
\code{TRUE}) .}
\item{maxit}{Whole number, default 500: the maximum number of EM
iterations.}
\item{tol}{Number, default 1e-7: EM stops when the largest absolute
change in any mean or covariance entry between iterations falls below
it.}
\item{hope}{The indicators taken as proxies for each
direction, or \code{NULL} where the tables have none.}
\item{belong}{The indicators taken as proxies for each
direction, or \code{NULL} where the tables have none.}
\item{meaning}{The indicators taken as proxies for each
direction, or \code{NULL} where the tables have none.}
\item{purp}{The indicators taken as proxies for each
direction, or \code{NULL} where the tables have none.}
\item{height}{Whole number, default 20: the maximum number of lines
(row blocks) in the map.}
\item{width}{Whole number, default 12: column names are cut to this many
characters in the vertical legend.}
\item{maxpat}{Maximum patterns to return, most
frequent first, one positive whole number (default 20).}
\item{minrun}{Whole number, default 2: report only runs at least this
long (a run of 1 is an isolated gap).}
\item{nbrs}{Either a list with one integer vector of neighbour
indices per area (in the order of \code{x}), or a square \eqn{n \times
n} weight matrix.}
\item{style}{\code{"W"} (the default) row-standardises the weights, so
each area's neighbours carry a total weight of one; \code{"B"} leaves
them as given (binary for a list). Row standardisation is the usual
choice, and stops an area with many neighbours from dominating.}
\item{nperm}{For \code{morani}: Integer, default \code{9999}: the number of random
permutations for the null distribution.

For \code{stepchg}: Whole number, default 9999: the number of random
permutations for the null distribution. The exact enumeration is used
instead when \eqn{n!} is at most \code{nperm}.}
\item{expdel}{Counterfactual reduction in exposure, in the unit
of \code{betaperunit} (positive means the exposure goes down).}
\item{brate}{For \code{mortdisp}: Baseline rate in cases per person-year (0.008 is
800 per 100,000).

For \code{polbrdn}: Cases per person-year in the unexposed scenario (a
rate per person, not per 100,000: 0.008 is 800 per 100,000).

For \code{vrfpol}: Baseline outcome rate per 100,000 per year (unlike
\code{\link{polbrdn}}, which takes a rate per person-year).}
\item{betaperunit}{Log relative risk per unit of exposure (per unit,
not per 10), a single finite number.}
\item{rare}{For \code{mortdisp}: \code{TRUE} to admit a baseline rate
below 1e-5 (one per 100,000) or above 0.1 (10,000 per 100,000)
per person-year; without them such a rate is refused, being also
what a rate in the wrong unit looks like.

For \code{polbrdarea}: Passed to
\code{\link{polbrdn}} for every area: the pollutant
(default \code{"NO2"}), the outcome (default all-cause mortality), and
the switches that admit a rate below 1e-5 or above 0.1 per
person-year.

For \code{polbrdn}: \code{TRUE} to admit a baseline rate
below 1e-5 (one per 100,000) or above 0.1 (10,000 per 100,000)
per person-year, as \code{\link{vrfpol}} does: without
them such a rate is refused, being also what a rate in the wrong
unit looks like.

For \code{vrfpol}: \code{TRUE} when the outcome really is rarer than one case per
100,000 per year. Without it a rate that converts to less than that is an
assumption failure, because it is also what a rate per person-year passed
as per 100,000 looks like (0.008 per person-year is 800 per 100,000; as
0.008 per 100,000 the burden is 100,000 times too small). The check is on
the converted rate, so it holds whatever \code{basrateper} is.}
\item{hirate}{For \code{mortdisp}: \code{TRUE} to admit a baseline rate
below 1e-5 (one per 100,000) or above 0.1 (10,000 per 100,000)
per person-year; without them such a rate is refused, being also
what a rate in the wrong unit looks like.

For \code{polbrdarea}: Passed to
\code{\link{polbrdn}} for every area: the pollutant
(default \code{"NO2"}), the outcome (default all-cause mortality), and
the switches that admit a rate below 1e-5 or above 0.1 per
person-year.

For \code{polbrdn}: \code{TRUE} to admit a baseline rate
below 1e-5 (one per 100,000) or above 0.1 (10,000 per 100,000)
per person-year, as \code{\link{vrfpol}} does: without
them such a rate is refused, being also what a rate in the wrong
unit looks like.

For \code{vrfpol}: \code{TRUE} when the outcome really is more common
than 10,000 per 100,000 a year (no population's all-cause death
rate is); without it such a rate is an assumption failure.}
\item{ratio}{Comparison units per treated unit (default 1).}
\item{exact}{For \code{mtchdid}: Optional column name: match only within its values (a region, a
district).

For \code{trndtst}: Logical or \code{NULL} (the default). Whether to compute the
exact null distribution of Mann-Kendall's \eqn{S} by enumeration.
\code{NULL} uses it up to \code{n = 8} (40,320 orderings); above that
the normal approximation with the tie and continuity corrections is
used.}
\item{caliper}{Optional maximum distance, in standard deviations of the
distances.}
\item{covm}{\code{"pooled"} (default; the pooled within-group covariance) or
\code{"full"} (the whole sample's).}
\item{acc}{Accumulators from \code{onlsmry()}.}
\item{cat}{Column names: the group, the category, the
share in it (percent or proportion: only relative shares matter) and its
published limits on the same scale.}
\item{ties}{For \code{perminf}: \code{"count"} (default): an assignment whose statistic equals
the observed one counts (the observed assignment is among those enumerated,
so the exact p-value is at least \eqn{1/N}); \code{"strict"}: only larger
ones count.

For \code{wcb}: \code{"count"} (default) or \code{"strict"}: whether a bootstrap
\eqn{|t^*|} equal to \eqn{|t|} counts against the null.}
\item{stab}{Pasquill stability class, one of \code{"A"} to \code{"F"}.}
\item{set}{\code{"rural"} (the default) or \code{"urban"}: which set
of Briggs coefficients to use.}
\item{u}{Wind speed in m/s (the x velocity for the grid models).}
\item{diam}{Stack diameter (m), exit velocity (m/s),
stack gas and ambient temperatures (K). Only buoyant rise is modelled: a
stack at the air's temperature (within half a kelvin) has zero rise, and
momentum rise from the exit velocity is not added.}
\item{exitvel}{Stack diameter (m), exit velocity (m/s),
stack gas and ambient temperatures (K). Only buoyant rise is modelled: a
stack at the air's temperature (within half a kelvin) has zero rise, and
momentum rise from the exit velocity is not added.}
\item{stktmp}{Stack diameter (m), exit velocity (m/s),
stack gas and ambient temperatures (K). Only buoyant rise is modelled: a
stack at the air's temperature (within half a kelvin) has zero rise, and
momentum rise from the exit velocity is not added.}
\item{ambtmp}{Stack diameter (m), exit velocity (m/s),
stack gas and ambient temperatures (K). Only buoyant rise is modelled: a
stack at the air's temperature (within half a kelvin) has zero rise, and
momentum rise from the exit velocity is not added.}
\item{dthdz}{Potential temperature gradient (K/m) for the stable
classes; the defaults are 0.020 (E) and 0.035 (F).}
\item{g}{Gravitational acceleration in m/s^2, default 9.80616.}
\item{h}{Effective stack height (m): physical height plus plume rise.}
\item{rcpt}{A matrix with columns x, y, z, or a list of length-3
vectors.}
\item{mixh}{Mixing-lid height in metres, or \code{NULL} (the
default) for no lid. Under a lid the plume is reflected between the
ground and the lid.}
\item{nimg}{Whole number, default 3: the number of lid image pairs
(0 to 1,000). The terms decay quickly; a few are enough.}
\item{mass}{Puff mass (for example g).}
\item{t}{Time since release (s).}
\item{c0}{Initial concentration grid: a non-negative numeric matrix, one
row per x cell and one column per y cell.}
\item{v}{Wind velocity along y (m/s), may be negative.}
\item{kx}{Eddy diffusivities along x and y (m^2/s), non-negative.}
\item{ky}{Eddy diffusivities along x and y (m^2/s), non-negative.}
\item{dx}{Grid spacings (m), positive.}
\item{dy}{Grid spacings (m), positive.}
\item{dt}{Time step (s), positive.}
\item{nsteps}{Whole number of time steps (0 returns the start).}
\item{source}{Source grid (concentration per unit time), or \code{NULL}.}
\item{maxwork}{The most cell updates (cells x steps x sub-steps; for
\code{lagrprt()}, particles x steps) a run may take, 100 million by default
(a few minutes of the explicit loop); \code{Inf} lifts it. The same
physical run costs the same whether the caller sub-steps it or the scheme
does, so the cap reads the same either way.}
\item{x0}{Release point (m).}
\item{y0}{Release point (m).}
\item{grid}{\code{NULL}, or \code{c(xmin, x_max, y_min, y_max, nx, ny)}
to count particles into a concentration grid.}
\item{normals}{A function \code{(n, seed, stream)} returning \code{n}
standard normals; step \code{k} (from 0) draws streams \code{2k} for x
and \code{2k + 1} for y. The default draws from the package's shared
uniform stream (\code{\link{cunif}}) through the normal quantile.
rmorie's \code{LagrangianParticles()} uses its own Philox stream, so its
paths differ from the default here; pass its generator to reproduce them.}
\item{num}{The outcome and input counts, in period order.}
\item{den}{For \code{piperate}: The outcome and input counts, in period order.

For \code{svycmp}, \code{svyest}: For a ratio, the denominator column.}
\item{win}{The number of periods summed (default 12).}
\item{lag}{For \code{piperate}: The number of periods the input's window precedes the outcome's
(default 0).

For \code{ratechg}: Whole number, default 1: how many periods back to compare
against.}
\item{fe}{\code{c("unit", "time")} (default) or \code{"time"}.}
\item{comb}{Optional linear combination of the terms, named by them, reported
with its delta-method standard error as the attribute \code{combined}. For
a phase-in model with an exposure term \eqn{E_{it} = \min(t - G_i, K)},
\code{comb = c(treated = 1, exposure = 12)} is the effect after twelve
periods, with its error, and as a percentage of the comparison units'
pre-period mean (that mean taken as fixed).}
\item{nrep}{Repeated sample splits (default 1).}
\item{family}{\code{"poisson"} (default) or \code{"negbin"} (NB2, \eqn{Var(Y)
= \mu + \mu^2/\theta}, with \eqn{\theta} by maximum likelihood).}
\item{ntrt}{Units (or clusters) to treat in each replication.}
\item{adopt}{For \code{plnpwr}: Adoption periods to draw from.

For \code{synctl}: The first treated period.}
\item{eff}{Effect sizes to try (default a grid from 0 to two standard
deviations of the outcome).}
\item{power}{For the minimum detectable effect (default 0.8).}
\item{main}{For \code{plot.rmbl_dstfit}: The title, colours, and a \code{\link[=blpal]{blpal()}}
palette name.

For \code{plothwk}: The title, colours, and a \code{\link[=blpal]{blpal()}} name.}
\item{palette}{The title, colours, and a \code{\link[=blpal]{blpal()}}
palette name.}
\item{what}{One of \code{"intensity"}, \code{"qq"} or \code{"tree"}.}
\item{ngrid}{Whole number, default 600: points of the intensity curve.}
\item{pal}{The title, colours, and a \code{\link[=blpal]{blpal()}} name.}
\item{kfol}{Number of cross-fitting folds, a whole number of at least
2 (default 5).}
\item{areatab}{A data frame with one row per area: a label, the
exposure in micrograms per cubic metre, the population in persons and
the baseline rate per person-year (0.008 is 800 per 100,000).}
\item{areacol}{Column
names (single strings) of the label, exposure, population and rate;
defaults \code{"fsa"}, \code{"exposure"}, \code{"population"} and
\code{"brate"}.}
\item{expcol}{Column
names (single strings) of the label, exposure, population and rate;
defaults \code{"fsa"}, \code{"exposure"}, \code{"population"} and
\code{"brate"}.}
\item{popcol}{Column
names (single strings) of the label, exposure, population and rate;
defaults \code{"fsa"}, \code{"exposure"}, \code{"population"} and
\code{"brate"}.}
\item{basratecol}{Column
names (single strings) of the label, exposure, population and rate;
defaults \code{"fsa"}, \code{"exposure"}, \code{"population"} and
\code{"brate"}.}
\item{poll}{For \code{polbrdarea}: Passed to
\code{\link{polbrdn}} for every area: the pollutant
(default \code{"NO2"}), the outcome (default all-cause mortality), and
the switches that admit a rate below 1e-5 or above 0.1 per
person-year.

For \code{polbrdn}: \code{"PM2.5"} (also written \code{"PM25"}) or
\code{"NO2"}, in either case.

For \code{vrfpol}: \code{"no2"} or \code{"pm25"} (also \code{"PM2.5"}), in
either case.}
\item{expomean}{For \code{polbrdn}: The mean exposure among the exposed, in micrograms per cubic
metre. With \code{expoprev = 1} that is the population mean.

For \code{vrfpol}: Scalar inputs used when neither \code{demo} nor
\code{expcsv} is given: the mean exposure among the exposed and the share
of the population exposed. A wrapper must never default one of them to
zero: a prevalence of zero silently zeroes the burden, which is why the two
are required together.}
\item{clsup}{Logical, default \code{TRUE}. For the inclusive
open-upper wordings (\code{"+"}, \code{"and over"}, \code{"or more"} and
the like), whether the stated number belongs to the band:
\code{TRUE} reads \code{"50+"} as 50 and above, \code{FALSE} as above 50
(lower bound 51 on an integer scale). The exclusive wordings
(\code{"greater than 15"}) always exclude the number.}
\item{intsca}{Logical, default \code{TRUE}. Whether the quantity is
integer-valued (counts, days, whole years). It decides whether
\code{"greater than 15"} starts at 16 (\code{TRUE}) or at 15 as an
infimum (\code{FALSE}). A label written with decimals is always treated
as continuous.}
\item{rnd}{Numeric scalar, the base the release rounds to
(\code{5}, \code{10}, ...), or \code{NULL} (the default) when the
counts are exact.}
\item{rndkind}{\code{"nearest"} (the printed value is the observed
value rounded to the nearest multiple of \code{rnd}, so the
observed value lies within half a base) or \code{"random"} (Statistics
Canada's random rounding, where the observed value lies within
\code{rounding - 1}).}
\item{suplim}{Numeric scalar or \code{NULL} (the default). For
a cell printed as suppressed with no explicit limit, the smallest count
that would have been published: the cell then lies in
\code{[0, suplim - 1]}.}
\item{supmar}{Character vector of the strings that mark a
suppressed cell, matched exactly after trimming. Default
\code{c("x", "X", "s", "..", "F", "suppressed", "n/a")}.}
\item{suppr}{Flags meaning the value must not be used (it becomes
\code{"x"}).}
\item{caution}{Flags meaning the value may be used with caution (it becomes
\code{"E"}).}
\item{count}{For \code{ratechg}: Column of counts (unquoted or a string): non-negative whole
numbers.

For \code{rtcalc}: Column of counts, given unquoted or as a string:
non-negative whole numbers.

For \code{sevidx}: Column names.

For \code{shrs}: Column of counts (required), unquoted or as a string:
non-negative whole numbers.}
\item{by}{For \code{ratechg}: Character vector of grouping columns, default \code{NULL}.

For \code{rtcalc}: Character vector of grouping columns, default \code{NULL}. The
rate is computed within each group.

For \code{shrs}: Character vector of grouping columns. Shares are computed
over the groups, so they sum to 100 unless \code{total} says otherwise.

For \code{svycmp}: The domain columns to compare across.

For \code{svyest}: Optional character vector of domain columns; \code{NULL} (the
default) estimates for the whole population.}
\item{mincnt}{For \code{ratechg}: Number, default 0. Comparisons where the earlier count
is at or below this are flagged as resting on a small count; the percent
change and its exact interval are still reported, as \code{\link{yoy}}
does.

For \code{rtcalc}: Number, default 0. Counts at or below this are flagged
as too small to report, with the rate still computed. The default flags
nothing; published guidance often uses 5 or 10.}
\item{prdord}{Optional character vector: the period labels in order, as
for \code{\link[=yoy]{yoy()}}. A label it lists that the data lacks is a gap, so the
change across it is not reported as one step.}
\item{offence}{Column names.}
\item{total}{For \code{shrs}: The denominator. \code{NULL} (default) sums \code{count},
which makes the shares sum to 100. A number uses that number; a column
name (data-frame method) uses the sum of that column -- for the case
where some of the total is not in the table.

For \code{trcprog}: Number of Calls to Action (94).}
\item{N}{The population size \eqn{N}, for \code{"finite"} and
\code{"auto"}.}
\item{wtype}{For \code{sprd}: \code{"frequency"} (default) or \code{"reliability"}.

For \code{wcb}: \code{"rademacher"} (default) or \code{"webb"}.}
\item{narm}{Drop missing values (default \code{FALSE}: they are an error).}
\item{scale}{The upper bound of the scale: 100 for percentages (the default),
1 for proportions, \code{Inf} for rates.}
\item{minseg}{Whole number, default 2: the fewest periods allowed on
either side of the break.}
\item{ctrl}{\code{"notyet"} (default) or \code{"never"}.}
\item{estmeth}{With covariates: \code{"dr"} (doubly robust, default),
\code{"ipw"} or \code{"reg"}.}
\item{null}{A matrix of statistics under the null: one row per draw, one
column per hypothesis.}
\item{psu}{Optional stratum and primary sampling unit:
column names or vectors. A PSU label need only be unique
within its stratum.}
\item{fpc}{Optional finite population correction per row: a
column name or vector holding either the stratum's population
count of PSUs or (all values at most 1) the sampling
fraction.}
\item{id}{With a \code{reps} data frame, the column (present
in both) that matches its rows to \code{data}'s; without it the
rows must already be in the same order.}
\item{type}{How the replicates were made: \code{"bootstrap"} (the
default), \code{"meanboot"}, \code{"jk1"}, \code{"jkn"},
\code{"brr"} or \code{"fay"}; see Details. Ignored without
\code{reps}.}
\item{msize}{For \code{type = "meanboot"}, the number of
bootstrap weights averaged into each replicate; default \code{1}.}
\item{rho}{For \code{type = "fay"}, Fay's coefficient, between 0 and 1;
default \code{NULL}.}
\item{mse}{Logical scalar, default \code{TRUE}: centre replicate deviations
on the full-sample estimate (\code{TRUE}) or on the mean of the replicate
estimates (\code{FALSE}).}
\item{lonely}{What to do with a stratum that has a single
PSU under linearization: \code{"fail"} (the default; an error naming it),
\code{"remove"} (it contributes nothing) or \code{"adjust"} (its PSU is
centred on the mean of all PSU totals).}
\item{rscales}{Per-replicate factors: required for
\code{type = "jkn"} (\eqn{(n_h - 1)/n_h} for each replicate's
stratum), optional otherwise (multiplying the type's scale).}
\item{degf}{The design's degrees of freedom, when known (a
public-use file's documentation gives them); by default
computed as described in Details.}
\item{ci}{Interval method: \code{"auto"} (the default; Wilson for
proportions, Wald otherwise), \code{"wilson"}, \code{"logit"} or
\code{"wald"}. Wilson and logit apply to proportions only.}
\item{minn}{Numeric scalar, default \code{30}: domains with fewer
respondents are flagged.}
\item{df}{Degrees of freedom for the interval: \code{Inf} (the
default) for the normal quantile, a number for Student's t,
or \code{"design"} for the design's own (PSUs less strata under
linearization, replicates less one otherwise).}
\item{treunit}{The treated unit (a value of \code{unit}).}
\item{plac}{Run the placebo test (default \code{TRUE}).}
\item{minabs}{Report only pairs whose absolute correlation reaches this,
a number in \eqn{[0, 1]} (default 0).}
\item{done}{Cumulative number completed at each date (default:
\code{\link{trccmpl}}).}
\item{yearend}{The year each count was made to (end of year).}
\item{value}{Column names (strings), when \code{y} is a data
frame. \code{value} is required; \code{prd} is optional and must be
convertible with \code{as.numeric()}.}
\item{alt}{\code{"two.sided"} (the default), \code{"increasing"}
or \code{"decreasing"}.}
\item{mbar}{The values of \eqn{\bar M} (default 0, 0.5, 1, 1.5, 2).}
\item{draws}{Normal draws for the interval (default 5000).}
\item{reg}{Labels for the report.}
\item{years}{Labels for the report.}
\item{demo}{Use synthetic demo data (\code{TRUE} or \code{FALSE}).}
\item{expcsv}{Path of a CSV with an \code{exposure} column in
micrograms per cubic metre, or a NAPS pull with a \code{value} column
and a \code{unit} column (required with \code{value}): each row is
converted by its own unit, NO2 in ppb at 1.88 micrograms per cubic metre
per ppb (the WHO 2021 conversion at 25 C and 1 atm), and any other unit
is an error. With a CSV or the demo data the exposed are the rows above
\code{ref}: \code{expoprev} is their share and
\code{expomean} their mean, so Levin's formula is not diluted twice.}
\item{basrateper}{The denominator \code{brate} is quoted per: 100,000 (the
default), or 1 for a rate per person-year such as a crude death rate of
0.012.}
\item{report}{A result of \code{vrfpol()} (or a list with the
same parts); anything else is refused with an R error.}
}
\description{Statistics and analysis. Each function has its own section below; \code{?name} opens this page for any of them.}
\value{
\subsection{Directly age-standardised rates, with Fay-Feuer gamma intervals (\code{agestd})}{
A data frame with \code{group}, \code{events}, \code{rate},
\code{lower}, \code{upper}, and the attributes \code{var} (the variances,
on the per-person scale) for \code{\link{rategap}}.
}
\subsection{Cross-fitted augmented inverse probability weighting for a binary treatment (\code{aipwcf})}{
A data frame of class \code{rmbl_aipw}: \code{estimand},
\code{estimate}, \code{se}, \code{lower}, \code{upper}, \code{p_value};
attributes \code{n}, \code{treated}, \code{psrange}, \code{trimmed} (how
many propensities were clipped), \code{variance} (\code{"influence"}, or
the design's type) and \code{propensity} (a data frame of each row's
out-of-fold propensity before clipping, its treatment and its weight, which
\code{plot()} draws).
}
\subsection{Population attributable fraction (\code{attrfrac})}{
A single number, the attributable fraction: in \code{[0, 1)} for
\code{rr >= 1}, negative for a protective exposure. When the limits
were given it carries an attribute \code{ci}, a named numeric vector
(\code{lower}, \code{upper}).
It has class \code{c("rmbl_attrfrac", "rmbl_measure", "numeric")}, so it
prints as a box with its inputs (kept in attribute \code{"lakner"});
arithmetic, \code{[}, \code{c()} and \code{as.numeric()} give plain
numbers.
}
\subsection{The Goodman-Bacon decomposition of a two-way fixed-effects estimate (\code{bacondcmp})}{
A data frame of class \code{rmbl_bacon}: \code{type} (\code{"treated
  vs never"}, \code{"earlier vs later"}, \code{"later vs earlier"}),
\code{treated}, \code{control} (the adoption periods; \code{Inf} for
never), \code{estimate}, \code{weight}; attribute \code{twfe} (the weighted
sum, equal to the two-way estimate).
}
\subsection{A covariate balance table (\code{baltab})}{
A data frame of class \code{rmbl_balance}: \code{covariate},
\code{meantrtd}, \code{meanctl}, \code{smd}, \code{p_value}.
}
\subsection{How much a result depends on the open band's assumed cap (\code{bandsens})}{
A data frame of class \code{c("rmbl_band_sensitivity",
  "data.frame")} with numeric columns \code{cap} and \code{value}, and
attributes \code{span}, \code{relspan} and \code{base} (the lower
bound \eqn{b} of the open band).
}
\subsection{Representative values for banded categories (\code{bandvals})}{
The band table with two added columns: \code{value} (numeric, the
representative value) and \code{assumed} (logical, \code{TRUE} for the
open bands whose value rests on the cap or floor).
}
\subsection{Benford first-digit test (\code{benfordtst})}{
A list of class \code{bricklayer_benford} with \code{counts}
(observed digit frequencies 1--9), \code{expected}, \code{proportion},
\code{statistic}, \code{df}, \code{p_value}, \code{logpvalue} (the log of the upper
tail, which keeps its information where \code{p_value} underflows to 0),
and \code{n} (the number of values used). \code{counts}, \code{expected} and
\code{proportion} are named numeric vectors with names \code{"1"} to \code{"9"}. The
print method shows the verdict and a bar chart of observed against
expected shares.
}
\subsection{Treated, comparison and excluded places around sites (\code{bufasgn})}{
A data frame of class \code{rmbl_buffer} with the columns
\code{group} (\code{"treated"},
\code{"comparison"} or \code{"excluded"}), \code{site_distance} and
\code{comparison_distance}.
}
\subsection{Bootstrap replicate means (C backend) (\code{cbootmean})}{
A numeric vector of length \code{B}: the replicate means, in the
units of \code{x}.
}
\subsection{Covariance matrix of a numeric matrix (C backend) (\code{ccovm})}{
A symmetric \code{ncol(x)} by \code{ncol(x)} numeric matrix, with the
column names of \code{x} (if any) as both row and column names; entry
units are the product of the two columns' units.
}
\subsection{Regularized incomplete gamma function (C backend) (\code{cgamcdf})}{
A numeric vector the length of \code{x}, each entry a probability in
\eqn{[0, 1]}.
}
\subsection{Envelope of a difference, a percent change or a rate under publication bounds (\code{chgenv})}{
A data frame, one row per cell, with numeric columns
\code{chglo}, \code{chgup}, \code{pctlo},
\code{pctup} (\code{NA} where the previous cell could have been
zero); with \code{population} also \code{ratelo} and
\code{rateup}; with \code{prepop} as well
\code{preratelo} and \code{prerateup}.
}
\subsection{Fit a Hawkes process by maximum likelihood (analytic gradient, fast routes) (\code{chwkfit})}{
A list: \describe{ \item{\code{theta}}{numeric, all estimates in the
order baseline, \code{eta}, kernel.} \item{\code{basepar}}{numeric,
\code{a0} (constant) or \code{a0..a3} (sinusoidal), on the log scale.}
\item{\code{braratio}}{numeric, \eqn{\eta}, the expected number of events
each event triggers.} \item{\code{kerpar}}{numeric, the kernel parameters
(\code{beta}; \code{alpha, lambda}; \code{alpha, beta}; or \code{alpha,
  c}).} \item{\code{nll}, \code{aic}, \code{bic}}{numeric: the exact negative
log-likelihood, \eqn{2k + 2\,nll} and \eqn{k \log n + 2\,nll}.}
\item{\code{n}, \code{horizon}, \code{kpar}}{the number of events
(integer), the window end and the number of parameters (integer).}
\item{\code{ksstat}, \code{kspva}}{numeric, the Kolmogorov-Smirnov test of
the time-rescaling residuals against the uniform.} \item{\code{kernel},
\code{baseline}, \code{method}}{character, the choices used (\code{method}
after \code{"auto"} is resolved).} \item{\code{eps}}{numeric, \code{eps}
for \code{"soe"} and \code{"truncate"}, \code{NA} otherwise.}
\item{\code{converged}}{logical, the optimiser stopped at a maximum within
the parameter box (before its iteration limit, at a finite likelihood). A
maximum on the box counts: \code{atbound} names the parameters that lie on
it.} \item{\code{atbound}}{character, the names of parameters that lie on
the box (\code{character(0)} for an interior maximum).} } A warning is
given when \eqn{\eta} reaches its upper bound 0.99 (a near-critical,
probably non-stationary fit). An estimate on the box is not an interior
maximum of the likelihood: day-dated (tied) times drive a shape or decay to
its wall, and a Lomax fitted to exponential data runs to its exponential
limit.
}
\subsection{Spread event times recorded to a resolution across their interval (\code{chwkjit})}{
A numeric vector of the jittered times, the same length as
\code{times}, sorted increasingly.
}
\subsection{Hawkes-process negative log-likelihood (C backend) (\code{chwknll})}{
A length-1 numeric: the negative log-likelihood, to be MINIMISED. A
parameter set outside the feasible region returns the sentinel \code{1e12}
rather than erroring, so the value can be handed straight to
\code{\link[stats:optim]{stats::optim()}} without the optimiser walking off the
domain.
}
\subsection{Time-rescaling residuals of a Hawkes process (\code{chwkres})}{
A numeric vector of length \code{length(times)}, values in
(0, 1).
}
\subsection{Simulate event times from a fitted Hawkes process (\code{chwksim})}{
The sorted event times (numeric), with the attribute \code{generation} (0
for an immigrant, 1 for its children, ...).
}
\subsection{Trimmed inverse-probability weights (C backend) (\code{cipw})}{
A numeric vector of weights the length of \code{treat}, each at
least 1 (and at most \code{1 / trimlo} or \code{1 / (1 - trimhi)}), \code{NA}
where
the treatment or propensity is missing.
}
\subsection{Tidy the column names of an ingested table (\code{clncolnms})}{
For a data frame, the data frame with new names and an
\code{"orignms"} attribute (character, the names before cleaning);
for a character vector, the cleaned character vector.
}
\subsection{Cumulative risk of a first event by age (\code{cmlrisk})}{
A data frame of class \code{rmbl_cumrisk}: \code{age},
\code{hazard}, \code{atrisk},
\code{cmlrisk}, \code{lower}, \code{upper}.
}
\subsection{Mean, variance, skewness and kurtosis (C backend) (\code{cmom})}{
A named length-4 numeric vector: \code{mean} (units of \code{x}),
\code{variance} (squared units of \code{x}, \code{n - 1} denominator),
\code{skewness} and
\code{kurtosis} (both unitless; kurtosis as excess over the normal's 3).
}
\subsection{Normal log-density (C backend) (\code{cnormlpdf})}{
A numeric vector the length of \code{x}: the natural-log density at
each value (in log units per unit of \code{x}). Equivalent to
\code{stats::dnorm(x, mean, sd, log = TRUE)}.
}
\subsection{Normal density (C backend) (\code{cnormpdf})}{
A numeric vector the length of \code{x}.
}
\subsection{Trend in a count series, as a rate ratio per period (\code{cnttrnd})}{
A list of class \code{c("rmbl_count_trend", "list")} with
\code{rateratio} (per period), \code{lower}, \code{upper},
\code{p_value} (test of no trend), \code{logslope} (\eqn{\beta_1}),
\code{se} (its standard error, scaled when overdispersed),
\code{fitted} (fitted counts), \code{dispersion}, \code{overdispersed}
(logical), \code{n}, \code{data} (list of the \code{x} and \code{y}
used) and \code{method}.
}
\subsection{Energy and carbon footprint of a computation (\code{co2fp})}{
A list of class \code{rmbl_footprint} with elements \code{value}
(the result of \code{expr}), \code{durs} (numeric, wall seconds),
\code{cputms} (numeric, CPU seconds of this process and its
children), \code{usage} (numeric in \eqn{[0, 1]}, the utilisation),
\code{usagemode} (\code{"process"}, \code{"machine"} or
\code{"fixed"}), \code{cores} (integer), \code{memgb} (numeric),
\code{enekwh} (a list of numerics \code{cpu}, \code{memory} and
\code{total}, in kWh, PUE included), \code{co2eg} (numeric, grams of
CO2-equivalent), \code{co2int} (the list returned by
\code{\link{co2int}}, with its year and source), \code{method}
(\code{"rapl"} or \code{"model"}, the method actually used),
\code{assumptions} (character vector of every default or fallback that
stood in for a measurement) and \code{citations} (character vector).
The print method shows a three-line summary.
}
\subsection{Carbon intensity of electricity by location, offline, anywhere (\code{co2int})}{
\code{co2int()}: a list with \code{g_per_kwh},
\code{location}, \code{name}, \code{year}, \code{basis}, \code{source}
and \code{note} (a character vector, empty unless a fallback or detection
was involved). \code{co2inttab()}: the full table as a data
frame with the same columns plus \code{iso3}.
}
\subsection{A community-weighted index of protective and risk factors (\code{commidx})}{
A data frame of class \code{rmbl_community_index}: \code{group},
\code{index}, \code{lower}, \code{upper}, \code{usewithcau}; attributes
\code{weights} and \code{conflvl}. \code{plot()} draws it.
}
\subsection{Concentration of a total across units (\code{concentration})}{
\code{ginicoef()}: a numeric scalar in \code{[0, 1 - 1/n]}.
\code{lorenzc()}: a data frame with numeric columns \code{population}
(cumulative share of units, from 0 to 1) and \code{value} (cumulative
share of the total, units in ascending order), \code{n + 1} rows
including the origin. \code{topshr()}: a data frame with columns
\code{fraction} (the requested fraction of units), \code{units} (how
many of the largest units that fraction is) and \code{share} (the share
of the total those units hold).
It has class \code{c("rmbl_gini", "rmbl_measure", "numeric")}, so it
prints as a box with its inputs (kept in attribute \code{"lakner"});
arithmetic, \code{[}, \code{c()} and \code{as.numeric()} give plain
numbers.
}
\subsection{Connection across places: does one indicator rise where another does? (\code{connassoc})}{
A list of class \code{rmbl_connection}: \code{data} (the places
used), \code{rho}, \code{p_value}, \code{exact}, \code{rholo},
\code{rhoup}, \code{n}.
}
\subsection{Full pairwise correlation table (\code{cortbl})}{
A data frame of class \code{c("bricklayer_cortable", "data.frame")}
with one row per pair of numeric columns and the columns \code{x} and
\code{y} (character, the column names), \code{correlation} (numeric, in
\eqn{[-1, 1]} or \code{NA}) and \code{nprs} (integer); the method is
in \code{attr(, "method")}.
}
\subsection{Compare a fetched data frame with the one a capsule was pinned against (\code{cpsdrft})}{
A list of class \code{bricklayer_drift} with elements: \describe{
\item{\code{columns}}{a data frame, one row per shared column, with \code{column},
\code{type} (\code{"numeric"}, \code{"date"}, \code{"categorical"} or
\code{"identifier"}), \code{statistic} (KS \eqn{D} or chi-square), \code{p_value},
\code{psi}, \code{jsdiv}, \code{unseen_share} (share of current values the reference
never had; categorical and identifier columns only), \code{drifted} (logical, \code{NA}
when no test applies) and \code{note} (why a column was not tested, or \code{""});}
\item{\code{added}, \code{removed}}{character vectors of column names;}
\item{\code{nref}, \code{ncur}}{row counts;} \item{\code{alpha}, \code{psithr},
\code{psiminn}}{the settings used;} \item{\code{bands}}{the PSI bands the plots and
reports colour by: \code{warn} (0.1, or \code{psithr} when lower) and \code{fail}
(\code{psithr});} \item{\code{summ}}{one binned summary per shared column, for
\link[=plot-methods]{plot()}, \code{\link[=drfthtml]{drfthtml()}} and
\code{\link[=drftapp]{drftapp()}}: missing shares, sizes, summary statistics or the ten
largest categories, the PSI bins with each bin's term of the index, a
histogram and first-digit counts. Never the rows;} \item{\code{anydrft}}{logical.}
} The print method lists the per-column verdicts, drifted columns first.
}
\subsection{Run falsification controls against a statistic (\code{cpsfals})}{
A list of class \code{bricklayer_falsification}: \code{observed} (the
statistic on the data as given), \code{controls} (a data frame with one row per
control: \code{control}, logical \code{passed} (\code{NA} when skipped), numeric
\code{value}
(the p-value, the placebo or noise statistic, or the subset spread) and
\code{detail}), \code{permutation} (the vector of permuted statistics, \code{NULL}
without
\code{treatment}), \code{n}, \code{treatment}, \code{rng_kind} and \code{seed}
(\code{NA} when none was
given). \code{print()} shows one line per control; \code{plot()} draws the
permutation distribution.
}
\subsection{Detect an injected effect of known size (\code{cpspwr})}{
A list of class \code{c("bricklayer_power", "list")}: \describe{
\item{\code{curve}}{data frame with one row per size: \code{size},
\code{detected} (integer), \code{reps} (integer, the usable repetitions)
and \code{rate} (\code{detected / reps}, \code{NA} when none was usable).}
\item{\code{alpha}, \code{n}, \code{reps}, \code{treatment}}{the settings
used.} \item{\code{smadet}}{the smallest positive size found at a rate of
at least 0.8, or \code{NA} when no size reached it.}
\item{\code{false_positive_rate}}{the rate at size 0.} }
}
\subsection{Association in a contingency table (\code{cramerv})}{
A list with \code{v} (numeric, Cramer's V), \code{chisq} (the
Pearson statistic), \code{df} (integer), \code{p_value}, \code{n} (the
total count), \code{minexp} (the smallest expected count in the
table), \code{cellsbelow} (integer), the number of
cells whose expected count falls under the threshold. When any does,
\code{p_value} comes from a Monte Carlo permutation instead of the
chi-square approximation, and \code{method} says which was used.
}
\subsection{Rank correlation and midranks (C backend) (\code{crank})}{
\code{cspr()}: a length-1 numeric in \eqn{[-1, 1]}
(\code{NaN} as described above). \code{cmidrk()}: a numeric vector the
length of \code{x}, the rank of each value (1 for the smallest; tied values
share the mean of their ranks; \code{NA} kept as \code{NA}).
}
\subsection{Concentration-response functions for PM2.5 and NO2 (\code{crfpm25})}{
A list of class \code{rmbl_crf} (\code{plot()} draws the curve)
with: \code{rr} and \code{logrr}, the relative risk and its logarithm
at the exposure (their means over a vector of exposures);
\code{rrlo} and \code{rrup}, the RR at the published 95\%
limits (\code{NA} where there are none); \code{refconc};
\code{expconc} (the exposure, or the mean of a vector);
\code{pollutant} (\code{"PM2.5"} or \code{"NO2"}); \code{citation}
(the source as a string); and \code{extra}, a list with the
coefficient (\code{betaper10} and \code{betaper10ci} for the
log-linear forms, \code{alpha}, \code{gamma}, \code{delta} for the
IER), \code{form} (PM2.5 only), \code{outcome}, and for a vector of
exposures \code{rrperunit}, the RR at each one.
}
\subsection{Quantiles, median and robust spread (C backend) (\code{crob})}{
\code{cqnt()}: a numeric vector the length of \code{probs}, in
the units of \code{x}, named by percentage (\code{"25\%"}, ...) as
\code{\link[stats:quantile]{stats::quantile()}} names them. \code{cmed()},
\code{cmad()} and
\code{ciqr()}: a length-1 numeric in the units of \code{x}.
\code{ctkyfnc()}: a named length-2 numeric, \code{lower} and \code{upper}.
}
\subsection{SHA-256 hex digest (C backend) (\code{csha256})}{
A character vector of 64-character lowercase hex digests: one per
element for character input, length 1 for raw input
(\code{character(0)} for an empty character vector).
}
\subsection{Standard deviation and Euclidean distance (C backend) (\code{cspread})}{
\code{csdev()}: a length-1 numeric, the standard deviation in the
units of \code{x} (\code{NA} when \code{x} holds a missing value, \code{NaN} when
\code{length(x) <= ddof}). \code{cdistm()}: a length-1 non-negative numeric,
the distance in the units of \code{a} and \code{b}.
}
\subsection{Fast summary statistics (C backend) (\code{cstat})}{
\code{cmn()}, \code{cvari()} and \code{ccorr()} each
return a length-1 numeric.
}
\subsection{Trimmed and winsorized means (C backend) (\code{ctrm})}{
A length-1 numeric in the units of \code{x}.
}
\subsection{Reproducible uniforms shared with morie's Python arm (splitmix64) (\code{cunif})}{
A numeric vector of length \code{n}, values in [0, 1).
}
\subsection{The Community Well-Being index of a community (\code{cwbscr})}{
A data frame, one row per community: \code{income}, \code{education},
\code{housing}, \code{labour}, \code{cwb}.
}
\subsection{Weighted mean and variance (C backend) (\code{cwtd})}{
A named length-2 numeric vector: \code{mean} (units of \code{x}) and
\code{variance} (squared units of \code{x}).
}
\subsection{Calibrate the drift screens on data known not to have drifted (\code{drftcal})}{
A list of class \code{rmbl_drift_calibration}: \code{columns} (a data frame
of \code{column} and \code{falsealarmrate}, the share of splits on which it was
flagged), \code{anyflag} (share of splits with at least one flag), \code{alpha},
\code{n}, and \code{alphafam} (\code{alpha} divided by the number of
columns:
the Bonferroni per-screen level that would hold the family-wise
false-alarm rate at \code{alpha}). The print method lists the columns that
fired.
}
\subsection{Chi-square test for a categorical column (\code{drftchisq})}{
A named length-4 numeric: \code{statistic}, \code{df},
\code{p_value} and \code{logpvalue}, the natural log of the upper tail, which
keeps its information where \code{p_value} underflows to 0.
It has class \code{c("rmbl_drftchisq", "rmbl_measure", "numeric")}, so it
prints as a box with its inputs (kept in attribute \code{"lakner"});
arithmetic, \code{[}, \code{c()} and \code{as.numeric()} give plain
numbers.
}
\subsection{Chi-square test of homogeneity for two categorical samples (\code{drfthomog})}{
A named length-4 numeric: \code{statistic}, \code{df},
\code{p_value} and \code{logpvalue}, the natural log of the upper tail, which
keeps its information where \code{p_value} underflows to 0. On the Monte
Carlo branch (sparse tables) \code{p_value} is floored at 1/(B+1) and
\code{logpvalue} is its log, so it carries no extra range there. The
attribute \code{method} names the branch, or says why the test was
inapplicable (one category, no counts).
It has class \code{c("rmbl_drfthomog", "rmbl_measure", "numeric")}, so it
prints as a box with its inputs (kept in attribute \code{"lakner"});
arithmetic, \code{[}, \code{c()} and \code{as.numeric()} give plain
numbers.
}
\subsection{Two-sample Kolmogorov-Smirnov test (C backend) (\code{drftks})}{
A named length-3 numeric: \code{statistic} (the KS \eqn{D}) ,
\code{p_value}, and \code{neff} (the harmonic-style effective size
\eqn{n_xn_y/(n_x+n_y)}).
It has class \code{c("rmbl_drftks", "rmbl_measure", "numeric")}, so it
prints as a box with its inputs (kept in attribute \code{"lakner"});
arithmetic, \code{[}, \code{c()} and \code{as.numeric()} give plain
numbers.
}
\subsection{Population stability index and Jensen-Shannon divergence (C backend) (\code{drftpsi})}{
A named length-2 numeric: \code{psi} (non-negative, unbounded) and
\code{jsdiv} (in nats, between 0 and \eqn{\log 2 \approx 0.693}).
It has class \code{c("rmbl_drftpsi", "rmbl_measure", "numeric")}, so it
prints as a box with its inputs (kept in attribute \code{"lakner"});
arithmetic, \code{[}, \code{c()} and \code{as.numeric()} give plain
numbers.
}
\subsection{Drop empty or constant columns and rows (\code{drp})}{
The data frame, with the offending rows or columns removed. The
names of the columns that were dropped are attached as the
\code{"dropped"} attribute (a character vector, empty when none); dropped
rows are not listed.
}
\subsection{Fit and rank candidate distributions (\code{dstfit})}{
A list of class \code{c("rmbl_dstfit", "list")}:
\describe{
\item{\code{table}}{data frame, one row per family ranked by AIC:
\code{rank}, \code{family}, \code{npar}, \code{loglik}, \code{aic},
\code{bic}, \code{ks}, \code{ad}, \code{converged} and \code{params}
(the estimates as text).}
\item{\code{fits}}{named list of the estimates (named numeric vectors) of the
converged fits.}
\item{\code{boot}}{data frame: \code{family}, \code{param},
\code{estimate}, \code{lower}, \code{upper} (\code{NA} without a
bootstrap).}
\item{\code{hill}}{list: \code{k}, \code{alpha}, \code{lower},
\code{upper}, or \code{NULL} for data that are not all positive or fewer
than ten values.}
\item{\code{x}, \code{nmiss}, \code{discrete}, \code{conflvl}}{the data
used, the count dropped, whether the data are counts, and the level.}
}
}
\subsection{Distinct-value count in fixed memory (\code{dstn})}{
\code{dstnskch()} an integer vector of \eqn{2^p} registers;
\code{dstncnt()} a length-1 numeric estimate (0 for an empty or
\code{NULL} sketch); \code{skchmrg()} the element-wise maximum of two
register sets, an integer vector.
}
\subsection{Do distinct groups differ? A heterogeneity test before pooling (\code{dstntst})}{
A list of class \code{rmbl_distinctions}: \code{groups} (the
estimates used, with their standard errors), \code{pooled} (the
inverse-variance mean) and \code{poose}, \code{q}, \code{df},
\code{p_value}, \code{i2}, \code{leftout} (the rows not used) and
\code{conflvl}. \code{print()} and \code{plot()} show it.
}
\subsection{Where is this computation running? (\code{dtctloc})}{
A list with \code{location} (a code present in
\code{co2inttab()}) and \code{method} (how it was found).
}
\subsection{Wellness and distress as two continua (\code{dualcont})}{
A data frame of class \code{rmbl_dual_continuum} with \code{group},
\code{wellness}, \code{wello}, \code{welup}, \code{distress},
\code{distrlo}, \code{distrup}, \code{strratio},
\code{ratiolo}, \code{ratioup} and \code{usewithcau}.
}
\subsection{Empirical Bayes rates, shrunk toward the overall experience (\code{ebrates})}{
A data frame with one row per area: \code{area} (when given),
\code{observed}, \code{expected}, the raw ratio \code{sir}, the shrunk
estimate \code{eb}, the \code{shrinkage} applied (zero means untouched,
one means replaced by the overall rate), and the fitted prior's \code{nu}
(shape) and \code{alpha} (rate), the same on every row.
}
\subsection{Compare two captured environments (\code{envdiff})}{
A list of class \code{c("bricklayer_env_diff", "list")}:
\code{identical} (logical, \code{TRUE} when R version, platform and all
package versions agree), \code{r_version} (a named length-2 character
vector \code{c(a = , b = )} when they differ, else \code{NULL}),
\code{platform} (likewise), and \code{packages} (a data frame with
character columns \code{package}, \code{a}, \code{b} and \code{change},
where \code{change} is \code{"added"}, \code{"removed"} or
\code{"changed"}; no rows when nothing differs), and \code{fields}
(the names of any other fields that differ, \code{character(0)} when
none).
}
\subsection{An event study: the effect period by period around adoption (\code{evstudy})}{
A data frame of class \code{rmbl_event_study}: \code{evtm},
\code{estimate}, \code{se}, \code{lower}, \code{upper}, \code{t},
\code{p_value}, with the reference period as a row of zeros; attributes
\code{pretrend} (a list: \code{F}, \code{df1}, \code{df2}, \code{p_value}),
\code{vcov} (of the estimated event times), \code{n}, \code{clusters},
\code{conflvl}. \code{plot()} draws it.
}
\subsection{Expand a banded frequency table into per-unit values (\code{expbands})}{
A numeric vector with one entry per unit (length
\code{sum(round(counts))} over the placed bands).
}
\subsection{Expected counts under indirect standardisation (\code{expcnts})}{
A data frame with one row per area and columns \code{area}
(character), \code{observed}, \code{population} and \code{expected}
(numeric totals over the area's rows).
}
\subsection{Concentration index of exposure by income (\code{expconcidx})}{
A list of class \code{rmbl_equity} (\code{plot()} draws the
concentration curve) with \code{concidx} (a number in
\eqn{[-1, 1]}), \code{interpretation} (a sentence),
\code{expomean}, \code{citation} (a string) and \code{extra}, a
list with \code{n} (rows used), \code{cov_h_R} (the covariance) and
\code{curve}, a data frame of the concentration curve. Its column
\code{population} is the cumulative population share, poorest first, and
\code{exposure} the cumulative share of total exposure.
}
\subsection{Exposure-response estimate with a bootstrap sensitivity interval (\code{exprspplr})}{
A list of class \code{c("rmbl_plr_boot", "list")} (its print
method shows it as a box) with \code{ate} (the full-sample estimate),
\code{seana} (the estimator's standard error),
\code{seboot} (the standard deviation of the replicates),
\code{cilobs} and \code{ciupbs} (the 95\% percentile
interval), \code{nboot} (the number of successful resamples) and
\code{method} (the estimator's method with
\code{" + percentile bootstrap"}).
}
\subsection{A dose-response across generations of exposure (\code{exptrnd})}{
A data frame with \code{dose}, \code{cases}, \code{n},
\code{proportion}, \code{orratio}, \code{lower}, \code{upper}; the trend
test is the attribute \code{trend} (an \code{htest}).
}
\subsection{Funnel-plot control limits (\code{fnllim})}{
A data frame with one row per expected count and level, sorted by
level then expected count, with numeric columns \code{expected},
\code{level}, \code{lower} and \code{upper} (the limits on the ratio
scale).
}
\subsection{Everyday equivalents of a quantity of CO2-equivalent (\code{fpeqv})}{
A list with \code{carkm} (numeric, kilometres),
\code{treemon} (numeric) and \code{sources} (named character vector,
\code{car} and \code{tree}, naming each factor's source).
}
\subsection{Frequency table for one column (\code{freqtbl})}{
A data frame of class \code{c("bricklayer_freq", "data.frame")}
with columns \code{value} (character), \code{n} (integer count),
\code{pct} (numeric, percent of all rows) and \code{pctvalid} (numeric,
percent of non-missing rows; \code{NA} on the missing row).
}
\subsection{How deficit-framed is a set of results? (\code{frmaud})}{
A list of class \code{rmbl_framing}: \code{bygrp} (a data frame of
\code{group}, \code{wellness}, \code{distress}, \code{shrdef}),
\code{shrdef} overall and \code{defonly} (the groups with no wellness
indicator).
}
\subsection{Generations of residential school attendance in a family (\code{genexpo})}{
An integer vector of 0, 1, 2 or \code{NA}.
}
\subsection{Healing as a process: change in published indicators between two periods (\code{healchg})}{
A data frame of class \code{rmbl_healing_change}: \code{group},
\code{indicator}, \code{side}, \code{from}, \code{to}, \code{change},
\code{lower}, \code{upper}, \code{usewithcau}.
}
\subsection{Tail index of a heavy-tailed count (\code{hilltlidx})}{
A list with \code{alpha} (numeric, the exponent), \code{se} (its
standard error), \code{xmin} (the threshold used), \code{ntl}
(integer, the number of values at or above it), \code{ks}, \code{reliable}
(logical) and \code{method} (character, the estimator used or why there is
no estimate). \code{ks} is the
Kolmogorov-Smirnov distance between the fitted tail and the data: a
large value means the tail is not a power law, whatever \code{alpha}
came out as. \code{reliable} is \code{FALSE} when fewer than 50
observations lie in the tail, which is the sample size Clauset, Shalizi
and Newman give as the point below which the estimate should not be
leaned on -- it is reported rather than enforced, because the right
response to a short tail is a wider interval, not a refusal.
}
\subsection{Holistic balance: how evenly wellness is held across the domains of a whole person (\code{holbal})}{
A data frame of class \code{rmbl_holistic_balance}: \code{group},
\code{level}, \code{lvllo}, \code{lvlup}, \code{balance}, \code{ballo},
\code{balup}, \code{weadom}, \code{usewithcau}; the attributes
\code{domains} (the matrix of domain levels, groups by domains) and
\code{weights}.
}
\subsection{Hot spots and how long they last (\code{hotpers})}{
An object of class \code{rmbl_hotspot}, a list: \describe{
\item{\code{periods}}{data frame, one row per period: \code{period}
(character), \code{incidents}, \code{actcells}, \code{cellsforhalf} (fewest
cells holding half the incidents), \code{shrforhalf} (that number over the
ever-active cells), \code{hotcells}, \code{tiedin} (the cells made hot only
by a tie with the k-th busiest), \code{tiedout} (the tied cells left out
when the tie would have made more than twice \code{k} cells hot, which
printing says), \code{hotshr} (share of the incidents in hot cells) and
\code{jacpre} (\code{NA} for the first period). Shares are proportions in
\eqn{[0, 1]}.} \item{\code{cells}}{data frame, one row per ever-active
cell: \code{x}, \code{y} (its centre in the input's units),
\code{incidents} and \code{perhot}.} \item{\code{cell}, \code{top},
\code{coords}}{the settings.} \item{\code{ncells}, \code{hotk}}{the number
of ever-active cells and \eqn{k}.} }
}
\subsection{Hurwitz zeta function (\code{hurwzeta})}{
A numeric vector the length of \code{s}.
}
\subsection{Compare published group estimates with a reference group (\code{indgap})}{
A data frame of class \code{rmbl_indigenous_gap}, one row per group
but the reference. The columns are \code{group}, \code{estimate},
\code{refest}, \code{ratio}, \code{ratiolo}, \code{ratioup},
\code{difference}, \code{diflo}, \code{difup}, \code{usewithcau} and
\code{poogrp}; attributes \code{reference} and \code{conflvl}.
\code{plot()} draws each group's difference or ratio.
}
\subsection{First Nations, Metis and Inuit health and mental health: bundled Statistics Canada excerpts (\code{indiex})}{
A data frame.
}
\subsection{The Indigenous health and wellbeing tables the data service holds (\code{indtabs})}{
A data frame: \code{key}, \code{rows}, \code{description},
\code{license}, \code{source}.
}
\subsection{Inline histogram for a numeric vector (\code{inlhist})}{
A length-1 character vector of \code{bins} characters.
}
\subsection{Confidence limits from a standard error, a coefficient of variation or a margin of error (\code{limfrom})}{
A data frame: \code{estimate}, \code{lower}, \code{upper}, \code{se}.
}
\subsection{Multivariate outliers by Mahalanobis distance (\code{mahaoutl})}{
A data frame of class \code{bricklayer_outliers} with
\code{row}, \code{distance} (the square root of the squared Mahalanobis
distance), \code{p_value}, \code{logpvalue} (the log of the chi-square upper
tail, which keeps its information where \code{p_value} underflows to 0) and
\code{outlier} (logical), ordered by descending distance, with skipped rows
(\code{NA} distance) last. \code{row} is the row number in \code{data}. The attributes
\code{robust} and \code{alpha} record the settings. The print method shows the
number of flagged rows and the ten most distant.
}
\subsection{Little's test for data missing completely at random (\code{mcartst})}{
A list of class \code{bricklayer_mcar}: \code{statistic},
\code{df}, \code{p_value}, \code{logpvalue} (the log of \code{p_value}, finite where
\code{p_value} underflows to 0), \code{npat} (distinct missingness
patterns), \code{nused} (rows in the patterns that entered the statistic),
\code{nvars} (columns used), \code{iterations} (EM iterations), \code{mu} (named ML
means), \code{sigma} (ML covariance matrix), and \code{note} (a caveat when the
test is degenerate or a pattern was skipped, else \code{NA}). The print
method gives the verdict in words. With complete data
\code{df} is 0 and \code{p_value} is \code{NA} -- there is nothing to
test.
}
\subsection{The four directions of the First Nations Mental Wellness Continuum, from published indicators (\code{mhcont})}{
A data frame with the classes \code{rmbl_wellness_continuum} and
\code{rmbl_wellness_profile}. Its columns are \code{group},
\code{indicator} (the direction), \code{side} (\code{"wellness"}),
\code{domain} (the proxies), \code{estimate}, \code{lower}, \code{upper},
\code{usewithcau}, \code{shared}, \code{proxy} (always \code{TRUE}).
}
\subsection{Text map of where the missing values are (\code{missgrid})}{
A character vector of the map's lines, invisibly; the map is
printed with \code{cat()} as a side effect.
}
\subsection{Which columns are missing together (\code{misspat})}{
A data frame of class \code{bricklayer_missingness}, one row per
pattern: \code{pattern} (character, \code{.} for present and \code{X} for
missing, in column order), \code{nrows} (integer), \code{pctrows} (numeric,
percent of all rows), \code{n_missing} (integer, columns missing in that
pattern) and \code{columns} (character, their names comma-separated,
\code{""} for the complete pattern). Carries the column order as the
\code{"columns"} attribute.
}
\subsection{Runs of consecutive missing values (\code{missruns})}{
A data frame of class \code{bricklayer_runs} with \code{column}
(character), \code{start} and \code{end} (integer row numbers, inclusive) and
\code{length} (integer), longest first and then by column name. Zero rows
when there are no qualifying runs.
}
\subsection{Global Moran's I over a neighbour list (\code{morani})}{
A list with \code{I} (the statistic), \code{expectation}
(\eqn{-1/(n-1)}), \code{nullmean} and \code{nullsd} (mean and standard
deviation of the permuted values), \code{z} (\code{(I - nullmean) /
nullsd}), \code{p_value}, \code{W} (the total weight), \code{n} (number
of areas), \code{nperm} (permutations used) and \code{style}.
}
\subsection{Deaths avoided under a counterfactual exposure reduction (\code{mortdisp})}{
A single number: the expected cases avoided per year (negative
for an increase in exposure).
}
\subsection{Difference in differences after matching on pre-treatment trajectories (\code{mtchdid})}{
A list of class \code{rmbl_matched_did}: \code{estimate} (a
\code{\link{plndid}} result), \code{matches} (treated unit, comparison
unit, distance), \code{weights} (per unit), \code{balance} (a
\code{\link{baltab}} of the matching features before and after).
}
\subsection{Summary statistics accumulated in blocks (\code{onl})}{
\code{onlsmry()}, \code{smryupd()} and
\code{smrymrg()} return an object of class \code{bricklayer_online} (its
\code{state} element is the
numeric vector described in Details); \code{smrystat()} returns a
named numeric vector with \code{n}, \code{mean}, \code{variance},
\code{sd}, \code{skewness} and \code{kurtosis} (excess).
}
\subsection{Compare rated scales (perceived mental health, life satisfaction) between groups (\code{ordcmp})}{
A data frame of class \code{rmbl_ordinal_compare}: \code{group},
\code{reference}, \code{probbet}, \code{lower}, \code{upper}, \code{delta},
\code{neff}, \code{neffref}, \code{usewithcau}, \code{poogrp}; the
attribute \code{shares} is the matrix of shares (groups by levels), which
\code{plot()} draws.
}
\subsection{Permutation inference for a policy's adoption (\code{perminf})}{
A data frame of class \code{rmbl_permutation}, one row per outcome:
\code{outcome}, \code{estimate}, \code{statistic}, \code{p_value},
\code{pstpdn}, \code{assignments}, \code{exact}; attribute \code{null} (the
matrix of permuted statistics).
}
\subsection{Atmospheric dispersion: sigmas, plume rise, plume, puff, grid and particles (\code{pgsig})}{
\code{pgsig()}: a list with \code{sigmay} and \code{sigmaz}.
\code{briggs()}: a list with \code{flux}, \code{finalrise},
\code{xfinal} and \code{rise} (at each \code{x}). \code{gplume()}
and \code{gspuff()}: a numeric vector of concentrations, one per
receptor. \code{advdif2d()}: a list with \code{field},
\code{mass}, \code{cfl}, \code{difn},
\code{stabn}, \code{stable}, \code{dt}, \code{substeps} and
the axes, as a list of class \code{rmbl_field} that \code{plot()}
draws as an image; \code{lagrprt()} a list of class
\code{rmbl_particles} that \code{plot()} draws as points, with
\code{x}, \code{y} (final particle positions), \code{mean_x},
\code{meany}, \code{grid} (as given) and, with a grid,
\code{concentration} (an \code{nx} by \code{ny} matrix of particle
density per unit area, summing to the share of particles inside the grid
divided by the cell area).
}
\subsection{Justice-pipeline rates with a lag between stages (\code{piperate})}{
A data frame of class \code{rmbl_pipeline_rate}: \code{group},
\code{index} (the period's position
within its group), \code{numerator}, \code{denominator} (the window sums),
\code{rate}.
}
\subsection{Difference in differences with two-way fixed effects (\code{plndid})}{
A data frame of class \code{rmbl_did}, one row per term (the
treatment first, then the covariates): \code{term}, \code{estimate},
\code{se}, \code{lower}, \code{upper}, \code{t}, \code{p_value}.
Attributes: \code{n}, \code{clusters}, \code{ctlmean} (the pre-period mean
of the comparison units), \code{releff} (the estimate over it),
\code{vcov}, and with \code{comb} also \code{combined}.
}
\subsection{Double machine learning for panels with fixed effects (\code{plndml})}{
A data frame of class \code{rmbl_dml}: \code{estimate}, \code{se},
\code{lower}, \code{upper}, \code{t}, \code{p_value}; attributes \code{n},
\code{clusters}, \code{learner}, \code{folds}, \code{repeats}, and
\code{r2} (the out-of-fold R-squared of the two nuisance fits).
}
\subsection{A fixed-effects Poisson or negative binomial regression for counts (\code{plnpois})}{
A data frame of class \code{rmbl_fe_poisson}, one row per term:
\code{term}, \code{estimate} (log scale), \code{se}, \code{rateratio},
\code{lower}, \code{upper} (of the rate ratio), \code{p_value}; attributes
\code{n}, \code{drounits}, \code{clusters}, \code{family}, \code{theta}
(\code{Inf} for the Poisson).
}
\subsection{Power and minimum detectable effect of a difference-in-differences design (\code{plnpwr})}{
A data frame of class \code{rmbl_power}: \code{effect}, \code{power};
attributes \code{mde} and \code{size} (the rejection rate at effect 0).
}
\subsection{Plot fitted distributions (\code{plot.rmbl_dstfit})}{
The data drawn, invisibly: a data frame with \code{family}, \code{x} and
\code{y} (and for \code{qq} and \code{pp} the empirical value in \code{y}
against the fitted one in \code{x}).
}
\subsection{Plot a fitted Hawkes process (\code{plothwk})}{
The data drawn, invisibly: \code{t} and \code{lambda} (intensity),
\code{uniform} and \code{residual} (a Q-Q plot), or \code{t}, \code{parent} (the
index of the parent event, 0 for the baseline), \code{prob} and
\code{generation} (tree).
}
\subsection{Cross-fitted partially linear regression (double machine learning) (\code{plrcf})}{
A list of class \code{c("rmbl_plr", "list")} (its print method shows
it as a box) with \code{ate} (the estimate of \eqn{\theta}: the change
in the outcome per unit of the treatment), \code{se} (its sandwich
standard error), \code{n} (complete rows used), \code{kfol} and
\code{method} (a string naming the estimator).
}
\subsection{Per-area pollution burden (\code{polbrdarea})}{
A data frame with one row per area, sorted by
\code{attrcases}, largest first, and row names reset: the four
input columns (exposure, population and rate as numbers) plus
\code{rr} (relative risk), \code{paf} (attributable fraction),
\code{attrcases} and \code{basecases} (per year).
}
\subsection{End-to-end pollution burden (\code{polbrdn})}{
A list of class \code{rmbl_burden} (\code{plot()} draws it) with:
\code{paf} (the attributable fraction), \code{attrcases} and
\code{basecases} (per year), \code{population},
\code{brate} (per person-year), \code{expomean},
\code{refconc} (the one used), \code{pollutant}
(\code{"PM2.5"} or \code{"NO2"}), \code{citation} (a string), and
\code{extra}, a list with \code{rr}, \code{logrr}, \code{outcome}
and \code{unit} (\code{"deaths"} or \code{"incident cases"}).
}
\subsection{A simulated policy panel for the examples (\code{polex})}{
A data frame: \code{district}, \code{region}, \code{month},
\code{refmonth} (\code{NA} for never), \code{reformed} (0 or 1),
\code{population}, \code{logpop}, \code{crimes}, \code{crmrate},
\code{arrrate}.
}
\subsection{Parse banded category labels into numeric bounds (\code{prsbands})}{
A data frame with one row per label and columns \code{label}
(character, as given), \code{lower} and \code{upper} (numeric bounds,
\code{NA} for the open side of an open band or for an unparsed label),
and \code{openlo}, \code{openup} (logical).
}
\subsection{Bounds implied by rounding and suppression in a published table (\code{pubbnd})}{
A data frame of class \code{c("rmbl_bounds", "data.frame")}, one
row per cell, with \code{value} (numeric, the published number,
\code{NA} for a suppressed cell), \code{lower} and \code{upper}
(numeric, the interval of observed counts) and \code{status}
(character: \code{"exact"}, \code{"rounded"}, \code{"suppressed"}, or
\code{"missing"} for an \code{NA} that carried no suppression mark).
Attribute \code{"bounds"} records \code{rounding},
\code{rndkind} and \code{suplim}. \code{plot()} draws
each value inside its interval.
}
\subsection{Recode another agency's quality flags to the package's (\code{qltyrcd})}{
A character vector of \code{"ok"}, \code{"E"} and \code{"x"}; empty
and missing flags are \code{"ok"}. \code{x} must be character (or a
factor); a flag in neither \code{suppr} nor \code{caution} (other than
\code{"ok"}) becomes \code{"ok"} and is named in a warning.
}
\subsection{Is CPU energy measurable here? (\code{raplok})}{
A logical scalar: \code{TRUE} when every CPU-package energy counter
under \code{rapldir} is readable, \code{FALSE} otherwise (including
when the directory does not exist).
}
\subsection{Change in a rate between periods (\code{ratechg})}{
A data frame of class \code{c("rmbl_rate_change", "data.frame")}
with one row per group and period: the grouping columns, the period
column, \code{count}, \code{population}, \code{rate},
\code{prerate}, \code{precnt},
\code{prepop}, \code{rateratio}, \code{pctchg},
\code{pctlo}, \code{pctup} (numeric) and the character \code{flag}. The
flag is \code{"no comparison period"}, \code{"earlier period is zero"}, a
small-count note, or \code{NA}. The \code{ratechg} attribute records
the settings.
}
\subsection{The gap between two standardised rates (\code{rategap})}{
A one-row data frame: \code{group}, \code{reference}, \code{ratio}
with \code{ratiolo}/\code{ratioup}, and \code{difference} (per \code{per}
people) with \code{diflo}/\code{difup}.
}
\subsection{Uniform sample of a stream in one pass (\code{rsv})}{
\code{rsvidx()} a sorted numeric (double) vector of
1-based positions, of length \code{min(k, n)}; \code{rsvsmp()}
the corresponding elements of \code{x}, in their original order.
}
\subsection{Event rates per unit of population (\code{rtcalc})}{
A data frame of class \code{c("rmbl_rate", "data.frame")} with
the grouping columns (or \code{label}, for a named vector), \code{count},
\code{population}, \code{rate},
\code{lower}, \code{upper} (numeric, rates per \code{per}) and
\code{flag} (character, \code{NA} when not flagged), plus a \code{rate}
attribute: a list of \code{count}, \code{population}, \code{by},
\code{per}, \code{perlbl} (for example \code{"per 100,000"}),
\code{conflvl} and \code{mincnt}. The print method titles the
table with the denominator and the interval.
}
\subsection{Adjust a scan of many comparisons for multiple testing (\code{scanadj})}{
\code{x} with \code{p_value} (if it was missing),
\code{padj} (numeric, \code{NA} where \code{p_value} is) and
\code{significant} (logical) columns; the class and attributes of
\code{x} are kept, and a \code{scanadj} attribute lists
\code{method}, \code{alpha} and \code{tests}.
}
\subsection{The estimates of a Statistics Canada table, with their confidence limits (\code{scests})}{
A data frame, one row per cell and measure: the identifying columns,
\code{measure}, \code{estimate}, \code{lower}, \code{upper}, \code{cisou}
and \code{quality}; the attribute \code{conflvl} is the level of the
limits, and \code{unmatched} names any limits that could not be matched to
one measure.
}
\subsection{Read a Statistics Canada table as published (\code{sctidy})}{
The data frame with \code{VALUE} numeric and a factor column
\code{quality} with levels \code{"ok"}, \code{"E"}, \code{"F"}, \code{"x"},
\code{".."}, \code{"..."}, of class \code{c("rmbl_statcan", "data.frame")}.
}
\subsection{A severity-weighted crime index (\code{sevidx})}{
A data frame of class \code{rmbl_severity}: \code{unit}, \code{time},
\code{unweighted}, \code{weighted}; attribute \code{weights}.
}
\subsection{Share of a total, in percent (\code{shrs})}{
A data frame of class \code{c("rmbl_share", "data.frame")} with
the grouping columns (or \code{label}, for a named vector), \code{count},
\code{total}, \code{share},
\code{lower} and \code{upper} (percent), plus a \code{share} attribute:
a list of \code{count}, \code{by}, \code{total} and \code{conflvl}.
}
\subsection{Variance and standard deviation with the right correction, and why (\code{sprd})}{
A list of class \code{rmbl_spread} with \code{n}, \code{mean},
\code{variance}, \code{sd}, \code{semean}, \code{design} (the rule
applied), \code{denominator}, and \code{reason} (a sentence). The print
method shows them.
}
\subsection{Standardised incidence ratio, with an exact interval (\code{stdinc})}{
A data frame with one row per area: \code{area} (when given),
\code{observed}, \code{expected}, \code{sir}, \code{lower}, \code{upper}
(numeric), and logical \code{excess} (the interval lies above one),
\code{deficit} (the interval lies below one) and \code{significant}
(either).
}
\subsection{Age-standardise survey percentages (\code{stdprev})}{
A data frame of class \code{rmbl_prevalence}: \code{group},
\code{estimate}, \code{lower}, \code{upper}, \code{se}, \code{usewithcau};
attribute \code{conflvl}. \code{plot()} draws it.
}
\subsection{A single step change, with the scan's own null distribution (\code{stepchg})}{
A list of class \code{rmbl_step_change} with \code{breakafter}
(the period the series changes
after, from \code{x}), \code{index} (its position), \code{before} and
\code{after} (the segment means), \code{difference} (after minus
before), \code{statistic} (\eqn{T_{\max}}), \code{p_value},
\code{nperm} (orderings or permutations used) and \code{method}.
}
\subsection{Effects of a policy adopted at different times (\code{stgatt})}{
A list of class \code{rmbl_staggered_att}: \code{attgt} (a data
frame: \code{cohort}, \code{period}, \code{evtm}, \code{estimate},
\code{se}, \code{lower}, \code{upper}, \code{ncoh}), \code{overall} (one
row: \code{estimate}, \code{se}, \code{lower}, \code{upper}),
\code{dynamic} (by \code{evtm}), \code{method}, \code{control},
\code{conflvl}. \code{plot()} draws the dynamic effects.
}
\subsection{Westfall-Young stepdown p-values (\code{stpdnpv})}{
The adjusted p-values, in the order of \code{observed}.
}
\subsection{Compare survey estimates between domains (\code{svycmp})}{
A data frame of class \code{c("rmbl_svy_compare", "data.frame")},
one row per non-reference domain (and category): \code{domain},
\code{level} (for a proportion only), numeric \code{estimate} (the
domain's), \code{reference} (the reference domain's), \code{difference},
\code{se}, \code{lower}, \code{upper} and \code{p_value}. Attributes
\code{ref}, \code{stat}, \code{y} and \code{conflvl}.
}
\subsection{Describe a complex survey design (\code{svydes})}{
An object of class \code{rmbl_svy_design}: a list with \code{n}
(respondents), \code{weights}, \code{type} (the replicate type, or
\code{"linearization"}), \code{scale} and \code{reps} (the replicate
scale and weights, \code{NULL} under linearization), \code{mse},
\code{strata} and \code{psu} (integer codes), \code{lonely},
\code{check} (the row names and digests used to recognise the data
later) and \code{degf} (the design degrees of freedom). The print method
summarises it.
}
\subsection{Estimate a mean, total, proportion or ratio from a survey design (\code{svyest})}{
A data frame of class \code{c("rmbl_svy_estimate", "data.frame")},
one row per domain (and category, for a proportion): the domain columns
(and \code{level}), then numeric \code{estimate}, \code{se},
\code{lower}, \code{upper}, \code{cv} (coefficient of variation,
percent), integer \code{n} (respondents counted) and character
\code{flag} (\code{NA} when there is nothing to say). Attributes:
\code{vcov} (the covariance matrix of the estimates, used by
\code{\link[=svycmp]{svycmp()}}), \code{stat}, \code{y}, \code{by},
\code{ci},
\code{conflvl}, \code{df}, \code{method} (the variance method) and
\code{denominator}.
}
\subsection{Difference in differences for treatments that switch on and off (\code{swtdid})}{
A data frame of class \code{rmbl_switching_did}, two rows
(\code{effect}, \code{placebo}): \code{estimate}, \code{se}, \code{lower},
\code{upper}, \code{switchers}.
}
\subsection{Synthetic control for one treated unit (\code{synctl})}{
A list of class \code{rmbl_synth}: \code{weights} (a named vector
over the donors), \code{path} (a data frame: \code{time}, \code{treated},
\code{synthetic}, \code{gap}), \code{rmspepre}, \code{rmsperatio},
\code{p_value} (\code{NA} without the placebo), \code{placrat}.
\code{plot()} draws the two paths and the gap.
}
\subsection{Synthetic difference in differences (\code{syndid})}{
A list of class \code{rmbl_synthdid}: \code{estimate}, \code{se},
\code{lower}, \code{upper}, \code{unitwts}, \code{tmwts}, \code{method}
(\code{"placebo"} or \code{"jackknife"}), \code{paths} (treated and
weighted comparison means by period). \code{plot()} draws the paths.
}
\subsection{Strongest pairwise correlations in a data frame (\code{topcors})}{
A data frame of class \code{c("bricklayer_correlations",
  "data.frame")} with \code{x} and \code{y} (character, column names),
\code{correlation} (numeric) and \code{abscor} (numeric),
strongest first, at most \code{n} rows; the method is in
\code{attr(, "method")}. The print method draws a signed bar per pair.
}
\subsection{Calls to Action completed, year by year (\code{trccmpl})}{
A data frame with \code{period}, \code{yearend}, \code{completed},
\code{cumulative} and \code{source}.
}
\subsection{How fast the Calls to Action are being completed (\code{trcprog})}{
A one-row data frame of class \code{rmbl_trc_progress} with the
columns \code{completed}, \code{remaining}, \code{years}, \code{rate},
\code{ratelo}, \code{rateup}, \code{cmplby}, \code{cmplbyearly} and
\code{cmplbylate}; \code{plot()} draws the completions and the projection,
with the band the rate's interval gives.
}
\subsection{Trend in a short series (\code{trndtst})}{
A list of class \code{rmbl_trend_test} with \code{S},
\code{tau}, \code{p_value}, \code{slope}
(Theil-Sen, in units of \code{y} per unit of \code{x}),
\code{intercept}, \code{slopelo} and \code{slopeup} (the
distribution-free interval), \code{slopecicla} (\code{TRUE} when
the pairwise slopes do not reach the requested confidence on a side, so
that bound is the extreme slope and the true interval is wider),
\code{n}, \code{var_S} (the tie-corrected variance of \eqn{S}),
\code{alternative}, \code{conflvl} and \code{method}.
}
\subsection{How far parallel trends can fail before an effect disappears (\code{tse})}{
A data frame of class \code{rmbl_sensitivity}: \code{mbar},
\code{lowerbnd}, \code{upbound} (the identified set at the estimates),
\code{lower}, \code{upper} (the interval); attribute \code{breakdown} (the
smallest \eqn{\bar M} whose interval includes 0, found by bisection;
\code{Inf} if none up to 10).
}
\subsection{Run the pollution-to-health pipeline and report it (\code{vrfpol})}{
\code{vrfpol()}: the report as a list of class
\code{rmbl_pollution_report} (\code{plot()} draws it); its \code{status}
is \code{"ok"}, \code{"assumption_failure"} or \code{"error"}, and the
attribute \code{exitstat} carries a command-line exit code (0, 1 or
2). An argument the pipeline cannot use (no exposure data at all, a
vector where a single number is expected, an unknown outcome, a missing
reference, a directory as \code{expcsv}) is an \code{"error"}
report with exit status 2, never a raw R error; an exposure at or below
the reference is a valid run with zero attributable cases, and the
scalar inputs \code{expomean} and \code{expoprev} go
together (one without the other is an error report).
On \code{"ok"} the report also holds \code{inputs} (the resolved
exposure mean and prevalence, the rate per 100,000, the population,
the reference and the rows dropped), \code{assumptions} (a list of
\code{assumption}, \code{ok}, \code{note}) and \code{pipeline}
(\code{crf}, \code{paf}, \code{pafci}, \code{displaced},
\code{burden} and \code{equity}, which is \code{NULL} without income
data). \code{polrpttxt()}: a single character string with
embedded newlines, ending in a \code{STATUS:} line (or \code{"ERROR:"}
and the message for an error report).
}
\subsection{The wild cluster bootstrap for a difference in differences with few clusters (\code{wcb})}{
A data frame of class \code{rmbl_wild} with the columns
\code{estimate}, \code{t}, \code{p_value}, \code{lower}, \code{upper},
\code{clusters}, \code{draws} and \code{enumerated}.
}
\subsection{Wellness beside distress: a strengths-first profile of published indicators (\code{welprof})}{
A data frame of class \code{rmbl_wellness_profile}, wellness rows
first, with the columns \code{group}, \code{indicator}, \code{side}
(\code{"wellness"} or \code{"distress"}), \code{domain}, \code{estimate},
\code{lower}, \code{upper} and \code{usewithcau}; \code{plot()} draws it.
}
\subsection{Add publication bounds to a year-over-year table (\code{yoybnd})}{
\code{y} (still an \code{rmbl_yoy}) with added numeric columns
\code{envchglo}, \code{envchgup},
\code{envpctlo}, \code{envpctup} and, when \code{y} has
percent-change intervals, \code{compctlo} and
\code{compctup}. The rounding settings are recorded as
\code{bounds} in the \code{"yoy"} attribute.
}
\subsection{Exact p-values for the rows of a year-over-year table (\code{yoypv})}{
\code{y}, with its class and attributes, and an added numeric
\code{p_value} column; \code{NA} where there is no comparison period or
both counts are zero.
}
}
\section{Directly age-standardised rates, with Fay-Feuer gamma intervals (\code{agestd})}{

The rate a population would have with the age structure of a standard
population, for one or more groups, with Fay and Feuer's gamma confidence
interval.


With \eqn{d_i} events and \eqn{n_i} people in age group \eqn{i} and
standard weights \eqn{w_i} (the standard population's shares), the rate is
\eqn{y = \sum w_i d_i / n_i}, its variance \eqn{v = \sum (w_i / n_i)^2 d_i},
and with \eqn{w_M = \max_i w_i / n_i} the limits are \eqn{\frac{v}{2y}
\chi^2_{2y^2/v}(\alpha/2)} and \eqn{\frac{v + w_M^2}{2(y + w_M)} \chi^2_{2(y
+ w_M)^2/(v + w_M^2)}(1 - \alpha/2)} (Fay and Feuer 1997). The interval is
conservative (coverage at least nominal in Fay and Feuer's simulations) and
reduces to the exact Garwood interval for a single age group: suited to the
few events of small communities. With no events the lower limit is 0. Rates
are per \code{per} people. Age groups are matched to \code{std} by position:
order the rows of each group by age, in the order of \code{std}.

The choice of standard matters: Statistics Canada's comparisons of First
Nations, Metis and Inuit mortality standardise to the Indigenous population's
own age structure (Kumar and Tjepkema 2019), which is younger than Canada's.

}
\section{Cross-fitted augmented inverse probability weighting for a binary treatment (\code{aipwcf})}{

The average effect of a binary treatment (on everyone, or on the treated)
from one row per person, with the outcome and the propensity fitted by
learners on other folds, combined in the doubly robust (Neyman-orthogonal)
score of Robins, Rotnitzky and Zhao; with survey or sampling weights if
given.


With \eqn{\hat\mu_d(X)} the outcome fitted among those with
treatment \eqn{d} and \eqn{\hat e(X)} the propensity, both out of fold, the
score for the average effect is \deqn{\psi = \hat\mu_1 - \hat\mu_0 + \frac{D
(Y - \hat\mu_1)}{\hat e} - \frac{(1 - D)(Y - \hat\mu_0)}{1 - \hat e} -
\theta,}{psi = mu1 - mu0 + D (Y - mu1)/e - (1 - D)(Y - mu0)/(1 - e) - theta,}
and for the effect on the treated \deqn{\psi = \frac{D (Y - \hat\mu_0) - \hat
e (1 - D)(Y - \hat\mu_0)/(1 - \hat e)}{P(D = 1)} - \frac{D}{P(D =
1)}\theta.}{psi = (D (Y - mu0) - e (1 - D)(Y - mu0)/(1 - e)) / P(D = 1) - D
theta / P(D = 1).} \eqn{\hat\theta} solves the weighted mean of the score at
zero; its variance is the weighted mean of \eqn{\psi^2} over \eqn{n}, the
influence-function variance of Chernozhukov et al. (2018). Propensities are
clipped to \code{[trim, 1 - trim]}. The estimator is consistent when either
the outcome or the propensity model is right, and with cross-fitting the
learners can be flexible (lasso or ridge on a second-order basis, or any
learner function).

The average effect equals \code{DoubleML}'s interactive regression model
given the same folds and learners; for the effect on the treated,
\code{DoubleML} estimates \eqn{P(D = 1)} within each fold and this function
in the whole sample, so the two differ slightly.

The propensity learner is logistic regression on the covariates (with
\code{basis = "poly2"}, on their squares and products too). With \code{w} the
point estimate is design-weighted, but the standard error treats the weights
as fixed and the sample as independent.

For a complex survey, pass the design from \code{\link{svydes}} instead: its
weight gives the point estimate and its replicate weights (or strata and
primary sampling units) the standard error, with the variance formula of the
replicate type, the confidence interval on the design's degrees of freedom.
The learners are fitted once, without the weights, which enter only the
average of the scores, so each replicate estimate is the replicate-weighted
average of the same cross-fitted scores: the same numbers as re-running the
function on every replicate weight, from one fit instead of one per
replicate. Rows with a missing value are left out as a domain (their scores
count as zero in every replicate), not dropped from the design.

}
\section{Population attributable fraction (\code{attrfrac})}{

The share of all cases in a population that is due to an exposure: the
fraction that would not occur if the exposure were removed and nothing
else changed. It combines how strongly the exposure raises risk (the
relative risk) with how common it is (the prevalence); multiplied by the
number of cases it gives the attributable cases, as
\code{\link{polbrdn}} does.


Levin's formula (Levin 1953; Rothman, Greenland and Lash 2008, chapter
5):
\deqn{PAF = p (RR - 1) / (1 + p (RR - 1)),}
with \eqn{p} the proportion exposed. With everyone exposed it is
\eqn{1 - 1/RR}. It assumes the relative risk is causal and unconfounded
and that removing the exposure changes nothing else. A relative risk
below 1 gives a negative fraction (the exposure protects).

When both confidence limits of the RR are given, the fraction's limits
are the formula applied to them: the formula increases with the RR, so
the interval of the fraction is the image of the interval of the risk.
Refusals: an \code{rr} or limit that is not a single finite positive
number (logical values included), a prevalence outside \eqn{[0, 1]}, only
one of the two limits, or limits that do not enclose \code{rr}.

}
\section{The Goodman-Bacon decomposition of a two-way fixed-effects estimate (\code{bacondcmp})}{

Splits the two-way fixed-effects difference-in-differences estimate of a
staggered adoption into the two-group, two-period comparisons it averages,
with their weights: treated against never treated, earlier against later
treated, and later against earlier treated (the comparisons that use
already-treated units as controls).


For a balanced panel with treatment that stays on and no covariates,
the estimate of \code{\link{plndid}} is exactly \eqn{\hat\beta = \sum_{k}
s_{kU}\hat\beta_{kU} + \sum_{k \ne l} s_{kl}\hat\beta_{kl}}, with weights
that sum to one and grow with the groups' sizes \eqn{n} and the variance of
their treatment over time \eqn{\bar D(1 - \bar D)} (Goodman-Bacon 2021,
theorem 1). Units treated from the first period act as an already-treated
group. A large weight on \dQuote{later vs earlier} comparisons, together with
effects that grow over time, is the warning sign that the two-way estimate is
biased.

}
\section{A covariate balance table (\code{baltab})}{

Means of each covariate in the treated and comparison groups, their
standardised mean difference, and Welch's test, optionally weighted (after
matching or weighting).


The standardised mean difference is \eqn{(\bar x_1 - \bar x_0) /
s_1} with \eqn{s_1} the unweighted standard deviation in the treated group
(the convention for the effect on the treated, so that it does not move when
weights change the comparison group); \eqn{|SMD| < 0.1} is the usual
threshold for balance. With weights the means are weighted and the test uses
the weighted variances and Kish's effective sample sizes.

}
\section{How much a result depends on the open band's assumed cap (\code{bandsens})}{

Recomputes a statistic of banded data (by default the Gini coefficient)
for a range of assumed caps on the open top band, and reports how far the
answer moves. Every statistic computed from banded data depends on where
the open band is assumed to end; this function measures that dependence,
so you can report a range instead of a single figure when the dependence
is large.


Let \eqn{b} be the smallest lower bound among the open top bands. The
default caps are 12 points spaced evenly on the log scale from
\eqn{1.05 b} to \eqn{20 b}. For each cap \eqn{c},
\code{\link{bandvals}(bands, rule, openupcap = c)} gives one value
per band, each value is repeated \code{cnts} times, and
\code{stat} is applied to the result. A statistic that errors or
does not return a single number gives \code{NA}; warnings are suppressed.

The span is \eqn{\max - \min} over the finite values and the relative span
is the span divided by the median absolute value (\code{NA} when any value
is zero). The print method adds a note when the relative span exceeds
0.1.

Errors: \code{cnts} not numeric or of a different length from the
bands; no open top band.

}
\section{Representative values for banded categories (\code{bandvals})}{

Gives each band a single number that a calculation can use (a mean, a
concentration index, a regression), under a rule you choose. For closed
bands the rule places the value at the midpoint, the lower or upper
bound, or the geometric mean of the bounds. An open band (\code{"50+"},
\dQuote{under 18}) has no midpoint, so its missing bound is filled from an
explicit assumption, and the rows that rest on that assumption are
flagged in the result instead of being absorbed into it.


For a band with bounds \eqn{[l, u]} the value is \eqn{(l + u)/2}
(\code{"midpoint"}), \eqn{l} (\code{"lower"}), \eqn{u} (\code{"upper"}) or
\eqn{\sqrt{l u}} (\code{"geometric"}; when \eqn{l \le 0} the arithmetic
midpoint is used instead, because the geometric mean is undefined there).
The \code{"lower"} and \code{"upper"} rules bracket any value that could
come from the bands.

An open upper band gets \eqn{u =} \code{openupcap} if given, else
\eqn{u = l \times} \code{openupfac}. An open lower band gets
\eqn{l =} \code{openloflr} if given, else \eqn{\min(0, u)}. A cap
below the band's lower bound, or a floor above its upper bound, is an
error, because the value would lie outside the band. Unparsed bands give
\code{NA}.

Use \code{\link{bandsens}} to see how much a result moves with the
cap, and \code{\link{expbands}} to turn the values into one value per
unit.

}
\section{Benford first-digit test (\code{benfordtst})}{

Compares the distribution of leading significant digits in \code{x} with
Benford's law, \eqn{P(d) = \log_{10}(1 + 1/d)}. Naturally occurring
quantities that span several orders of magnitude follow it closely;
figures that were rounded, truncated, capped, re-scaled, or invented
typically do not. That makes it a cheap screen for a numeric column that
arrived looking plausible but is not the measurement it claims to be.

It is a SCREEN, not a verdict. Columns with a narrow range, a unit floor
or ceiling, or an assigned-identifier structure (postcodes, year fields,
prices ending in 99) legitimately violate Benford's law. Treat a small
p-value as a reason to look, never as evidence of fabrication.


Zeros and non-finite values have no leading significant digit and are
excluded; the sign is ignored.

With \eqn{n} usable values, \eqn{O_d} the count with leading digit
\eqn{d} and \eqn{E_d = n \log_{10}(1 + 1/d)},
\deqn{X^2 = \sum_{d=1}^{9} \frac{(O_d - E_d)^2}{E_d}}
on 8 degrees of freedom. The smallest Benford share is 0.046 (digit 9),
so the chi-square approximation needs about \eqn{n \ge 110} for every
expected count to reach 5; below that treat the p-value as rough.
Digits are counted in compiled code in blocks of a million values, and
a long vector shows a progress bar in an interactive session
(silenced by \code{options(morie.quiet = TRUE)}). Errors: non-numeric input,
or no finite non-zero value.

}
\section{Treated, comparison and excluded places around sites (\code{bufasgn})}{

Assigns each place (a block, an address) to the treated group when it lies
within a radius of a site (a store that donated, a new facility), to the
comparison group when it lies within the same radius of a comparison point
and farther than a buffer from every site, and excludes it otherwise, so that
spillover from the sites does not reach the comparison.


Distances are Euclidean, so coordinates must be projected (metres or
feet, not degrees). The radius and the buffer are in the same unit. The
buffer should be several times the radius: the design it follows used 330
feet and 990 feet.

}
\section{Bootstrap replicate means (C backend) (\code{cbootmean})}{

\code{B} resamples of \code{x}, drawn with replacement and each the same
length as \code{x}, with the mean of every resample returned. The spread of
these replicate means estimates the standard error of the sample mean,
and their quantiles give a percentile confidence interval, without
assuming the data are normal (Efron and Tibshirani, 1993). The
resampling uses the core's own 64-bit Mersenne Twister seeded by
\code{seed}, NOT R's RNG, so a given \code{seed} reproduces the same
replicates in every binding of the core and R's own random stream is
left untouched.


Replicate \eqn{b} draws \eqn{n} indices uniformly from
\eqn{1, \dots, n} with replacement (C++ \code{std::mt19937_64} seeded with
\code{seed}, then \code{std::uniform_int_distribution}, whose algorithm is the C++
library's own, so the replicates for a seed can differ between libstdc++
and libc++) and returns the mean of the
drawn values, accumulated in extended precision. The replicates are a
single stream: the first \code{B} replicates for a seed are the same whatever
larger \code{B} is asked for later.

Edge cases: an empty \code{x} gives \code{B} values of \code{NaN}; an \code{NA} in
\code{x} makes
every replicate that draws it \code{NA}, so remove missing values first.
\code{B} must be a whole number of at least 1
(\code{"B must be a single whole number >= 1"}); a character, factor or list \code{x}
is refused (\code{"must be numeric"}). \code{seed} must be a whole number from 0 to
below \eqn{2^{53}}:
\code{NA}, a negative or a fractional seed is refused.

Performance: the work is \eqn{B \times n} draws (about 0.4 s for
\eqn{B = 2000}, \eqn{n = 20000} on a laptop). The kernel polls for a
Ctrl-C after about every million draws, so a long run can be
interrupted; while it runs, an interactive session (or one with
\code{options(morie.progress = TRUE)}) shows a spinner on stderr from 0.75 s
on, and \code{options(morie.quiet = TRUE)} silences it.

}
\section{Covariance matrix of a numeric matrix (C backend) (\code{ccovm})}{

The covariance of every pair of columns of a numeric matrix or data
frame, computed by the compiled core. Covariances describe how
variables move together; the matrix is the input to principal
components, Mahalanobis distances and multivariate drift checks.
Column names are carried through to both dimensions of the result.


Entry \eqn{(j, k)} is \eqn{\frac{1}{n - 1} \sum_i (x_{ij} - \bar
x_j)(x_{ik} - \bar x_k)}, the \code{n - 1} denominator of
\code{\link[stats:cov]{stats::cov()}}, with which it agrees to rounding. The
diagonal holds the column variances.

Missing values are not removed: an \code{NA} in a column makes every covariance
involving that column \code{NA} (pairwise or complete-case deletion is not done;
use \code{\link[stats:cov]{stats::cov()}} with \verb{use =} for those). A single
row gives \code{NaN} throughout. Refusals: a vector that is not a matrix
(\code{"must be a matrix or data frame"}) and a data frame with a non-numeric
column (\code{"every column of x must be numeric"}). Logical and integer matrices
are converted to double. The cost is \eqn{O(n p^2)} for \eqn{n} rows and
\eqn{p} columns.

}
\section{Regularized incomplete gamma function (C backend) (\code{cgamcdf})}{

The lower regularized incomplete gamma function \eqn{P(a, x)}, which is
the CDF of a Gamma distribution with shape \code{a} and unit rate.
Exposed because it is the building block of the chi-square tail used by
\code{\link[=drftchisq]{drftchisq()}} and
\code{\link[=benfordtst]{benfordtst()}}: the p-value of a chi-square statistic
\eqn{q} on
\eqn{k} degrees of freedom is \eqn{1 - P(k/2, q/2)}.


\deqn{P(a, x) = \frac{1}{\Gamma(a)} \int_0^x t^{a-1} e^{-t} \, dt,}
evaluated by the shared core (a series for small \eqn{x}, a continued
fraction otherwise, the standard pairing), and agreeing with
\code{stats::pgamma(x, shape)} to rounding. For a gamma distribution with
rate \eqn{r}, pass \code{x * r}.

\code{shape} must be a single positive number
(\code{"shape must be a single positive number"}). A negative \code{x} gives 0,
a missing \code{x} gives \code{NA}, and \code{Inf} gives 1, as in
\code{\link[stats:pgamma]{stats::pgamma()}}.

}
\section{Envelope of a difference, a percent change or a rate under publication bounds (\code{chgenv})}{

Given the intervals from \code{\link[=pubbnd]{pubbnd()}}
for the current and the
previous cell, the set of differences and percent changes that the
observed counts could have produced is an interval too: its ends are
reached at the ends of the input intervals, because the difference and
the ratio are monotone in each argument. This is interval arithmetic,
not a confidence interval; it says nothing about sampling and everything
about what the release withheld.


With current interval \eqn{[a_l, a_u]} and previous interval
\eqn{[b_l, b_u]}: the change lies in \eqn{[a_l - b_u, a_u - b_l]} and the
percent change in \eqn{[100(a_l / b_u - 1), 100(a_u / b_l - 1)]}. An end of
the percent interval is \code{NA} when its denominator could be zero (an
upper bound needs \eqn{b_l > 0}, a lower bound \eqn{b_u > 0}), since a
change from zero has no percentage. A rate interval is
\eqn{[per \cdot a_l / pop, per \cdot a_u / pop]}; the population is taken
as exact.

Errors when \code{now} and \code{prev} have different numbers of
rows. The populations are not checked; give one per row (or one value).

}
\section{Fit a Hawkes process by maximum likelihood (analytic gradient, fast routes) (\code{chwkfit})}{

Fits a self-exciting (Hawkes) point process to a series of event times,
such as the times of shootings, break-ins or calls for service, and
returns the estimated background rate, the branching ratio (the share of
events triggered by earlier events) and the shape of the triggering
kernel, with AIC, BIC and a goodness-of-fit test. Use it to ask whether
events cluster in time beyond what a steady or seasonal rate explains.


The model is the univariate Hawkes process \deqn{\lambda(t) = \nu(t)
+ \eta \sum_{t_j < t} g(t - t_j)} with a constant baseline (\eqn{\nu =
e^{a_0}}) or a sinusoidal one (\eqn{\nu(t) = \exp(a_0 + a_1 t/T + a_2
\sin(2\pi t/365.25) + a_3 \cos(2\pi t/365.25))}, a trend plus a yearly cycle
when times are in days, its integral by the trapezoid rule on \code{max(64,
floor(T) + 1)} points), branching ratio \eqn{\eta \in [0.001, 0.99]} and one
of four normalised kernels \eqn{g}: exponential (decay \code{beta}), Weibull
(shape \code{alpha}, scale \code{lambda}), gamma (shape \code{alpha}, rate
\code{beta}) or Lomax (shape \code{alpha}, scale \code{c}). The
log-likelihood is \eqn{\sum_i \log \lambda(t_i) - \int_0^T \lambda(t)\,dt}.
Every route uses the analytic gradient of the shared C++ core (the code
morie's Python arm calls), so one likelihood evaluation per point instead of
one per parameter. The optimiser is a projected BFGS inside a fixed parameter
box (\eqn{a_0 \in [-15, 15]}, the other baseline terms in \eqn{[-5, 5]},
kernel parameters bounded as listed in the source), at most 2000 iterations.

\describe{ \item{\code{"exact"}}{Ozaki's O(n) recursion for the exponential
kernel; for Weibull and gamma the double sum stops where the kernel
underflows to exactly 0 (the same value as the full sum); Lomax the full
O(n^2) sum.} \item{\code{"soe"}}{the completely monotone kernels (Lomax;
gamma with shape < 1) as a sum of exponentials (Beylkin & Monzon 2010):
relative error \code{eps} on every intensity, O(n K); a gamma kernel with
shape >= 1 is truncated at \code{eps}.} \item{\code{"truncate"}}{each event
excites only lags with kernel tail mass above \code{eps}: an approximation
for light-tailed kernels, O(n w).} \item{\code{"em"}}{the EM algorithm
(Veen & Schoenberg 2008), finished by the projected BFGS on the exact
likelihood from EM's point (EM's steps shrink before it reaches the
maximum). It is an R loop of up to 500 iterations and much slower than the
other routes (tens of seconds for a few hundred events); because it starts
from the same point but moves differently, it can end at a different local
maximum.} \item{\code{"inar"}}{Kirchner's (2017) INAR(p) least-squares
estimator on binned counts (constant baseline only): a different, fast,
approximate estimator.} \item{\code{"auto"}}{\code{"exact"} for the
exponential kernel, \code{"truncate"} for Weibull, \code{"soe"} for gamma
and Lomax.} } For the Weibull, gamma and Lomax kernels without
\code{start}, a second deterministic start at the exponential fit (the
shape-1 member) is also run and the better optimum kept, because the
likelihood is multimodal. The exponential kernel without \code{start} is
also run from a second start (branching ratio 0.1 and a decay a quarter of
the reciprocal mean gap), and the better optimum kept: on data with little
clustering its likelihood can have more than one maximum, one of them with
the decay on its bound. A parameter on its bound (see \code{atbound}) is
still a reason to refit from another \code{start} and compare \code{nll}.

The reported \code{nll} is the exact likelihood at the estimate whatever
the route, so AIC is comparable across routes. An event exactly at
\code{hor} is part of the record and counted, as in morie's Python
fit. The Kolmogorov-Smirnov test compares the time-rescaling residuals of
\code{\link[=chwkres]{chwkres()}} with the uniform
distribution (exact p-value up
to 10,000 events without ties, asymptotic otherwise).

Events at the same instant do not excite each other: the intensity sums
over strictly earlier events, as the definition of a Hawkes process (a
simple point process, with no two events at one time) has it. Tied times
are fitted that way, with a warning: data recorded to a resolution, such
as daily dates, carry ties the process itself never makes, and treating
them as exact biases the fit (Filimonov & Sornette 2015), so spread them
uniformly across their interval first with
\code{\link[=chwkjit]{chwkjit()}}.

Errors: \code{times} with \code{NA}, unsorted, or outside
\code{[0, horizon]}; \code{hor} not one positive finite number; fewer
than 50 events; an event rate \code{n / horizon} outside
\eqn{[e^{-15}, 100 e^{15}]} per unit time (rescale the times);
\code{eps} not in (0, 1); \code{start} of the wrong length or with a
non-finite likelihood; \code{method = "soe"} with a kernel other than
Lomax or gamma; \code{method = "inar"} with the sinusoidal baseline.
Long fits show a progress spinner (EM a bar) on stderr unless
\code{options(morie.quiet = TRUE)}.

}
\section{Spread event times recorded to a resolution across their interval (\code{chwkjit})}{

Daily (or hourly, or second) timestamps put every event of an interval at
one time, but a Hawkes process never has two events at one instant, and
fitting the rounded times as exact biases the estimates (Filimonov &
Sornette 2015). This function spreads each recorded time uniformly over
the interval it stands for, so the times can be passed to
\code{\link[=chwkfit]{chwkfit()}}.


Each time becomes \code{t + w * U}, with
\code{w = min(resolution, horizon - t)} and \code{U} uniform on [0, 1),
and the result is sorted; this is the remedy Filimonov and Sornette use.
The times are sorted (radix order) before the uniforms are assigned, so
the result does not depend on the input order. The uniforms are the
splitmix64 stream of \code{\link[=cunif]{cunif()}}, so the result is
reproducible
and, on daily dates with \code{seed = 42}, the same as the jitter rmorie
and morie (Python) apply before their TPS Hawkes fits. R's random number
generator is not used.

Errors: \code{times} with \code{NA} or non-finite values; \code{res}
not one positive finite number; \code{hor} not one number; a time
past \code{hor}.

}
\section{Hawkes-process negative log-likelihood (C backend) (\code{chwknll})}{

The negative log-likelihood of a univariate self-exciting Hawkes process
with constant baseline on \verb{[0, horizon]}, for the event times
\code{times}. A Hawkes process is the natural model for arrivals that
trigger further arrivals -- repeat calls to a service, aftershocks,
retweet cascades, revisions to an open-data release.


Four triggering kernels are available. \code{"exponential"} is
memoryless and evaluates by an O(n) recursion; the other three are not,
so they cost O(n^2).

Parameters are passed on the scales the kernel is defined on:
\code{par = c(a0, eta, ...)} where \code{a0} is the LOG baseline
intensity ( \eqn{\nu = e^{a0}}) and \code{eta} the branching ratio in
(0, 1) -- the expected number of children per event, so the process is
stationary only for \code{eta < 1}. The remaining entries are the
kernel's own shape parameters: \code{beta} (exponential),
\verb{alpha, lambda} (Weibull: shape and scale), \verb{alpha, c} (Lomax: shape
and scale, \eqn{g(u) = \alpha c^\alpha (u + c)^{-(\alpha + 1)}}),
\verb{alpha, beta} (gamma: shape and rate). This is the likelihood
\code{\link[=chwkfit]{chwkfit()}} maximises, on the same parameters.

The conditional intensity is
\eqn{\lambda(t) = \nu + \eta \sum_{t_i < t} g(t - t_i)} with \eqn{g} a
probability density on \eqn{(0, \infty)} (so \eqn{\eta} is the
branching ratio), and the value returned is
\deqn{-\ell = -\sum_i \log \lambda(t_i) + \int_0^T \lambda(t)\,dt,}
with \eqn{T} = \code{hor} (Hawkes, 1971). For the exponential kernel
\eqn{g(u) = \beta e^{-\beta u}}. With no events the value is the
compensator alone, \eqn{\nu T}.

The feasible region, outside which the sentinel \code{1e12} is returned
instead of a value: \eqn{-20 < a_0 < 20}; \eqn{10^{-6} < \eta < 0.999};
and for the kernel parameters, exponential \eqn{0.05 \le \beta \le 30};
Weibull shape in \eqn{[0.05, 20]} and scale in \eqn{[0.001, 1000]};
Lomax shape in \eqn{[0.05, 30]} and scale in \eqn{[0.001, 100]}; gamma
shape in \eqn{[0.05, 20]} and rate in \eqn{[0.05, 30]}. A missing
parameter also gives the sentinel.

Refusals (errors, not the sentinel): \code{times} with a missing value, not
sorted, or outside \eqn{[0, T]}; a \code{hor} that is not a single
positive finite number; a \code{kernel} not among the four; and a \code{par} of
the wrong length for the kernel. The quadratic kernels poll for a
Ctrl-C as they run, so a long evaluation can be interrupted.

}
\section{Time-rescaling residuals of a Hawkes process (\code{chwkres})}{

Transforms the event times into residuals that are independent and
uniform on (0, 1) when the fitted Hawkes model is right, by the
time-rescaling theorem. Plot them, or test them against the uniform with
\code{stats::ks.test()}, to check the fit of
\code{\link[=chwkfit]{chwkfit()}};
departures show where the model misses clustering or a trend.


With the compensator \eqn{\Lambda(t) = \int_0^t \lambda(s)\,ds}, the
residual of event \eqn{i} is
\deqn{U_i = 1 - \exp(-(\Lambda(t_i) - \Lambda(t_{i-1})))}
with \eqn{t_0 = 0} (Brown et al. 2002). The rescaled gaps
\eqn{\Lambda(t_i) - \Lambda(t_{i-1})} are unit-rate exponential under the
model, so the \eqn{U_i} are uniform. The model and kernels are those of
\code{\link[=chwkfit]{chwkfit()}}; the shared C++ core computes the
residuals in O(n)
for the exponential kernel and O(n w) for the others. Tied times give
tied residuals.

Errors: \code{times} with \code{NA}, unsorted or outside
\code{[0, horizon]}; \code{par} of the wrong length (2 + kernel
parameters for the constant baseline, 5 + kernel parameters for the
sinusoidal one).

}
\section{Simulate event times from a fitted Hawkes process (\code{chwksim})}{

Draws a new event history from a \code{\link[=chwkfit]{chwkfit()}} result by its cluster
representation: immigrant events from the baseline (a Poisson process,
thinned from its upper bound for a sinusoidal baseline), then each event's
offspring, a Poisson number with mean the branching ratio, at delays drawn
from the fitted kernel, generation after generation, until none fall before
the horizon.

}
\section{Trimmed inverse-probability weights (C backend) (\code{cipw})}{

The inverse-probability-of-treatment weights \eqn{1/e} for the treated
and \eqn{1/(1-e)} for the untreated, with the propensity score clamped
into \verb{[trimlo, trimhi]} FIRST. Clamping matters: an untrimmed
score near 0 or 1 produces a weight large enough for one observation to
dominate the entire estimate. These weights reweight a treated and an
untreated group so that each resembles the whole sample on the
covariates behind the propensity score, the basis of
inverse-probability-weighted estimates of a treatment effect
(Rosenbaum and Rubin, 1983).


For unit \eqn{i} with treatment \eqn{T_i} and propensity \eqn{e_i},
the clamped score is \eqn{\tilde e_i = \min(\max(e_i, l), u)} with
\eqn{l} = \code{trimlo} and \eqn{u} = \code{trimhi}, and the weight is
\eqn{1 / \tilde e_i} when \eqn{T_i = 1} and \eqn{1 / (1 - \tilde e_i)}
when \eqn{T_i = 0}. With the defaults no weight exceeds 100.

Refusals: vectors of different lengths, a treatment coded other than
0/1 (\code{"treat must be coded 0/1"}, naming the offending values), a
propensity outside \eqn{[0, 1]}, and bounds that do not satisfy
\eqn{0 < l < u < 1}. A missing treatment or propensity gives a missing
weight for that unit only. The weights are not normalised; divide by
their sum within each arm for stabilised (Hajek) estimates.

}
\section{Tidy the column names of an ingested table (\code{clncolnms})}{

Converts column names to a consistent, syntactically valid form:
transliterated to ASCII, non-alphanumerics collapsed to a single
separator, and duplicates disambiguated with a numeric suffix. The
counterpart of \code{janitor::clean_names()}. Use it right after reading
an open-data file, so the rest of the script can refer to columns without
backticks.


Open-data extracts arrive with names like
\code{"Total Population (2021)"} and \code{"\% change"}, which need
backticks everywhere and break silently when a re-release renames
\code{"\% change"} to \code{"\% Change"} or adds a trailing space.
Normalising once at ingestion makes the schema stable against that.

The steps, in order: transliterate to ASCII (\code{iconv(...,
"ASCII//TRANSLIT")}, keeping the original where that fails); replace
\code{\%} by \code{pct}, \code{&} by \code{and} and \code{#} by \code{n}
as words; split camelCase at a lower-to-upper boundary; turn every run of
other characters into one word break; an empty name becomes \code{x};
join the words in the chosen case; prefix \code{x} to a name starting
with a digit; and give repeated names the suffixes \code{<sep>2},
\code{<sep>3}, ... in order of appearance (the first keeps its name).
The transliteration depends on the platform's iconv, so an accented
letter may come out slightly differently on different systems.

Record the mapping in the capsule manifest. Cleaning names changes what
a downstream script must refer to, so an unrecorded cleaning is itself a
reproducibility hazard -- the returned object carries the original names
in its \code{"orignms"} attribute for exactly that.

}
\section{Cumulative risk of a first event by age (\code{cmlrisk})}{

The chance that a person experiences an event (a first arrest, a first
conviction, a first jail stay, a first child protection placement) by each
age, from first events and the population by age, as a synthetic cohort; with
mortality as a competing risk when deaths are given.


With \eqn{E_a} first events at age \eqn{a} and \eqn{N_a} persons at
risk (those who have not had the event), the hazard is \eqn{h_a = E_a/N_a}.
When only the population \eqn{P_a} is known, the persons at risk are taken as
\eqn{P_a(1 - CR_{a-1})} (the synthetic-cohort assumption). Without mortality,
\eqn{CR_a = 1 - \prod_{x \le a}(1 - h_x)}. With death rates \eqn{q_x}, the
multiple-decrement table carries survivors \eqn{l_{x+1} = l_x(1 - h_x - q_x)}
and \eqn{CR_a = \sum_{x \le a} l_x h_x / l_0}, the risk of the event before
death. The interval (without mortality) is Greenwood's on the log of the
survival: \eqn{\mathrm{Var}(\log S_a) = \sum_{x \le a} h_x/(N_x(1 - h_x))}.

Counting first events needs records that link a person's events over time; an
agency's counts of all events overstate first events. Events of people who do
not live in the area, counted against its population, bias the risk upward.

}
\section{Mean, variance, skewness and kurtosis (C backend) (\code{cmom})}{

The four standard descriptive moments of a numeric vector -- where it is
centred, how spread out it is, whether it leans to one side and how
heavy its tails are -- in one call to the compiled core. These are the
four numbers a data description or a drift check usually reports
together.


The mean is base R's (an extended-precision sum followed by a
corrective pass); the deviations from it are then divided by their largest
magnitude before any power is taken, and the scale is restored at the end.
That avoids both the cancellation of the textbook \dQuote{sum of squares
minus square of sum} formula and overflow of fourth powers for values beyond
about \eqn{10^{77}}. It reads the data three times (mean, largest deviation,
moments), in \eqn{O(n)} time. The variance uses the \code{n - 1} denominator,
matching \code{\link[stats:var]{stats::var()}}. The shape statistics use the
\emph{sample moment} definitions \deqn{g_1 = m_3 / m_2^{3/2}, \qquad g_2 = m_4 /
m_2^2 - 3,} with \eqn{m_k = n^{-1} \sum_i (x_i - \bar x)^k}, so kurtosis is
reported as EXCESS kurtosis: a normal sample sits near zero, not near three.
These are the uncorrected moment ratios (type 1 in the classification of
Joanes and Gill, 1998), not the bias-adjusted versions some software reports.

Edge cases are \code{NaN}, never an error: an empty vector gives four \code{NaN};
one value gives its mean and \code{NaN} for the rest; \code{skewness} needs at
least 3 values and \code{kurtosis} at least 4; any \code{NA} or \code{NaN} in \code{x}
makes
every entry \code{NaN}. A constant vector has variance 0 and \code{NaN} shape
statistics. A character, factor or list \code{x} is refused
(\code{"must be numeric"}).

}
\section{Normal log-density (C backend) (\code{cnormlpdf})}{

The logarithm of the normal (Gaussian) density at each value of \code{x},
computed directly from the formula rather than as \code{log(dnorm(x))}. Use
it for log-likelihoods: summing log-densities is how a normal model is
scored, and computing them directly keeps the sum finite far into the
tails, where the density itself underflows to zero and its logarithm
would be \code{-Inf}.


Each value is
\deqn{\log \phi(x; \mu, \sigma) = -\log \sigma - \tfrac12 \log(2\pi)
  - \frac{(x - \mu)^2}{2\sigma^2},}
evaluated by the shared core, and agrees with
\code{stats::dnorm(x, mean, sd, log = TRUE)} to rounding.

\code{mean} and \code{sd} are single numbers: a vector of either is refused, so
this is not vectorised over the parameters the way
\code{\link[stats:dnorm]{stats::dnorm()}} is.
A non-finite \code{mean}, and an \code{sd} that is not a positive finite number,
are errors, as in \code{\link[=cnormpdf]{cnormpdf()}}; a missing
\code{x} gives \code{NA}. A
character, factor or list \code{x} is refused (\code{"must be numeric"}).

}
\section{Normal density (C backend) (\code{cnormpdf})}{

Evaluates the density of the normal distribution with a given mean and
standard deviation at each value of \code{x}, in compiled code. It is the
same kernel that other packages reach through
\code{LinkingTo: rmoriebricklayer}, and for a positive standard deviation
it agrees with \code{\link[stats]{dnorm}}.


\deqn{f(x) = \frac{1}{\sigma\sqrt{2\pi}} \exp\left(-\frac{(x -
\mu)^2}{2\sigma^2}\right).} The function is vectorised over \code{x} only;
\code{mean} must be a single finite number and \code{sd} a single positive
number, and anything else is an error (\code{dnorm()} recycles them, and
gives \code{Inf} or \code{NaN} for \code{sd = 0} or below). \code{NA} in
\code{x} gives \code{NA}; \code{x = Inf} gives 0. Character, factor or list
input for \code{x} is an error.

}
\section{Trend in a count series, as a rate ratio per period (\code{cnttrnd})}{

Estimates the trend in a series of counts (arrests, admissions,
incidents per year) as a rate ratio per period: 0.85 means the count
falls by 15\% a year. It fits a Poisson log-linear model and, when the
counts vary more than a Poisson model allows, widens the interval. An
offset carries the denominator when the exposure varies, so the trend is
then in the rate rather than in the count.


The model is \eqn{\log \mu_t = \beta_0 + \beta_1 (x_t - \bar x) +
\log o_t}, with \eqn{o_t} the offset (1 when none), fitted by iteratively
reweighted least squares (at most 50 iterations). The rate ratio is
\eqn{e^{\beta_1}}, with a Wald interval \eqn{e^{\beta_1 \pm z\,
\mathrm{se}}}.

The dispersion is reported because a Poisson fit assumes it is one. It
is the Pearson statistic \eqn{\sum (y - \mu)^2/\mu} divided by
\eqn{n - 2}. When it exceeds 1.5 the quasi-Poisson interval is returned
instead: the standard error is multiplied by the square root of the
dispersion and the \eqn{t} distribution on \eqn{n - 2} degrees of freedom
replaces the normal, and \code{overdispersed} is set.

Missing values are dropped. Errors: negative or fractional counts;
\code{x} and \code{y} of different lengths; infinite \code{x}; every count
zero; an offset of the wrong length or not positive; fewer than three
periods; a \code{conflvl} outside (0, 1). When the counts are zero at
one end of the series only (\code{c(0, 0, 5)}) the likelihood rises without
bound and there is no finite trend: a warning says so, the rate ratio is
\code{Inf} (or 0) and the interval and p-value are \code{NA}. There is a
\code{plot()} method for the result.

}
\section{Energy and carbon footprint of a computation (\code{co2fp})}{

Evaluates \code{expr} and reports the electricity it used and the
CO2-equivalent that electricity implies, by one of two methods, for the
grid it ran on, offline. Use it to report the energy and emissions of an
analysis next to its results (as journals and funders increasingly ask),
or to compare two ways of running the same computation. The result keeps
the value of \code{expr}, and lists every figure that was assumed rather
than measured.


\strong{Measured} (\code{method = "rapl"}): the CPU package energy
counters (RAPL, microjoules, read from \code{rapldir}) before and after,
with wrap-around handled through \code{max_energy_range_uj}. This is what
codecarbon does on Linux; the counters cover the CPU packages only, so
memory is still modelled. Available when \code{\link{raplok}()} is
\code{TRUE}.

\strong{Modelled} (\code{method = "model"}): the Green Algorithms formula
(Lannelongue, Grealey and Inouye 2021),
\deqn{E = t \,(P_{cpu}\, u + M\, P_{mem})\, PUE}
with \eqn{t} the running time, \eqn{P_{cpu}} the CPU's thermal design
power in watts, \eqn{u} its utilisation, \eqn{M} the memory in GB,
\eqn{P_{mem} = 0.3725} W/GB and \eqn{PUE} the data-centre overhead. When
the CPU's power is unknown (\code{cpupwrw = NULL}) the fallback is
codecarbon's: 50\% of a constant 85 W, that is 42.5 W charged for the whole
running time whatever the measured utilisation (the utilisation is still
reported, but not applied).

\strong{Utilisation} is measured, not assumed, in one of two ways.
\code{usage = "process"} (the default) is this R process's own CPU time,
children included, divided by the wall time and the core count: codecarbon's
process tracking mode, which charges only what the computation itself used.
\code{usage = "machine"} is the whole machine's busy share over the run,
from \code{/proc/stat} on Linux: codecarbon's machine tracking mode, right
when the computation is the only thing the machine is doing or when the
question is what the machine drew. Where \code{/proc/stat} is absent the
process figure is used and the assumptions say so. A number between 0 and 1
fixes the utilisation, as the Green Algorithms calculator asks for it.
\code{loadcur} chooses how power scales with that utilisation: linearly
(Green Algorithms) or along codecarbon's curves, a floor at 10\% of
\eqn{P_{cpu}} for a process and \eqn{0.1 + 0.9 u^3} for a machine, so a
figure can be made comparable with either tool.

Cross-checked against codecarbon 3.3.1 on one workload with the same forced
inputs: memory energy identical (5.96 W for 16 GB), CPU energy within 8\%.
\code{loadcur = "codecarbon"} reproduces its power-from-load curves, so
what remains of the difference is the load measurement itself (codecarbon
samples the load during the run; this function integrates the CPU time).

Emissions are \eqn{E \times} the carbon intensity of the location
(\code{\link{co2int}}: a bundled table of every country at its
latest published year and of sub-national zones, so no network access is
needed anywhere). With \code{location = NULL} the location is detected
from the environment, the time zone or the locale
(\code{\link{dtctloc}}) and the detection is recorded. Every
default that stood in for a measurement is listed in \code{assumptions}, so
a report can say what was measured and what was assumed.

The energy figures include the PUE factor (CPU, memory and total alike).
The running time has a floor of the CPU time divided by the cores, so a
computation faster than the clock's resolution does not come out at zero.
Short computations (well under a second) give figures dominated by timer
resolution; measure a representative workload.

Every argument is checked, and the carbon intensity looked up, before
\code{expr} is evaluated, so a bad argument never costs the computation.
Errors: an unknown \code{loc}; \code{pue} below 1 or not a single
finite number; \code{cpupwrw} or \code{cores} not a single positive
number (\code{cores} also whole); \code{memgb} or
\code{mempwrwpergb} negative; \code{usage} other than
\code{"process"}, \code{"machine"} or one number in \eqn{[0, 1]};
\code{method = "rapl"} where the counters are not readable. An error
inside \code{expr} propagates unchanged. Nothing is written and nothing is
fetched.

}
\section{Carbon intensity of electricity by location, offline, anywhere (\code{co2int})}{

The grams of CO2-equivalent emitted per kilowatt-hour of electricity at a
location, with the year and source of the figure. The table is bundled with
the package, so it works offline in any country: every country at the latest
year published by Our World in Data from Ember's yearly electricity data (the
latest year each grid reports: 2025 or 2024 for nearly all, older for a few
grids, Ukraine (2022) among them, named in \code{year}), sub-national zones
from Electricity Maps' 2024 yearly data as redistributed in the Green
Algorithms data release v3.1 (Canadian provinces and territories, US
balancing authorities, Australian states, Indian and Japanese regions,
Brazilian and Chilean systems, ...), and the world average. All figures are
lifecycle intensities (generation plus upstream), the basis both sources
publish.


A location is matched by its code (\code{"CA"}, \code{"CA-ON"},
\code{"US-CAL-CISO"}), its ISO 3166-1 alpha-3 code (\code{"CAN"}) or its
name (\code{"Canada"}), case-insensitively. An unknown sub-national code
falls back to its country and says so in \code{note}. \code{NULL} detects
the location with \code{\link{dtctloc}}.

\subsection{Provenance and licence of the table}{

The country rows are Ember's yearly electricity data as published by Our
World in Data (CC BY 4.0); the sub-national zones and the Canadian
provinces come from the Electricity Maps yearly files redistributed in
the Green Algorithms data repository (v3.1), under that repository's
terms, and the default PUE from the same repository. Every row names its
source and year. Values are reproduced unchanged: Ember reports three
small diesel grids (Montserrat, Saint Helena, Uzbekistan) at exactly
1000 gCO2e/kWh and Turkmenistan's gas fleet at 1306, and the table does
not round or cap them. Kosovo appears once, under the code \code{XK}.
}
}
\section{A community-weighted index of protective and risk factors (\code{commidx})}{

Combines published indicators into one index for each group or place, with
weights the community sets: protective factors count for, risk factors
against. The weights are never estimated.


Inuit Tapiriit Kanatami's National Inuit Suicide Prevention Strategy
(2016) names risk factors (among them crowded housing, food insecurity,
childhood adversity, mental distress) and protective factors (among them
cultural continuity, social equity, family strength, healthy child
development). How much each matters is a judgement for the people the index
describes, so the function takes the weights as given: positive for
protective, negative for risk. The index is \eqn{\sum_i w_i p_i / \sum_i
|w_i|}, with standard error \eqn{\sqrt{\sum_i w_i^2 s_i^2} / \sum_i |w_i|}
from the published intervals (independent estimates). It is a summary of the
indicators under the weights given; with other weights it ranks places
otherwise, and it is never a ranking of Nations or communities on their
culture. For Inuit regions, use Inuit data only.

}
\section{Concentration of a total across units (\code{concentration})}{

Measures how unevenly a total is spread across units: whether a few
people account for most of the placements, or a few regions for most of
the days. \code{ginicoef()} gives the Gini coefficient, \code{lorenzc()} the
points of the Lorenz curve (for plotting, for example with
\code{\link[=plotlrnz]{plotlrnz()}}), and \code{topshr()} the share of the
total held by
the largest units ("the top 1\% of people account for 20\% of the
days"). The three are computed in compiled code from the same sorted
values.


Gini is the mean absolute difference between pairs of units over twice
the mean, \eqn{G = \sum_i \sum_j |x_i - x_j| / (2 n^2 \bar{x})}, which is
also twice the area between the Lorenz curve and the diagonal. Zero is a
perfectly even spread; the maximum for \code{n} units is \code{1 - 1/n},
not 1, so a Gini near 1 requires many units as well as an uneven spread.

A Gini computed from banded or rounded data inherits that coarsening:
compare with \code{\link[=bandsens]{bandsens()}} when the values are
bands. For a tail
that a few units dominate, \code{\link[=hilltlidx]{hilltlidx()}} says
whether the largest
values follow a power law.

Errors: \code{x} not numeric, with \code{Inf} or a negative value, or with
no non-missing value; \code{ginicoef()} when every value is zero (the Gini of
a zero total is undefined); \code{topshr()} when \code{fractions} is not
numeric, is empty, has \code{NA} or lies outside \code{[0, 1]}.

}
\section{Connection across places: does one indicator rise where another does? (\code{connassoc})}{

For two indicators published for the same places (regions, provinces, Inuit
regions), their rank correlation across places, an exact permutation p-value,
and an interval that carries the sampling error of the published estimates:
for connection to land and wellness, community belonging and mental health,
education and health.


Mashford-Pringle and Stewart (2019) describe the land as \dQuote{an
instrumental part of all aspects of Indigenous life including health and
well-being}; Mashford-Pringle (2016) describes Indigenous health and
education as interconnected. Across places, that connection has a testable
shadow: where more people are on the land (or belong, or finish school), do
more report wellness? This function measures it by Spearman's \eqn{\rho}. Its
p-value is exact when there are at most 8 places (over all \eqn{n!}
orderings) and a Monte Carlo estimate otherwise (\eqn{(b + 1)/(R + 1)} for
\eqn{b} of \eqn{R} = \code{reps} random orderings at least as extreme). Each
estimate carries sampling error, so \code{rholo} and \code{rhoup} are the
quantiles of \eqn{\rho} over \code{reps} draws of both indicators from normal
distributions with their published standard errors. That is a sensitivity
band, not a confidence interval for a correlation across places: it shows how
much the published sampling error alone moves \eqn{\rho} for these places, it
is pulled toward 0 (noise is added to estimates that are already noisy), and
it ignores the sampling of the places themselves. Quality flags are not
carried: filter suppressed rows out first.

This is an association across places (an ecological one). It cannot say that
connection to land makes a person well, which needs data on persons; a
handful of places gives little power; and a correlation is not a measure of
the relationship the authors describe. It is a description of how the
published indicators move together.

\subsection{Acknowledgement}{
 This estimator puts to quantitative use the work of
Professor Angela Mashford-Pringle (Timiskaming First Nation) and Professor
Suzanne Stewart (Yellowknives Dene First Nation), both of the University of
Toronto.

See the acknowledgements of the \code{first-nations-metis-inuit-health}
vignette.
}
}
\section{Full pairwise correlation table (\code{cortbl})}{

Computes the correlation of every pair of numeric columns and returns it
in long form -- one row per pair, which is easier to sort, filter and join
than a matrix -- with the number of complete pairs each figure rests on.
The counterpart of \code{corrr::correlate()}.


Non-numeric columns are ignored. For each pair, rows where either value is
missing are dropped (pairwise deletion), so different pairs can rest on
different rows; \code{nprs} says how many. Spearman's rank correlation
(the default) is the Pearson correlation of the ranks, robust to outliers
and to monotone transformations; see
\code{\link[=topcors]{topcors()}} for why it is
the default. A pair with fewer than \code{minprs} complete rows, or
with a constant column (no variance), gets \code{NA}. The pairs are listed
in column order (\code{utils::combn()}). A progress bar is drawn on stderr
for many pairs unless \code{options(morie.quiet = TRUE)}.

Errors: \code{data} not a data frame; fewer than two numeric columns;
\code{minprs} not a whole number of at least 2; an invalid
\code{meth}.

}
\section{Compare a fetched data frame with the one a capsule was pinned against (\code{cpsdrft})}{

Checks whether the data in a freshly downloaded table still look like the
data an analysis was built on, column by column. A digest only says
whether the bytes changed; this says whether the distributions changed,
which is what invalidates a result. Use it when re-running an analysis on
a re-released extract.


Runs the appropriate drift test on every shared column and collects the
verdicts in one report: \code{\link[=drftks]{drftks()}} plus
\code{\link[=drftpsi]{drftpsi()}} for a numeric column,
\code{\link[=drfthomog]{drfthomog()}} for a categorical
one. Columns that appeared or vanished are listed separately, since no
test applies to them.

The categorical test is the two-sample homogeneity test, NOT
\code{\link[=drftchisq]{drftchisq()}} 's goodness-of-fit against a
known distribution: the reference here is itself a finite sample, and
ignoring its sampling error would report drift too readily.

This is the check that a byte-level digest cannot make. A re-released
extract legitimately has a different SHA-256 while being the same data
statistically; conversely a column can keep its name, type and row count
while having been silently rescaled. \code{cpsdrft()} asks whether
the DATA moved.

Column types: a column numeric on both sides is \code{"numeric"}; a character
or factor column whose every value is an ISO date (\code{YYYY-MM-DD}) or
date-time on both sides is converted and tested as \code{"date"}; a
categorical column with more than \code{idelvls} distinct values, or
with at least 20 distinct values that number more than a fifth of the
rows, is an \code{"identifier"} and is not tested; anything else is
\code{"categorical"}. Missing values are dropped. For a categorical column the
PSI is computed over the reference's categories with every unseen current
value pooled into one extra bin.

A column is \code{drifted} when its p-value is below \code{alpha}, or when its PSI
exceeds \code{psithr} and both samples have at least \code{psiminn}
values. \code{anydrft} is also \code{TRUE} when a column was added or removed.
Each column runs one or two tests, so with many columns some will fall
below \code{alpha} by chance; see \code{\link[=scanadj]{scanadj()}} for a
multiplicity
correction and \code{\link[=drftcal]{drftcal()}} for an empirical
false-alarm rate.
A progress bar is shown in an interactive session for many columns.

Errors: either argument not a data frame; \code{alpha} not strictly between
0 and 1; \code{psiminn} negative; \code{idelvls} below 2.

}
\section{Run falsification controls against a statistic (\code{cpsfals})}{

Recomputes \code{stat} under conditions in which its value is known
in advance, and reports whether it behaved. Four controls, each
answering a different way of being wrong:


\itemize{
\item \strong{permutation} -- shuffle \code{trt} and the association it
carries is destroyed, so the statistic should fall to its null
distribution. Reports where the observed value sits in that
distribution, and the smallest p-value the number of permutations could
have produced.
\item \strong{random common cause} -- add a column of noise. It cannot
possibly matter, so a statistic that moves is reading something other
than the data.
\item \strong{placebo treatment} -- replace \code{trt} with a random draw of
the same shape. The effect should vanish; if it does not, the statistic
is picking up structure that has nothing to do with the exposure.
\item \strong{subset stability} -- recompute on random subsets. Wide spread
means the finding rests on particular rows, which is worth knowing
before it rests on a conclusion.
}

What a pass means. Only that these controls did not catch anything. They
are falsification tests, so they can refute and cannot confirm: passing
all four is consistent with a statistic that is wrong for a reason none
of them probes.

When each control passes:
\itemize{
\item permutation -- the two-sided permutation p-value
\eqn{(1 + \#\{|s_b| \ge |s_{obs}|\}) / (1 + B)} over the \eqn{B} usable
permutations is below 0.05 (the observed statistic is unlike its null);
\item placebo -- the statistic under one more permuted treatment lies within the
95th percentile of the absolute permutation values;
\item random common cause -- adding a column \code{.rmbl_random_common_cause} of
standard normal noise changes the statistic by at most
\eqn{10^{-8} \max(1, |s_{obs}|)};
\item subset stability -- the observed value lies inside the middle 95\% of the
statistic over \code{n} random subsets of \code{round(subfrac * nrow(data))}
rows (at least two).
}

A permutation or subset on which the statistic errors or is not finite is
dropped from that control. The statistic is evaluated \verb{2 n + 3} times, so
its cost sets the run time; a progress bar is shown when
\code{options(morie.progress)} allows it. With \code{seed} the random number stream
is set for the call and the caller's stream restored afterwards.

Errors: \code{data} not a data frame or with fewer than 4 rows; \code{stat} not a
function, or failing or not returning one finite number on the data as
given, the placebo data or the noise-augmented data; \code{n} below 9;
\code{subfrac} not strictly between 0 and 1; \code{trt} not a column of
\code{data}.

}
\section{Detect an injected effect of known size (\code{cpspwr})}{

Adds an effect of each given size to the data, reruns the whole
detection procedure, and reports how often it was found. The result is a
power curve, and the smallest size detected reliably is the smallest
effect the analysis could have seen. Use it before reporting a null
result, to show whether the analysis could have found an effect of the
size that matters.


This is the positive control that
\code{\link[=cpsfals]{cpsfals()}} lacks: its four are
all negative. Those establish that the finding is not an artefact; this
establishes that a real effect would not have been missed. A study that
passes every falsification control and has no power against the effect
it was looking for has not found that the effect is absent -- it has
found nothing either way, and the two are routinely reported as the same
thing.

For each size (0 is always added) and each of \code{reps} repetitions,
the statistic is computed on the data passed through the injector, as
\code{inject(data, size)}, and a permutation null is built by shuffling the
\code{trt} column \code{n} times and recomputing the statistic. The
two-sided permutation p-value is
\deqn{p = \frac{1 + \#\{|T^*| \ge |T|\}}{1 + n_{ok}}}
over the \eqn{n_{ok}} permutations with a finite statistic (Phipson and
Smyth's correction, so \eqn{p} is never 0), and the effect counts as
detected when \eqn{p \le \alpha}. A repetition whose injection or
observed statistic fails (error or non-finite value) is skipped and not
counted in \code{reps}. Since the data are the same in every repetition,
\code{inject} should add randomness of its own (new noise, a resampled
effect) when repetitions are meant to differ; otherwise only the
permutations vary.

The cost is \eqn{|sizes| \times reps \times (n + 1)} evaluations of
\code{stat}. A progress bar is drawn on stderr unless
\code{options(morie.quiet = TRUE)}. With \code{seed}, R's random number
state is set for the run and restored afterwards; without it, the run
uses and advances the session's generator.

Errors: \code{data} not a data frame of at least 4 rows;
\code{stat} or \code{inject} not a function; \code{trt}
missing or not a column; \code{n} below 9; \code{reps} below 1; \code{n}
so small that \eqn{1/(n+1) > \alpha}, so that nothing could ever be
detected.

}
\section{Association in a contingency table (\code{cramerv})}{

Cramer's V, with the bias correction of Bergsma (2013) available, and
the small-expected-count condition reported rather than assumed away.
Use it to say how strongly two categorical variables are associated (0 is
none, 1 is complete), for example region by outcome in a cross-tabulation,
on a scale that does not depend on the number of rows and columns.


With \eqn{\chi^2} the Pearson statistic (no continuity correction),
\eqn{n} the total, \eqn{r} rows and \eqn{k} columns, \eqn{\phi^2 =
\chi^2/n} and the uncorrected \eqn{V = \sqrt{\phi^2 / \min(r-1, k-1)}}.
Bergsma's correction replaces \eqn{\phi^2} with
\eqn{\max(0, \phi^2 - (r-1)(k-1)/(n-1))} and \eqn{r, k} with
\eqn{r - (r-1)^2/(n-1)} and \eqn{k - (k-1)^2/(n-1)}.

Empty rows and columns (an unused factor level) are dropped first, and
\code{method} says so. When fewer than two rows or columns remain, every
statistic is \code{NA}. When any expected count is below
\code{minexp}, the p-value comes from
\code{stats::chisq.test(simulate.p.value = TRUE, B = 10000)} under
\code{seed}, and the caller's random number stream is restored afterwards.

Errors: \code{tbl} \code{NULL}, not numeric, or with a negative or
non-finite count; \code{biascor} not \code{TRUE} or \code{FALSE};
\code{minexp} not a single non-negative number.

}
\section{Rank correlation and midranks (C backend) (\code{crank})}{

\code{cspr()} is Spearman's rho: the Pearson correlation of
the ranks, so it measures monotone association rather than linear
association and is unaffected by any order-preserving transformation of
either variable. \code{cmidrk()} exposes the ranks themselves;
tied values share the average of the ranks they span, which is what
makes the result agree with \code{\link[stats:cor]{stats::cor()}} on
tied data. Use Spearman's rho when two variables rise and fall together
but not along a straight line (counts against rates, incomes against
ranks), or when a few extreme values would dominate a Pearson
correlation.


With \eqn{r_i} and \eqn{s_i} the midranks of \eqn{x_i} and \eqn{y_i},
\deqn{\rho = \frac{\sum_i (r_i - \bar r)(s_i - \bar s)}
  {\sqrt{\sum_i (r_i - \bar r)^2 \sum_i (s_i - \bar s)^2}},}
the Pearson correlation of the ranks (Spearman, 1904). Because ties get
midranks, the shortcut \eqn{1 - 6 \sum d_i^2 / (n(n^2 - 1))} is NOT what
is computed; the full formula above is, and it stays correct with ties.

\code{cspr()} does not remove missing values: an \code{NA} in either
vector gives \code{NaN}, and so does a constant vector (its ranks have no
variance). \code{cmidrk()} leaves an \code{NA} in place and ranks the rest,
as \code{rank(x, na.last = "keep")} does. Refusals: vectors of different
lengths (\code{"must have the same length"}) and a character, factor or list
argument (\code{"must be numeric"}). Ranking sorts, so the cost is
\eqn{O(n \log n)}.

}
\section{Concentration-response functions for PM2.5 and NO2 (\code{crfpm25})}{

A concentration-response function (CRF) turns an air-pollution
concentration into the relative risk (RR) of a health outcome compared
with a counterfactual \dQuote{clean air} level: an RR of 1.05 means 5\% more
deaths (or cases) than at the reference concentration. These are the
first step of any burden estimate; \code{\link{polbrdn}} and
\code{\link{vrfpol}} call them for you.


\code{crfpm25()} is log-linear for all-cause mortality with the pooled
cohort estimate of the WHO 2021 guideline review (Chen and Hoek 2020:
RR 1.08, 95\% CI 1.06-1.09, per 10 micrograms per cubic metre),
\deqn{RR(z) = \exp(\ln(1.08) (z - z_{cf}) / 10)}
for \eqn{z > z_{cf}} and 1 otherwise; for the cause-specific outcomes
(ischaemic heart disease, stroke) it is the Integrated Exposure-Response
curve of Burnett et al. (2014, equation 1),
\deqn{RR(z) = 1 + \alpha (1 - e^{-\gamma (z - z_{cf})^{\delta}}),}
with the GBD 2013 parameter triples; the IER was fitted per cause and has no
all-cause form. \code{crfno2()} is the log-linear function of the WHO 2021
review (Huangfu and Atkinson 2020: RR 1.02, 95\% CI 1.01-1.04, per 10
micrograms per cubic metre for all-cause mortality),
\deqn{RR(z) = \exp(\beta (z - z_{cf}) / 10).}
A vector of exposures gives the mean RR and log-RR. The per-unit
relative risks are then in \code{extra$rrperunit}.

Every function has zero excess risk at and below the reference
concentration (\eqn{z \le z_{cf}} gives RR 1). The published 95\%
limits of the log-linear coefficients are carried through the same
curve into \code{rrlo} and \code{rrup}; the IER parameters come
without an interval, so those are \code{NA} for \code{"ihd"} and
\code{"stroke"}, and also when \code{betaper10} is supplied.

Refusals: an unknown \code{y} (the message lists the available
ones); an exposure that is missing, infinite, negative, logical or
empty; and a \code{refconc} (or \code{betaper10}) that is not
a single finite number, or a negative \code{refconc}. A supplied
\code{betaper10} may be negative (a protective association) and
replaces the table, in which case \code{y} is only a label.
The functions are pure computations: no file, network or option is
used.

}
\section{Quantiles, median and robust spread (C backend) (\code{crob})}{

\code{cqnt()} is the type-7 quantile, which is R's default, so
it agrees with \code{stats::quantile(x, probs, type = 7)}.
\code{cmed()} is the 50\% point. \code{cmad()} is the median
absolute deviation, scaled by \code{constant} so that it estimates the
standard deviation of a normal sample. \code{ciqr()} is the
interquartile range and \code{ctkyfnc()} the outlier fences
drawn at \code{k} IQRs beyond the quartiles.


These are the robust counterparts of
\code{\link[=cmom]{cmom()}}: a single corrupted row can
move a mean or a variance arbitrarily far, but moves a median or a MAD
hardly at all -- which is what you want when deciding whether a freshly
fetched column is still the column a capsule was pinned against, or
when screening a column for values to inspect by hand.

The type-7 quantile at probability \eqn{p} interpolates linearly between
the order statistics \eqn{x_{(j)}} and \eqn{x_{(j+1)}} with
\eqn{h = (n - 1)p + 1}, \eqn{j = \lfloor h \rfloor}:
\eqn{Q(p) = x_{(j)} + (h - j)(x_{(j+1)} - x_{(j)})} (Hyndman and Fan,
1996). The MAD is \eqn{c \cdot \mathrm{median}_i |x_i - \mathrm{median}(x)|}
with \eqn{c} = \code{constant}; the IQR is \eqn{Q(0.75) - Q(0.25)}; and the
fences are \eqn{Q(0.25) - k \cdot \mathrm{IQR}} and
\eqn{Q(0.75) + k \cdot \mathrm{IQR}} (Tukey, 1977).

Missing values are not removed: an \code{NA} or \code{NaN} anywhere in \code{x} makes
every result \code{NaN} (unlike \code{\link[stats:quantile]{stats::quantile()}},
which stops). An empty \code{x} gives \code{NaN}. \code{cqnt()} refuses an empty
\code{probs} (\code{"probs is empty"}) and any probability outside \eqn{[0, 1]} or
missing (\code{"must lie in [0, 1]"}); every function refuses a character, factor
or list \code{x} (\code{"must be numeric"}). The quantiles sort a copy of \code{x}, so
the cost is \eqn{O(n \log n)}.

}
\section{SHA-256 hex digest (C backend) (\code{csha256})}{

Computes the SHA-256 hash (FIPS 180-4) of text or raw bytes with the
self-contained implementation in the package's compiled core, and returns
it as a 64-character lowercase hexadecimal string. A hash is a short
fingerprint: any change to the input changes it, so it is used throughout
the package to record exactly which data, mapping or file a result came
from. Sibling packages use the same routine through
\code{LinkingTo: rmoriebricklayer}.


For a raw vector the bytes are hashed as one message and one digest is
returned. Any other input is converted with \code{as.character()} and each
element is hashed separately, as the bytes of the string as stored in
memory (no re-encoding). In a UTF-8 session those are the UTF-8 bytes;
for a string marked latin1 they are the latin1 bytes, so use
\code{enc2utf8()} first when the digest must be the same on every
platform. \code{NA} gives \code{NA}. Numbers are hashed through their
printed form (\code{1} hashes as \code{"1"}), and a factor through its
labels.

For a digest of a whole R object, hash its serialization (see the
examples) or use \code{\link{dgstobj}}; for BLAKE2b use
\code{\link{cblake2b}}.

}
\section{Standard deviation and Euclidean distance (C backend) (\code{cspread})}{

\code{csdev()} returns the standard deviation of a numeric vector and
\code{cdistm()} the straight-line (Euclidean) distance between two
vectors of the same length. Both run in the package's compiled core,
the same code that rmorie and rmoriedata reach through
\code{LinkingTo: rmoriebricklayer}, so a figure computed here is the figure
those packages compute. Use them when you want the shared core's
answer rather than base R's, for example when checking a capsule's
recorded summary statistics against a fresh computation.


\code{csdev()} computes \deqn{s = \sqrt{\frac{1}{n - \mathrm{ddof}}
\sum_{i=1}^n (x_i - \bar x)^2},} so \code{ddof = 1} is the sample standard
deviation of \code{\link[stats:sd]{stats::sd()}} and \code{ddof = 0} the population
figure. \code{cdistm()} computes \eqn{\sqrt{\sum_i (a_i - b_i)^2}}.

Missing values propagate: there is no \code{na.rm}, and one \code{NA} makes the
result \code{NA}. Remove them first (for example with
\code{\link[stats:na.omit]{stats::na.omit()}}) when
that is what you want. A vector with no more than \code{ddof} values has no
defined spread and gives \code{NaN} (one value with the default \code{ddof = 1},
or an empty vector). Two empty vectors are at distance 0.

Refusals: a character, factor, list or data-frame \code{x}, \code{a} or \code{b}
(\code{"must be numeric"}), and for \code{cdistm()} vectors of different lengths
(\code{"must have the same length"}). Logical input is accepted and counted
as 0/1. Both run in one pass over the data and allocate nothing beyond
the coerced input.

}
\section{Fast summary statistics (C backend) (\code{cstat})}{

\code{cmn()}, \code{cvari()} and \code{ccorr()} compute the
mean, the sample variance and the Pearson correlation in compiled code.
They are thin R wrappers over the kernels in the package's C/C++ core,
the same ones that other packages call through
\code{LinkingTo: rmoriebricklayer}, so an R result and a compiled
result agree exactly. Use them where you want those shared kernels; for
everyday work \code{mean()}, \code{var()} and \code{cor()} give the same
numbers.


With \eqn{n} values,
\deqn{\bar x = \frac{1}{n}\sum_i x_i, \qquad
  s^2 = \frac{1}{n - 1}\sum_i (x_i - \bar x)^2, \qquad
  r = \frac{\sum_i (x_i - \bar x)(y_i - \bar y)}
  {\sqrt{\sum_i (x_i - \bar x)^2 \sum_i (y_i - \bar y)^2}}.}
The variance uses the \eqn{n - 1} (sample) denominator, as
\code{\link[stats]{var}} does. The mean is accumulated so that a sum of
finite values that would overflow a double (for example two values of
\code{1e308}) still gives the finite mean.

There is no \code{na.rm}: any \code{NA} or \code{NaN} gives \code{NA} or
\code{NaN}; remove missing values first, for example with
\code{\link[stats]{na.omit}}. Edge cases return \code{NaN} rather than an
error: an empty vector for the mean, fewer than two values for the
variance, and a constant vector for the correlation.

Errors: input that is a character vector, factor, list or data frame
(logical input is accepted and read as 0/1); \code{x} and \code{y} of
different lengths in \code{ccorr()}.

}
\section{Trimmed and winsorized means (C backend) (\code{ctrm})}{

Two ways to stop a handful of extreme rows dominating a column's centre.
\code{ctrmmean()} DISCARDS the \code{floor(n * trim)} largest
and smallest values, as \code{mean(x, trim = )} does.
\code{cwinsmean()} instead PULLS THEM IN to the most extreme
surviving values, so every observation still contributes weight --
usually the better choice when the extremes are real measurements rather
than errors.


With \eqn{g = \lfloor n \cdot \mathrm{trim} \rfloor} and the sorted values
\eqn{x_{(1)} \le \dots \le x_{(n)}}, the trimmed mean is
\eqn{\frac{1}{n - 2g} \sum_{i=g+1}^{n-g} x_{(i)}} and the winsorized mean
replaces \eqn{x_{(1)}, \dots, x_{(g)}} by \eqn{x_{(g+1)}} and
\eqn{x_{(n-g+1)}, \dots, x_{(n)}} by \eqn{x_{(n-g)}} before averaging all
\eqn{n} values. At \code{trim = 0.5} both return the median, as \code{mean()} does.

A \code{trim} that is not a single number in \eqn{[0, 0.5]} is an error. An
empty \code{x}, or any \code{NA}/\code{NaN} in \code{x}, gives \code{NaN} (missing
values are not
removed). A character, factor or list \code{x} is refused
(\code{"must be numeric"}). Both sort a copy of \code{x}, so the cost is
\eqn{O(n \log n)}.

}
\section{Reproducible uniforms shared with morie's Python arm (splitmix64) (\code{cunif})}{

Returns \code{n} pseudo-random numbers on [0, 1) from a 64-bit seed with
the splitmix64 generator, the same numbers morie's Python computes for
the same seed. Use it where the R and Python arms must draw identical
\code{"random"} values so that their results agree: the within-day jitter of
tied event dates in the TPS Hawkes fits, or a subsample.


splitmix64 (Steele, Lea & Flood 2014) advances a 64-bit state by the
constant \code{0x9E3779B97F4A7C15} and mixes it with two
multiply-xorshift rounds; the top 53 bits of each output divided by
\eqn{2^{53}} give a double in [0, 1). The stream depends only on
\code{seed}: R's own generator and \code{set.seed()} are neither used nor
changed. It is not a statistical replacement for R's generators.

Errors: \code{n} not one non-negative whole number; \code{seed} not one
whole number in \eqn{[0, 2^{53})}.

}
\section{The Community Well-Being index of a community (\code{cwbscr})}{

Indigenous Services Canada's Community Well-Being (CWB) index: income,
education, housing and labour force activity, each scored from 0 to 100, and
their mean, from census profile figures.


The components, as the index's methodology sets them out (Penney,
O'Sullivan and Senecal 2012; O'Sullivan and McHardy 2013; Indigenous Services
Canada's reports on trends, 1981 to 2016 and 2021): \describe{
\item{income}{\eqn{100 (\log y - \log a) / (\log b - \log a)} for income per
capita \eqn{y} (total income over total population) between the bounds
\eqn{a} and \eqn{b} (2,650 and 75,000 dollars in the 2016 and 2021 series;
2,000 and 40,000 in the earlier ones), kept between 0 and 100 here.}
\item{education}{two thirds of the percentage aged 20 and over with at least
a high school certificate, plus one third of the percentage aged 25 and over
with a university degree at the bachelor's level or above.}
\item{housing}{half the percentage of people in dwellings with no more than
one person per room, plus half the percentage in dwellings that need no major
repairs.} \item{labour}{half the participation rate, plus half the employment
rate of those participating (ages 20 to 64).} } The index is the mean of the
four. Indigenous Services Canada computes it from unrounded census microdata,
scores only communities of 65 people or more and suppresses the components of
communities under 250 people or 40 households: scores from published, rounded
profile figures come close to the published index but need not equal it, and
a small community's should be treated as the Department would. The full
current methodology is available from the Department on request. The index
measures socio-economic conditions as the census counts them; it says nothing
of culture, language or relationship to land, and is not a measure of
wellness as First Nations and Inuit define it. The CWB is Indigenous Services
Canada's index, with bounds in the Canadian dollars of its series: for
another country, set \code{bounds} in its currency and read the result as a
CWB-style score, not comparable with Canada's.

}
\section{Weighted mean and variance (C backend) (\code{cwtd})}{

The weighted mean and weighted variance of a numeric vector, for data
where some observations count for more than others: an average over
areas weighted by population, or measurements weighted by how precise
each one is. Both come from the compiled core in one pass.


The mean is \eqn{\bar x_w = \sum_i w_i x_i / \sum_i w_i}. The weights
are treated as RELIABILITY weights (how precisely each observation is
known), so the variance is
\deqn{s_w^2 = \frac{\sum_i w_i (x_i - \bar x_w)^2}
  {\sum_i w_i - \sum_i w_i^2 / \sum_i w_i},}
the unbiased estimator under that reading. With every weight equal to 1
it reduces exactly to \code{\link[stats:var]{stats::var()}}. Frequency weights
(a weight of
3
meaning three identical rows) call for the denominator
\eqn{\sum w - 1} instead, and survey design weights call for a
design-based variance, so do not use this variance for those.

Refusals: \code{x} and \code{w} of different lengths
(\code{"must have the same length"}), any negative weight
(\code{"must be non-negative"}), and a character, factor or list argument
(\code{"must be numeric"}). All-zero weights, or an \code{NA} in either vector,
give \code{NaN} for both entries.

}
\section{Calibrate the drift screens on data known not to have drifted (\code{drftcal})}{

\code{\link[=cpsdrft]{cpsdrft()}} flags a column when a
Kolmogorov-Smirnov, chi-square
or population-stability screen fires. How often that happens when
nothing has changed is the false-alarm rate of the screen on this
capsule, and it depends on the columns, their sizes and \code{alpha}. This
estimates it by splitting the same data at random into two halves
\code{n} times and running the screens on the halves, which is the null of
\dQuote{a re-fetch of identical data}. A capsule whose screens fire on 30
percent of identical re-fetches needs a smaller \code{alpha} or fewer screened
columns before a drift verdict means anything.


Each split draws \code{floor(nrow(data) / 2)} rows at random as the
reference and uses the rest as the current table, then runs
\code{\link{cpsdrft}} on the pair. A column's false-alarm rate is
the share of splits on which it was flagged; \code{anyflag} is the share
of splits on which any column was. Each half has half the rows of the
real data, so the rates describe a comparison at that size: smaller
samples make the p-value screens less sensitive, and the PSI screen only
counts once both halves reach \code{psiminn} rows.

The splits are drawn under \code{seed} and the caller's random number
stream is restored afterwards (\code{seed = NULL} uses and advances the
current stream instead). Run time is about \code{n} times one
\code{cpsdrft()} call; a progress bar is shown in an interactive
session.

Errors: \code{data} not a data frame with at least four rows; \code{n}
not a whole number of at least 1; any error from \code{cpsdrft()}.

}
\section{Chi-square test for a categorical column (\code{drftchisq})}{

Tests whether the category counts of a new sample agree with a reference
distribution that is taken as known, such as proportions fixed by a
specification or a published breakdown. It is Pearson's chi-square
goodness-of-fit test. When the reference is itself a sample, use
\code{\link[=drfthomog]{drfthomog()}}, which accounts for the
reference's own sampling
error.


Pearson's chi-square goodness-of-fit statistic comparing observed
category counts with the proportions a capsule was pinned against. Use
it where \code{\link[=drftks]{drftks()}} cannot apply, because the
column is a factor or a set of codes rather than a number.

Categories present in one argument and not the other are aligned by
name, so a vanished category registers as a shortfall against its
expected count.

A category that OCCURS but which the reference gives probability zero
contradicts the pinned distribution outright, and its chi-square term is
unbounded; \code{statistic} is then \code{Inf} and \code{p_value} is
\code{0}. If a new category is a legitimate possibility rather than a
contradiction -- which it usually is when the reference is itself a
finite sample -- use
\code{\link[=drfthomog]{drfthomog()}} instead.

With \eqn{O_j} the observed counts and \eqn{E_j = N e_j / \sum e} the
reference scaled to the observed total \eqn{N},
\deqn{X^2 = \sum_j \frac{(O_j - E_j)^2}{E_j}}
over the categories with \eqn{E_j > 0}, on \eqn{k - 1} degrees of freedom.
The p-value is the upper tail of the chi-square distribution, computed
directly (not as one minus the lower tail), so it does not round to zero
early. With a single category there is nothing to test: \code{df} is 0 and
both p-values are \code{NA}. The chi-square approximation is poor when
expected counts are below about 5;
\code{\link[stats:chisq.test]{stats::chisq.test()}} with
\code{simulate.p.value = TRUE} is an alternative there.

Errors: a numeric vector without names; negative, infinite or missing
counts; a total of zero on either side.

}
\section{Chi-square test of homogeneity for two categorical samples (\code{drfthomog})}{

Tests whether two samples of a categorical variable (for example race,
offence type or region in an old and a new data extract) were drawn from
the same distribution, by Pearson's chi-square on the 2-by-k contingency
table of their counts. Use it to ask whether the mix of categories has
changed between two samples; it is the categorical test that
\code{\link[=cpsdrft]{cpsdrft()}} runs.


With pooled shares \eqn{\hat\pi_j = (x_j + y_j)/(n_x + n_y)} and
expected counts \eqn{n_x \hat\pi_j} and \eqn{n_y \hat\pi_j}, \deqn{X^2 =
\sum_j \frac{(x_j - n_x\hat\pi_j)^2}{n_x\hat\pi_j} + \frac{(y_j -
n_y\hat\pi_j)^2}{n_y\hat\pi_j}} on \eqn{k - 1} degrees of freedom. Three
branches, named in the \code{method} attribute: \itemize{ \item
\code{"chi-square approximation"}: every expected count is at least 5; the p-value
is the chi-square upper tail. \item
\code{"Monte Carlo permutation (small expected counts)"}: some expected count is
below 5; the p-value then comes from
\code{\link[stats:chisq.test]{stats::chisq.test()}} with
\code{simulate.p.value = TRUE} and \code{B = 10000} tables with the same margins, drawn
under \code{seed}. \item \code{"inapplicable: ..."}: a single category, or fewer than
two observations per category (for example two disjoint sets of dates); no
test has power there, so \code{p_value} is \code{NA} rather than 1. }

Errors: a numeric vector without names; negative, infinite or missing
counts; an empty sample.

\subsection{Why this and not \code{\link[=drftchisq]{drftchisq()}}}{
\code{\link[=drftchisq]{drftchisq()}} compares observed counts
against a distribution taken as KNOWN -- proportions fixed by a
specification. When the reference is itself a finite sample, that
treatment ignores the reference's own sampling error, understates the
variance of the comparison, and so reports drift too readily. A
homogeneity test estimates the shared distribution from the pooled
margins and carries the uncertainty of both samples, which is the right
test when comparing a pinned extract with a fresh fetch.
\code{\link[=cpsdrft]{cpsdrft()}} therefore uses this one.

Categories present in only one sample are aligned by name and given zero
counts, so an appearing or vanishing level registers.
}
}
\section{Two-sample Kolmogorov-Smirnov test (C backend) (\code{drftks})}{

Tests whether two numeric samples come from the same distribution, for
example a column in a pinned data extract and the same column in a fresh
download. It needs no assumption about the shape of either distribution,
and it reacts to any kind of change: a shift, a change in spread, or a
change in shape. It is the numeric test that
\code{\link[=cpsdrft]{cpsdrft()}} runs on
every shared numeric or date column.


The statistic is the largest vertical gap between the two empirical
distribution functions, with the asymptotic two-sided p-value from the
Kolmogorov distribution. Distribution-free: it assumes nothing about the
shape of either sample, which is what makes it the right first test on a
column whose distribution was never specified.

The p-value is the ASYMPTOTIC one, \eqn{2\sum_k (-1)^{k-1} e^{-2k^2t^2}}
with \eqn{t = \sqrt{n_{\mathrm{eff}}}D}. It is accurate for moderate
samples and conservative for small ones; for an exact small-sample
p-value use \code{\link[stats:ks.test]{stats::ks.test()}}. Ties are
handled by comparing the two EDFs at each distinct value, so tied data
does not produce a warning the way \code{ks.test()} does.

Missing values are dropped. Errors: non-numeric input (character,
factor, list), any infinite value, or no non-missing value left in
either sample. One value per sample is enough to compute the statistic,
but the p-value is only meaningful for samples of a few dozen or more.

}
\section{Population stability index and Jensen-Shannon divergence (C backend) (\code{drftpsi})}{

Two effect-size summaries of how far the distribution of a numeric
column has moved from a reference sample. Both samples are binned on the
reference's quantiles and the two sets of bin shares are compared. Unlike
a p-value they do not grow with the sample size, so they say how large a
shift is rather than whether it is detectable.
\code{\link[=cpsdrft]{cpsdrft()}} reports
both for every numeric column.


Binning: values are rounded to 12 significant digits (so a formatting
difference between two releases does not move tied values across an
edge), the \code{bins + 1} quantiles of \code{x} are computed, duplicates are
removed, and the interior quantiles become right-closed cut points with
open ends at \eqn{\pm\infty}. When the reference has fewer than three
distinct quantiles (a constant or nearly constant column), every distinct
quantile is a cut point instead. The bin shares \eqn{p_i} (reference) and
\eqn{q_i} (new) are the proportions of each sample in each bin.

The population stability index is
\eqn{\sum_i (p_i - q_i)\log(p_i/q_i)} -- the symmetrised
Kullback-Leibler divergence of the two discrete distributions. The
conventional reading, from credit-risk monitoring where it originates,
is that below 0.1 is stable, 0.1 to 0.25 warrants a look, and above 0.25
is a material shift.

The Jensen-Shannon divergence is
\eqn{\tfrac12 KL(p\|m) + \tfrac12 KL(q\|m)} with \eqn{m} the mixture
\eqn{(p+q)/2}. Unlike PSI it is bounded -- by \eqn{\log 2} in nats --
so it is comparable across columns with different numbers of bins, and
it is finite even when a category is absent from one side.

Empty bins are floored at \code{eps} for the PSI only, since
\eqn{\log(0)} would otherwise send it to infinity on a single missing
category.

Missing values are dropped. Errors: non-numeric or infinite input, an
empty sample, \code{bins} not a whole number from 2 to 1,000,000, \code{eps} not
strictly between 0 and 1. The PSI bands quoted above are heuristics with
no calibrated null distribution; on a few hundred rows binning noise alone
can exceed 0.25 (see \code{psiminn} in
\code{\link[=cpsdrft]{cpsdrft()}}).

}
\section{Drop empty or constant columns and rows (\code{drp})}{

\code{drpempty()} removes rows or columns that are entirely missing.
\code{drpconst()} removes columns that hold a single distinct value. They are
the counterparts of the janitor functions \code{remove_empty()} and
\code{remove_constant()}. Use them after reading a spreadsheet export, which
often carries blank padding rows, empty columns and columns that repeat one
value (a year, a jurisdiction) on every row.


A constant column carries no information and breaks anything that scales
by variance, so it is worth removing -- but it is also a FINDING. A
column that was informative in the pinned capsule and is constant in a
fresh fetch means the source changed, so check
\code{\link[=cpsdrft]{cpsdrft()}} before deleting it and
moving on.

\code{drpempty()} removes all-\code{NA} columns first, then all-\code{NA}
rows among the remaining columns, and resets the row names. An empty
string is a value, not missing. \code{drpconst()} counts the distinct
non-missing values of each column (with \code{naasval = TRUE},
\code{NA} counts as a value), so an all-\code{NA} column is also dropped
by default. Neither function modifies anything in place.

Errors: \code{data} not a data frame (or with missing or duplicated names);
\code{which} other than \code{"rows"} and/or \code{"cols"}.

}
\section{Fit and rank candidate distributions (\code{dstfit})}{

Fits candidate distributions to one numeric variable by maximum likelihood,
ranks them by AIC, and reports for each the BIC, a Kolmogorov-Smirnov
distance, an Anderson-Darling statistic and percentile bootstrap intervals
for its parameters. A Hill estimate of the tail index is added for positive
data. Everything is base R.


The families and their parameters: \code{normal} (\code{mean}, \code{sd}),
\code{lognormal} (\code{meanlog}, \code{sdlog}), \code{exponential} (rate),
\code{gamma} (shape, rate), \code{weibull} (shape, scale), \code{t} (location, scale,
df: a location-scale Student t), \code{pareto} (\code{xmin}, \code{alpha}, with
\code{xmin} the smallest value, its maximum likelihood estimate), \code{beta}
(shape1, shape2) for proportions, and for counts \code{poisson} (lambda),
\code{negbin} (size, mu), \code{zip} (pi, lambda) and \code{zinb} (pi, size, mu), the
zero-inflated forms with \code{pi} the share of structural zeros. The normal,
lognormal, exponential, Pareto and Poisson estimates are closed form; the
negative binomial searches its size alone (its mu estimate is the mean);
the rest are maximised by \code{optim()} on a log or logit scale, Nelder-Mead
then BFGS.

With \code{fams = NULL} every family the data allow is fitted: for whole numbers
of 0 or more the count families; otherwise the positive families for values
above 0 (\code{exponential} for values of 0 or more) and \code{beta} for values
strictly between 0 and 1; and \code{normal} and \code{t} always. A family named in
\code{fams} that the data do not allow is refused. A fit that fails (the optimiser
stops at a non-finite likelihood) is a row with \code{converged = FALSE} and no
statistics.

AIC is \eqn{2k - 2\ell} and BIC \eqn{k \log n - 2\ell}. The
Kolmogorov-Smirnov and Anderson-Darling statistics use the fitted parameters,
so their usual null distributions do not apply; they rank fits, they are not
tests. The bootstrap resamples the data \code{nboot} times and refits; the
interval is the percentile interval at \code{conflvl}. The Hill estimator uses the
\code{k} largest values (default \eqn{\lfloor\sqrt n\rfloor}): \eqn{\hat\alpha = k
/ \sum_{i \le k} \log(x_{(n-i+1)} / x_{(n-k)})}, with the asymptotic interval
\eqn{\hat\alpha (1 \pm z / \sqrt k)}.

Missing values are dropped and counted (\code{nmiss}). Errors: \code{x} not numeric, an
infinite value, fewer than five values, all values equal, an unknown family
or one the data do not allow. The bootstrap is seeded with \code{seed} for this
call only; the session's random stream is left as it was.

}
\section{Distinct-value count in fixed memory (\code{dstn})}{

HyperLogLog: estimates how many distinct values a column holds using a
fixed 4-byte register per bucket -- 64 KB at the default \code{p = 14}
-- regardless of the column's length or cardinality. Exact counting
needs memory proportional to the number of distinct values, which is the
thing you cannot afford on a capsule member of unknown size.
\code{dstnskch()} builds or extends the registers,
\code{dstncnt()} turns them into an estimate, and
\code{skchmrg()} combines two sketches.


Each value is hashed and the first \code{p} bits pick one of \eqn{m = 2^p}
registers; the register keeps the longest run of leading zeros (plus one)
seen in the remaining bits. The estimate is the bias-corrected harmonic
mean \eqn{\alpha_m m^2 / \sum_j 2^{-M_j}} of Flajolet et al. (2007).

The estimate carries a relative standard error of about
\code{1.04 / sqrt(2^p)}, so 0.8\% at the default. It is an ESTIMATE: use
\code{length(unique(x))} when the column fits in memory and an exact
answer matters. Below roughly \code{2.5 * 2^p} distinct values the
estimator switches to linear counting, which is near-exact in that
range (the estimate of one value is about 1.00003, not 1).

Values are hashed with the package's SHA-256, so the sketch is identical
on every platform and across sessions. Values are compared as text
(\code{as.character()}), so \code{1}, \code{1.0} and \code{"1"} are one
value. Long vectors are processed in blocks of a million with a progress
bar on stderr unless \code{options(morie.quiet = TRUE)}; the registers are
the same as in one pass. Since a register only keeps a maximum, folding
chunks with \code{regstr} and merging separate sketches with
\code{skchmrg()} give the same registers as one sketch of all the
data.

Errors: \code{p} not a whole number from 4 to 20; \code{regstr} not of
length \eqn{2^p}; registers that are not whole numbers from 0 to 64; two
sketches of different sizes.

}
\section{Do distinct groups differ? A heterogeneity test before pooling (\code{dstntst})}{

Tests whether the estimates of one indicator for distinct groups (First
Nations, Metis and Inuit; Aboriginal and Torres Strait Islander people; any
groups with published intervals) differ more than their intervals allow, and
says how much of their spread is real: the evidence for reporting each group
distinctly rather than as one pooled figure.


With estimates \eqn{y_g}, standard errors \eqn{s_g} from the
published intervals and weights \eqn{w_g = 1/s_g^2}, Cochran's \eqn{Q = \sum
w_g (y_g - \bar y_w)^2} has a chi-squared distribution on \eqn{G - 1} degrees
of freedom when the groups share one value, and \eqn{I^2 = \max(0, (Q -
(G-1))/Q)} is the share of the spread that is real rather than sampling error
(Higgins and Thompson 2002). A pooled figure is a weighted mean of different
populations whenever \eqn{I^2} is large; the population-weighted total
Statistics Canada publishes also depends on how many people are in each
group, so it is mostly a First Nations figure where First Nations people are
most of the Indigenous population. Rows that pool groups are left out
(\code{pooled}; see \code{\link{indgap}}); every other row is included, so
drop the reference group (non-Indigenous people) yourself, and never test
overlapping groups (\code{"alone"} beside \dQuote{alone or in combination})
together: they are not independent. With two or three groups the test has
little power and \eqn{I^2} is imprecise; a large \eqn{p} is not evidence that
the groups are the same.

}
\section{Where is this computation running? (\code{dtctloc})}{

Finds a location code for \code{\link{co2int}} without any network access, in
this order: \enumerate{ \item the \code{RMBL_LOCATION} environment variable
(any code or name the table knows); \item \code{CODECARBON_COUNTRY_ISO_CODE}
(alpha-3), the codecarbon variable, so a machine already configured for
codecarbon needs nothing more; \item the system time zone, mapped to its
country through the IANA zone tables (\code{America/Toronto} is Canada,
\code{Europe/Berlin} Germany); \item the territory in the locale
(\code{en_CA.UTF-8} is Canada). } When none of these yields a location in the
table the answer is \code{"WORLD"}, and the method says so, so a report never
silently applies one country's grid to another's computation.


The zone table (\code{inst/extdata/timezone_countries.csv}, built by
\code{tools/build_timezones.R} from the IANA database) holds every zone
of \code{zone.tab}, which names exactly one country per zone
(\code{Europe/Stockholm} is Sweden even though the database now keeps
its rules under \code{Europe/Berlin}), plus the aliases and old names of
the \code{backward} file under their own country: the country of the zone
the alias stood for before the database merged it (\code{Iceland} is
\code{Atlantic/Reykjavik}, Iceland, not Abidjan's Ivory Coast), the
link target's country when that target serves a single country
(\code{Asia/Calcutta}, \code{US/Eastern}), and a reviewed list for the
rest (\code{Atlantic/Jan_Mayen}, \code{America/Coral_Harbour},
\code{Canada/Eastern}). Every geographic zone \code{OlsonNames()} lists
resolves to a country or territory; a territory the carbon table has no
row of its own for (Monaco, Jersey, Vaduz, the Antarctic stations) uses
the grid of the country it draws on or the world average, and the method
says which. The \code{Etc/}, \code{UTC}, fixed-offset and generic zones
(\code{CET}, \code{EST}, \code{WET}) name no country and fall through
to the locale.

}
\section{Wellness and distress as two continua (\code{dualcont})}{

For each group, one wellness indicator against one distress indicator, each
with its published interval, and the ratio of the two: the dual-continua view
of mental health, in which wellness is not the absence of distress and is
measured in its own right.


Keyes (2002, 2005) showed that flourishing and mental illness are
correlated but distinct axes: a person, or a population, can carry distress
and also wellness. That is how Indigenous scholars of mental health describe
it too, as wellness and as a process of healing rather than as illness alone
(Stewart 2008). Plotting the groups on both axes keeps a strength visible
beside the burden it sits next to. The \code{strratio} is \eqn{R = W / D},
wellness over distress, with the log-normal interval \eqn{\exp\{\log R \pm
z\sqrt{\sigma_W^2 + \sigma_D^2}\}} from the two published intervals: above 1,
more people report the wellness than the distress. The two estimates come
from the same respondents; their covariance is not published, so the interval
treats them as independent and is too narrow when they are negatively
correlated, as answers about wellness and distress usually are. Any two
indicators on one scale can be set against each other.

\subsection{Acknowledgement}{
 This estimator puts to quantitative use the
framework of Professor Suzanne Stewart (Yellowknives Dene First Nation,
University of Toronto).

See the acknowledgements of the \code{first-nations-metis-inuit-health}
vignette.
}
}
\section{Empirical Bayes rates, shrunk toward the overall experience (\code{ebrates})}{

A small area's rate is mostly noise, so ranking areas by their raw ratios
puts the smallest areas at both ends of the table by construction. This
function borrows strength across areas: each area's ratio of observed to
expected is pulled toward the overall ratio by an amount that depends on
how little information the area carries. Use the shrunk estimates for
maps and rankings; use \code{\link{stdinc}} for each area's own evidence.


The area relative risks \eqn{\theta_a} are taken to come from a
gamma prior with shape \eqn{\nu} and rate \eqn{\alpha}. Its mean is the
overall ratio \eqn{m = \sum O_a / \sum E_a}, and its variance is estimated by
the method of moments, \deqn{s^2 = \frac{\sum_a E_a (\theta_a - m)^2}{\sum_a
E_a} - \frac{m}{\bar E},} with \eqn{\theta_a = O_a / E_a} and \eqn{\bar E}
the mean expected count; the subtracted term is the spread that Poisson
sampling alone would produce. Then \eqn{\alpha = m / s^2}, \eqn{\nu = m^2 /
s^2}, and the posterior mean \eqn{(O_a + \nu)/(E_a + \alpha)} is reported,
with shrinkage \eqn{\alpha / (E_a + \alpha)}. Where the expected count is
large the data dominate and the estimate barely moves; where it is small the
prior does, which is the intended behaviour and not a defect.

When the between-area variance estimate comes out at or below zero there
is no evidence of any real variation between areas, and every estimate
collapses to the overall rate. That is reported through \code{shrinkage}
(all ones) and \code{NA} prior parameters rather than hidden.

Errors: lengths that differ; missing, negative or infinite counts;
missing, infinite or non-positive expected counts; fewer than two areas.

}
\section{Compare two captured environments (\code{envdiff})}{

Reports what changed between the environment captured by one run and
another: the R version, the platform, and every package whose version
differs, was added, or disappeared. Use it when a result does not
reproduce, to see first whether the software around it changed.


This is the question a failed reproduction actually raises. A manifest
records the environment; comparing two manifests by eye across a few
hundred packages does not scale, and the one line that matters -- a
dependency that moved a minor version -- is exactly what gets missed.

Versions are compared as strings. A package recorded in \code{b} but not
in \code{a} (or recorded with an \code{NA} version in \code{a}) is
\code{"added"}; the reverse is \code{"removed"}. The operating-system
string, the capture time and the random number generator settings are
not compared. Any other field present in only one record, or different
in the two, is named in \code{fields} and makes them differ. Rows follow
the order of \code{a}'s packages, then \code{b}'s new ones.

Error: \code{a} or \code{b} that is not a list.

}
\section{An event study: the effect period by period around adoption (\code{evstudy})}{

Leads and lags of a policy's adoption, from a two-way fixed-effects
regression on indicators of the time since adoption, with a joint test that
the leads are zero (no effect before the policy, the testable part of
parallel trends).


With \eqn{G_i} the first treated period of unit \eqn{i} and \eqn{k =
t - G_i}, \deqn{Y_{it} = \sum_{k = -L, k \ne r}^{M} \gamma_k \mathbf 1(t -
G_i = k) + X_{it}'\theta + \delta_i + \mu_t + \varepsilon_{it},}{Y_it = sum_k
g_k 1(t - G_i = k) + X_it'th + d_i + m_t + e_it,} with the reference period
\eqn{r} (default -1, the period before adoption) left out. Times beyond the
window are binned into its end points (\code{bin = TRUE}), or dropped. Units
never treated have every indicator 0. The variance and degrees of freedom are
those of \code{\link{plndid}}. The pre-trend test is the Wald statistic
\eqn{W = \hat\gamma_{pre}'\hat V_{pre}^{-1}\hat\gamma_{pre}}, reported as
\eqn{F = W/q} on \eqn{q} and \eqn{G - 1} degrees of freedom.

With staggered adoption and effects that change over time, the lead and lag
coefficients can mix in effects from other periods (Sun and Abraham 2021);
\code{\link{stgatt}} gives the event-time effects free of that.

}
\section{Expand a banded frequency table into per-unit values (\code{expbands})}{

Turns a banded frequency table (labels and a count per band) into a
numeric vector with one value per unit, using the representative value of
each band from \code{\link{bandvals}}. The result can be passed to any
function that expects individual values, such as \code{\link{ginicoef}},
\code{mean()} or \code{quantile()}. Bands that cannot be parsed but have
units in them are an error by default, so a statistic never describes
only part of the data without saying so.


Each band's value is repeated \code{round(counts)} times, in band order.
Bands with an \code{NA} count are skipped. A band with an \code{NA} value
(unparsed label) and a positive count is an error unless
\code{drpunp = TRUE}, in which case its units are left out with a
warning that gives their number and labels.

Errors: \code{cnts} of the wrong length, non-numeric or negative; an
unplaceable band with units (by default); any error from
\code{\link{bandvals}}.

}
\section{Expected counts under indirect standardisation (\code{expcnts})}{

Computes, for each area (region, district, institution), the count it
would have if it experienced the overall rate in every stratum, given its
own population in each stratum. Comparing an area's observed count with
this expected count, rather than comparing raw rates, removes the part of
the difference that is explained by who lives in (or is held in) the
area. The result feeds \code{\link{stdinc}}, \code{\link{ebrates}} and
\code{\link{fnllim}}.


With \eqn{O_{as}} and \eqn{P_{as}} the count and population of area
\eqn{a} in stratum \eqn{s}, the reference rate of a stratum is pooled over
all areas, \eqn{r_s = \sum_a O_{as} / \sum_a P_{as}}, and
\deqn{E_a = \sum_s P_{as} r_s.}
Without strata the expected count is just the area's population times
the overall rate, which adjusts for size but not for composition. The
two are worth distinguishing: a region holding disproportionately many
young men will show an excess on the first and may show none on the
second, and only the second is evidence about the region.

Rows may repeat an area-stratum pair; they are summed. Rows with a
missing count, population, area or stratum are dropped. The output is
sorted by area label. Because the reference rates come from the same
data, \eqn{\sum_a E_a = \sum_a O_a}.

Errors: non-numeric, negative or infinite counts or populations; a
population of zero; \code{cnts}, \code{pop}, \code{area} or
\code{strata} of different lengths.

}
\section{Concentration index of exposure by income (\code{expconcidx})}{

Measures whether exposure to pollution is concentrated among
lower-income or higher-income people. The index runs from -1 (all the
exposure borne by the poorest) through 0 (exposure shared evenly across
income) to +1 (all of it borne by the richest); environmental-justice
analyses report it next to the burden.


Wagstaff, Paci and van Doorslaer (1991):
\deqn{CI = (2 / \mu) \, \mathrm{cov}(h_i, R_i)}
with \eqn{R_i = (rank_i - 0.5) / n} the fractional income rank (tied incomes
share their average rank, so the index does not depend on row order) and
the population covariance. Negative values mean lower-income units bear
more exposure. Both columns must be numeric: a factor or character income
is refused rather than ranked by its level codes, and exposures must be
non-negative.

Rows with a missing exposure or income are dropped. The interpretation
calls an index below -0.01 a burden on the poor, above 0.01 a burden on
the rich, and anything between an even distribution. Refusals: column
names that are not single strings or not in \code{data}; fewer than 2
complete rows; a non-numeric or infinite value; a negative exposure; an
income that takes one value only (no income gradient, so the index is
undefined); and a mean exposure of zero (the index divides by it). Income
only needs an
order: an amount, a quintile number or a rank all give the same index.

}
\section{Exposure-response estimate with a bootstrap sensitivity interval (\code{exprspplr})}{

Fits the partially linear exposure-response model with
\code{\link{plrcf}} (or any estimator with the same interface),
then re-fits it on \code{nboot} non-parametric resamples of the rows
for a percentile interval (Efron and Tibshirani 1993, chapter 13). The
bootstrap interval does not lean on the estimator's own standard error,
so it is a check on it: when the two disagree, the analytic one should
not be trusted alone.


Each resample draws \code{nrow(data)} rows with replacement and calls
\code{estr(resample, outcome, exposure, confounders)}; a resample on
which the estimator fails is skipped, and the run stops if fewer than 10
succeed. The interval is the 2.5\% and 97.5\% type-7 quantiles of the
replicate estimates, and \code{seboot} their standard deviation.
Resampling uses \code{rstate} and restores R's own random stream
afterwards. The cost is \code{nboot + 1} estimator calls; with
\code{\link{plrcf}} at n = 20000 and 100 resamples that is a
few seconds. A progress bar on stderr follows the resamples when a person
is watching (\code{options(morie.progress = TRUE)} outside an
interactive session; \code{options(morie.quiet = TRUE)} silences it).

Refusals: column names that are not strings, an \code{nboot} that
is not a single non-negative whole number, an estimator that is not a
function, and the estimator's own errors on the full sample.

}
\section{A dose-response across generations of exposure (\code{exptrnd})}{

For counts of an outcome (suicidal thoughts, distress) among people with 0, 1
or 2 generations of residential school attendance in their family (or any
ordered exposure), the odds ratio of each level against the lowest level,
with Woolf intervals, and the Cochran-Armitage test for a trend across the
levels.


With \eqn{a_k} cases and \eqn{b_k = n_k - a_k} non-cases at level
\eqn{k}, the odds ratio against the lowest level is
\eqn{(a_k/b_k)/(a_1/b_1)}, with Woolf's interval \eqn{\exp\{\log OR \pm
z\sqrt{1/a_k + 1/b_k + 1/a_1 + 1/b_1}\}}. When any cell is empty, one half is
added to every cell of every level (Haldane-Anscombe), so every odds ratio is
finite. The trend test is the Cochran-Armitage test (\code{prop.trend.test})
with the levels as scores. Counts must be unweighted. For a complex survey,
take the weighted analysis from the survey itself (\code{\link{svydes}}):
this function is for published or aggregated counts.

}
\section{Funnel-plot control limits (\code{fnllim})}{

Gives the range within which an area's ratio of observed to expected
would fall, for a given expected count, if the area were no different
from the overall experience. Plotted against the expected count these
limits form a funnel: wide for small areas, narrow for large ones. A
funnel plot is the alternative to a league table: it shows directly that
a small area's ratio can wander far from one without meaning anything.


For expected count \eqn{E}, target ratio \eqn{\rho} and coverage
\eqn{1 - a}, the limits are
\deqn{\frac{Q(a/2;\ \rho E)}{E},\quad \frac{Q(1 - a/2;\ \rho E)}{E}}
with \eqn{Q} the Poisson quantile function. They are exact Poisson
quantiles divided by the expected count, so they are the discrete
counterpart of the usual normal funnel and stay correct at the small
expected counts where the normal version goes below zero. Because the
Poisson is discrete the limits move in steps of \eqn{1/E}. The usual pair
of levels, 0.95 and 0.998, corresponds to about two and three standard
deviations.

Errors: non-positive, infinite or missing expected counts (missing
values are dropped); a non-positive \code{target}; a level outside
(0, 1).

}
\section{Everyday equivalents of a quantity of CO2-equivalent (\code{fpeqv})}{

Converts grams of CO2-equivalent into two everyday comparisons:
kilometres driven in an average European passenger car (175 gCO2/km) and
tree-months of carbon sequestration (917 gCO2 per tree per month), the two
comparisons the Green Algorithms calculator prints, with their sources.
Use it to make the \code{co2eg} of \code{\link{co2fp}}
easier to read in a report.


The conversions are plain divisions: \eqn{\mathrm{km} = g / 175} and
\eqn{\mathrm{tree\ months} = g / 917}. Both factors are averages and the
comparisons are illustrations, not offsets: a tree-month is the carbon one
mature tree takes up in a month, not a promise that planting one cancels
the emission. Errors when \code{co2eg} is not a single finite,
non-negative number.

}
\section{Frequency table for one column (\code{freqtbl})}{

Counts how often each value of a column occurs, with percentages of all
rows and of the non-missing rows, and missing values counted as their
own row. It is the first look at a categorical variable (a charge type,
a region, a response category), and the counterpart of
\code{janitor::tabyl()}.


Two percentage columns, because both questions get asked and conflating
them is how missingness gets hidden: \code{pct} is the share of ALL
rows, \code{pctvalid} the share of rows where the value is present.
When a column is 40\% missing those two differ enormously, and only the
second describes the values that are actually there.

Values are tabulated as text (\code{as.character()}), so numbers and
factors are counted by their printed value, and factor levels that do not
occur get no row. Rows are sorted by descending count (ties in the order
\code{table()} gives) or kept in sorted value order with
\code{sort = FALSE}. Beyond \code{maxlvl} distinct values, the rest are
folded into one \code{"(other)"} row so the percentages still sum to 100.
The missing row, when there is one, comes last, with \code{value} \code{NA}
and \code{pctvalid} \code{NA}. An empty input gives a table with no rows.
The print method adds a bar column.

Errors: a data frame without \code{col}; a \code{col} that is not
in \code{data}; \code{maxlvl} not one positive whole number.

}
\section{How deficit-framed is a set of results? (\code{frmaud})}{

Counts how many of the indicators in a report measure distress, deficit or
disparity and how many measure wellness or strength, and names any group
reported on deficits alone.


Walter (2016) shows that statistics about Indigenous peoples cluster
around five Ds: disparity, deprivation, disadvantage, dysfunction and
difference. Results built only of those describe Indigenous peoples as their
problems. This audit does not measure anything about people; it measures the
report: the share of its indicators that are deficit-framed, overall and per
group, so a report can be balanced before it is published. Pair each gap with
a strength-framed level (\code{\link{welprof}}, \code{\link{dualcont}}).

}
\section{Generations of residential school attendance in a family (\code{genexpo})}{

Codes the intergenerational exposure used in the epidemiology of Indian
Residential Schools: how many generations before the respondent attended, 0
(neither parents nor grandparents), 1 (parents or grandparents) or 2 (both a
parent and a grandparent), as in McQuaid et al. (2017).


Each answer is \code{TRUE} (attended), \code{FALSE} (did not) or
\code{NA} (not known). An unknown answer may hide an attendance, so the count
is unknown (\code{NA}) whenever an unknown answer could change it: always
when the known answer is \code{FALSE}, and, with \code{partial = "na"} (the
default), also when the known answer is \code{TRUE} (the count is 1 or 2).
\code{partial = "lowerbnd"} codes that case 1, a lower bound: it keeps the
person but can classify them a level too low, which biases a trend toward no
effect.

}
\section{Healing as a process: change in published indicators between two periods (\code{healchg})}{

For each group and indicator, the change between two survey periods with its
confidence interval, wellness indicators first: change over time read as
Indigenous scholars describe mental health, as a process of healing, not as a
fixed deficit.


Stewart (2008) describes Indigenous mental health as wellness and as
a process of healing; a process is seen in change. The change \eqn{p_2 - p_1}
has the interval \eqn{p_2 - p_1 \pm z\sqrt{s_1^2 + s_2^2}}, with the standard
errors from the published intervals and the two periods' samples independent
(separate cycles of a survey are). A change is only as comparable as the two
periods' questions and designs: Statistics Canada flags breaks in a series,
and a change across one is not a change in the people.

\subsection{Acknowledgement}{
 This estimator puts to quantitative use the
framework of Professor Suzanne Stewart (Yellowknives Dene First Nation,
University of Toronto).

See the acknowledgements of the \code{first-nations-metis-inuit-health}
vignette.
}
}
\section{Tail index of a heavy-tailed count (\code{hilltlidx})}{

The Clauset-Shalizi-Newman maximum-likelihood estimator for a discrete
power law above a threshold. An exponent near 2 or below means the mean
is barely defined and the observed maximum is not informative about the
next one, which is the substantive point when a few units dominate a
total. Use it on counts per unit (placements per person, incidents per
address) to judge whether the largest values are a heavy tail rather than
a few outliers, and read \code{ks} and \code{reliable} before quoting the
exponent.


For a power law \eqn{p(x) \propto x^{-\alpha}} above \eqn{x_{min}}:
\itemize{
\item discrete data, exact (the default): the log-likelihood of the
zeta distribution truncated at \eqn{x_{min}},
\eqn{-n \log \zeta(\alpha, x_{min}) - \alpha \sum \log x_i}, is
maximised over \eqn{\alpha} in \eqn{(1.0001, 25)} with
\code{stats::optimize()}; \eqn{\zeta} is
\code{\link[=hurwzeta]{hurwzeta()}}. The
standard error comes from the observed information, by a numerical
second derivative.
\item continuous data (\code{discrete = FALSE}): the Hill estimator
\eqn{\hat\alpha = 1 + n / \sum \log(x_i / x_{min})}, with standard
error \eqn{(\hat\alpha - 1)/\sqrt{n}}.
\item discrete data with \code{approx = TRUE}: the same closed form with
\eqn{x_{min} - 1/2} in place of \eqn{x_{min}}.
}
\code{ks} is the Kolmogorov-Smirnov distance between the fitted
distribution and the tail, computed once per distinct value so that ties
(most counts are ties) are handled correctly.

Only finite positive values of \code{x} are used; the rest are dropped
silently. When the tail has fewer than \code{mintl} values, or every
tail value is the same, \code{alpha} is \code{NA} and \code{method} says
why. An estimate at the optimiser's bound is flagged in \code{method} and
is not \code{reliable}. Errors: no positive finite value in \code{x};
\code{xmin} that is not a single positive number (logical, factor and text
are refused); \code{discrete} or \code{approx} not \code{TRUE} or
\code{FALSE}.

}
\section{Holistic balance: how evenly wellness is held across the domains of a whole person (\code{holbal})}{

For each group, from published percentages of wellness in each holistic
domain (physical, emotional, mental, spiritual, or the domains a community
names), the overall level of wellness and how balanced it is across the
domains, with Monte Carlo intervals from the published ones.


Indigenous understandings of mental health are holistic: wellness is
a balance among the domains of a person, and illness a loss of that balance
(Stewart 2008; Gabriel, Mirza and Stewart 2022). A single indicator, or an
average of indicators, cannot show balance: a group with 80\% in two domains
and 20\% in two others has the same average as one with 50\% in all four. This
method, which is ours and inspired by that work rather than taken from it,
measures balance as the ratio of the weighted geometric to the weighted
arithmetic mean of the domain levels \eqn{p_k}: \deqn{B = \exp\left(\sum_k
w_k \log p_k\right) / \sum_k w_k p_k,} one less Atkinson's (1970) index with
inequality aversion 1. \eqn{B = 1} exactly when every domain with a positive
weight is at the same level, and it falls toward 0 as one domain falls behind
the others; it does not depend on the overall level, which is reported beside
it (\code{level}, \eqn{\sum_k w_k p_k}) with the weakest domain.

The weights \code{w} say how much each domain counts. They are equal by
default; a community that holds its own view of the domains sets its own (the
CARE principle of authority to control, Carroll et al. 2020), and the result
says which weights it used.

Several indicators in one domain are averaged, their standard errors combined
as independent (they come from the same respondents, so that standard error
is too small). The interval for \eqn{B} comes from \code{reps} draws of every
domain level from a normal distribution on the logit scale with the standard
error of its published interval, the domains independent. \eqn{B} is at most
1 and reaches 1 only at equal levels, so noise in the levels tends to pull
the draws below \eqn{\hat B} (\eqn{B} is not concave; the direction of the
bias is seen in the draws, not guaranteed): the percentile interval is
shifted back by the draws' mean bias (\eqn{\bar B^* - \hat B}), kept inside
\eqn{(0, 1]} and widened if need be to contain \eqn{\hat B}. The level's
interval is normal. A group with a suppressed or missing domain, or one whose
published interval misses its own estimate, has no balance: the domain is not
imputed.

What the domains mean, and which indicators stand for each, is for the
communities to say; the published tables have few measures of spiritual
wellness, and a domain with no fitting indicator should be left out rather
than filled with another.

\subsection{Acknowledgement}{
 This estimator puts to quantitative use the
framework of Professor Suzanne Stewart (Yellowknives Dene First Nation,
University of Toronto).

See the acknowledgements of the \code{first-nations-metis-inuit-health}
vignette.
}
}
\section{Hot spots and how long they last (\code{hotpers})}{

Counts incidents (break-ins, shootings, calls for service) in square
grid cells for each period, measures how concentrated they are, picks out
the hot cells of each period and says how much the hot set of one period
overlaps the next. A hot spot that persists is a place problem; one that
moves from period to period is not, and the two call for different
responses.


Counts incidents in square cells of side \code{cell} (kilometres
for longitude and latitude, map units otherwise) for each
period and reports, per period: the incidents, the cells with
any, the share of the ever-active cells that holds half the
incidents (the law of crime concentration: a small share of places
holds half the incidents), the hot cells (the \code{top} share of the
ever-active cells with the most incidents, with the cells tied at the cut
included unless the tie would more than double the hot set) and
their share of the incidents, and the Jaccard
overlap of the hot set with the previous period's (shared hot
cells over cells hot in either). Per cell: the incidents in
all, and in how many periods it was hot.

The ever-active cells (a cell with at least one incident in
some period) are the base for the shares, so the empty land
and water inside a city's bounding box do not dilute the
concentration. The number of hot cells per period is
\eqn{k = \max(1, \lceil top \times n_{cells} \rceil)}.

Longitude and latitude are projected onto a flat map through the median
point (equirectangular, Earth radius 6371.0088 km), which is accurate for
a city or region; a warning is given when the incidents span more than
2000 km. The grid starts at the smallest projected coordinate. Points at
(0, 0), the raw exports' \dQuote{no location}, are dropped with a message, as
are incidents with a non-finite coordinate or a missing period; longitudes
across the antimeridian are taken on one side of it. When a tie empties a
period's hot set, its overlap with the neighbouring periods is \code{NA},
not 0. The plot method draws the concentration, the overlap and a map of
the cells.

Errors: \code{lon}, \code{lat} and \code{prd} of different lengths;
\code{cell} not one positive number; \code{top} not in (0, 1];
coordinates outside the degree ranges with \code{coords = "lonlat"}; fewer
than two usable incidents.

}
\section{Hurwitz zeta function (\code{hurwzeta})}{

Computes the Hurwitz zeta function
\eqn{\zeta(s, q) = \sum_{k \ge 0} (q + k)^{-s}} for a vector of exponents
\code{s} and one lower limit \code{q}. It is the normalising constant of
the discrete power law truncated below at \code{q}, which is why it is
here (see \code{\link[=hilltlidx]{hilltlidx()}}); \code{zeta(s, 1)} is the
Riemann zeta.


For \eqn{s > 1} and \eqn{q > 0} the series is evaluated in compiled code
by Euler-Maclaurin summation: direct terms, the integral of the tail, and
Bernoulli-number corrections. For \eqn{s < 1} the value is the analytic
continuation: exact Bernoulli polynomials for whole \eqn{s > -5}
(\eqn{\zeta(-n, q) = -B_{n+1}(q)/(n+1)}), Riemann's functional equation at
\eqn{q = 1}, Hurwitz's Fourier series for \eqn{s \le -5}, Hermite's
integral (by \code{stats::integrate()}) for \eqn{-5 < s < 1}, and the
asymptotic series for large \eqn{q}, with the shift
\eqn{\zeta(s, q) = q^{-s} + \zeta(s, q + 1)} to move \eqn{q} into range.
A negative non-integer \code{q} uses the reflection of its negative terms.

Values that do not exist are \code{NA}, not errors: \code{s = 1} (a pole),
\code{q} zero or a negative integer (poles), a fractional \code{s} with a
negative \code{q} (a complex value), and a non-finite \code{s}. Errors
when \code{s} or \code{q} is logical or not numeric, and when \code{q} is
not a single finite number.

}
\section{Compare published group estimates with a reference group (\code{indgap})}{

For published estimates with their confidence limits (percentages, rates,
years of life expectancy: any scale, with the limits on the same scale), the
ratio and the difference of each group to a reference group, with confidence
intervals worked from the published ones: First Nations, Metis and Inuit
against non-Indigenous people, Aboriginal and Torres Strait Islander people
against non-Indigenous Australians, Maori against non-Maori, or any groups
with published intervals.


Each published interval gives a standard error, \eqn{s = (u - l) /
(2 z)}, on the scale of the estimate for the difference and on the log scale,
\eqn{\sigma = (\log u - \log l) / (2 z)}, for the ratio, with \eqn{z =
\Phi^{-1}(1 - \alpha/2)}. This takes the interval as symmetric on that scale;
for asymmetric (gamma, logit, Wilson) limits it averages the two sides. With
a standard error, a coefficient of variation or a margin of error instead of
limits, make limits with \code{\link{limfrom}} first. The groups are treated
as independent samples, so the standard error of a difference is
\eqn{\sqrt{s_g^2 + s_r^2}} and of a log ratio \eqn{\sqrt{\sigma_g^2 +
\sigma_r^2}}. Disjoint domains of one survey are nearly independent but not
exactly (they share the design's strata and clusters): the intervals are
approximations, and the exact ones need the survey's replicate weights (for
Statistics Canada's surveys, in its Research Data Centres). The reference
must not contain the groups: compare with non-Indigenous people, not with a
total, whose covariance with each group is large and positive (the function
warns when the reference looks like a total). A lower limit of 0 (a limit cut
at zero) leaves the ratio's interval \code{NA}.

Distinctions-based: each group is compared on its own. A row that pools
groups is kept but marked \code{poogrp = TRUE}, since a pooled figure can
hide what differs between the groups it pools: name such rows in
\code{pooled} (by default labels beginning \code{"Total"}, \dQuote{Indigenous
identity}, \dQuote{Aboriginal identity} or \dQuote{Indigenous population} are
taken as pooled). A row flagged \code{E} (in the group or the reference) is
compared and marked; one flagged \code{F}, \code{x}, \code{..} or \code{...},
with no estimate, or whose published interval does not contain its own
estimate, is not compared. Other agencies' flags: \code{\link{qltyrcd}}.

}
\section{First Nations, Metis and Inuit health and mental health: bundled Statistics Canada excerpts (\code{indiex})}{

Small excerpts of Statistics Canada tables, bundled so that the examples and
vignettes run on published values without a network connection or a data
service key. Values are as published, with their 95\% limits and quality
flags; nothing is imputed (suppressed cells are \code{NA}).


\describe{ \item{\code{"health"}}{Table 13-10-0924-01, Health indicators for
First Nations people living off reserve, Metis and Inuit, by age group and
sex, four-year period estimates (Canadian Community Health Survey),
2015/2018 and 2019/2022; Canada, both sexes, the 27 indicators by age
group, with non-Indigenous people for comparison: the table behind The
Daily of 2025-02-13. Columns \code{period}, \code{group}, \code{age},
\code{indicator}, \code{estimate}, \code{lower}, \code{upper},
\code{quality}.} \item{\code{"mentalhealth"}}{Table 41-10-0067-01,
Self-perceived mental health of First Nations people living off reserve,
Metis and Inuit by age group and gender, 2022 (Indigenous Peoples Survey);
15 years and older, every region. Columns \code{region}, \code{group},
\code{rating}, \code{estimate}, \code{lower}, \code{upper},
\code{quality}.} \item{\code{"wellbeing"}}{Table 41-10-0082-01, Selected
characteristics of well-being and impacts of rising prices by First Nations
people living off reserve, Metis and Inuit, and gender, 2024; total of
genders. Columns \code{group}, \code{indicator}, \code{estimate},
\code{lower}, \code{upper}, \code{quality}.} \item{\code{"suiide"}}{Table
41-10-0021-01, Self-perceived mental health and suicidal thoughts by
Aboriginal identity, age group and sex, 2017 (Aboriginal Peoples Survey);
Canada, both sexes, by age. Columns \code{group}, \code{age},
\code{measure}, \code{estimate}, \code{lower}, \code{upper},
\code{quality}.} \item{\code{"censuspop"}}{The Indigenous Population
Profile, 2021 Census of Population (98-510-X2021001), Canada, the provinces
and the territories, total of genders, on and off reserve: the population
by age group, children and foster children, knowledge of Indigenous
languages, highest certificate (25 and over), labour force status, income
and low income, as published (read it with \code{\link{cnsprof}}).}
\item{\code{"lifeexp"}}{Table 17-10-0160-01, Life expectancy at birth of
Indigenous populations in Canada, 2006/2011 to 2016/2021, both sexes,
Canada: First Nations (Registered or Treaty Indians, on and off reserve,
and without registered status), Metis, Inuit and non-Indigenous people.
Columns \code{period}, \code{group}, \code{measure}, \code{estimate},
\code{lower}, \code{upper}, \code{quality}.} \item{\code{"infmort"}}{Table
17-10-0161-01, Infant mortality rates of Indigenous populations in Canada
(per 1,000 live births), 1994/1996 to 2014/2016, the same groups and
columns.} \item{\code{"censushh"}}{The same profile's households and
dwellings (98-510-X2021016), Indigenous and non-Indigenous households:
persons per room, housing suitability, dwelling condition and core housing
need.} }

The First Nations figures of the survey excerpts are for First Nations people
living off reserve: the surveys do not cover reserves, whose data are
governed by First Nations (see the First Nations Information Governance
Centre). Groups are as the tables name them, with \dQuote{Inuk (Inuit)}
written \code{"Inuit"}.

\subsection{Source}{
Statistics Canada tables, each with its DOI: \itemize{ \item
13-10-0924-01, DOI 10.25318/1310092401-eng; \item 41-10-0067-01,
DOI 10.25318/4110006701-eng; \item 41-10-0082-01,
DOI 10.25318/4110008201-eng; \item 41-10-0021-01,
DOI 10.25318/4110002101-eng; \item 17-10-0160-01,
DOI 10.25318/1710016001-eng; \item 17-10-0161-01,
DOI 10.25318/1710016101-eng. } Indigenous Population Profile, 2021 Census
of Population, catalogue 98-510-X2021001 and 98-510-X2021016. Reproduced and
distributed on an \dQuote{as is} basis with the permission of Statistics
Canada, under the Statistics Canada Open Licence:

statcan.gc.ca/en/terms-conditions/open-licence

Built by the scripts \code{indigenous_mental_health.R} and
\code{indigenous_census.R} in the \code{data-raw} folder of the source
package.
}
}
\section{The Indigenous health and wellbeing tables the data service holds (\code{indtabs})}{

Lists the First Nations, Metis and Inuit tables mirrored at the data service:
Statistics Canada's Indigenous-titled tables (\code{statcan_indigenous}) and
the 2021 Census Indigenous Population Profile (\code{census2021_ipp}), with
their descriptions, row counts and licences, searchable.


Needs a data service key: sign in once with \code{\link{dlogin}}.
Only openly licensed aggregate tables are mirrored. First Nations Information
Governance Centre data (the First Nations Regional Health Survey and its
companions) are governed by the OCAP(R) principles and are not; ask the
Centre (fnigc.ca; the site answers scripts with 403, archived copy
web.archive.org/web/20261001141317/fnigc.ca).

}
\section{Inline histogram for a numeric vector (\code{inlhist})}{

Draws a one-line sketch of a column's distribution, as block characters
(or ASCII where the console cannot render them). The point is density of
information: a mean and a standard deviation cannot tell you a column is
bimodal, skewed or has a gap, and this can, in the width of a table cell.
\code{\link[=profcols]{profcols()}} shows one for every numeric column.


Non-finite values (\code{NA}, \code{NaN}, \code{Inf}) are dropped. The
range of the rest is cut into \code{bins} equal-width bins (as
\code{graphics::hist()} with those breaks) and each bin's count is drawn
as one of eight Unicode block heights, scaled to the largest bin; an
empty bin is a space, and a bin with any values is at least the lowest
block. When the session is not UTF-8, or the environment variable
\code{RMBL_ASCII_ONLY} is set, five ASCII levels (\code{. : - = #}) are
used instead. A column with no spread gives one full block in the middle;
no finite values give spaces.

Errors: \code{x} that is not numeric; \code{bins} that is not one
positive whole number.

}
\section{Confidence limits from a standard error, a coefficient of variation or a margin of error (\code{limfrom})}{

The comparisons of this family take an estimate and its published confidence
limits. Agencies that publish a standard error, a relative standard error
(coefficient of variation) or a margin of error instead give the same
information; this turns it into limits at the level wanted.


With an estimate \eqn{e} and \eqn{z = \Phi^{-1}(1 - \alpha/2)} for
the level wanted, a standard error \eqn{s} gives \eqn{e \pm z s}; a
coefficient of variation \eqn{c} (in percent) gives \eqn{s = e c / 100}; a
margin of error \eqn{m} at level \code{moelev} (the American Community Survey
publishes 90\% margins) gives \eqn{s = m / z_{moe}}. The limits are symmetric
on the estimate's scale.

}
\section{Multivariate outliers by Mahalanobis distance (\code{mahaoutl})}{

Finds the rows of a numeric table that are unusual as a combination of
values, not just on one variable at a time, and gives each row a
distance, a p-value and an outlier flag. Use it before modelling to find
records that are probably data-entry or linkage errors.


Ranks rows by how far they sit from the centre of the data ONCE THE
CORRELATIONS ARE ACCOUNTED FOR, which is what a per-column check cannot
do: a row can be unremarkable on every variable separately and still be
impossible jointly -- a person 1.5 m tall weighing 140 kg is inside both
marginal ranges and outside the cloud.

With centre \eqn{c} and scatter matrix \eqn{S}, the squared distance of
row \eqn{x} is \deqn{d^2 = (x - c)^\top S^{-1} (x - c).}
Under multivariate normality the squared distance is chi-square on
\code{p} degrees of freedom (the number of numeric columns), which gives the
p-value and the cut-off.

\code{robust = TRUE} centres each column on its median and scales it by its
MAD (\code{cmad()}, the 1.4826-scaled median absolute deviation;
a column whose MAD is zero falls back to its standard deviation), then
takes \eqn{S} as the sample covariance of the standardised data.
\code{robust = FALSE} uses the column means and the sample covariance. The
robust centre and scales resist outliers; the correlation shape in
\eqn{S} is still a classical estimate, so this is not a high-breakdown
estimator such as the minimum covariance determinant. The choice
matters more than it sounds: outliers inflate the very covariance used
to judge them, so with several of them the classical distance hides
exactly the rows it is meant to find (the masking effect).

Exactly collinear columns are refused rather than repaired: the distance
is undefined there, and flooring the covariance's eigenvalues to make it
invertible would return numbers governed by the floor rather than by the
data. Drop the redundant column first --
\code{\link[=topcors]{topcors()}} will identify it.

Errors: \code{data} neither a data frame nor a matrix; no numeric columns;
no more complete rows than columns; collinear columns (smallest
eigenvalue of \eqn{S} at most \eqn{10^{-8}} times the largest); \code{alpha}
outside (0, 1). A progress indicator is shown in an interactive session.

}
\section{Little's test for data missing completely at random (\code{mcartst})}{

Tests the MCAR assumption: that whether a value is missing is unrelated
to any value in the data, observed or not.

The assumption matters because it is what licenses the easy options.
Dropping incomplete rows is unbiased under MCAR and biased otherwise;
mean imputation understates variance under MCAR and distorts the centre
as well otherwise. A small p-value here says the easy options are not
available. Run it on the numeric columns of a table before deciding
how to handle its missing values.


\subsection{How it works}{

Rows are grouped by their pattern of missingness. If missingness is
unrelated to the values, then each pattern's observed-variable means
should agree with the overall estimates, up to sampling error. The
statistic sums those disagreements,
\deqn{d^2 = \sum_j n_j (\bar{x}_j - \hat{\mu}_j)'
  \hat{\Sigma}_j^{-1} (\bar{x}_j - \hat{\mu}_j),}
over the variables observed in pattern \eqn{j}, and is compared with a
chi-square distribution on \eqn{\sum_j p_j - p} degrees of freedom.

The overall \eqn{\hat\mu} and \eqn{\hat\Sigma} are the
MAXIMUM-LIKELIHOOD estimates under multivariate normality WITH the
missing data, obtained by expectation-maximisation -- not the
complete-case estimates, which would already embed the bias the test is
looking for.
}

\subsection{What it cannot do}{

A large p-value is NOT evidence that the data are MCAR; it is a failure
to detect a departure, and the test has little power on small samples or
with many patterns. The test also assumes multivariate normality, so on
markedly non-normal columns a rejection may be telling you about the
distribution rather than the missingness.

Neither this test nor any other can distinguish missing-at-random from
missing-NOT-at-random, because that distinction depends on the values
that were never observed. Only knowledge of how the data were collected
settles it.

Collinear or constant columns are refused rather than worked around: the
likelihood is degenerate there, and the EM step's eigenvalue floor would
otherwise return a statistic governed by that floor instead of by the
data.
}

\subsection{Practicalities}{

Columns that are entirely missing and rows with no observed value are
dropped before the test. The EM loop is written in R and visits every
row on every iteration, so it takes about \eqn{n \times} iterations
small matrix solves: seconds for a few thousand rows and a handful of
columns, longer for large tables. A progress indicator is shown in an
interactive session. If EM has not converged after \code{maxit}
iterations the last estimates are used; \code{iterations} then equals
\code{maxit}.

Errors: \code{data} neither a data frame nor a matrix; fewer than two
numeric columns, or fewer than two usable rows or columns after the
drops; collinear or constant columns (smallest covariance eigenvalue at
most \eqn{10^{-8}} times the largest); EM estimates that cannot be
inverted. Non-numeric columns are dropped with a warning.
}

}
\section{The four directions of the First Nations Mental Wellness Continuum, from published indicators (\code{mhcont})}{

Lays out a group's published indicators under the four outcomes of the First
Nations Mental Wellness Continuum Framework (hope, belonging, meaning,
purpose), each with its interval, and says which directions the tables have
no measure of.


The Framework (Health Canada and Assembly of First Nations 2015)
describes mental wellness as hope for the future, a sense of belonging and
connectedness to family, community and culture, a sense of meaning and of how
one's life fits into creation, and purpose in daily life. It has no numeric
scoring, and no survey table measures the four directions as the Framework
defines them. This function takes the indicators a user names as proxies for
each (\code{hope = "Always or often has a hopeful outlook"}, ...), reports
each direction's level (the mean of its proxies, their standard errors
combined as independent; the proxies share respondents, so if they are
positively correlated that standard error is too small), marks every row as a
proxy, and reports a direction given no proxy as missing rather than filling
it from another. One indicator named for two directions (Statistics Canada
asks about \dQuote{meaning and purpose} together) is used for both and marked
\code{shared}.

The result plots as a \code{\link{welprof}}. For the balance across the
directions, call \code{\link{holbal}} on the rows with a proxy
(\code{x[x$domain != "no published proxy", ]}, with \code{"domain"} as its
domain column): a missing direction otherwise leaves the balance \code{NA},
and a shared proxy counts once per direction it serves, so give such
directions half weight. Other frameworks of wellness (Te Whare Tapa Wha, the
Social and Emotional Wellbeing domains, a Nation's own) take the same route
through \code{\link{welprof}} and \code{\link{holbal}}, which accept any set
of domains.

}
\section{Text map of where the missing values are (\code{missgrid})}{

Draws the missingness of a whole table as a grid, one character per cell
block -- a console counterpart of \code{visdat::vis_miss()} that needs
no graphics device, so it works over SSH, in a log, and inside a
capsule's plain-text summary.

Rows are binned so the map fits \code{height} lines; a block is drawn at
the shade its missing proportion falls in. Seeing the table at once is
the point: a diagonal band, a block of rows, or a single ragged column
are all instantly recognisable shapes that a column of percentages is
not.


The rows are split into at most \code{height} consecutive blocks of nearly
equal size; each map line is one block, labelled with its first row
number, and each map column is one column of \code{data}. A cell's shade is
its block's proportion missing rounded to the nearest quarter: blank (0),
light, medium, dark, full (1). Where the console cannot show Unicode the
shades are \code{" .-+#"}. Column names are written vertically above the
map, cut to \code{width} characters. A table with no rows prints
\code{"(no rows)"}. Errors: \code{data} not a data frame or without columns;
\code{height} not a positive whole number.

}
\section{Which columns are missing together (\code{misspat})}{

Counts the distinct PATTERNS of missingness across rows -- which
combination of columns is missing in each row -- rather than the
per-column rates \code{\link[=profcols]{profcols()}} reports. Use it
before deciding how
to handle gaps (drop rows, impute, model separately), because the right
choice depends on whether columns are missing together.


The distinction decides what to do about the gaps. Two columns each 30\%
missing at random need different handling from two columns 30\% missing
in THE SAME rows -- the second is one structural gap (a join that
failed, a form section nobody filled in) and often means those rows
should be dropped or modelled separately, while the first does not. A
per-column rate cannot tell the two apart; this can.

Each row is coded as a string with one character per column, \code{X}
where \code{is.na()} is true and \code{.} otherwise, and the codes are
tabulated. Patterns are sorted by descending frequency and the first
\code{maxpat} kept, so \code{pctrows} may not sum to 100 when
patterns are cut. A frame with no rows gives an empty table. The work is
one pass over the rows; very wide frames give long codes.

Errors: \code{data} not a data frame, without columns, or with missing or
duplicated names; \code{maxpat} not one positive whole number.

}
\section{Runs of consecutive missing values (\code{missruns})}{

Finds the maximal stretches of consecutive \code{NA} in each column,
with where each begins and how long it is.

Row order carries meaning in a capsule far more often than people allow
for -- a time series, an ordered export, a paginated download -- and a
long unbroken run of missingness means something different from the same
count scattered about. A run says an instrument was down, a page failed
to fetch, or a period was never collected; scattered gaps say individual
records failed. The rate cannot distinguish them.


Each column's missingness indicator \code{is.na(x)} is run-length
encoded with \code{rle()}; every run of \code{TRUE} with length at least
\code{minrun} is reported. Rows are taken in their current order, so sort
the data by time (or by download order) first. A list column counts an
element as missing only when \code{is.na()} says so. Errors: \code{data} not a
data frame or without columns, or with duplicated or empty names;
\code{minrun} not a positive whole number.

}
\section{Global Moran's I over a neighbour list (\code{morani})}{

Measures spatial autocorrelation in a variable measured on areas: whether
neighbouring areas tend to have similar values (positive I), dissimilar
values (negative I), or neither. The p-value comes from randomly
permuting the values over the areas. You must supply the neighbour
structure (a list or a weight matrix); none is invented, because an
administrative extract keyed on a region ships no geometry, and guessing
adjacency would make the answer a property of the guess.


With weights \eqn{w_{ij}}, total \eqn{W = \sum_{ij} w_{ij}} and
\eqn{z_i = x_i - \bar x}, \deqn{I = \frac{n}{W}\,\frac{\sum_{i}\sum_{j}
w_{ij} z_i z_j}{\sum_i z_i^2}.} The expectation of I under the null is
\eqn{-1/(n - 1)}, not zero, so a small negative I is what independence looks
like in a small set of areas. The p-value comes from permuting the values
over the areas, which needs no distributional assumption -- and with a
handful of regions no distributional assumption is safe. It is two-sided
around \eqn{-1/(n - 1)}, \eqn{(1 + \mathrm{count}(|I^* - E| \ge |I - E|))/(1
+ B)} over the \eqn{B} finite permuted values, so it is never exactly zero.

A neighbour list is binary; a weight matrix keeps its magnitudes (for
example inverse distances). Self-neighbours and the diagonal are dropped.
\code{style = "W"} divides each area's weights by their total. The
permutations use R's random number generator, so call
\code{set.seed()} first for a reproducible p-value. The work is done in
compiled code.

Errors: fewer than three areas; missing values in \code{x}; a constant
\code{x}; a neighbour index outside \code{1..n}; a list of the wrong
length; a weight matrix that is not \eqn{n \times n}, not finite, or has
negative weights; no area with any neighbour.

}
\section{Deaths avoided under a counterfactual exposure reduction (\code{mortdisp})}{

The expected number of deaths (or cases) a year that a given drop in
exposure would avoid in a population, from the baseline rate and a
log-linear concentration-response coefficient. This is the
health-impact function used in regulatory benefit assessments, for
questions such as \dQuote{how many deaths would a 5 microgram cut in PM2.5
avoid in this city?}.


The BenMAP-CE health-impact function (US EPA 2018; Anenberg et al. 2010):
\deqn{\Delta Y = y_0 N (1 - e^{-\beta \Delta x}),}
with \eqn{y_0} the baseline rate per person-year, \eqn{N} the population,
\eqn{\beta} the log relative risk per unit of exposure and
\eqn{\Delta x} the reduction. A negative \code{expdel} (an
increase) gives a negative number, the extra cases. A coefficient
published per 10 units must be divided by 10 first (for example
\code{log(1.08) / 10} for the PM2.5 all-cause RR of 1.08 per 10).

The baseline rate is per person-year, not per 100,000: 800 deaths per
100,000 a year is 0.008. A rate below 1e-5 or above 0.1 is refused
unless \code{rare} or \code{hirate} says it is meant, because
it is also what a rate in the wrong unit looks like; a rate above 1, or
below 1e-11, is always refused. Every input must be a single finite
number, and the population and rate non-negative.

}
\section{Difference in differences after matching on pre-treatment trajectories (\code{mtchdid})}{

Matches each treated unit to the comparison units most like it before
treatment (its outcomes in the pre-period and, optionally, covariates),
within an exact grouping if given, and estimates the difference in
differences on the matched sample with the matching weights.


Each unit is described by its outcome in each pre-period (the
periods before the first adoption) and the pre-period means of the
covariates. Distances are Mahalanobis, with the pooled within-group
covariance of those features (\code{covariance = "pooled"}, as \code{MatchIt}
computes it) or their covariance in the whole sample (\code{"full"}, as
\code{stats::mahalanobis()} is usually given it); each treated unit takes its
\code{ratio} nearest comparison units, with replacement (so the matches do
not depend on the order of the treated units), only within its \code{exact}
group, and only within \code{caliper} (in units of the distance's standard
deviation) if given. A comparison unit's weight is the sum over the treated
units it serves of \eqn{1/\code{ratio}}. The estimate is \code{\link{plndid}}
on the matched units with those weights, with errors clustered by unit;
matching on pre-period outcomes makes parallel trends more credible but can
bring in regression to the mean when the treated were chosen for an unusual
pre-period (Daw and Hatfield 2018).

}
\section{Summary statistics accumulated in blocks (\code{onl})}{

An accumulator for the count, mean, variance, skewness and kurtosis of a
numeric column that does not fit in memory, or that arrives in pieces
(a file read in chunks, results from several machines). Start one with
\code{onlsmry()}, feed it blocks with \code{smryupd()},
combine two with \code{smrymrg()} and read the result with
\code{smrystat()}.


The merge is exact algebra, not an approximation: it uses Chan, Golub and
LeVeque's parallel combination of central sums, extended to the third and
fourth moments by Terriberry, so accumulating a column in blocks gives the
answer of \code{\link[=cmom]{cmom()}}
over the whole column at once, to the rounding of
double arithmetic. Each block's sums are taken in two passes, as
\code{var()} takes them, so values far from zero keep their digits:
values near \eqn{10^8} with a spread of 1, in blocks of 100, give the
variance of \code{var()} to a relative \eqn{10^{-11}} (one pass lost
nine digits).
That is what makes it usable for a capsule member of any
size: memory stays constant in the number of blocks.

The state is \eqn{(n, \bar{x}, M_2, M_3, M_4)} with
\eqn{M_k = \sum (x_i - \bar{x})^k}. \code{smrystat()} reports the
sample variance \eqn{M_2 / (n - 1)}, the moment skewness
\eqn{g_1 = (M_3/n) / (M_2/n)^{3/2}} and the excess kurtosis
\eqn{g_2 = (M_4/n) / (M_2/n)^2 - 3} (the biased moment estimators, without
small-sample correction). \code{NA} values are dropped from every block.
Undefined quantities are \code{NaN}: the mean for \eqn{n = 0}, the variance
for \eqn{n < 2}, the skewness for \eqn{n < 3} and the kurtosis for
\eqn{n < 4}, and both shape statistics for a constant column.

The object is a plain list and is copied on assignment like any other R
value, so \code{smryupd()} returns the new accumulator and you must
keep it: \code{acc <- smryupd(acc, block)}.

Errors: a block that is not numeric; an accumulator that does not come
from \code{onlsmry()}.

}
\section{Compare rated scales (perceived mental health, life satisfaction) between groups (\code{ordcmp})}{

For a rated scale published as the percentage in each category with its
confidence limits (perceived mental health from poor to excellent, life
satisfaction from 0 to 10, agreement with a statement), the probability that
a person in each group rates higher than a person in the reference group,
with its confidence interval: a comparison of the whole distribution, not of
one category cut from it.


With shares \eqn{p_i} in the group and \eqn{q_j} in the reference
over categories ordered from lowest to highest, the probability of a higher
rating, ties counted half, is \eqn{A = \sum_i p_i (Q_{i-1} + q_i / 2)} with
\eqn{Q_i} the reference's cumulative shares and \eqn{Q_0 = 0}: the
Mann-Whitney probability, equal to \eqn{\alpha / (1 + \alpha)} for Agresti's
(1980) generalized odds ratio \eqn{\alpha} with ties split equally, and to
the mean ridit of the group with the reference as the standard (Bross 1958).
0.5 is no difference; \eqn{2A - 1} is Cliff's \eqn{\delta}, the share rating
higher less the share rating lower.

Its variance is that of the two-sample U statistic, \eqn{\sigma_1^2 / n_1 +
\sigma_0^2 / n_0}, with \eqn{\sigma_1^2} the variance over the group of each
category's placement in the reference and \eqn{\sigma_0^2} the converse
(Brunner and Munzel 2000). The sample sizes are the effective ones the
published limits imply: for each category, \eqn{n = p(1 - p) / s^2} with
\eqn{s} the standard error from the limits' width, taking the median over the
categories. That carries the design effect of the survey's weights and
clusters, which the counts of persons (population totals) do not. The
interval is built on the logit scale, so it stays inside 0 and 1.

The categories given in \code{lvls} are taken as the whole scale: rows for
totals, for combined categories (\dQuote{Excellent or very good}) and for
\dQuote{not specified} are left out, and the shares are rescaled to sum to
one over the levels. A group with a suppressed or missing category is not
compared, since its distribution is unknown; one with an \code{E} category
(in the group or the reference) is compared and marked, and one whose
published interval misses its own estimate is not compared.

A higher rating means better only on a scale that runs that way. Give
\code{lvls} from the least to the most favourable so that \code{probbet}
reads as its name says.

}
\section{Permutation inference for a policy's adoption (\code{perminf})}{

Re-assigns the adoption dates across clusters (all the distinct assignments
when there are few, random ones otherwise), re-estimates the difference in
differences each time, and gives the share of assignments with an effect at
least as large; for several outcomes, also the Westfall-Young stepdown
p-values that hold the family-wise error rate.


The adoption period of each cluster (for example a judicial
district's stage of a reform) is shuffled among the clusters, keeping the
number of clusters adopting at each date, and \code{\link{plndid}}'s estimate
(\code{statistic = "estimate"}) or t statistic (\code{"t"}, the default) is
recomputed. With \eqn{b} of \eqn{R} random assignments at least as extreme as
observed, \eqn{p = (b + 1)/(R + 1)}; when every distinct assignment is
enumerated (their number is at most \code{reps}), \eqn{p} is the exact share.
The test is Fisher's: it is valid in any sample when adoption dates were
assigned at random across clusters.

For several outcomes, the same assignments give \code{\link{stpdnpv}}.

A placebo date is the same analysis with \code{ftreat} moved earlier, on the
periods before the real adoption.

}
\section{Atmospheric dispersion: sigmas, plume rise, plume, puff, grid and particles (\code{pgsig})}{

Six standard models of how a pollutant released into the air spreads
downwind, for exposure estimates around a stack, a fire or an industrial
site (for example when relating air quality to health or justice
outcomes by neighbourhood):
\itemize{
\item \code{pgsig()}: how wide and how tall a plume has grown at a
given distance, by atmospheric stability class;
\item \code{briggs()}: how far a hot plume rises above the
stack top;
\item \code{gplume()}: the steady concentration at receptor
points from a continuous release;
\item \code{gspuff()}: the concentration from a single
instantaneous release, some time after it;
\item \code{advdif2d()}: a concentration field on a grid
moved by wind and spread by diffusion, step by step;
\item \code{lagrprt()}: the same physics as a random walk
of many particles.
}
They are screening models with textbook assumptions (flat terrain,
steady uniform wind, no chemistry or deposition), not regulatory model
runs.


\code{pgsig()}: Briggs (1973) fits of the Pasquill-Gifford dispersion
coefficients by stability class A-F, rural
\code{sigmay = a_y x (1 + 0.0001 x)^(-1/2)} (urban: 0.0004) and
\code{sigmaz = a_z x (1 + b_z x)^(e_z)}.
\code{briggs()}: buoyancy flux
\code{F = g v_s d^2 (T_s - T_a) / (4 T_s)}; final rise
\code{21.425 F^(3/4) / u} with \code{x_f = 49 F^(5/8)} when \code{F < 55},
else \code{38.71 F^(3/5) / u} with \code{x_f = 119 F^(2/5)}, for classes A-D;
\code{2.6 (F / (u s))^(1/3)} with \code{s = g (dtheta/dz) / T_a} and
\code{x_f = 2.0715 u / sqrt(s)} for E and F; transitional rise
\code{1.6 F^(1/3) x^(2/3) / u} before \code{x_f} (EPA ISC3).
\code{gplume()}:
\code{Q / (2 pi u sigmay sigmaz) exp(-y^2 / (2 sigmay^2)) V},
with \code{V} the vertical term with ground reflection and, under a mixing
lid, \code{nimg} pairs of image terms.
\code{gspuff()}: an instantaneous release with \code{sigma_x = sigmay}
evaluated at the travel distance \code{u t}.
\code{advdif2d()}: explicit upwind advection, central
diffusion, forward Euler, zero boundaries. The explicit scheme is stable
when \code{|u dt/dx| + |v dt/dy| + 2 (kx dt/dx^2 + ky dt/dy^2) <= 1}
(the von Neumann bound for upwind advection with forward-time
centred-space diffusion); that sum is returned as
\code{stabn} with \code{stable}. A call outside the bound is
not run as given: each step is split into enough sub-steps of a smaller
\code{dt} to satisfy it (reported as \code{substeps} and \code{dt}),
with a warning, so the field is a solution over the same physical time
rather than a numerical explosion. The separate \code{cfl} and
\code{difn} are reported for reference; each below 1 is
necessary, not sufficient.
\code{lagrprt()}: the random walk
\code{x + u dt + sqrt(2 K dt) xi} (Thomson 1987) with an optional counting
grid.

The stability classes run from \code{"A"} (very unstable, sunny with
light wind) through \code{"D"} (neutral, overcast or windy) to
\code{"F"} (stable, clear night with light wind). Units are SI: metres,
seconds, kelvin; with \code{q} in g/s, \code{gplume()} returns
g/m^3, and with \code{mass} in g, \code{gspuff()} returns g/m^3.
The plume is not defined at or upwind of the source: a receptor with
\eqn{x \le 0} gets 0. The plume's \code{h} is the effective height,
the stack height plus the rise from \code{briggs()}.

Every physical input is checked: emission rates, masses, heights and
distances are non-negative, wind speed, travel time and grid steps
positive, \code{nimg} a whole number up to 1,000, the stack as hot
as the air or hotter (temperatures below 150 are refused as probably
Celsius), and \code{x0}, \code{y0} single numbers; a release above
\code{mixh} warns, and so does a receptor below ground or above
the lid (the reflection terms give mirror values there). Unknown
stability classes or settings are errors.

Cost: \code{gplume()} and \code{gspuff()} are fast for
thousands of receptors. \code{advdif2d()} is an R loop at
roughly 0.8 million cell updates a second, and both grid models refuse a
run above \code{maxwork} cell or particle updates. The particle walk
is reproducible from \code{seed} and does not touch R's random number
stream. Progress bars are shown in an interactive session.

\subsection{Boundary}{
 the outermost ring of cells is held at zero (an open
boundary): mass that reaches it leaves the domain and \code{mass} falls
accordingly. Pad \code{c0} with empty cells so the plume of interest stays
inside the ring.
}
}
\section{Justice-pipeline rates with a lag between stages (\code{piperate})}{

The rate at which one stage of the justice process follows another (charges
per reported offence, settlements per charge, convictions per trial), summing
each over a window and setting the outcome's window after the input's,
because cases take time to move through.


For period \eqn{t}, a window of \eqn{W} periods and a lag of
\eqn{L}, \deqn{R_t = \frac{\sum_{s = t - W + 1}^{t} O_s}{\sum_{s = t - L - W
+ 1}^{t - L} I_s},}{R_t = sum(O over t - W + 1 .. t) / sum(I over t - L - W +
1 .. t - L),} with \eqn{O} the outcome stage and \eqn{I} the input stage.
With \eqn{W = 1, L = 0} it is the same-period ratio (cases with detention
over cases charged; acquittals over acquittals and convictions). Rates are
\code{NA} until the windows are filled, and when the denominator is zero.
These are administrative counts of every case, so no sampling interval is
given.

}
\section{Difference in differences with two-way fixed effects (\code{plndid})}{

The effect of a policy on a unit-by-period panel (municipalities by month,
blocks by quarter, courts by year), from a regression of the outcome on the
treatment indicator with unit and period fixed effects, and standard errors
clustered by unit or by any coarser grouping.


The model is \deqn{Y_{it} = \beta T_{it} + X_{it}'\gamma + \delta_i
+ \mu_t + \varepsilon_{it},}{Y_it = b T_it + X_it'g + d_i + m_t + e_it,}
fitted by ordinary least squares after the within transformation (alternating
projections, so an unbalanced panel is fine). The variance is the one-way
cluster-robust CR1 estimator, \deqn{\hat V = \frac{G}{G - 1}\frac{N - 1}{N -
K} (\tilde X'\tilde X)^{-1} \Big(\sum_g \tilde X_g'\hat u_g \hat u_g'\tilde
X_g\Big) (\tilde X'\tilde X)^{-1},}{V = G/(G - 1) (N - 1)/(N - K) (X'X)^-1
(sum_g X_g'u_g u_g'X_g) (X'X)^-1,} with \eqn{K} counting the regressors and
the fixed effects not nested in the clusters, and tests and intervals use
Student's t on \eqn{G - 1} degrees of freedom. These are the conventions of
Stata's \code{reghdfe} and R's \code{fixest}.

The relative effect is \eqn{\hat\beta} over the mean outcome of the units
never treated (or not yet treated) in the periods before the first treatment,
the way an effect on a rate is usually reported ("a 12\% fall").

With \code{fe = "time"} the unit effects are left out, and the model is the
cross-section with period effects of a comparison between kinds of units (for
example blocks in dynastic and in other wards).

When treatment starts at different times, this estimator weights
earlier-treated units as controls for later ones, and can be biased if the
effect changes over time: see \code{\link{bacondcmp}} for the weights and
\code{\link{stgatt}} for estimators that avoid them.

}
\section{Double machine learning for panels with fixed effects (\code{plndml})}{

The effect of a treatment (continuous or binary) on an outcome in a
unit-by-period panel, with unit and period fixed effects removed and the
confounding through covariates fitted by a machine learner, cross-fitted by
unit, with an orthogonal (Neyman) score and errors clustered by unit.


The model is the partially linear panel model \deqn{Y_{it} = \theta
D_{it} + g(X_{it}) + \alpha_i + \gamma_t + \varepsilon_{it}.}{Y_it = theta
D_it + g(X_it) + a_i + c_t + e_it.} Following Clarke and Polselli (2025), the
fixed effects are removed by the within transformation (\eqn{\tilde Y},
\eqn{\tilde D}, \eqn{\tilde X}), and \eqn{\ell(\tilde X) = E(\tilde Y \mid
\tilde X)} and \eqn{m(\tilde X) = E(\tilde D \mid \tilde X)} are fitted by
the learner on \eqn{K} folds of units (all of a unit's periods in one fold,
so a unit's own errors never help predict it). With the out-of-fold residuals
\eqn{U = \tilde Y - \hat\ell} and \eqn{V = \tilde D - \hat m}, the
partialling-out estimator is \deqn{\hat\theta = \sum V U / \sum V^2,}{theta =
sum V U / sum V^2,} the solution of the Neyman-orthogonal score \eqn{(U -
\theta V) V} of Chernozhukov et al. (2018). Its variance is the
cluster-robust sandwich over units, \deqn{\hat V = \frac{G}{G - 1}
\frac{\sum_g \big(\sum_{i \in g} V_i (U_i - \hat\theta V_i)\big)^2}{(\sum
V^2)^2},}{V = G/(G-1) sum_g (sum V (U - theta V))^2 / (sum V^2)^2,} with t on
\eqn{G - 1} degrees of freedom. Folds are drawn with \code{seed}; \code{nrep}
repeated splits are combined by the median of the estimates and of the
variances plus the squared deviations from it (Chernozhukov et al. 2018,
section 3.4).

Learners, all in base R: \code{"lasso"} (coordinate descent, penalty by
5-fold cross-validation), \code{"ridge"} (penalty by generalised
cross-validation), \code{"ols"}, or a function returning predictions (for
example a random forest from another package), called as
\code{function(x_train, y_train, x_test)}. \code{basis = "poly2"} adds
squares and pairwise products of the covariates, built from the covariates as
observed and then demeaned, so a confounding that is a combination of them is
removed exactly. The demeaned features are what the learners see: a covariate
fixed within a unit is absorbed by the unit effect and carries no
information. A learner given only the demeaned covariates (a random forest,
say) approximates a nonlinear confounding less well; the poly2 basis, or a
basis of the user's own as further covariates, is the remedy.

}
\section{A fixed-effects Poisson or negative binomial regression for counts (\code{plnpois})}{

The effect of a policy on counts (stops, arrests, offences) with unit and
period fixed effects, reported as an incidence rate ratio, with
cluster-robust standard errors that do not need the counts to be Poisson.


The model is \eqn{E(Y_{it}) = \exp(\beta T_{it} + X_{it}'\gamma +
\delta_i + \mu_t)} (times the exposure, with \code{offset} its log), fitted
by maximum likelihood. Units whose counts are all zero carry no information
about \eqn{\beta} and are dropped first, as are periods with no count
anywhere. The Poisson likelihood with fixed effects is consistent for
\eqn{\beta} whatever the dispersion (Wooldridge 1999); the variance is the
cluster-robust sandwich, with the small-sample factors of
\code{\link{plndid}}. The rate ratio is \eqn{e^{\beta}}, with interval
\eqn{e^{\hat\beta \pm z\,se}}.

With \code{family = "negbin"} the variance is \eqn{\mu + \mu^2/\theta}: the
fit alternates iteratively reweighted least squares at fixed \eqn{\theta}
with the maximum of the profile likelihood in \eqn{\theta}, and the sandwich
uses the negative binomial scores with \eqn{\theta} held at its estimate (as
\code{sandwich::vcovCL()} does for \code{MASS::glm.nb()};
\code{fixest::fenegbin()}, which treats \eqn{\theta} as a parameter of the
variance too, gives slightly larger errors). With unit dummies this is the
unconditional fixed-effects negative binomial, which behaves well as the
number of periods grows (Allison and Waterman 2002); with few periods per
unit prefer the Poisson, which is consistent whatever the dispersion.

}
\section{Power and minimum detectable effect of a difference-in-differences design (\code{plnpwr})}{

Simulates the design on real untreated data: assigns adoption at random to
units (or clusters) as the study would, adds an effect of known size,
estimates \code{\link{plndid}}, and counts rejections; so the serial
correlation and the clustering of the real data are carried, as formula-based
power calculations do not.


In each replication, \code{ntrt} units (or clusters, with \code{cl})
are drawn at random and given adoption dates drawn from \code{adopt};
\code{effect} is added to their outcomes from adoption on; the cluster-robust
t test of \code{\link{plndid}} at level \code{alpha} is counted as a
rejection. With \code{effect = 0} the rejection rate is the test's actual
size on these data, which should be near \code{alpha}: a larger one means the
errors are understated (too few clusters, say), and the power figures are
then optimistic too. The minimum detectable effect is where the power curve
crosses \code{power}, by linear interpolation (Burlig, Preonas and Woerman
2020).

}
\section{Plot fitted distributions (\code{plot.rmbl_dstfit})}{

Four views of a \code{\link[=dstfit]{dstfit()}} result: the histogram (or, for counts,
the observed proportions) with each fitted density or mass over it; a QQ plot
and a PP plot per family; and the empirical survival function on log-log axes
with each fitted survival curve, where a power law is a straight line.

}
\section{Plot a fitted Hawkes process (\code{plothwk})}{

Three views of a \code{\link[=chwkfit]{chwkfit()}} result against its events: \describe{
\item{\code{"intensity"}}{the conditional intensity \eqn{\lambda(t) = \nu(t) +
\eta \sum_{t_j < t} g(t - t_j)} over the window, the baseline dashed and the
events as ticks along the axis.} \item{\code{"qq"}}{the time-rescaling residuals
of \code{\link[=chwkres]{chwkres()}} against the uniform quantiles: a correct model puts
them on the diagonal (the Kolmogorov-Smirnov p-value of the fit in the
title).} \item{\code{"tree"}}{the most probable branching structure: each event
drawn at its time and generation, linked to the earlier event (or the
baseline) most likely to have triggered it, the probabilities \eqn{\eta g(t_i
- t_j)} and \eqn{\nu(t_i)} in proportion. At most 5,000 events.} }

}
\section{Cross-fitted partially linear regression (double machine learning) (\code{plrcf})}{

Estimates the effect of a continuous exposure (or treatment) on an
outcome after adjusting for confounders, by the double machine learning
recipe: the part of the outcome and of the exposure that the confounders
predict is removed with models fitted on other folds of the data, and the
effect is the slope of what is left. It answers questions such as \dQuote{how
much does asthma incidence rise per microgram of NO2, holding income and
age structure fixed?}.


The partially linear model \eqn{Y = \theta D + g(X) + U}, \eqn{D =
m(X) + V} of Chernozhukov et al. (2018, section 4.2), estimated by the DML2
cross-fitting recipe: the sample is split into \code{kfol} folds; for each
fold the nuisances \eqn{m} and \eqn{g} are fitted on the other folds and
predicted on it; \eqn{\hat\theta} is the slope of the out-of-fold outcome
residuals on the out-of-fold treatment residuals, \deqn{\hat\theta = \sum_i
\hat V_i \hat U_i / \sum_i \hat V_i^2,} with the sandwich standard error
\eqn{\sqrt{\sum_i \hat V_i^2 (\hat U_i - \hat\theta \hat V_i)^2} / \sum_i
\hat V_i^2}. The nuisances here are ordinary least squares on the covariates,
which is the right learner when the confounding is approximately linear and
keeps the estimator fully deterministic given \code{seed}; rmorie's
\code{morie_estimate_double_ml()} offers richer learners and can be passed to
\code{\link{exprspplr}} through \code{estimator}.

Each fold's two least-squares fits are computed from the normal
equations of the covariates centred and scaled by their full-sample
moments (the same column space, so the same fitted values as
\code{\link[stats]{lm.fit}}), solved by Cholesky; a fold whose
cross-product is poorly conditioned (reciprocal condition number below
1e-5: collinear covariates or a constant column) uses
\code{\link[stats]{lm.fit}} instead, whose pivoting drops the redundant
columns (their coefficients count as 0). An n = 20000 fit takes a few
milliseconds. A bar on stderr shows the folds when the work is slow
enough to need one (see \code{\link{blprog}}).

Rows with a missing value in any of the named columns are dropped first
(\code{n} reports the rows used). The folds are a random permutation of
\code{rep_len(1:kfol, n)} drawn with \code{seed}; R's own random
stream is restored afterwards. Refusals: a column name that is not a
single string (several for \code{covs}) or is not in \code{data};
a non-numeric column (a factor is not a code); \code{kfol} that is
not a whole number of at least 2; fewer than \code{2 * kfol}
complete rows; and a treatment with no variation left after the
covariates are partialled out.

}
\section{Per-area pollution burden (\code{polbrdarea})}{

Applies \code{\link{polbrdn}} to every row of a table with one row
per area (forward sortation area, census tract, neighbourhood, ...) and
returns the rows sorted by attributable cases, worst first. Use it to
see where in a city or region the pollution burden falls, for example
to rank neighbourhoods for an intervention.


Each area is treated as wholly exposed at its own concentration
(\code{expoprev = 1}), with the pollutant's default reference
concentration. Every area is checked as \code{\link{polbrdn}}
checks a single population, and the first area that fails stops the
call with that area's error. Refusals: a column name that is not a single
string or not in the table, an empty table, and a non-numeric exposure,
population or rate column. The area labels can be of any type.

}
\section{End-to-end pollution burden (\code{polbrdn})}{

Chains the concentration-response function, the attributable fraction and
the baseline case count into annual attributable cases, as the GBD risk
factor estimates do (GBD 2019 Risk Factors Collaborators 2020). Use it
for a single population (a city, a region) when you know its mean
exposure, its baseline rate and its size; for many areas at once see
\code{\link{polbrdarea}}.


The steps are: the relative risk at \code{expomean} from
\code{\link{crfpm25}} or \code{\link{crfno2}} (with the reference
concentration given or the pollutant's default); the attributable
fraction from \code{\link{attrfrac}} with
\code{expoprev}; the baseline cases
\eqn{y_0 N}; and the attributable cases, their product. The result is a
yearly count of deaths (or incident cases for
\code{"chiast"}).

Refusals: an unknown pollutant, an outcome the pollutant's CRF does not
have, any input that is not a single finite non-negative number, and a
baseline rate outside the band described in
\code{\link{mortdisp}} unless \code{rare} or
\code{hirate} admits it.

}
\section{A simulated policy panel for the examples (\code{polex})}{

Twenty districts in four regions over 36 months; a reform adopted region by
region in three stages (months 13, 19 and 25), with the fourth region never
adopting it; crime and arrest rates and counts. The numbers are made up, with
a known effect of the reform (a fall of 3 in the crime rate per 100,000), so
the examples and tests can check that each estimator recovers it.

}
\section{Parse banded category labels into numeric bounds (\code{prsbands})}{

Published administrative tables often report intervals instead
of values: \dQuote{18 to 24}, \dQuote{2 to 5}, \code{"50+"}, \dQuote{Greater
than 15 days}. This function reads such labels into a lower and an upper
bound per band, and flags the bands that are open at the top or the bottom.
It recognises the wordings open-data publishers actually use, and leaves a
label it cannot read as \code{NA} rather than guessing. Use it as the first
step before \code{\link{bandvals}}, \code{\link{expbands}} or
\code{\link{bandsens}}.


Labels are lower-cased and trimmed; the Unicode dash family (U+2010 to
U+2015 and the minus sign U+2212) is read as a hyphen, and correctly
grouped thousands separators are removed (\code{"1,000 to 2,499"}). Then,
in order:
\itemize{
\item \strong{Closed range}: two numbers joined by \code{to}, \code{-} or
\code{through}, optionally preceded by one word and followed by a unit
(\code{"ages 18-24"}, \code{"0 to 5 overnight stays"}). The two
numbers must be the only numbers in the label, the lower must not
exceed the upper, and no open-band cue word (over, under, more, less,
plus, ...) or \code{+} may appear; otherwise the label is \code{NA}.
\item \strong{Open upper band, inclusive}: \code{"50+"},
\code{"65 and over"}, \code{"and above"}, \code{"or more"},
\code{"or over"}, \code{"plus"}. The lower bound is the number when
\code{clsup = TRUE}, and the number plus one step otherwise.
\item \strong{Open upper band, exclusive}: \code{"greater than"},
\code{"more than"}, \code{"over"}, \code{"above"}, \code{"gt"}. The
lower bound is the number plus one step.
\item \strong{Open lower band, inclusive}: \code{"17 and under"},
\code{"or less"}, \code{"or fewer"}, \code{"and below"},
\code{"or under"}. The upper bound is the number.
\item \strong{Open lower band, exclusive}: \code{"less than"},
\code{"fewer than"}, \code{"under"}, \code{"below"}, \code{"<"},
\code{"lt"}. The upper bound is the number minus one step.
\item \strong{Bare number}: a band of width zero. A bare negative
number (\code{"-5"}) is read as a suppressed cell and stays \code{NA}.
}
The step is 1 when \code{intsca = TRUE} and the label has no
decimal point, and 0 otherwise. A label with more than one number that is
not a range, an empty label and \code{NA} all give \code{NA} bounds.
Anything other than a character or factor vector is an error.

}
\section{Bounds implied by rounding and suppression in a published table (\code{pubbnd})}{

Administrative releases rarely publish the count that was observed.
Statistics Canada rounds to a base (random rounding to base 5 moves a
cell by up to 4); provincial tables round to the nearest 5 or 10; cells
below a disclosure limit are printed as \code{"x"}, \code{"<5"} or \code{".."}. Every
figure computed downstream inherits that uncertainty, and it is not
sampling uncertainty: no confidence interval covers it. This function
turns each published cell into the interval of observed counts that
could have produced it, so \code{\link[=chgenv]{chgenv()}}
and \code{\link[=yoybnd]{yoybnd()}} can
carry the interval through a difference, a percent change or a rate.


For a published value \eqn{v} rounded to base \eqn{b}: with
\code{rndkind = "nearest"} the observed count lies in
\eqn{[\max(0, v - b/2), v + b/2]}; with \code{"random"} (unbiased random
rounding, where a count is moved to one of the two neighbouring multiples)
it lies in \eqn{[\max(0, v - (b - 1)), v + (b - 1)]}. The bounds are not
rounded to whole numbers. A suppressed cell lies in \eqn{[0, k - 1]}, with
\eqn{k} from \code{"<k"} or from \code{suplim}; rounding is
not applied to it. Without \code{rnd}, a published number is taken as
exact (lower = upper = value).

Text cells are trimmed, and thousands separators (commas) are removed
before they are read as numbers. A missing value (\code{NA}) that is not a
suppression mark gets status \code{"missing"} and \code{NA} bounds.

Errors: \code{rnd} not one positive finite number; a negative or
infinite count in \code{x}; an unknown
\code{rndkind}; a text cell that is neither a number nor a
suppression mark (the message lists the cells); a suppressed cell with no
limit (neither \code{"<k"} nor \code{suplim}).

}
\section{Recode another agency's quality flags to the package's (\code{qltyrcd})}{

The comparisons of this family read Statistics Canada's quality flags:
\code{E} (use with caution), and \code{F}, \code{x}, \code{..}, \code{...}
(no value: too unreliable, suppressed, not available, not applicable). Other
agencies flag otherwise: the Australian Bureau of Statistics \code{np} (not
published) and \code{*} or \code{**} (relative standard error over 25\% or
50\%), Stats NZ \code{S} (suppressed), the US Census Bureau \code{(X)}. This
maps them to the package's vocabulary, so suppressed cells are never compared
and uncertain ones are marked.

}
\section{Is CPU energy measurable here? (\code{raplok})}{

\code{TRUE} when the operating system exposes readable RAPL (Running
Average Power Limit) energy counters for at least one CPU package: Linux
with the \code{intel_rapl} powercap driver (Intel and, since kernel 5.8,
AMD), with read permission on \code{energy_uj}. On most systems since
Linux 5.10 that file is readable by root only, so \code{FALSE} is the
common answer for an ordinary user, and \code{\link{co2fp}}
then falls back to its model.


A domain counts when it is a directory named \code{intel-rapl:N} (the
\code{intel-rapl:N:M} subdomains are parts of a package and would count
the same energy twice) whose \code{name} file starts with
\code{"package"} and whose \code{energy_uj} file holds a number. Every
such domain must be readable: if any is not, the answer is \code{FALSE}.
Only files under \code{rapldir} are read; nothing is written. On macOS
and Windows there is no such directory and the answer is \code{FALSE}.
Errors when \code{rapldir} is not a single non-missing string.

}
\section{Change in a rate between periods (\code{ratechg})}{

Compares each period's rate with the rate \code{lag} periods earlier (for
example this year's stops per 100,000 residents with last year's), and
gives the rate ratio, the percent change and an exact confidence interval
for the change. Use it instead of the percent change of two published
rates: both the counts and the populations move between periods, and the
interval here accounts for the randomness in the counts.


This is not the percent change of two rates treated as measured
numbers. Both the counts and the denominators move between periods,
and an interval that ignores the denominators understates the
uncertainty of the change. The construction here conditions on the
total of the two counts and corrects for the ratio of the two
exposures, which is \code{\link{yoy}}'s exact conditional-binomial
interval generalised to unequal denominators: with equal populations it
reduces to exactly that.

With counts \eqn{a} (now) and \eqn{b} (earlier) and exposures
\eqn{t_a}, \eqn{t_b}, conditional on \eqn{a + b} the count \eqn{a} is
binomial with success probability \eqn{p = RR\,t_a / (RR\,t_a + t_b)}.
The Clopper-Pearson limits for \eqn{p}, \eqn{p_L =
B^{-1}(\alpha/2;\, a, b + 1)} and \eqn{p_U = B^{-1}(1 - \alpha/2;\, a + 1,
b)} (0 when \eqn{a = 0}, 1 when \eqn{b = 0}), give
\eqn{RR = (t_b / t_a)\, p / (1 - p)} and the percent change
\eqn{100 (RR - 1)}. When \eqn{b = 0} the upper limit is \code{Inf} and the
percent change itself is \code{NA}; when both counts are 0 there is no
interval.

Counts and populations are summed within each period (and \code{by}
group). Matching to the earlier period: for a numeric period column the
comparison is the period whose value is exactly \code{lag} less, so a
missing year gives no comparison instead of a silent comparison against
the wrong year. For any other period type (character, factor, Date) the
earlier period is \code{lag} steps back along the periods observed in the
group, so a gap in such a column is not detected.

Errors: \code{x} not a data frame; columns not found; \code{lag} not a
positive whole number; \code{conflvl} outside (0, 1); a population of
zero or below.

}
\section{The gap between two standardised rates (\code{rategap})}{

The ratio and the difference of two directly standardised rates from
\code{\link{agestd}}, with confidence intervals: log-normal for the ratio
(variance \eqn{v_1/y_1^2 + v_2/y_2^2}) and normal for the difference, the two
rates independent. Both measures are reported, as the relative gap alone
hides how large the absolute one is (Anderson et al. 2016).

}
\section{Uniform sample of a stream in one pass (\code{rsv})}{

Vitter's Algorithm R: draws \code{k} items from a stream, each item
equally likely to be retained, in a single pass and using memory
proportional to \code{k} rather than to the stream's length. Use it to
take a fair sample of a capsule member you cannot hold, or whose length
you do not know in advance.


\code{rsvidx()} returns the retained positions, so the same
sample can be applied to a file read line by line.
\code{rsvsmp()} applies it to a vector in memory.

The first \code{k} items fill the reservoir; item \eqn{i > k} then
replaces a uniformly chosen slot with probability \eqn{k / i}, so after
\eqn{n} items every item is in the sample with probability \eqn{k / n}
(Vitter 1985). The positions are returned sorted.

The stream is sampled with the core's own generator seeded by
\code{seed}, not R's, so the sample is reproducible and R's random
stream is left alone -- a capsule whose sample changed between runs
would not be reproducible. The generator is C++ \code{std::mt19937_64},
whose output sequence the C++ standard fixes, and each draw is Lemire's
unbiased multiply-and-reject on its 64-bit outputs (Lemire 2019), so the
same seed gives the same sample on every platform and C++ library.
Versions up to 0.5.12 drew with \code{std::uniform_int_distribution},
whose algorithm differs between C++ libraries, so their samples for a
seed differ from these.

Errors: \code{n} or \code{k} not one non-negative whole number;
\code{n} above \eqn{2^{53}}; \code{k} above \eqn{10^8}; \code{seed}
not a whole number from 0 to below \eqn{2^{53}} (\code{NA} included).

}
\section{Event rates per unit of population (\code{rtcalc})}{

Turns counts of events (arrests, stops, admissions, deaths) into rates
per unit of exposure, such as per 1,000 or per 100,000 residents, with an
exact Poisson confidence interval for each rate. A count is not
comparable across areas of different size or years of different
population; a rate is. The interval says how much of a rate is signal:
three events in a small area give a rate whose interval is several times
its own width.


For count \eqn{y} and exposure \eqn{t}, the rate is
\eqn{\mathrm{per} \times y / t}. The interval is the exact Poisson
interval for \eqn{y}, computed through the gamma relation,
\deqn{\left[G^{-1}(\alpha/2;\, y),\ G^{-1}(1 - \alpha/2;\, y + 1)\right]
  \times \mathrm{per} / t,}
with \eqn{G^{-1}(p; k)} the gamma quantile with shape \eqn{k}; a count of
zero has a lower limit of exactly zero. This is the interval of
\code{stats::poisson.test()}. It treats the exposure as known without
error.

With a data frame, counts and exposures are summed within each
combination of the \code{by} columns (missing values are ignored in the
sums), and the groups come out in sorted order. Groups with no rows are
not created. Without \code{by} the whole table is one group. With a
vector, each element is its own row.

\code{per} takes a number, or one of \code{"1k"}, \code{"10k"},
\code{"100k"}, \code{"1m"} (case, spaces, commas and a leading \code{"per"}
are ignored), because a denominator mistyped by a factor of ten is invisible
once it reaches a table.

A rate and a share are different quantities: use \code{\link{shrs}} when
the denominator is the total of the same events, not a population.

Errors: count or population columns that are not numeric or not found;
negative or fractional counts; a population of zero or below;
\code{conflvl} outside (0, 1); an unknown \code{per} shorthand or a
non-positive \code{per}.

}
\section{Adjust a scan of many comparisons for multiple testing (\code{scanadj})}{

A change table over fifty institutions is fifty tests. Reporting the
raw p-values invites reading the largest of fifty noise draws as a
finding. This adds \code{padj} (Benjamini-Hochberg by default, which
controls the false discovery rate over the scan) and \code{significant}
at level \code{alpha} after adjustment. Exact p-values are computed where
the object does not carry them: the conditional binomial test for
\code{\link[=yoy]{yoy()}} counts and for \code{\link[=ratechg]{ratechg()}}
(with the exposures as the
binomial weights).


For a \code{ratechg()} table, conditional on the two counts' total
the current count is binomial with success probability
\eqn{t_a / (t_a + t_b)}, the share of the combined exposure in the
current period, and the p-value is the two-sided exact binomial test of
that. Rows without a p-value (no comparison period, both counts zero)
are left out of the adjustment, so the number of tests is the number of
rows with a p-value; it is recorded in the \code{scanadj} attribute.

The adjustment is \code{stats::p.adjust(p, method)}: \code{"BH"} controls
the expected proportion of false discoveries among the rows declared
significant, which suits a screen; \code{"holm"} and \code{"bonferroni"}
control the chance of any false discovery, which a claim about one
specific row needs. A row is \code{significant} when its adjusted p-value
is strictly below \code{alpha}.

Errors: \code{x} not a data frame; no \code{p_value} column and not a
\code{yoy()} or \code{ratechg()} result; a \code{yoy()} result
without count units; a p-value outside \eqn{[0, 1]}; a method unknown to
\code{p.adjust()}.

}
\section{The estimates of a Statistics Canada table, with their confidence limits (\code{scests})}{

Statistics Canada's tables give each estimate on several rows: the estimate
itself (a percent, a rate, a count, a life expectancy), its low and high
confidence limits, or its coefficient of variation or standard error, all in
one statistics column (\code{Statistics}, \code{Characteristics},
\code{Statistics (3)}, ...). This puts them side by side, one row per cell of
the table and measure, ready for \code{\link{indgap}}, \code{\link{ordcmp}},
\code{\link{stdprev}} and the rest. Every table reads: one without a
statistics column (a census count) gives each value as its own estimate, with
no limits.


Each label of the statistics column is read as an estimate or as one
of its measures of precision, in every form the tables use: \itemize{ \item
\code{"Low 95\% confidence interval"}; \item \code{"High 95\% confidence
interval, age-standardized rate"}; \item \code{"Confidence interval lower
bound of count"}; \item \code{"95\% confidence interval (upper limit)"};
\item \code{"95\% confidence interval lower bound, 2020"}; \item
\code{"Coefficient of variation for percent"}; \item \code{"Standard error"}.
} A limit that names its measure is matched to it (ignoring case and
spacing); one that names none, or a name that fits several measures
(\code{"potential years of life lost"} in a table with a number, a crude rate
and an age-standardised rate of them), is matched to the measure with the
same unit (\code{UOM}) whose estimates it contains in every cell, and left
unmatched (said in the attribute \code{unmatched}) if no single measure fits.
A coefficient of variation \eqn{c} (in percent) gives log-normal limits
\eqn{e \exp(\mp z \sqrt{\log(1 + (c/100)^2)})}, which stay positive however
large \eqn{c} is; a standard error \eqn{s} the limits \eqn{e \mp z s}; the
column \code{cisou} says which (\code{"published"}, \code{"cv"} or
\code{"se"}). Published limits that do not contain their own estimate (it
happens: a 100\% with limits 85.5 to 98.6 in table 41-10-0012) are kept as
published and marked \code{"inconsistent"}; every comparison of the family
warns and leaves such a row out. A limit is matched to a measure when it fits
95\% of the cells. Labels are read in English: use the English-language
tables.

Every other column but the metadata (\code{VECTOR}, \code{COORDINATE},
\code{UOM}, ...) identifies the cell, \code{DGUID} among them (one place name
can name several geographies), with the spaces some labels end in trimmed.
The quality flag is the estimate's: an \code{F} or \code{x} estimate is
\code{NA} (see \code{\link{sctidy}}), and so are its limits.

}
\section{Read a Statistics Canada table as published (\code{sctidy})}{

Tidies a Statistics Canada full-table download (the \dQuote{CSV for database
loading} form, as the data service mirrors it under
\code{statcan_indigenous/tbl_<pid>}): \code{VALUE} as a number, and the
quality flags kept beside it in \code{quality}.


Statistics Canada flags every estimate: \code{E} use with caution,
\code{F} too unreliable to be published, \code{x} suppressed to meet the
confidentiality requirements of the Statistics Act, \code{..} not available,
\code{...} not applicable. An \code{F}, \code{x}, \code{..} or \code{...}
cell has no value here (\code{NA}), whatever the file holds, and nothing in
the package imputes it or works it back from totals and margins: a suppressed
cell is suppressed to protect people, and small First Nations, Metis and
Inuit communities most of all. \code{E} values are kept and marked.

The census data tables (98-10-xxxx) come in a wide layout: one column per
member of a dimension (\code{"Indigenous identity (9):Inuk (Inuit)[6]"}),
each followed by its \code{Symbol} column, and no \code{VALUE}. They are made
long first: the dimension becomes a column of member labels
(\code{"Indigenous identity (9)"}), the values \code{VALUE} and the symbols
\code{STATUS}, so every Statistics Canada table reads the same way.

A label that names two members of one dimension (the census tables repeat
labels under different parents, and the file drops the hierarchy) gets its
member number from the coordinate: \code{"Without children [3]"} and
\code{"Without children [7]"}. Other labels are left as they are.

}
\section{A severity-weighted crime index (\code{sevidx})}{

Offence rates combined into one index, unweighted (the sum of rates) and
weighted by each offence's severity (for example its mean statutory
sentence), per unit and period.


With \eqn{r_{k}} the rate of offence \eqn{k} per \code{per}
residents and \eqn{w_k} its weight, the indices are \eqn{\sum_k r_k} and
\eqn{\sum_k w_k r_k}. Mean statutory sentence lengths are one choice of
weight (as in Acosta, Mejia and Zorro Medina 2023); sentencing guidelines are
another (the Cambridge Crime Harm Index, Sherman, Neyroud and Neyroud 2016).
The weights are the analyst's to state and defend: the index records them. A
unit-period missing an offence that has a weight gets \code{NA}, never a
partial sum.

}
\section{Share of a total, in percent (\code{shrs})}{

Expresses each count as a percentage of a total (for example
each division's share of all stops), with a Wilson confidence interval. A
share's denominator is the total of the same events, so shares over a
complete grouping sum to 100. Use \code{\link{rtcalc}} instead when the
denominator is a population; \dQuote{40\% of stops} and \dQuote{40 stops per
1,000 residents} are different claims.


For count \eqn{y} out of total \eqn{n}, the share is \eqn{100\,y/n} and
the interval is Wilson's score interval for \eqn{\hat p = y/n},
\deqn{\frac{\hat p + \frac{z^2}{2n} \pm z\sqrt{\frac{\hat p(1-\hat p)}{n}
  + \frac{z^2}{4n^2}}}{1 + z^2/n},}
with \eqn{z} the standard normal quantile for \code{conflvl}, reported
in percent and clipped to \eqn{[0, 100]}.

The interval is Wilson's, not the textbook normal approximation.
The normal interval on a proportion is wrong in exactly the cases
people reach for it -- small counts and shares near 0 or 100, where
it runs past the ends of the scale and reports a negative percentage.
Wilson's stays inside the scale and is accurate at those counts. It
treats each count as a binomial draw from the total, which is an
approximation when the total is itself the sum of the counts.

With a data frame, counts are summed within each combination of the
\code{by} columns (missing values ignored), groups sorted. The default
method treats each element of \code{x} as a row; when \code{x} is named,
its names become a leading \code{label} column.

Errors: a count column that is not numeric or not found; negative counts;
a total of zero or below; a count larger than the total;
\code{conflvl} outside (0, 1).

}
\section{Variance and standard deviation with the right correction, and why (\code{sprd})}{

The variance, standard deviation and standard error of the mean of a
variable, with the denominator its source calls for: Bessel's \eqn{n - 1}
when the values are a sample from a larger population, \eqn{n} when they are
the whole population and it is being described, and the finite-population
correction when they are a sample drawn without replacement from a known,
finite population. \code{design = "auto"} chooses from \code{N}, and the
result says which rule it applied and why.


With \eqn{n} values \eqn{x_i} and mean \eqn{\bar x}: \describe{
\item{\code{"sample"}}{values drawn independently from a large population (or
from a process). \eqn{s^2 = \sum (x_i - \bar x)^2 / (n - 1)} is unbiased for
the population variance: the \eqn{n - 1} (the Bessel correction) makes up for
measuring spread around the mean of the sample itself, which is closer to the
values than the population mean is. The standard error of the mean is \eqn{s
/ \sqrt n}.} \item{\code{"census"}}{every unit of the population is observed
(a full count, complete administrative records) and the aim is to describe
that population: \eqn{\sigma^2 = \sum (x_i - \bar x)^2 / n}, with no
correction, because \eqn{\bar x} is the population mean itself; the mean has
no sampling error. If the population is instead treated as one realisation of
a process (the offences of one year as a draw of what the conditions of the
city produce), use \code{"sample"}.} \item{\code{"finite"}}{\eqn{n} units
drawn without replacement from \eqn{N}: \eqn{s^2} (with \eqn{n - 1}) is
unbiased for the population variance defined with \eqn{N - 1}, and the
standard error of the mean is \eqn{\sqrt{(1 - n/N) s^2 / n}}; the factor
\eqn{1 - n/N} is the finite-population correction, negligible below a
sampling fraction of about 5 percent.} } \code{"auto"} picks \code{"sample"}
without \code{N}, \code{"census"} when \eqn{n = N}, and \code{"finite"} when
\eqn{n < N}.

With weights: frequency weights (each value stands for \eqn{w_i} identical
observations) use \eqn{\sum w - 1}; reliability or sampling weights (each
value counts \eqn{w_i} times as much) use \eqn{\sum w - \sum w^2 / \sum w},
which is \eqn{n - 1} when the weights are equal, and the standard error of
the weighted mean is the sandwich \eqn{\sqrt{\sum w_i^2 (x_i - \bar x_w)^2} /
\sum w_i}. Survey weights from a complex design need the design itself for a
standard error (\code{\link{svydes}}).

}
\section{Standardised incidence ratio, with an exact interval (\code{stdinc})}{

Divides each area's observed count by its expected count to give the
standardised incidence ratio (SIR), and adds an exact Poisson confidence
interval. A ratio of one is the overall experience; above one is an
excess and below one a deficit. Use it after \code{\link{expcnts}}
to say which areas differ from the overall rate by more than chance.


With observed count \eqn{O} and expected \eqn{E}, \eqn{SIR = O / E}.
The interval for \eqn{1 - \alpha} coverage is
\deqn{\left[\frac{G^{-1}(\alpha/2;\, O)}{E},\ \frac{G^{-1}(1-\alpha/2;\,
O+1)}{E}\right]} where \eqn{G^{-1}(p; k)} is the gamma quantile with shape
\eqn{k}; the lower limit is 0 when \eqn{O = 0}. This is the exact Poisson
interval, from the relation between the Poisson and gamma distributions, and
so is identical to \code{stats::poisson.test()}'s. It is the interval to use
here because the counts that matter are small: a normal approximation on an
observed count of three is not an interval, it is a decoration.

Each area's interval is a separate test; with many areas some will
exclude one by chance (see \code{\link{scanadj}}). A row with a missing
observed or expected count is dropped whole (its area label with it), after
the lengths are compared.

Errors: negative, infinite or non-numeric counts; an expected count of
zero or below; lengths that differ (a single \code{expd} is recycled).
A \code{conflvl} outside (0, 1) is an error.

}
\section{Age-standardise survey percentages (\code{stdprev})}{

The percentage (or proportion, or rate) a group would have with the age
structure of a standard population, from the estimate and published limits in
each age group: for comparing First Nations, Metis and Inuit prevalences
(suicidal thoughts, mood and anxiety disorders, heavy drinking) with each
other and with an older population, for example, when the age pattern of the
outcome is steep.


With estimates \eqn{p_i}, standard errors \eqn{s_i = (u_i - l_i) /
(2z)} and standard weights \eqn{w_i} (the standard's shares), the
standardised estimate is \eqn{\sum w_i p_i} with standard error
\eqn{\sqrt{\sum w_i^2 s_i^2}}, the age groups being disjoint domains of the
survey (treated as independent: see \code{\link{indgap}}). The interval is
normal, cut at 0 and at \code{scale}. A group with a suppressed or missing
age group, or one whose published interval misses its own estimate, has no
standardised value: the age group is not imputed. The standard should be the
age structure of the population compared, or a common one: for First Nations,
Metis and Inuit comparisons, the Indigenous population's own
(\code{\link{cnsstd}}; Kumar and Tjepkema 2019).

}
\section{A single step change, with the scan's own null distribution (\code{stepchg})}{

Asks whether a series shifted to a new level at some point (for example
after a policy change) and, if so, where. It scans every admissible
split of the series, reports the one with the largest difference between
the before and after means, and gives it a p-value from the permutation
distribution of the MAXIMUM over splits -- not from the best split's own
test, which is the standard way to find a change point in noise.


For a split after period \eqn{k}, with \eqn{n_a = k} and
\eqn{n_b = n - k} periods and means \eqn{\bar y_a}, \eqn{\bar y_b}, the
statistic is the between-segment sum of squares
\deqn{T_k = \frac{n_a n_b}{n} (\bar y_a - \bar y_b)^2,}
over \eqn{k = m, \dots, n - m} with \eqn{m} = \code{minseg}. The
observed \eqn{\max_k T_k} is compared with the same maximum over
reorderings of the series, and \eqn{p = (1 + \mathrm{count}(T^*_{\max} \ge
T_{\max}))/(1 + B)} over \eqn{B} random reorderings. When \eqn{n! \le}
\code{nperm} (with the default, \eqn{n \le 7}) every ordering is
enumerated, the observed one among them, and the p-value is exact:
\eqn{\mathrm{count}(T^*_{\max} \ge T_{\max}) / n!};
otherwise \code{nperm} random permutations are drawn under \code{seed},
and the caller's random number stream is restored afterwards.

The test assumes the periods are exchangeable under no change, so it ignores
autocorrelation and smooth trends; a steady trend can produce a
\code{"step"}. With very few periods even a clean step cannot reach small
p-values (six periods allow only 720 orderings). Missing values are dropped.
A series with values beyond 1e150 is scanned in units of its largest absolute
value, so the statistic does not overflow; \code{before}, \code{after} and
\code{difference} are given back in the units of \code{y}, and
\code{statistic} stays in the rescaled units. Errors: infinite values; fewer
than \code{2 * minseg} periods; numeric or date \code{x} that is not strictly
increasing. A progress bar is shown in an interactive session.

}
\section{Effects of a policy adopted at different times (\code{stgatt})}{

Group-time average treatment effects for staggered adoption, with no unit
used as a control after it is treated (Callaway and Sant'Anna 2021), or the
extended two-way fixed-effects regression with a coefficient for every cohort
and period (Wooldridge 2021); aggregated to one effect and to effects by time
since adoption.


Let the cohort \eqn{g} be the units first treated in period \eqn{g},
and \eqn{C} the comparison units: never treated (\code{control = "never"}),
or not yet treated by period \eqn{\max(t, g - 1)} (\code{"notyet"}, the
default). For \code{meth = "csa"}, \deqn{ATT(g, t) = \big(\bar Y_{g,t} -
\bar Y_{g,b}\big) - \big(\bar Y_{C,t} - \bar Y_{C,b}\big),}{ATT(g, t) =
(Y_g,t - Y_g,b) - (Y_C,t - Y_C,b),} with base period \eqn{b = g - 1} for
\eqn{t \ge g}, and \eqn{b = t - 1} before (the \code{"varying"} base of the
\code{did} package), so a pre-period ATT is a placebo of one period. It needs
a balanced panel.

With \code{covs}, parallel trends need only hold conditionally on them, and
each \eqn{ATT(g, t)} is the two-period estimator of Sant'Anna and Zhao (2020)
on the cohort and its comparison units, with the covariates taken at the base
period \eqn{b} (use covariates fixed before treatment: one the policy moves
is a bad control). With \eqn{\Delta Y = Y_t - Y_b}, \eqn{D} the cohort
indicator, \eqn{\hat m(X)} the least-squares fit of \eqn{\Delta Y} on \eqn{X}
among the comparison units and \eqn{\hat p(X)} the logistic propensity of
belonging to the cohort, \deqn{\widehat{ATT}_{dr} = \frac{\sum D (\Delta Y -
\hat m)}{\sum D} - \frac{\sum w (\Delta Y - \hat m)}{\sum w}, \quad w =
\frac{\hat p (1 - D)}{1 - \hat p};}{ATT_dr = sum D (dY - m) / sum D - sum w
(dY - m) / sum w, w = p (1 - D) / (1 - p);} \code{estmeth = "ipw"} drops
\eqn{\hat m} (normalised inverse probability weighting) and \code{"reg"}
drops the weights (outcome regression). The doubly robust form is consistent
when either the propensity or the outcome model is right. Comparison units
with \eqn{\hat p \ge 0.995} are trimmed, as the \code{DRDID} package does.
These agree with \code{did::attgt()} to rounding error.

For \code{meth = "wooldridge"}, the regression of the outcome on unit and
period effects and an indicator for every treated cohort-period cell, with
never-treated (or last-treated) units as the comparison, gives each
\eqn{ATT(g, t)} as a coefficient; without covariates it equals the imputation
estimator.

The overall effect averages the post-adoption \eqn{ATT(g, t)} weighted by
cohort size; the event-time effect \eqn{\theta(e)} averages \eqn{ATT(g, g +
e)} over the cohorts observed at \eqn{e}, weighted by cohort size. Standard
errors come from the cluster bootstrap: units (or clusters) are resampled
with replacement \code{reps} times and everything recomputed; intervals are
normal with the bootstrap standard error.

}
\section{Westfall-Young stepdown p-values (\code{stpdnpv})}{

Adjusted p-values for several hypotheses tested together, from the joint null
distribution of their statistics (permutations or bootstrap draws), holding
the family-wise error rate while using the correlation between the tests.


The statistics are ordered by size, \eqn{|t_{(1)}| \ge \dots \ge
|t_{(K)}|}. For each null draw \eqn{b}, \eqn{q_{b,j} = \max_{r \ge j}
|t^*_{b,(r)}|}. The adjusted p-value of the \eqn{j}th is the share of draws
with \eqn{q_{b,j} \ge |t_{(j)}|}, made monotone: \eqn{\tilde p_{(j)} =
\max(\tilde p_{(j-1)}, p_{(j)})} (Westfall and Young 1993, algorithm 2.8).

}
\section{Compare survey estimates between domains (\code{svycmp})}{

Each domain's estimate against a reference domain: the
difference, its standard error from the design (the
covariance between the two estimates included, which is what
a pair of separate intervals leaves out), a confidence
interval and a two-sided p-value from the normal
approximation. Use it to test whether two regions or groups differ, rather
than checking whether their separate intervals overlap: overlapping
intervals do not mean no difference, and domains of one survey are not
independent.


The estimates come from \code{\link[=svyest]{svyest()}} with Wald
intervals. For domain
\eqn{i} and reference \eqn{0} the difference is \eqn{d = \hat\theta_i -
\hat\theta_0} with \eqn{SE(d) = \sqrt{V_{ii} + V_{00} - 2V_{i0}}} from the
design covariance; the interval is \eqn{d \pm z\,SE(d)} and the p-value
\eqn{2\Phi(-|d|/SE(d))}, both on the normal distribution (there is no
\code{df} argument). For a proportion every category is compared
separately. No adjustment for multiple comparisons is made.

Errors: \code{by} missing or empty; fewer than two domains; a \code{ref}
that is not a single domain label present in the data; and every error of
\code{\link[=svyest]{svyest()}}.

}
\section{Describe a complex survey design (\code{svydes})}{

Collects what design-based estimation needs: the final
weight, and either a set of replicate weights or the strata
and primary sampling units (PSUs) for Taylor linearization.
\code{\link[=svyest]{svyest()}} and
\code{\link[=svycmp]{svycmp()}} take the result. Use it once per
survey file: a
public-use file from Statistics Canada or Health Canada ships its final
weight and a set of bootstrap replicate weights, and estimates computed
without them understate the standard errors. The design checks the
replicate columns it is given and remembers the rows it was built on, so a
later estimate cannot silently be run on a reordered or different table.


Replicate variances are \eqn{v = s \sum_r (\hat\theta_r -
c)^2}, where \eqn{\hat\theta_r} is the estimate under
replicate weight \eqn{r}, \eqn{c} is the full-sample estimate
(\code{mse = TRUE}) or the mean of the replicate estimates, and
the scale \eqn{s} depends on how the replicates were made,
for \eqn{B} replicates:
\describe{
\item{\code{"bootstrap"}}{\eqn{1/B}: the Rao-Wu rescaled
bootstrap Statistics Canada ships with its public-use
files. It is not the survey package's \code{type = "bootstrap"}
(Canty and Davison's), whose scale is
\eqn{m/((m - 1)(B - 1))} for \eqn{m} PSUs a stratum: for
those replicates give that factor over \eqn{1/B} in
\code{rscales}, \eqn{B m/((m - 1)(B - 1))} for each, with
\code{mse = FALSE} (survey's default centring).}
\item{\code{"meanboot"}}{\eqn{R/B}, where each replicate
weight is the mean of \eqn{R} bootstrap weights
(\code{msize}). The Canadian Substance Use Survey 2023 ships
1,000 mean bootstrap weights with \eqn{R = 12}; Health
Canada's technical notes give the factor of 12,
equivalently Fay's BRR with \eqn{\rho = 1 - 1/\sqrt{12}}.}
\item{\code{"jk1"}}{\eqn{(B - 1)/B}, the delete-one jackknife.}
\item{\code{"brr"}}{\eqn{1/B}, balanced repeated replication.}
\item{\code{"fay"}}{\eqn{1/(B (1 - \rho)^2)}, Fay's BRR with
coefficient \code{rho}.}
\item{\code{"jkn"}}{the stratified delete-one-PSU jackknife: each
replicate has its own factor \eqn{(n_h - 1)/n_h} for the
\eqn{n_h} PSUs of the stratum it deletes from, given as
\code{rscales} (passed as \code{"jk1"}, JKn weights overstated the
standard error by 37 percent in a test design).}
}

The replicate columns are taken as given: which columns are
replicates is not guessed from their values (rules that tried
refused genuine designs, a dominant PSU or a jackknife on a
subset). Refused, because no genuine replicate can be it: the
\code{id}'s values, the row numbers, a column of \code{data} passed under
another name, a second column named like the weight or the \code{id}
that holds other values, and under JK1, JKn and BRR a copy of the
full-sample weight (equal to it, or within 1 percent of it on every
row; under JKn, a single replicate equal to it, while two or more
equal to it are kept, as a stratum left out of a subset leaves all
of its replicates at the weight). Not a copy: a
jackknife replicate that scales the rows by one factor
\eqn{k/(k - 1)} (its deleted PSU outside a subset), and, in a set
whose replicates are post-stratified or calibrated (factors off
0, 1, 2 and \eqn{k/(k - 1)}), a replicate equal or close to the
weight. Warned about, because a genuine set can produce it but
rarely does: under the bootstrap, more replicates equal to the
full-sample weight than chance draws; under the bootstrap or
Fay's method, a replicate within 1 percent of the weight on
every row, and under Fay's method one equal to it (a
post-stratified domain whose rows sit in one PSU per stratum);
under JK1 and JKn, one factor \eqn{k/(k - 1)} on every row with
no row left out that more or fewer replicates than \eqn{k} carry
(a rescaled copy beside a full set, or a lone stray; a genuine
set carries it on exactly \eqn{k}, on a subset too);
under JK1, JKn and BRR, a replicate that leaves no row out; a
replicate more than ten times the weight on a typical row (a
column on another scale, such as an outcome); and a
set whose replicates total, on average, under a tenth or over ten
times the weight (multipliers such as \pkg{survey}'s
\verb{$repweights} passed in place of replicate weights). A column of
\code{data} named in \code{reps}, and every column of an unnamed
matrix, is a replicate because it was given as one; a stray that
is itself shaped like a replicate (another design's multipliers, a
constant under the bootstrap) cannot be told from one. BRR and
Fay replicates must come in a Hadamard order (2, or a multiple of
4).

The data passed to \code{\link[=svyest]{svyest()}} must be the rows
the design was built on, in the same order: rows in another order
are refused
(within strata or PSUs too), and a column changed since (a
permuted outcome for a permutation test) is not a reorder.

The design's degrees of freedom (\code{df = "design"} in
\code{\link[=svyest]{svyest()}}) are PSUs less strata under
linearization; for replicate weights, the rank of the replicate weight matrix
less one, as the \code{survey} package computes them (twelve BRR
half-samples of an eight-stratum design have 8, not 11), or
\code{degf} when given.

Without replicates, the variance is the with-replacement
Taylor linearization: within each stratum \eqn{h} with
\eqn{n_h} PSUs, \eqn{(1 - f_h) n_h / (n_h - 1)} times the sum
of squared deviations of the PSU totals of the weighted
linearized values from their stratum mean, summed over strata
(\eqn{f_h} from \code{fpc}, zero without one). No strata means one
stratum; no PSUs means every respondent is its own PSU.

Errors: \code{data} not a data frame or with fewer than two rows; a named
column that \code{data} does not have, or a vector of the wrong length;
weights that are negative, missing or not finite, or replicate weights
that are missing or not finite (calibrated replicates may be negative);
both replicates and strata or PSUs; fewer than two replicates, or
replicate columns refused for the reasons above; BRR or Fay replicates not
in a Hadamard order; \code{type = "jkn"} without \code{rscales}, or
\code{rscales} not one non-negative number per replicate; \code{rho} not
in [0, 1) for Fay; \code{msize} or \code{degf} below 1; missing
strata or PSU labels; an \code{fpc} that is not positive, varies within a
stratum, or is smaller than the PSUs sampled.
Nothing is computed until \code{\link[=svyest]{svyest()}} is called,
so a single-PSU
stratum under \code{lonely = "fail"} is reported then.

}
\section{Estimate a mean, total, proportion or ratio from a survey design (\code{svyest})}{

Design-based point estimates with standard errors, confidence
intervals and coefficients of variation, for the whole
population or for each domain of \code{by}. A respondent outside a
domain, or missing the analysis variable, counts zero in that
domain and stays in the design, so the variance of a subgroup
estimate reflects the whole sample design. Use it for the figures a
survey report publishes (the prevalence of a behaviour by region, the mean
number of drinks, a population total) with the standard errors the survey's
design implies rather than those of a simple random sample.


The estimates are ratios of weighted totals: a mean is
\eqn{\sum w_i y_i / \sum w_i} over the domain, a total
\eqn{\sum w_i y_i}, a proportion the mean of the 0/1 indicator of each
category, and a ratio \eqn{\sum w_i y_i / \sum w_i x_i} with \eqn{x} the
\code{den}. Their variances come from the design: the replicate
formula, or Taylor linearization of the ratio (see
\code{\link[=svydes]{svydes()}}).

Proportions are reported for every category of \code{y} (or those
in \code{lvls}), each with its own interval. The default
interval for a proportion is Wilson's score interval at the
modified effective sample size of SAS PROC SURVEYFREQ, the
software behind Health Canada's published Canadian Substance
Use Survey intervals: \eqn{n / \mathrm{Deff}}, with the
design effect taken against the simple-random-sampling
variance \eqn{p(1 - p)/(n - 1)}, scaled by \eqn{(t_{n-1} /
t_{df})^2} for the design's degrees of freedom (Korn and
Graubard 1998; \eqn{t_{df}} is the normal quantile when the design's
degrees of freedom are infinite) and capped at the \eqn{n} respondents
behind the estimate. \code{ci = "logit"} builds the interval on the logit
scale and \code{"wald"} symmetrically. Means, totals and ratios
get the symmetric normal interval.

A domain with fewer than \code{minn} respondents is flagged, not
withheld: Health Canada suppresses such CSUS estimates in its
data tool (denominator under 30), and the flag lets the
reader do the same. Other flags say why a standard error is missing (no
stratum with two PSUs, a replicate that left the domain empty, weights all
zero) or that a domain has no respondents.

Errors: \code{des} not from \code{\link[=svydes]{svydes()}};
\code{data} not the rows
the design was built on, in the same order; \code{y}, \code{by} or
\code{den} naming a column \code{data} does not have; a ratio
without \code{den}; \code{conflvl} outside (0, 1); \code{df}
not positive, \code{Inf} or \code{"design"}, or a design with no degrees
of freedom under \code{df = "design"}; a single-PSU stratum under
\code{lonely = "fail"}.

}
\section{Difference in differences for treatments that switch on and off (\code{swtdid})}{

De Chaisemartin and D'Haultfoeuille's estimator of the effect at the moment
units switch: in every period, units that switch into treatment are compared
with units untreated in both periods, and units that switch out with units
treated in both; with the placebo that runs the same comparison one period
earlier.


For each period \eqn{t} with joiners (\eqn{D_{t-1} = 0, D_t = 1})
and stayers untreated in both, \eqn{DID_{+,t}} is the joiners' mean change in
the outcome minus the stayers'; with leavers (1 to 0) and stayers treated in
both, \eqn{DID_{-,t}} is the stayers' change minus the leavers'. The estimate
is \deqn{DID_M = \sum_t \frac{N_{J,t}}{N_S} DID_{+,t} + \frac{N_{L,t}}{N_S}
DID_{-,t},}{DID_M = sum_t (N_J,t DID_+,t + N_L,t DID_-,t) / N_S,} over the
\eqn{N_S} switchers. The placebo compares, between \eqn{t - 2} and \eqn{t -
1}, the change of the units that switch at \eqn{t} with that of the units
whose treatment did not change over \eqn{t - 2} to \eqn{t}; it should be near
zero. Standard errors come from the cluster bootstrap. Unlike the two-way
estimator, \eqn{DID_M} never uses a unit whose treatment changed as a control
in the period it changed.

}
\section{Synthetic control for one treated unit (\code{synctl})}{

A weighted average of untreated units that tracks the treated unit before the
policy, as its counterfactual after; with the placebo test that runs the same
method on every untreated unit.


The weights solve \deqn{\min_w \sum_{t < T_0} \Big(Y_{1t} - \sum_j
w_j Y_{jt}\Big)^2 \quad \textrm{s.t.} \quad w_j \ge 0,\ \sum_j w_j =
1,}{min_w sum_(t < T0) (Y_1t - sum_j w_j Y_jt)^2, w_j >= 0, sum_j w_j = 1,}
over the periods before adoption \eqn{T_0} (accelerated projected gradient
onto the simplex; the problem is convex, so the solution is the global one).
The effect in each period is the gap \eqn{Y_{1t} - \sum_j w_j Y_{jt}}. For
inference, each untreated unit in turn is treated as if it had adopted the
policy, with the other untreated units as donors; the ratio of root mean
squared gap after to before adoption ranks the real unit among the placebos,
and \eqn{p} is its rank over the number of units (Abadie, Diamond and
Hainmueller 2010).

This version matches on the pre-period outcomes only, not on separate
predictors.

}
\section{Synthetic difference in differences (\code{syndid})}{

Arkhangelsky et al.'s estimator for units adopting a policy at one date:
comparison units weighted so their pre-period path parallels the treated
units', pre-periods weighted so they predict the post-period, and the
difference in differences taken with both weights.


With \eqn{N_0} comparison units, \eqn{N_1} treated, \eqn{T_0}
pre-periods and \eqn{T_1} post-periods, the unit weights solve
\deqn{\min_{\omega_0, \omega \in \Delta} \frac{1}{T_0}\sum_{t \le
T_0}\Big(\omega_0 + \sum_j \omega_j Y_{jt} - \bar Y_{1t}\Big)^2 + \zeta^2
\|\omega\|^2,}{min (1/T0) sum_t (w0 + sum_j w_j Y_jt - Ybar_1t)^2 + zeta^2
||w||^2,} with \eqn{\zeta = (N_1 T_1)^{1/4} \hat\sigma} and \eqn{\hat\sigma}
the standard deviation of the comparison units' first differences before
adoption; the time weights solve the same problem across comparison units,
predicting each unit's post-period mean from its pre-periods, with \eqn{\zeta
= 10^{-6}\hat\sigma}. The estimate is \deqn{\hat\tau = \Big(\bar Y_{1,post} -
\sum_t \lambda_t \bar Y_{1t}\Big) - \sum_j \omega_j \Big(\bar Y_{j,post} -
\sum_t \lambda_t Y_{jt}\Big).}{tau = (Y1post - sum lambda Y1t) - sum_j w_j
(Yjpost - sum lambda Yjt).} The weights are the exact solutions of these
convex problems (the \code{synthdid} package runs Frank-Wolfe and then
sparsifies, so its estimate differs slightly). The standard error is the
placebo one when there is one treated unit (each set of \eqn{N_1} comparison
units in turn treated as if adopting, weights re-estimated), else the
jackknife over units with the weights held fixed (Arkhangelsky et al. 2021,
algorithms 3 and 4).

}
\section{Strongest pairwise correlations in a data frame (\code{topcors})}{

Ranks the numeric column pairs by the strength of their association and
returns the strongest, so a wide table's structure can be read without
squinting at a correlation matrix. Use it on a new data set to find
near-duplicate columns, derived columns and the relationships worth a
closer look.


Spearman is the default deliberately. Pearson measures LINEAR
association only, so it understates a relationship that is perfectly
monotone but curved, and a single outlier can manufacture or destroy it.
On data you have not yet inspected -- which is the situation this
function is for -- the rank correlation is the safer question to ask.

Non-numeric columns are ignored. Each pair uses the rows where both
values are present; a pair with fewer than three such rows, or with a
constant column, has no correlation and is left out. Pairs are ranked by
absolute correlation, those below \code{minabs} dropped, and the first
\code{n} returned. \code{\link[=cortbl]{cortbl()}} gives every
pair, with the
number of rows behind each. A progress bar is drawn on stderr for many
pairs unless \code{options(morie.quiet = TRUE)}.

Errors: \code{data} not a data frame; fewer than two numeric columns;
\code{n} not one positive whole number; \code{minabs} not one number in
\eqn{[0, 1]}; an invalid \code{meth}.

}
\section{Calls to Action completed, year by year (\code{trccmpl})}{

The number of the Truth and Reconciliation Commission's 94 Calls to Action
that the Yellowhead Institute's annual accountability reports judged
complete, by the year they were completed, to the end of 2022: the only
counts here are those the reports state.


2015-2019: 8 (13 in all by December 2022, less those of 2020-2022);
2020: none; 2021: 3, all in June; 2022: 2 (Jewell and Mosby 2021, 2022).
Other trackers count otherwise: the federal government reports by theme
rather than call by call; CBC's Beyond 94 and Indigenous Watchdog grade each
call on their own scales and are copyrighted, so their tables are not
reproduced. The reports are licensed CC BY-NC 2.5 Canada; the counts are
facts taken from them, with the reports cited.

}
\section{How fast the Calls to Action are being completed (\code{trcprog})}{

From cumulative counts of completed Calls to Action over time, the completion
rate (calls a year), its exact Poisson interval, and the year all 94 would be
complete at that rate.


Completions are taken as a Poisson process with a constant rate over
the span from the start (\code{start}, the Commission's final report in
December 2015) to the last count: the rate is \eqn{c / T} with the exact
(Garwood) interval for \eqn{c} completed calls, and the projection is the
year \eqn{94 - c} more would take at that rate (at the interval's ends, its
range). A constant rate is the simplest model, and the one behind the
Yellowhead Institute's projection (\dQuote{42 years, or until 2065}, 2022);
with the counts to the end of 2022 and December 2015 as the start it gives
2067. The pace has not been constant, so the projection is a description of
the pace so far, not a forecast. Any count of commitments completed over time
can be modelled the same way: set \code{total} and \code{start}.

}
\section{Trend in a short series (\code{trndtst})}{

Tests whether a short series (for example five to ten fiscal years of an
administrative count) is rising or falling, and estimates the size of the
change per period. It uses the Mann-Kendall rank test for monotone trend
and the Theil-Sen median-of-slopes estimator: no distributional
assumption, resistant to a single aberrant period, and meaningful at the
series lengths an annual administrative extract actually has.


With values \eqn{y_1, \dots, y_n} in period order,
\deqn{S = \sum_{i < j} \mathrm{sign}(y_j - y_i),}
and Kendall's tau here is \eqn{S / (n(n-1)/2)}, the rank correlation
between the value and the period. The Theil-Sen slope is the median of
the pairwise slopes \eqn{(y_j - y_i)/(x_j - x_i)};
\code{intercept} is the line's intercept from the compiled Theil-Sen
routine.

For \eqn{n \le 8} the p-value is exact by default: \eqn{S} is computed
over every ordering of the observed values (with ties kept, so tied data
get the correct conditional null). Otherwise the normal approximation is
used, with the tie-corrected variance of \eqn{S} and a continuity
correction of one unit toward zero. Exact tables are cached in the
session, up to 32 of them. A series whose values are all tied has
\eqn{S = 0} in every ordering, so its p-value is 1 at every length.

The slope interval is the standard rank-based one: the pairwise slopes
are sorted and the interval runs between the order statistics that
Mann-Kendall's variance places at the chosen level, so it is consistent
with the test rather than derived from a different model. At small
\eqn{n} the slopes may not reach the requested confidence; the bound is
then the most extreme slope and \code{slopecicla} is \code{TRUE}.

Missing periods are dropped and the series is sorted by \code{x}. Errors:
fewer than three periods; infinite values; \code{x} and \code{y} of different
lengths; a period given twice in \code{x}; a data frame without \code{value}
or with a column not found; more than 20,000 periods (the pairwise slopes
would not fit in memory); a \code{conflvl} outside (0, 1). \code{exact =
TRUE} with \eqn{n > 8} warns and uses the normal approximation.

}
\section{How far parallel trends can fail before an effect disappears (\code{tse})}{

Bounds on the effects of an \code{\link{evstudy}} when the trend after
adoption may depart from parallel by up to \eqn{\bar M} times the largest
departure seen before it (Rambachan and Roth's relative magnitudes), with a
conservative interval and the \code{"breakdown"} \eqn{\bar M} at which the
interval first includes zero.


Let \eqn{\delta_e} be the bias of the event-time coefficient
\eqn{\beta_e}, with \eqn{\delta_{-1} = 0} at the reference period and the
pre-period biases identified by the leads. The relative-magnitudes
restriction is \eqn{|\delta_{e+1} - \delta_e| \le \bar M D}, with \eqn{D =
\max_{s < 0} |\delta_{s+1} - \delta_s|} the largest change between
consecutive pre-periods. The bias at post-period \eqn{e \ge 0} is then at
most \eqn{(e + 1)\bar M D} in absolute value, so the identified set for the
effect \eqn{\tau_e} is \eqn{\beta_e \pm (e + 1)\bar M D}, and for the average
post-period effect the average of those. The interval draws \eqn{(\beta^*)}
from the normal distribution of the estimates (with the event study's
cluster-robust covariance), computes the bounds for each, and takes the
\eqn{\alpha/2} quantile of the lower bound and the \eqn{1 - \alpha/2}
quantile of the upper: by Bonferroni it covers the identified set, and so the
effect, with probability at least \code{conflvl}. It is conservative;
Rambachan and Roth's conditional and hybrid intervals (the \code{HonestDiD}
package) are shorter.

}
\section{Run the pollution-to-health pipeline and report it (\code{vrfpol})}{

Resolves the exposure (synthetic demo data, a CSV with an \code{exposure}
column and an optional \code{income} column, a NAPS-style pull with a
\code{value} column and a \code{unit}, or scalar arguments), logs the
assumptions, and when they all hold runs the concentration-response,
attributable-fraction, displaced-mortality, burden and equity stages.
\code{polrpttxt()} renders the result as plain text. It is the
one-call version of the pollution functions, made for scripts and the
command line: it never stops with an R error for bad input, but returns
a report whose status says what went wrong.


The assumption log checks that the exposure mean is finite and
non-negative and at most 10,000 micrograms per cubic metre, the
prevalence is in \eqn{[0, 1]}, the baseline rate (converted to per
100,000) is zero or between 1 and 10,000 per 100,000 a year (from 1e-6
with \code{rare}, up to 100,000 with \code{hirate}), the
population is positive and at most 10 billion, the reference is finite
and non-negative, and the pollutant has a CRF. Any failure gives status
\code{"assumption_failure"} and skips the stages.

With data (a CSV or the demo), the \code{"exposed"} are the rows above the
reference: their mean is \code{expomean} and their share
\code{expoprev}. Empty cells and missing-value tokens
(\code{NA}, \code{n/a}, \code{null}, \code{-} ...) are dropped with a
message; text that is not a number (a detection-limit flag such as
\code{"<2"}) and negative values stop the run with an error report. A
gzip, bzip2 or xz file is decompressed; UTF-16 and Latin-1 files are
decoded. An \code{income} column, when present and numeric, gives the
equity stage (\code{\link{expconcidx}}).

The stages: \code{\link{crfpm25}} or \code{\link{crfno2}};
\code{\link{attrfrac}} with the CRF's interval;
\code{\link{mortdisp}} for removing the excess exposure over
the exposed population, with \eqn{\beta = \log(RR) / (\bar x - x_{ref})};
and \code{\link{polbrdn}}. The demo data are 1,000 synthetic
units with lognormal exposures at the scale of Toronto NO2 or PM2.5
levels and five income groups, drawn with a fixed seed (R's own random
stream is restored).

}
\section{The wild cluster bootstrap for a difference in differences with few clusters (\code{wcb})}{

A p-value and confidence interval for the treatment effect of
\code{\link{plndid}} that stay accurate when there are few clusters (a policy
assigned to a handful of districts or states), where the cluster-robust t
test over-rejects.


This is the restricted wild cluster bootstrap (WCR) of Cameron,
Gelbach and Miller (2008). The model is fitted with the null \eqn{\beta =
\beta_0} imposed; each bootstrap outcome is the restricted fit plus its
residuals multiplied, cluster by cluster, by a random sign (Rademacher) or by
one of Webb's six values; the cluster-robust t statistic is recomputed each
time. The p-value is the share of bootstrap \eqn{|t^*|} at least \eqn{|t|}.
With \code{ties = "count"} (the default) a draw that equals \eqn{|t|} counts:
the sign patterns that reproduce the data are among the draws, as the
observed assignment is in a permutation test, and the test is exact at its
level. With \code{"strict"} only draws above \eqn{|t|} count, as
\code{fwildclusterboot} does; under full enumeration this gives a smaller
p-value (the two sign patterns that reproduce \eqn{|t|} are left out). With
Rademacher weights and \eqn{2^G \le} \code{reps} every sign pattern is
enumerated (as \code{fwildclusterboot} does); with very few clusters (under
about 12) Webb's weights, which have more distinct values, are better. The
interval collects the \eqn{\beta_0} not rejected at \eqn{1 -} \code{conflvl},
found by bisection with the same draws; it is unbounded when no value can be
rejected (with Rademacher weights and \eqn{G} clusters the smallest
attainable p-value is \eqn{2/2^G}, so four clusters can never reject at 5\%:
that is the honest answer, not a failure of the method).

}
\section{Wellness beside distress: a strengths-first profile of published indicators (\code{welprof})}{

Puts a group's wellness indicators (life satisfaction, perceived mental
health, a hopeful outlook, a sense of belonging, a strong cultural identity)
first and its distress indicators (suicidal thoughts, mood and anxiety
disorders, fair or poor mental health) after them, each with its published
interval, for each First Nations, Metis and Inuit group: so that a table of
mental health is never read, or plotted, as a list of deficits alone.


Indigenous scholars of mental health define it as wellness and as a
process of healing, grounded in community, cultural identity, a holistic view
and interdependence (Stewart 2008), and ask that strengths be reported
together with disparities (Stewart 2020). This function puts that into how
published estimates are reported; it adds no estimate of its own. The
optional \code{domain} groups indicators by the holistic domains of the
Medicine Wheel teachings that Gabriel, Mirza and Stewart (2022) describe
(physical, emotional, mental, spiritual). That grouping is a way to lay out
the table, not a validated scale, and published tables have few indicators of
the spiritual domain: the profile says what is there and does not stand one
indicator in for another.

Aggregate tables show how indicators vary together across groups; they cannot
show that culture, land or belonging protects mental health within a group,
which would be an ecological inference. The differences these tables show
between groups are the effects of colonial policy and of structural
conditions, not of the people in the groups (Gabriel et al. 2022); their
interpretation belongs with First Nations, Metis and Inuit communities.

\subsection{Acknowledgement}{
 This estimator puts to quantitative use the
framework of Professor Suzanne Stewart (Yellowknives Dene First Nation,
University of Toronto).

See the acknowledgements of the \code{first-nations-metis-inuit-health}
vignette.
}
}
\section{Add publication bounds to a year-over-year table (\code{yoybnd})}{

\code{\link[=yoy]{yoy()}} gives an exact conditional-binomial interval for the percent
change of a count, which covers sampling variation. This adds the
interval that rounding and suppression in the published cells imply
(\code{\link[=pubbnd]{pubbnd()}} carried through
\code{\link[=chgenv]{chgenv()}}), and a
combined interval that is the union of the two, which is the honest
range for a figure read off a rounded table.


The \code{value} and \code{previous} columns of \code{y} are passed to
\code{\link[=pubbnd]{pubbnd()}} with the same rounding and
suppression settings, and
the two intervals to \code{\link[=chgenv]{chgenv()}}. The combined
interval is the
smallest interval that contains both the sampling interval
(\code{pctlo}, \code{pctup}) and the publication envelope: its
lower end is the smaller of the two lower ends, its upper end the larger of
the two upper ends. Where either is \code{NA} (the first period, or a
previous cell that could be zero) the combined end is \code{NA}. The
function does not check that \code{y} holds counts; publication bounds
make sense only for counts.

Errors when \code{y} does not come from \code{\link[=yoy]{yoy()}}, and for the reasons
\code{\link[=pubbnd]{pubbnd()}} gives.

}
\section{Exact p-values for the rows of a year-over-year table (\code{yoypv})}{

Adds a two-sided exact p-value to each row of a period-over-period change
table of counts from \code{\link{yoy}}, testing whether the count changed
by more than chance between the two periods. Use it when you want a test
to go with each change, and then pass the table to
\code{\link{scanadj}} to correct for the number of rows tested.


For count units the interval in \code{\link[=yoy]{yoy()}} is the exact conditional
binomial interval for the ratio of two Poisson means; this is the
matching two-sided test. The test conditions on
the total of the two periods and asks whether the split is
compatible with equal means: with current count \eqn{a} and previous
count \eqn{b}, \eqn{a \sim \mathrm{Binomial}(a + b, 1/2)} under the null,
and the p-value is that of \code{stats::binom.test(a, a + b, p = 0.5)}.
The two periods are treated as having equal exposure; for changing
populations use \code{\link{ratechg}} and \code{\link{scanadj}},
which weight by the exposures. Counts are rounded to whole numbers.

Errors: \code{y} not a \code{yoy()} result; a \code{yoy()} result whose
units are not counts (percentages and measured values have no Poisson
test). A progress indicator is shown for long tables in an interactive
session.

}
\references{

Fay MP, Feuer EJ (1997). Confidence intervals for directly
standardized rates: a method based on the gamma distribution. Statistics in
Medicine 16(7):791-801.\cr
DOI 10.1002/(sici)1097-0258(19970415)16:7<791::aid-sim500>3.0.co;2-#

Kumar MB, Tjepkema M (2019). Suicide among First Nations people, Metis and
Inuit (2011-2016): Findings from the 2011 Canadian Census Health and
Environment Cohort (CanCHEC). Statistics Canada 99-011-X2019001.


Robins JM, Rotnitzky A, Zhao LP (1994). Estimation of regression
coefficients when some regressors are not always observed. Journal of the
American Statistical Association 89(427):846-866.
DOI 10.1080/01621459.1994.10476818

Chernozhukov V et al. (2018), see \code{\link{plndml}}.


Rothman, K. J., Greenland, S. and Lash, T. L. (2008). Modern
Epidemiology, 3rd ed., chapter 5. Levin, M. L. (1953). The occurrence of
lung cancer in man. Acta Unio Internationalis Contra Cancrum 9, 531-541.


Goodman-Bacon A (2021). Difference-in-differences with variation
in treatment timing. Journal of Econometrics 225(2):254-277.
DOI 10.1016/j.jeconom.2021.03.014


Welch BL (1947). The generalization of \sQuote{Student's} problem
when several different population variances are involved. Biometrika
34(1-2):28-35. DOI 10.1093/biomet/34.1-2.28


Benford F (1938). The law of anomalous numbers.
\emph{Proceedings of the American Philosophical Society} 78(4), 551--572.


Applied to blocks near donor stores: Zorro Medina, Hackett, Green
and Vargas (2025), see \code{\link{evstudy}}.


Efron B, Tibshirani RJ (1993). \emph{An Introduction to the
Bootstrap}. Chapman and Hall.


Ozaki T (1979). Maximum likelihood estimation of Hawkes'
self-exciting point processes. \emph{Ann. Inst. Statist. Math.} 31,
145--155. DOI 10.1007/BF02480272

Beylkin G, Monzon L (2010). Approximation by exponential sums revisited.
\emph{Appl. Comput. Harmon. Anal.} 28, 131--149.
DOI 10.1016/j.acha.2009.08.011

Veen A, Schoenberg FP (2008). Estimation of space-time branching process
models in seismology using an EM-type algorithm. \emph{JASA} 103, 614--624.
DOI 10.1198/016214508000000148

Kirchner M (2017). An estimation procedure for the Hawkes process.
\emph{Quant. Finance} 17, 571--595. DOI 10.1080/14697688.2016.1211312

Filimonov V, Sornette D (2015). Apparent criticality and calibration issues
in the Hawkes self-excited point process model: application to
high-frequency financial data. \emph{Quant. Finance} 15(8), 1293--1314.
DOI 10.1080/14697688.2015.1032544


Filimonov V, Sornette D (2015). Apparent criticality and
calibration issues in the Hawkes self-excited point process model:
application to high-frequency financial data. \emph{Quant. Finance}
15(8), 1293--1314. DOI 10.1080/14697688.2015.1032544


Hawkes AG (1971). Spectra of some self-exciting and mutually
exciting point processes. \emph{Biometrika} 58(1), 83--90.
DOI 10.1093/biomet/58.1.83


Brown EN, Barbieri R, Ventura V, Kass RE, Frank LM (2002). The
time-rescaling
theorem and its application to neural spike train data analysis.
\emph{Neural Comput.}
14, 325--346. DOI 10.1162/08997660252741149


Rosenbaum PR, Rubin DB (1983). The central role of the
propensity score in observational studies for causal effects.
\emph{Biometrika} 70(1), 41--55. DOI 10.1093/biomet/70.1.41


Bonczar TP (2003). Prevalence of imprisonment in the U.S.
population, 1974-2001. Bureau of Justice Statistics, NCJ 197976.

Applied to arrests, convictions and jail in New York City: Hepburn P,
Kohler-Hausmann I, Zorro Medina A (2019). Cumulative risks of multiple
criminal justice outcomes in New York City. Demography 56(3):1161-1171.
DOI 10.1007/s13524-019-00781-7


Joanes DN, Gill CA (1998). Comparing measures of sample skewness
and kurtosis. \emph{Journal of the Royal Statistical Society: Series D (The
Statistician)} 47(1), 183--189. DOI 10.1111/1467-9884.00122


Bilder, C. R. and Loughin, T. M. \emph{Analysis of Categorical Data with
R}, 2nd edn. Chapman and Hall/CRC, on the quasi-likelihood treatment of
an overdispersed Poisson fit: the variance is scaled by an estimated
dispersion, which widens the interval while leaving the point estimate
alone. That is the behaviour reported here through \code{dispersion} and
\code{overdispersed}.


Lannelongue, L., Grealey, J. and Inouye, M. (2021). Green
Algorithms: quantifying the carbon footprint of computation. Advanced
Science 8(12), 2100707. Courty, B. et al. (2024). CodeCarbon: estimate
and track carbon emissions from machine learning computing.
DOI 10.5281/zenodo.4658424. Lacoste, A., Luccioni, A., Schmidt, V. and
Dandres, T. (2019). Quantifying the carbon emissions of machine learning.
arXiv:1910.09700.


Ember (2026). Yearly Electricity Data, via Our World in Data,
ourworldindata.org/grapher/carbon-intensity-electricity.
Electricity Maps (2025). 2024 Yearly Carbon Intensity Data, via Green
Algorithms data v3.1. Lannelongue, L., Grealey, J. and Inouye, M. (2021).
Green Algorithms: quantifying the carbon footprint of computation.
Advanced Science 8(12), 2100707.


Inuit Tapiriit Kanatami (2016). National Inuit Suicide Prevention
Strategy. Ottawa. itk.ca/national-inuit-suicide-prevention-strategy

Carroll SR, et al. (2020), see \code{\link{holbal}}.


Hedderich, J. and Sachs, L. (2020). \emph{Applied Statistics: Methods Using
R}. Springer-Verlag, Berlin Heidelberg. Section 3.14, p. 117, gives the
construction used here: the units are placed at equal intervals on the
horizontal axis and the cumulated, ascendingly ordered shares of the
total on the vertical one, so that the curve is the diagonal exactly
when p percent of the units account for p percent of the total, and sags
further the greater the concentration.


Mashford-Pringle A, Stewart SL (2019). Akiikaa (it is the land):
exploring land-based experiences with university students in Ontario. Global
Health Promotion 26(3_suppl):64-72. DOI 10.1177/1757975919828722

Mashford-Pringle A (2016). Aboriginal health and Aboriginal education are
interconnected. Research in the Sociology of Health Care 34:85-96.
DOI 10.1108/s0275-495920160000034005


Bergsma, W. (2013). A bias-correction for Cramer's V and Tschuprow's T.
\emph{Journal of the Korean Statistical Society} 42(3), 323-328. (Not in
the local corpus; cited from the published paper.)


Spearman C (1904). The proof and measurement of association
between two things. \emph{The American Journal of Psychology} 15(1),
72--101. DOI 10.2307/1412159


Chen, J. and Hoek, G. (2020). Long-term exposure to PM and
all-cause and cause-specific mortality: a systematic review and
meta-analysis. Environment International 143, 105974. Huangfu, P. and
Atkinson, R. (2020). Long-term exposure to NO2 and O3 and all-cause and
respiratory mortality: a systematic review and meta-analysis. Environment
International 144, 105998. Khreis, H. et al. (2017). Exposure to
traffic-related air pollution and risk of development of childhood
asthma: a systematic review and meta-analysis. Environment International
100, 1-31. GBD 2019 Risk Factors Collaborators (2020). The Lancet
396(10258), 1223-1249. Burnett, R. T. et al. (2014). An integrated
risk function for estimating the global burden of disease attributable to
ambient fine particulate matter exposure. Environmental Health
Perspectives 122(4), 397-403. WHO (2021). Global Air Quality Guidelines.


Hyndman RJ, Fan Y (1996). Sample quantiles in statistical
packages. \emph{The American Statistician} 50(4), 361--365.
DOI 10.1080/00031305.1996.10473566

Tukey JW (1977). \emph{Exploratory Data Analysis}. Addison-Wesley.


National Institute of Standards and Technology (2015). Secure Hash
Standard (SHS). FIPS PUB 180-4.
DOI 10.6028/NIST.FIPS.180-4


Steele GL, Lea D, Flood CH (2014). Fast splittable pseudorandom
number generators. \emph{OOPSLA 2014}, 453--472.
DOI 10.1145/2660193.2660195


Penney C, O'Sullivan E, Senecal S (2012). The Community
Well-Being Index (CWB): Examining Well-Being in Inuit Communities, 1981-2006.
Aboriginal Affairs and Northern Development Canada.

O'Sullivan E, McHardy M (2013). The Community Well-Being (CWB) Index:
Disparity in Well-Being Between First Nations and Other Canadian Communities
Over Time. In White JP, Peters J, Beavon D, Spence N (eds), Aboriginal
Well-Being: Canada's Continuing Challenge. Thompson Educational.

Indigenous Services Canada (2019). Report on trends in First Nations
communities, 1981 to 2016 (Community Well-Being index).\cr
sac-isc.gc.ca/eng/1345816651029/1557323327644


Wu D, Olson DL (2010). Enterprise risk management: coping
with model risk in a large bank. \emph{Journal of the Operational Research
Society} 61(2), 179--190. DOI 10.1057/jors.2008.144

Lin J (1991). Divergence measures based on the Shannon entropy.
\emph{IEEE Transactions on Information Theory} 37(1), 145--151.
DOI 10.1109/18.61115


Hill BM (1975). A simple general approach to inference about the
tail of a distribution. \emph{Annals of Statistics} 3, 1163--1174.
DOI 10.1214/aos/1176343247

Anderson TW, Darling DA (1954). A test of goodness of fit. \emph{JASA} 49,
765--769. DOI 10.1080/01621459.1954.10501232


Flajolet P, Fusy E, Gandouet O, Meunier F (2007).
HyperLogLog: the analysis of a near-optimal cardinality estimation
algorithm. \emph{Analysis of Algorithms 2007}, 137--156.


Higgins JPT, Thompson SG (2002). Quantifying heterogeneity in a
meta-analysis. Statistics in Medicine 21(11):1539-1558.
DOI 10.1002/sim.1186


Keyes CLM (2002). The mental health continuum: from languishing
to flourishing in life. Journal of Health and Social Behavior 43(2):207-222.
DOI 10.2307/3090197

Keyes CLM (2005). Mental illness and/or mental health? Investigating axioms
of the complete state model of health. Journal of Consulting and Clinical
Psychology 73(3):539-548. DOI 10.1037/0022-006X.73.3.539

Stewart SL (2008), see \code{\link{holbal}}.


Clayton, D. and Kaldor, J. (1987). Empirical Bayes estimates of
age-standardized relative risks for use in disease mapping.
\emph{Biometrics} 43(3), 671-681.

Lawson, A. B. \emph{Using R for Bayesian Spatial and Spatio-Temporal Health
Modeling}. Chapman and Hall/CRC, which cites Clayton and Kaldor as the
empirical-Bayes approximation in the development of Bayesian disease
mapping.


Sun L, Abraham S (2021). Estimating dynamic treatment effects in
event studies with heterogeneous treatment effects. Journal of Econometrics
225(2):175-199.\cr DOI 10.1016/j.jeconom.2020.09.006

Applied to the effect of donations on police stops, block by quarter: Zorro
Medina A, Hackett D, Green D, Vargas R (2025). Evidence of donor bias in
Chicago police stops. arXiv:2504.15140 (https://arxiv.org/abs/2504.15140).


Lawson, A. B. \emph{Using R for Bayesian Spatial and Spatio-Temporal Health
Modeling}. Chapman and Hall/CRC. Chapter 1 sets out the convention used
here: the expected counts come from applying the overall population rate
to each area, and the standardised incidence ratio is the ratio of count
to expected.

Hedderich, J. and Sachs, L. (2020). \emph{Applied Statistics: Methods Using
R}. Springer, on the distinction between indirect standardisation, which
applies the reference's stratum-specific rates to the study population,
and direct standardisation, which does the reverse.


Wagstaff, A., Paci, P. and van Doorslaer, E. (1991). On the
measurement of inequalities in health. Social Science and Medicine 33(5),
545-557.


Efron, B. and Tibshirani, R. J. (1993). An Introduction to the
Bootstrap. Chapman and Hall.


McQuaid RJ, et al. (2017), see \code{\link{genexpo}}.


Spiegelhalter, D. J. (2005). Funnel plots for comparing institutional
performance. \emph{Statistics in Medicine} 24(8), 1185-1202.
DOI 10.1002/sim.1970

\emph{Advanced Statistics in Criminology and Criminal Justice} discusses
the funnel plot as the display of the relationship between an estimate
and the sample size behind it.

Lawson, A. B. \emph{Using R for Bayesian Spatial and Spatio-Temporal Health
Modeling}. Chapman and Hall/CRC, on the Poisson counts these limits are
built from.


Green Algorithms data v3.1, context.csv: car factor from
Helmers et al. (2019) Atmospheric Environment and UK BEIS 2019 conversion
factors; tree sequestration from Bernal et al. (2018) via the same file.


Walter M (2016). Data politics and Indigenous representation in
Australian statistics. In Kukutai T, Taylor J (eds), Indigenous Data
Sovereignty: Toward an Agenda, 79-97. ANU Press.
DOI 10.22459/caepr38.11.2016.05

Walter M, Andersen C (2013). Indigenous Statistics: A Quantitative Research
Methodology. Left Coast Press. DOI 10.4324/9781315426570


McQuaid RJ, Bombay A, McInnis OA, Humeny C, Matheson K, Anisman H
(2017). Suicide ideation and attempts among First Nations peoples living
on-reserve in Canada: the intergenerational and cumulative effects of Indian
Residential Schools. Canadian Journal of Psychiatry 62(6):422-430.
DOI 10.1177/0706743717702075

Bombay A, Matheson K, Anisman H (2014). The intergenerational effects of
Indian Residential Schools: implications for the concept of historical
trauma. Transcultural Psychiatry 51(3):320-338.
DOI 10.1177/1363461513503380


Stewart SL (2008), see \code{\link{holbal}}.


Clauset, A., Shalizi, C. R. and Newman, M. E. J. (2009). Power-law
distributions in empirical data. \emph{SIAM Review} 51(4), 661-703. The
estimator and its threshold guidance are theirs; the continuity
correction they give in closed form is an asymptotic approximation in
\code{xmin}, which is why the exact likelihood is maximised here
instead. (Not in the local corpus; cited from the published paper.)


Atkinson AB (1970). On the measurement of inequality. Journal of
Economic Theory 2(3):244-263. DOI 10.1016/0022-0531(70)90039-6

Carroll SR, Garba I, Figueroa-Rodriguez OL, et al. (2020). The CARE
Principles for Indigenous Data Governance. Data Science Journal 19:43.
DOI 10.5334/dsj-2020-043

Gabriel MD, Mirza S, Stewart SL (2022). Exploring mental health and holistic
healing through the life stories of Indigenous youth who have experienced
homelessness. International Journal of Environmental Research and Public
Health 19(20):13402. DOI 10.3390/ijerph192013402

Stewart SL (2008). Promoting Indigenous mental health: cultural perspectives
on healing from Native counsellors in Canada. International Journal of Health
Promotion and Education 46(2):49-56. DOI 10.1080/14635240.2008.10708129


The Euler-Maclaurin expansion used here -- direct terms to \code{q + N},
then the integral tail, then the Bernoulli-number corrections -- is the
standard evaluation; see Abramowitz, M. and Stegun, I. A.
\emph{Handbook of Mathematical Functions}, Sec. 23.2. (Not in the local
corpus; cited from the published reference. The implementation is
checked against \code{pi^2/6}, \code{pi^4/90}, Apery's constant and the
shift identity, which is stronger evidence than the citation.)


Statistics Canada (2025). Health indicators for First Nations
adults living off reserve, Metis and Inuit adults, 2015 to 2022. The Daily,
2025-02-13.\cr
www150.statcan.gc.ca/n1/daily-quotidien/250213/dq250213f-eng.htm

Carroll SR, Garba I, Figueroa-Rodriguez OL, et al. (2020). The CARE
Principles for Indigenous Data Governance. Data Science Journal 19:43.
DOI 10.5334/dsj-2020-043


Mahalanobis PC (1936). On the generalised distance in
statistics. \emph{Proceedings of the National Institute of Sciences of
India} 2(1), 49--55.


Little RJA (1988). A test of missing completely at random
for multivariate data with missing values. \emph{Journal of the American
Statistical Association} 83(404), 1198--1202.\cr
DOI 10.1080/01621459.1988.10478722

Dempster AP, Laird NM, Rubin DB (1977). Maximum likelihood from
incomplete data via the EM algorithm. \emph{Journal of the Royal Statistical
Society B} 39(1), 1--38.


Health Canada, Assembly of First Nations (2015). First Nations
Mental Wellness Continuum Framework. Ottawa: Health Canada. Summary
report:\cr sac-isc.gc.ca/eng/1576093687903/1576093725971


Moran, P. A. P. (1950). Notes on continuous stochastic phenomena.
\emph{Biometrika} 37(1/2), 17-23. Laniyonu (2017), on policing practices
in gentrifying neighbourhoods, uses the statistic as here, to establish
that areal residuals are spatially dependent.


US EPA (2018). Environmental Benefits Mapping and Analysis
Program - Community Edition, user manual. Anenberg, S. C. et al. (2010).
An estimate of the global burden of anthropogenic ozone and fine
particulate matter on premature human mortality using atmospheric
modeling. Environmental Health Perspectives 118(9), 1189-1195.


Daw JR, Hatfield LA (2018). Matching and regression to the mean
in difference-in-differences analysis. Health Services Research
53(6):4138-4156. DOI 10.1111/1475-6773.12993

Applied with spatial nearest-facility matching within judicial districts:
Zorro Medina A (2020). The failed war on pre-trial detention: evidence from a
quasi-experimental reform. DOI 10.2139/ssrn.3686855


Chan TF, Golub GH, LeVeque RJ (1983). Algorithms for
computing the sample variance: analysis and recommendations.
\emph{The American Statistician} 37(3), 242--247.\cr
DOI 10.1080/00031305.1983.10483115


Agresti A (1980). Generalized odds ratios for ordinal data.
Biometrics 36(1):59-67. DOI 10.2307/2530495

Bross IDJ (1958). How to use ridit analysis. Biometrics 14(1):18-38.
DOI 10.2307/2527727

Brunner E, Munzel U (2000). The nonparametric Behrens-Fisher problem:
asymptotic theory and a small-sample approximation. Biometrical Journal
42(1):17-25.
DOI 10.1002/(SICI)1521-4036(200001)42:1<17::AID-BIMJ17>3.0.CO;2-U


Fisher RA (1935). The Design of Experiments. Oliver and Boyd,
Edinburgh.

Applied with the four stages of a reform permuted across districts: Acosta,
Mejia and Zorro Medina (2023), see \code{\link{plndid}}.


Briggs, G. A. (1973). Diffusion estimation for small emissions.
ATDL Contribution 79. Briggs, G. A. (1975). Plume rise predictions.
American Meteorological Society. Turner, D. B. (1970). Workbook of
Atmospheric Dispersion Estimates. EPA AP-26. Seinfeld, J. H. and Pandis,
S. N. (2016). Atmospheric Chemistry and Physics, 3rd ed. Thomson, D. J.
(1987). Criteria for the selection of stochastic models of particle
trajectories in turbulent flows. Journal of Fluid Mechanics 180, 529-556.


Council of Europe, European Commission for the Efficiency of
Justice (CEPEJ) (2014). European judicial systems: efficiency and quality
of justice. CEPEJ Studies 20.

Applied to the stages of a Colombian criminal-procedure reform: Acosta, Mejia
and Zorro Medina (2023), see \code{\link{plndid}}.


Bertrand M, Duflo E, Mullainathan S (2004). How much should we
trust differences-in-differences estimates? Quarterly Journal of Economics
119(1):249-275. DOI 10.1162/003355304772839588

Cameron AC, Gelbach JB, Miller DL (2011). Robust inference with multiway
clustering. Journal of Business and Economic Statistics 29(2):238-249.
DOI 10.1198/jbes.2010.07136

Cameron AC, Miller DL (2015). A practitioner's guide to cluster-robust
inference. Journal of Human Resources 50(2):317-372.
DOI 10.3368/jhr.50.2.317

Applied to a staggered criminal-procedure reform, municipality by month:
Acosta C, Mejia D, Zorro Medina A (2023). On the tension between due process
protection and public safety: the case of an extensive procedural reform in
Colombia. DOI 10.2139/ssrn.4585682


Chernozhukov V, Chetverikov D, Demirer M, Duflo E, Hansen C,
Newey W, Robins J (2018). Double/debiased machine learning for treatment
and structural parameters. The Econometrics Journal 21(1):C1-C68.
DOI 10.1111/ectj.12097

Clarke PS, Polselli A (2025). Double machine learning for static panel models
with fixed effects. The Econometrics Journal 29:69-86.
DOI 10.1093/ectj/utaf011


Wooldridge JM (1999). Distribution-free estimation of some
nonlinear panel data models. Journal of Econometrics 90(1):77-97.
DOI 10.1016/S0304-4076(98)00033-5

Santos Silva JMC, Tenreyro S (2006). The log of gravity. Review of Economics
and Statistics 88(4):641-658. DOI 10.1162/rest.88.4.641

Allison PD, Waterman RP (2002). Fixed-effects negative binomial regression
models. Sociological Methodology 32:247-265. DOI 10.1111/1467-9531.00117


Burlig F, Preonas L, Woerman M (2020). Panel data and
experimental design. Journal of Development Economics 144:102458.
DOI 10.1016/j.jdeveco.2020.102458


Chernozhukov, V., Chetverikov, D., Demirer, M., Duflo, E.,
Hansen, C., Newey, W. and Robins, J. (2018). Double/debiased machine
learning for treatment and structural parameters. The Econometrics
Journal 21(1), C1-C68.


GBD 2019 Risk Factors Collaborators (2020). Global burden of 87
risk factors in 204 countries and territories, 1990-2019. The Lancet
396(10258), 1223-1249.


The forms recognised here are taken from the categories the Ontario
Ministry of the Solicitor General publishes in its inmate datasets (the
segregation and restrictive-confinement releases), where the
placement-count and age categories are banded and the top band is open.


Anderson I, Robson B, Connolly M, et al. (2016). Indigenous and
tribal peoples' health (The Lancet-Lowitja Institute Global Collaboration): a
population study. The Lancet 388(10040):131-157.
DOI 10.1016/S0140-6736(16)00345-7


Vitter JS (1985). Random sampling with a reservoir.
\emph{ACM Transactions on Mathematical Software} 11(1), 37--57.
DOI 10.1145/3147.3165

Lemire D (2019). Fast random integer generation in an interval.
\emph{ACM Transactions on Modeling and Computer Simulation} 29(1), 3.
DOI 10.1145/3230636


Statistics Canada (2023). Self-perceived mental health of First
Nations people living off reserve, Metis and Inuit by age group and gender.
Table 41-10-0067-01. DOI 10.25318/4110006701-eng


Statistics Canada. Symbol legend.
statcan.gc.ca/en/concepts/definitions/guide-symbol


Sherman L, Neyroud PW, Neyroud E (2016). The Cambridge Crime Harm
Index: measuring total harm from crime based on sentencing guidelines.
Policing 10(3):171-183. DOI 10.1093/police/paw003

Applied with weights from the Colombian Penal Code: Acosta, Mejia and Zorro
Medina (2023), see \code{\link{plndid}}.


Cochran WG (1977). Sampling Techniques, 3rd edition. Wiley, New
York, sections 2.4 to 2.6.


Lawson, A. B. \emph{Using R for Bayesian Spatial and Spatio-Temporal Health
Modeling}. Chapman and Hall/CRC, Chapter 1.


Klein RJ, Schoenborn CA (2001). Age adjustment using the 2000
projected U.S. population. Healthy People 2010 Statistical Notes 20. National
Center for Health Statistics.

Kumar MB, Tjepkema M (2019). Suicide among First Nations people, Metis and
Inuit (2011-2016): findings from the 2011 Canadian Census Health and
Environment Cohort (CanCHEC). National Household Survey: Aboriginal Peoples,
Statistics Canada catalogue no. 99-011-X2019001.


The permutation distribution of the maximum over splits, rather than the
chosen split's own test, is what makes this a test of whether there is a
break rather than a way of locating the largest wobble. See any
treatment of the change-point problem, e.g. Coles, S. \emph{An
Introduction to Statistical Modeling of Extreme Values} (Springer), which
discusses change-point detection alongside the threshold choices that
raise the same multiple-comparison issue.


Callaway B, Sant'Anna PHC (2021). Difference-in-differences with
multiple time periods. Journal of Econometrics 225(2):200-230.
DOI 10.1016/j.jeconom.2020.12.001

Sant'Anna PHC, Zhao J (2020). Doubly robust difference-in-differences
estimators. Journal of Econometrics 219(1):101-122.
DOI 10.1016/j.jeconom.2020.06.003

Wooldridge JM (2021). Two-way fixed effects, the two-way Mundlak regression,
and difference-in-differences estimators. DOI 10.2139/ssrn.3906345

Applied to a reform rolled out in four stages across judicial districts:
Acosta, Mejia and Zorro Medina (2023), see \code{\link{plndid}}.


Westfall PH, Young SS (1993). Resampling-Based Multiple Testing.
Wiley, New York.


de Chaisemartin C, D'Haultfoeuille X (2020). Two-way fixed
effects estimators with heterogeneous treatment effects. American Economic
Review 110(9):2964-2996. DOI 10.1257/aer.20181169

Applied as a placebo check on ward redistricting: Ternullo S, Zorro-Medina A,
Vargas R (2024). How political dynasties concentrate advantage within cities.
Social Forces 102(4):1310-1331. DOI 10.1093/sf/soae029


Abadie A, Diamond A, Hainmueller J (2010). Synthetic control
methods for comparative case studies. Journal of the American Statistical
Association 105(490):493-505.\cr DOI 10.1198/jasa.2009.ap08746


Arkhangelsky D, Athey S, Hirshberg DA, Imbens GW, Wager S (2021).
Synthetic difference-in-differences. American Economic Review
111(12):4088-4118. DOI 10.1257/aer.20190159


Jewell E, Mosby I (2021). Calls to Action Accountability: A 2021
Status Update on Reconciliation. Yellowhead Institute, Toronto Metropolitan
University.

Jewell E, Mosby I (2022). Calls to Action Accountability: A 2022 Status
Update on Reconciliation. Yellowhead Institute, Toronto Metropolitan
University.

Truth and Reconciliation Commission of Canada (2015). Truth and
Reconciliation Commission of Canada: Calls to Action. Winnipeg.


Sen, P. K. (1968). Estimates of the regression coefficient based on
Kendall's tau. \emph{Journal of the American Statistical Association}
63(324), 1379-1389, for the median-of-slopes estimator and the
distribution-free interval.

Wilcox, R. R. \emph{Modern Statistics for the Social and Behavioral
Sciences: A Practical Introduction} treats Theil-Sen among the regression
methods that carry no normality assumption, which is the reason for
preferring it on a series this short.


Rambachan A, Roth J (2023). A more credible approach to parallel
trends. Review of Economic Studies 90(5):2555-2591.
DOI 10.1093/restud/rdad018


Cameron AC, Gelbach JB, Miller DL (2008). Bootstrap-based
improvements for inference with clustered errors. Review of Economics and
Statistics 90(3):414-427. DOI 10.1162/rest.90.3.414

Webb MD (2023). Reworking wild bootstrap-based inference for clustered
errors. Canadian Journal of Economics 56(3):839-858. DOI 10.1111/caje.12661

Roodman D, Nielsen MO, MacKinnon JG, Webb MD (2019). Fast and wild: bootstrap
inference in Stata using boottest. The Stata Journal 19(1):4-60.
DOI 10.1177/1536867X19830877


Stewart SL (2008). Promoting Indigenous mental health: cultural
perspectives on healing from Native counsellors in Canada. International
Journal of Health Promotion and Education 46(2):49-56.
DOI 10.1080/14635240.2008.10708129

Stewart S (2020). Addressing strengths and disparities in Indigenous health.
International Journal of Indigenous Health 15(1):4.
DOI 10.32799/ijih.v15i1.34976

Gabriel MD, Mirza S, Stewart SL (2022). Exploring mental health and holistic
healing through the life stories of Indigenous youth who have experienced
homelessness. International Journal of Environmental Research and Public
Health 19(20):13402. DOI 10.3390/ijerph192013402

}
\seealso{

\code{\link{rategap}}.


\code{\link{plrcf}}, \code{\link{plndml}},
\code{\link{baltab}}.


\code{\link{crfpm25}} for a relative risk from a
concentration, \code{\link{polbrdn}} for the attributable
cases.


\code{\link{plndid}}, \code{\link{stgatt}}.


\code{\link{prsbands}}, \code{\link{bandsens}},
\code{\link{expbands}}


\code{\link[=drftchisq]{drftchisq()}},
\code{\link[=cpsdrft]{cpsdrft()}}.


\code{\link[=exprspplr]{exprspplr()}} for a bootstrap
of a model estimate.


\code{\link[=ccorr]{ccorr()}} for a single Pearson correlation,
\code{\link[=cmom]{cmom()}} for one column's variance.


\code{\link[stats:pgamma]{stats::pgamma()}}, the base R equivalent.


\code{\link[=pubbnd]{pubbnd()}},
\code{\link[=yoybnd]{yoybnd()}}.


\code{\link[=chwkjit]{chwkjit()}}, for times recorded
to a
resolution; \code{\link[=chwkres]{chwkres()}} for the
residuals.


\code{\link[=chwkfit]{chwkfit()}},
\code{\link[=cunif]{cunif()}}


\code{\link[=plothwk]{plothwk()}}, \code{\link[=chwkfit]{chwkfit()}}.


\code{\link[=cwtd]{cwtd()}} to average an outcome with
these weights.


\code{\link[=csdev]{csdev()}},
\code{\link[=cqnt]{cqnt()}} and
\code{\link[=cmad]{cmad()}} for robust
alternatives that one extreme value cannot move.


\code{\link[=cmom]{cmom()}} for estimating \code{mean} and
\code{sd} from data.


\code{\link{cstat}}, \code{\link[stats]{dnorm}}.


\code{\link{trndtst}}, \code{\link{ratechg}}.


\code{\link[=hilltlidx]{hilltlidx()}},
\code{\link[=bandsens]{bandsens()}}


\code{\link{dualcont}}.


\code{\link[=topcors]{topcors()}} for just the
strongest, \code{\link[=ccovm]{ccovm()}} for the matrix form.


\code{\link[=valsch]{valsch()}} for the structural
check, which this complements rather than replaces.


\code{\link[=cpspwr]{cpspwr()}} for the positive control
-- whether a real effect would have been seen at all;
\code{\link[=cpsatst]{cpsatst()}} for the different
question of whether the record is intact rather than whether the finding
survives.


\code{\link[=cpsfals]{cpsfals()}} for the
negative controls.


\code{\link[=ccorr]{ccorr()}} for the Pearson correlation.


\code{\link[=cmom]{cmom()}} for the non-robust moments,
\code{\link[=ctrmmean]{ctrmmean()}} for a robust centre that still
averages.


\code{\link[=cmom]{cmom()}} for the mean, variance, skewness and
kurtosis in a
single pass; \code{\link[=cmad]{cmad()}} for a spread that one wild value
cannot move.


\code{\link{cnormpdf}}, \code{\link{csha256}}.


\code{\link[=cmed]{cmed()}} and
\code{\link[=cmad]{cmad()}} for the other robust
summaries; \code{\link[=cmom]{cmom()}} for the ordinary mean.


\code{\link[=cmom]{cmom()}} for the unweighted moments,
\code{\link[=cipw]{cipw()}} for inverse-probability weights
to feed in here.


\code{\link{cpsdrft}}, \code{\link{scanadj}}.


\code{\link[=drfthomog]{drfthomog()}},
\code{\link[=cpsdrft]{cpsdrft()}},
\code{\link[stats:chisq.test]{stats::chisq.test()}} for the full test object.


\code{\link[=drftchisq]{drftchisq()}} for a known reference
distribution, \code{\link[stats:chisq.test]{stats::chisq.test()}} for
the full test object.


\code{\link[=drftpsi]{drftpsi()}},
\code{\link[=drftchisq]{drftchisq()}},
\code{\link[=cpsdrft]{cpsdrft()}}


\code{\link[=drftks]{drftks()}},
\code{\link[=cpsdrft]{cpsdrft()}}.


\code{\link[=profcols]{profcols()}}, which reports
\code{n_distinct} without removing anything.


\code{\link[=plot.rmbl_dstfit]{plot.rmbl_dstfit()}} for the density, QQ, PP
and tail plots; \code{\link[=mksyncol]{mksyncol()}} with \code{type = "fitted"}
for a synthetic sample from a fit.


\code{\link{indgap}}.


\code{\link{welprof}}.


\code{\link{stdinc}}, \code{\link{fnllim}}


\code{\link[=capenv]{capenv()}},
\code{\link[=mkmnf]{mkmnf()}}


\code{\link{bandvals}}, \code{\link{bandsens}}


\code{\link{stdinc}}, \code{\link{ebrates}}, \code{\link{fnllim}}


\code{\link{cbootmean}} for a bootstrap of a mean.


\code{\link{stdinc}}, \code{\link{ebrates}}


\code{\link{co2fp}}


\code{\link[=profcols]{profcols()}} for every
column at once.


\code{\link{exptrnd}}.


\code{\link{welprof}}, \code{\link{dualcont}}.


\code{\link{dstntst}} before pooling, \code{\link{limfrom}},
\code{\link{qltyrcd}}, \code{\link{agestd}}.


\code{\link{indtabs}} for the full tables at the data service.


\code{\link[=profcols]{profcols()}}, which includes one
per numeric column.


\code{\link{qltyrcd}}, \code{\link{indgap}}.


\code{\link[=ctkyfnc]{ctkyfnc()}} for the per-column
version, \code{\link[=rulemad]{rulemad()}} to turn
it into a validation rule.


\code{\link[=misspat]{misspat()}} for the
patterns themselves,
\code{\link[=misssmry]{misssmry()}} for the rates.


\code{\link{welprof}}, \code{\link{holbal}}.


\code{\link[=misspat]{misspat()}},
\code{\link[=missruns]{missruns()}}


\code{\link[=profcols]{profcols()}} for
per-column rates.


\code{\link[=misspat]{misspat()}} for which
columns are missing together,
\code{\link[=misssmry]{misssmry()}} for the rates.


\code{\link{polbrdn}} for the cases attributable to
the whole excess exposure, \code{\link{vrfpol}} which runs
both.


\code{\link[=cmom]{cmom()}} for the single-pass
batch version.


\code{\link{scests}}, \code{\link{indgap}}.


\code{\link{stpdnpv}}.


\code{\link{caseflow}} for clearance rates and inventories.


\code{\link{evstudy}}, \code{\link{stgatt}},
\code{\link{perminf}}, \code{\link{plnpois}}.


\code{\link{plrcf}} (one cross-section),
\code{\link{stgatt}} with covariates (doubly robust difference in
differences).


\code{\link{expconcidx}} for how the burden
is spread across income.


\code{\link{bandvals}}, \code{\link{bandsens}},
\code{\link{expbands}}


\code{\link[=chgenv]{chgenv()}},
\code{\link[=yoybnd]{yoybnd()}}


\code{\link{limfrom}}, \code{\link{indgap}}.


\code{\link{rtcalc}}, \code{\link{yoy}} for change in a count or a
measured quantity.


\code{\link{shrs}} for a percentage of a total,
\code{\link{ratechg}} for the change in a rate between periods,
\code{\link{stdinc}} for a rate compared against an expected count rather
than a population.


\code{\link{yoypv}}, \code{\link{falsfam}} for a
family of falsification results, \code{\link{drftcal}}.


\code{\link{sctidy}}, \code{\link{indgap}},
\code{\link{ordcmp}}.


\code{\link{indgap}}, \code{\link{indtabs}}.


\code{\link{rtcalc}} for events per population,
\code{\link{yoy}} for change between periods.


\code{\link{svydes}} for weighted surveys with strata and clusters.


\code{\link{expcnts}}, \code{\link{ebrates}},
\code{\link{fnllim}}


\code{\link{agestd}} for counts of events,
\code{\link{cnsstd}}, \code{\link{indgap}}.


\code{\link{trndtst}}, \code{\link{cnttrnd}}.


\code{\link{bacondcmp}}, \code{\link{evstudy}}.


\code{\link{perminf}}.


\code{\link[=svyest]{svyest()}},
\code{\link[=svycmp]{svycmp()}}


\code{\link[=svydes]{svydes()}},
\code{\link[=svycmp]{svycmp()}}


\code{\link[=cspr]{cspr()}},
\code{\link[=ccovm]{ccovm()}},
\code{\link[=cortbl]{cortbl()}}


\code{\link{trcprog}}.


\code{\link{trccmpl}}.


\code{\link{stepchg}}, \code{\link{cnttrnd}}


\code{\link{polbrdn}} and the other stage functions
to run one step on its own.


\code{\link{scests}}, \code{\link{indgap}},
\code{\link{ordcmp}}.


\code{\link[=pubbnd]{pubbnd()}},
\code{\link[=chgenv]{chgenv()}}, \code{\link[=yoy]{yoy()}}.


\code{\link{scanadj}}, \code{\link{yoy}}.

}
\examples{

\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# made-up counts for one small community, by five age groups, to show the
# computation
std <- c(30000, 25000, 20000, 15000, 10000) # a younger standard population
agestd(
  events = c(4, 9, 11, 6, 3),
  pop = c(9000, 8000, 6000, 4000, 2000),
  std = std
)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(2)
n <- 800
d <- data.frame(age = runif(n, 18, 70), income = rlnorm(n, 10, 0.5))
d$belong <- rbinom(n, 1, plogis(-2 + 0.03 * d$age + 0.2 * log(d$income)))
d$wellbeing <- 50 + 5 * d$belong + 0.2 * d$age + 2 * log(d$income) +
  rnorm(n, 0, 8)
aipwcf(d, "wellbeing", "belong", c("age", "income"), lrn = "ols")
# with 50 bootstrap replicate weights: one fit, the replicate standard error
d$w <- runif(n, 0.5, 2)
reps <- sapply(1:50, function(b) d$w * rpois(n, 1))
colnames(reps) <- paste0("bsw", 1:50)
d <- cbind(d, reps)
des <- svydes(d, w = "w", reps = colnames(reps))
aipwcf(d, "wellbeing", "belong", c("age", "income"), lrn = "ols",
              des = des)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
attrfrac(1.5, 0.4)
attrfrac(2, 1)      # everyone exposed: 1 - 1/RR

# With the confidence limits of the relative risk.
paf <- attrfrac(1.08, 1, rrlo = 1.06, rrup = 1.09)
attr(paf, "ci")

# A protective exposure gives a negative fraction.
attrfrac(0.8, 0.5)

# A prevalence above 1 is refused.
try(attrfrac(1.5, 40))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
b <- bacondcmp(p, "district", "month", "crmrate", "reformed")
b
tapply(b$weight, b$type, sum)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
bacondcmp(own, "town", "year", "rate", "bylaw")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(t = rep(0:1, each = 50),
                age = c(stats::rnorm(50, 30), stats::rnorm(50, 33)))
baltab(d, "t", "age")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
b <- prsbands(c("1", "2 to 5", "6 to 10", "Greater than 10"))
counts <- c(1200, 430, 110, 38)

s <- bandsens(b, counts)
s
attr(s, "relspan")

# A statistic that barely moves has been measured; one that swings
# has not.
bandsens(b, counts, stat = mean, caps = c(12, 20, 50))

# nothing to vary without an open band
try(bandsens(c("1", "2 to 5"), c(10, 4)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
b <- prsbands(c("1", "2 to 5", "6 to 10", "Greater than 10"))
bandvals(b)

# The lower and upper rules bracket the truth.
bandvals(b, rule = "lower")$value
bandvals(b, rule = "upper", openupcap = 40)$value

# geometric placement, and an explicit floor for an open bottom band
bandvals(b, rule = "geometric", openupcap = 40)$value
bandvals(c("under 5", "5 to 9", "10+"), openloflr = 1)

# a cap inside the open band is refused
try(bandvals(b, openupcap = 5))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A quantity spanning several orders of magnitude follows the law.
set.seed(3)
benfordtst(10^stats::runif(2000, 0, 6))

# Digits drawn uniformly do not.
benfordtst(as.numeric(paste0(sample(1:9, 2000, TRUE), "000")))

# The expected proportions are the closed form.
b <- benfordtst(10^stats::runif(500, 0, 5))
all.equal(unname(b$expected) / b$n, log10(1 + 1 / (1:9)))

# Zeros carry no leading digit and are excluded from n.
benfordtst(c(0, 0, 1, 2, 3))$n

try(benfordtst(c(0, NA)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(4)
x <- runif(200, 0, 5000)
y <- runif(200, 0, 5000)
a <- bufasgn(x, y, c(1000, 3500), c(1200, 3000), c(2500, 4500), c(500, 4000),
                   radius = 330)
table(a$group)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
x <- stats::rnorm(50, mean = 5)

reps <- cbootmean(x, B = 500, seed = 7)
length(reps)

# The replicates centre on the sample mean, and their spread estimates
# the standard error.
c(sample = mean(x), bootstrap = mean(reps))
c(bootstrapse = stats::sd(reps),
  formulase = stats::sd(x) / sqrt(length(x)))

# A percentile confidence interval for the mean.
stats::quantile(reps, c(0.025, 0.975))

# Reproducible: the same seed gives the same replicates, and R's own
# random stream is not consumed.
identical(cbootmean(x, 100, seed = 1),
          cbootmean(x, 100, seed = 1))

# A longer run continues the same stream.
identical(cbootmean(x, 10, seed = 1),
          cbootmean(x, 100, seed = 1)[1:10])

# At least one replicate is needed.
try(cbootmean(x, B = 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
X <- cbind(a = c(1, 2, 3, 4), b = c(2, 4, 7, 8), c = c(5, 3, 2, 1))
ccovm(X)

# Agrees with stats::cov().
all.equal(ccovm(X), stats::cov(X))

# The diagonal is the column variances.
all.equal(diag(ccovm(X)), apply(X, 2, stats::var))

# Data frames are accepted.
ccovm(data.frame(u = 1:5, v = c(2, 1, 4, 3, 6)))

# A plain vector is not a matrix of variables.
try(ccovm(1:5))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
cgamcdf(3.5, c(0.5, 1, 4, 12))

# Identical to the unit-rate gamma CDF.
all.equal(cgamcdf(3.5, c(0.5, 1, 4, 12)),
          stats::pgamma(c(0.5, 1, 4, 12), shape = 3.5))

# Shape 1 is the exponential distribution.
all.equal(cgamcdf(1, c(0.5, 2)), stats::pexp(c(0.5, 2)))

# A chi-square tail on k degrees of freedom is 1 - P(k/2, q/2).
1 - cgamcdf(2 / 2, 5.99 / 2)      # about 0.05 on 2 df

# The shape must be positive.
try(cgamcdf(0, 1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
now <- pubbnd(c(45, 120), rnd = 5)
prev <- pubbnd(c(40, 100), rnd = 5)
chgenv(now, prev)

# with rates per 1,000 residents in both years
chgenv(now, prev, pop = c(10000, 20000),
                prepop = c(10000, 19000))

# a suppressed previous cell could have been zero: no upper percentage
chgenv(pubbnd(12), pubbnd("<5"))

# the two sides must line up
try(chgenv(now, prev[1, ]))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
times <- sort(stats::runif(400, 0, 100))
fit <- chwkfit(times, 100, "exponential")
fit$braratio
fit$atbound # an interior maximum: the better of two starts
# one start alone can stop with the decay on its bound, at a worse nll
chwkfit(times, 100, "exponential", start = c(log(2.4), 0.4, 4))$atbound
fit$nll
chwkfit(times, 100, "lomax", meth = "soe", eps = 1e-8)$nll
chwkfit(times, 100, "exponential", base = "sinusoidal")$aic

# the fast approximate INAR estimator
chwkfit(times, 100, meth = "inar")$braratio

# daily dates: spread the ties across each day first
days <- floor(times)
jit <- chwkjit(days, hor = 100)
chwkfit(jit, 100)$converged

# too few events, or times past the horizon, are refused
try(chwkfit(times[1:20], 100))
try(chwkfit(times, 50))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
days <- c(0, 0, 0, 1, 3, 3)
chwkjit(days)
anyDuplicated(chwkjit(days))

# a horizon keeps the last day inside the window
chwkjit(c(0, 1, 2), hor = 2)

# hourly resolution, in days, and another seed
chwkjit(c(0, 0, 0), res = 1 / 24, seed = 7)

# times past the horizon are refused
try(chwkjit(c(0, 5), hor = 3))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(4)
times <- sort(stats::runif(40, 0, 10))

# Exponential kernel: log-baseline -0.5, branching 0.3, decay 1.2.
chwknll(times, 10, "exponential", c(-0.5, 0.3, 1.2))

# Lower is better, so this is what an optimiser minimises.
nll <- function(p) chwknll(times, 10, "exponential", p)
fit <- stats::optim(c(-0.5, 0.3, 1.2), nll)
fit$par

# A branching ratio at or above 1 is not a stationary process, and is
# reported as the infeasible sentinel rather than a number.
chwknll(times, 10, "exponential", c(-0.5, 1.5, 1.2)) == 1e12

# The heavier-tailed kernels take two shape parameters.
chwknll(times, 10, "gamma", c(-0.5, 0.3, 2, 1.5))

# Unsorted times are an error, not the sentinel.
try(chwknll(rev(times), 10, "exponential", c(-0.5, 0.3, 1.2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(2)
times <- sort(stats::runif(200, 0, 50))
U <- chwkres(times, 50, "exponential", c(log(3), 0.2, 2))
stats::ks.test(U, "punif")$p.value

# residuals of a fitted model, and a quick uniform Q-Q check
fit <- chwkfit(times, 50, "weibull")
U2 <- chwkres(times, 50, "weibull", fit$theta)
summary(U2)
plot(
  stats::ppoints(length(U2)),
  sort(U2),
  xlab = "uniform quantile",
  ylab = "residual"
)
abline(0, 1)

# par must match the kernel and baseline
try(chwkres(times, 50, "weibull", c(log(3), 0.2, 2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
times <- sort(stats::runif(300, 0, 100))
fit <- chwkfit(times, 100)
sim <- chwksim(fit, seed = 2)
length(sim)
table(attr(sim, "generation"))
try(chwksim(list(a = 1)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
treat <- c(1, 0, 1, 0)
e <- c(0.5, 0.25, 0.02, 0.9)

cipw(treat, e)

# A balanced score gives weight 2 to either arm.
cipw(c(1, 0), c(0.5, 0.5))

# Without trimming the third observation would carry weight 50; the
# default clamp holds it to 100 at the 0.01 floor, and a looser floor
# tames it further.
cipw(treat, e, trimlo = 0.10)

# Logical treatment indicators work too.
cipw(c(TRUE, FALSE), c(0.4, 0.4))

# A treatment coded 1/2 is refused rather than read as all-control.
try(cipw(c(1, 2), c(0.5, 0.5)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
clncolnms(c("Total  Population (2021)", "\% change",
                     "Ville / City", "dup", "dup"))

# Applied to a data frame, with the original names retained.
df <- data.frame(`Total Pop` = 1:2, `\% change` = 3:4,
                 check.names = FALSE)
cleaned <- clncolnms(df)
names(cleaned)
attr(cleaned, "orignms")

# Other cases.
clncolnms(c("Total Pop"), case = "lower_camel")
clncolnms(c("Total Pop"), case = "upper_camel")
clncolnms(c("Total Pop"), case = "screaming_snake")

# a different separator, and a name that starts with a digit
clncolnms(c("2021 count", "Rate per 1000"), sep = ".")

# an unknown case is an error
try(clncolnms("a b", case = "kebab"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
age <- 16:25
first <- c(900, 1400, 1700, 1600, 1400, 1100, 900, 700, 600, 500)
pop <- rep(100000, 10)
cmlrisk(age, first, pop)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
cmom(c(2, 4, 4, 4, 5, 5, 7, 9))

# The first two entries agree with base R.
m <- cmom(1:10)
all.equal(m[["mean"]], mean(1:10))
all.equal(m[["variance"]], stats::var(1:10))

# A symmetric sample has no skew; excess kurtosis is near 0 for normal
# data and positive for a heavy-tailed sample.
cmom(c(-2, -1, 0, 1, 2))[["skewness"]]
cmom(c(rep(0, 20), -8, 8))[["kurtosis"]] > 0

# Too short to define a shape statistic: NaN rather than a guess.
cmom(c(1, 2))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
cnormlpdf(c(-1, 0, 1))

# Identical to stats::dnorm(log = TRUE).
all.equal(cnormlpdf(-2:2, 0.3, 1.7),
          stats::dnorm(-2:2, 0.3, 1.7, log = TRUE))

# Still finite where the density itself underflows to zero.
stats::dnorm(50)                  # 0
cnormlpdf(50)            # about -1251

# A log-likelihood: the sum of the log-densities of a sample.
y <- c(4.8, 5.1, 5.6, 4.9, 5.3)
sum(cnormlpdf(y, mean = mean(y), sd = stats::sd(y)))

# A standard deviation of zero has no density, and the parameters are
# single numbers.
try(cnormlpdf(1, sd = 0))
try(cnormlpdf(1, mean = c(0, 1)))
try(cnormlpdf("1"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Standard normal density at a few quantiles.
cnormpdf(c(-1, 0, 1))

# Peak of the standard normal is 1/sqrt(2*pi) at x = 0.
cnormpdf(0)

# Shift and scale via mean and sd.
cnormpdf(c(0, 5, 10), mean = 5, sd = 2)

# Identical to stats::dnorm().
all.equal(cnormpdf(-2:2, 0, 1), stats::dnorm(-2:2, 0, 1))

# a non-positive sd and text are refused
try(cnormpdf(0, sd = 0))
try(cnormpdf("0"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A count falling by about 15\% a year.
set.seed(3)
y <- stats::rpois(8, lambda = 200 * 0.85^(0:7))
fit <- cnttrnd(y)
round(fit$rateratio, 3)
c(fit$lower, fit$upper)

# With a varying denominator the trend is in the rate.
cnttrnd(c(20, 25, 30), offset = c(1000, 1500, 2500))$rateratio

# Counts that swing far more than Poisson noise get the wider interval.
wild <- cnttrnd(c(10, 50, 5, 60, 8, 70))
wild$dispersion
wild$method

try(cnttrnd(c(1.5, 2, 3)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
fp <- co2fp(sum(sqrt(seq_len(2e5))), loc = "CA-ON")
fp$enekwh$total
fp$co2eg
fp$co2int$year
fp$assumptions
print(fp)
# wherever you are, offline: the location is detected and recorded
co2fp(1 + 1, cpupwrw = 45, memgb = 8)$assumptions
# the whole machine's utilisation, on codecarbon's machine curve
co2fp(
  1 + 1,
  loc = "FR",
  usage = "machine",
  loadcur = "codecarbon",
  cpupwrw = 45,
  memgb = 8
)$usagemode
# a fixed utilisation and a data-centre PUE, with a carbon intensity given as
# a number
fp2 <- co2fp(
  sum(sqrt(seq_len(2e5))),
  loc = 30,
  usage = 0.5,
  cpupwrw = 65,
  memgb = 16,
  pue = 1.67,
  meth = "model"
)
fp2$enekwh
fpeqv(fp2$co2eg)
# a bad argument is refused before the expression runs
try(co2fp(Sys.sleep(10), pue = 0.9))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
co2int("CA-ON")
co2int("Canada")$year
co2int("CA-XX")$note
co2int(120)$source
nrow(co2inttab())
# the Canadian provinces in the table, lowest intensity first
tab <- co2inttab()
ca <- tab[
  startsWith(tab$location, "CA-"),
  c("location", "name", "g_per_kwh", "year")
]
head(ca[order(ca$g_per_kwh), ])
# a location the table does not know is an error, not a silent world average
try(co2int("Atlantis"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# weights a community might set for adults, 2019/2022 (table 13-10-0924-01);
# others would differ
h <- indiex("health")
h <- h[h$period == "2019/2022" & h$age == "Total, 18 years and over", ]
w <- c(2, 1, -2, -1)
names(w) <- c(
  "Sense of belonging to local community, somewhat strong or very strong",
  "Has a regular healthcare provider",
  "Perceived life stress, most days quite a bit or extremely stressful",
  "Heavy drinking"
)
ci <- commidx(
  h,
  "group",
  "indicator",
  "estimate",
  "lower",
  "upper",
  qual = "quality",
  w = w
)
ci
# an indicator the table does not publish for the period leaves the index NA,
# never filled: food insecurity is ".." for 2019/2022
w2 <- c(w, "Household food insecure" = -2)
commidx(
  h,
  "group",
  "indicator",
  "estimate",
  "lower",
  "upper",
  qual = "quality",
  w = w2
)$index
plot(ci)

# your own table and the weights a community chose: made-up percentages
own <- data.frame(
  community = rep(c("Lakeside", "Riverbend"), each = 3),
  item = rep(c("Speaks the language", "Has a doctor", "Food insecure"), 2),
  pct = c(38, 72, 21, 25, 64, 30),
  lo = c(33, 67, 17, 20, 58, 25),
  hi = c(43, 77, 25, 30, 70, 35)
)
commidx(own, "community", "item", "pct", "lo", "hi",
        w = c("Speaks the language" = 2, "Has a doctor" = 1,
              "Food insecure" = -1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Ten units holding one each: no concentration.
ginicoef(rep(1, 10))

# One unit holding everything: the maximum for ten units.
ginicoef(c(rep(0, 9), 1))
1 - 1 / 10

placements <- c(rep(1, 1200), rep(3, 430), rep(8, 110), rep(20, 38))
ginicoef(placements)

# What the most frequent few account for.
topshr(placements, c(0.01, 0.05, 0.1))

head(lorenzc(placements))

# missing values are dropped
ginicoef(c(1, NA, 3))

# a zero total has no Gini coefficient
try(ginicoef(c(0, 0, 0)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# across regions, 2022 (table 41-10-0067-01): where First Nations people
# report excellent or very good mental health, do Metis people living in the
# same region too?
mh <- indiex("mentalhealth")
mh <- mh[mh$rating == "Excellent or very good" & mh$region != "Canada", ]
fn <- mh[mh$group == "First Nations", ]
me <- mh[mh$group == "M\u00e9tis", ]
d <- merge(fn, me, by = "region", suffixes = c("fn", "me"))
ca <- connassoc(
  d,
  "region",
  "estimatefn",
  "estimateme",
  "lowerfn",
  "upperfn",
  "lowerme",
  "upperme"
)
ca
plot(ca)

# your own places: made-up shares in six regions, without limits
own <- data.frame(
  region = c("North", "South", "East", "West", "Coast", "Interior"),
  language = c(41, 18, 27, 33, 22, 38),
  wellbeing = c(68, 55, 60, 66, 57, 63)
)
connassoc(own, "region", "language", "wellbeing", reps = 2000)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
df <- data.frame(a = stats::rnorm(100), b = stats::rnorm(100))
df$c <- df$a + stats::rnorm(100, sd = 0.2)

cortbl(df)

# Pearson instead of Spearman
cortbl(df, meth = "pearson")

# nprs shows how much data each figure rests on.
gappy <- df
gappy$a[1:80] <- NA
cortbl(gappy)

# A pair with too little overlap is NA, not a number from nothing.
thin <- df
thin$a[1:99] <- NA
cortbl(thin)$correlation

# one numeric column cannot be correlated
try(cortbl(data.frame(a = 1:5, b = letters[1:5])))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(5)
ref <- data.frame(
  value = stats::rnorm(300),
  size = stats::runif(300, 1, 10),
  grade = sample(c("a", "b", "c"), 300, TRUE)
)

# A fresh draw from the same process: no drift.
same <- data.frame(
  value = stats::rnorm(300),
  size = stats::runif(300, 1, 10),
  grade = sample(c("a", "b", "c"), 300, TRUE)
)
d <- cpsdrft(ref, same)
d$anydrft

# A silently rescaled column, and a new category, are both caught.
moved <- same
moved$size <- moved$size * 3
moved$grade[1:100] <- "z"
cpsdrft(ref, moved)

# The PSI is always reported as an effect size, but on a sample this
# small it is not allowed to raise the flag by itself -- binning noise
# alone would clear 0.25. Lower psiminn to override that.
cpsdrft(ref, same)$columns$psi

# Structural changes are reported rather than tested.
cpsdrft(ref, same[, c("value", "grade")])$removed

try(cpsdrft(ref, as.matrix(same)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(x = rnorm(200))
d$y <- 0.8 * d$x + rnorm(200)
# a real association survives its controls
real <- cpsfals(d, function(z) cor(z$x, z$y),
                        trt = "x", n = 199, seed = 42)
real$controls[, c("control", "passed")]

# and a statistic that ignores the data fails the ones that can see it
fake <- cpsfals(d, function(z) 0.5, trt = "x",
                        n = 199, seed = 42)
fake$controls[fake$controls$control == "permutation", "passed"]

# without a treatment column two controls are skipped, and say so
fit <- cpsfals(d, function(z) mean(z$y), n = 49, seed = 1)
fit$controls[, c("control", "passed")]

# the statistic must return one finite number
try(cpsfals(d, function(z) c(1, 2), n = 49))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(x = rnorm(120), y = rnorm(120))
# inject a linear effect of x on y
inj <- function(z, size) {
  z$y <- z$y + size * z$x
  z
}
pw <- cpspwr(d, function(z) cor(z$x, z$y), inj,
                    sizes = c(0, 0.3, 0.6), trt = "x",
                    n = 99, reps = 5, seed = 42)
pw$curve
pw

# The rate at size 0 estimates the false-positive rate. With few
# repetitions it is usually 0, because alpha is small -- five draws
# at 0.05 come up empty about three times in four -- so read it as a
# sanity check that it is not LARGE, not as an estimate of alpha.
pw$curve[pw$curve$size == 0, "rate"]

# an injection with fresh noise each time, and effects too small to be
# detected in four repetitions: the smallest detected size is NA
inj2 <- function(z, size) {
  z$y <- z$y + size * z$x + stats::rnorm(nrow(z), sd = 0.5)
  z
}
cpspwr(d, function(z) cor(z$x, z$y), inj2, sizes = c(0.1, 0.2),
              trt = "x", n = 49, reps = 4, seed = 7)$smadet

# too few permutations to ever reach alpha = 0.05
try(cpspwr(d, function(z) cor(z$x, z$y), inj, trt = "x", n = 9))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
tbl <- rbind(c(120, 80), c(40, 160))
cramerv(tbl)

# No association gives a V near zero.
cramerv(rbind(c(100, 100), c(100, 100)))$v

# A sparse table's uncorrected V overstates the association.
sparse <- rbind(c(3, 1), c(1, 3))
c(raw = cramerv(sparse, biascor = FALSE)$v,
  corrected = cramerv(sparse)$v)

# small expected counts: a Monte Carlo p-value, and the method says so
cramerv(sparse)$method

# an unused level is dropped
cramerv(rbind(c(30, 10), c(0, 0), c(12, 28)))$method

# negative counts are refused
try(cramerv(rbind(c(-1, 2), c(1, 2))))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 9, 16, 25)

# Perfectly monotone but not linear: rho is 1 where Pearson is not.
cspr(x, y)
ccorr(x, y)

# Agrees with stats::cor(), ties included.
xt <- c(1, 2, 2, 2, 5, 5, 7)
yt <- c(3, 1, 1, 4, 4, 9, 2)
all.equal(cspr(xt, yt), stats::cor(xt, yt, method = "spearman"))

# Tied values share the average of the ranks they cover.
cmidrk(xt)
all.equal(cmidrk(xt), rank(xt))

# Invariant to any monotone rescaling.
all.equal(cspr(x, y), cspr(exp(x), log(y)))

# Missing values are kept in place by cmidrk().
cmidrk(c(3, NA, 1, 3))
try(cspr(1:3, 1:4))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# All-cause mortality at an annual PM2.5 of 12 micrograms per cubic metre.
r <- crfpm25(12)
c(rr = r$rr, lower = r$rrlo, upper = r$rrup)

# The cause-specific IER curve for ischaemic heart disease.
crfpm25(12, y = "ihd")$rr

# NO2 and respiratory deaths; at or below the reference there is no
# excess risk.
crfno2(25, y = "respiratory")$rr
crfno2(8)$rr

# A vector of exposures (one per area): the mean RR and each area's RR.
crfpm25(c(5, 12, 20))$extra$rrperunit

# Your own coefficient: RR 1.04 per 10 micrograms per cubic metre.
crfno2(30, betaper10 = log(1.04))$rr

# An outcome without a published function is refused.
try(crfpm25(12, y = "asthma"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c(2, 4, 4, 4, 5, 5, 7, 9)
cqnt(x, c(0.25, 0.5, 0.75))
all.equal(cqnt(x, c(0.1, 0.9)),
          as.numeric(stats::quantile(x, c(0.1, 0.9))))

cmed(x)
cmad(x)
all.equal(cmad(x), stats::mad(x))
cmad(x, const = 1)                  # unscaled median deviation
cmad(x, const = 1 / stats::qnorm(3/4))  # unrounded constant

ciqr(x)
ctkyfnc(x)

# Robustness: one wild value barely moves the median, but moves the
# mean a long way.
wild <- c(x, 1000)
c(mean = mean(wild), median = cmed(wild))

# Values outside the fences are the candidates to inspect.
f <- ctkyfnc(wild)
wild[wild < f[["lower"]] | wild > f[["upper"]]]

# A missing value is not dropped: the answer is NaN.
cmed(c(1, NA, 3))

# A probability outside [0, 1] is refused.
try(cqnt(x, 1.5))
\dontshow{\}) # examplesIf}


# Hash a character scalar (NIST test vector for "abc").
csha256("abc")
# ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad

# Vectorised over character input: one digest per element.
csha256(c("abc", "def", NA))

# Raw input hashes the bytes directly; identical to the character form.
identical(csha256("abc"), csha256(charToRaw("abc")))

# The empty message.
csha256(raw(0))

# Fingerprint an arbitrary object via its serialization.
csha256(serialize(list(a = 1L, b = "x"), NULL))


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Sample standard deviation, matching stats::sd().
csdev(c(2, 4, 4, 4, 5, 5, 7, 9))
all.equal(csdev(1:10), stats::sd(1:10))

# ddof = 0 divides by n instead of n - 1.
csdev(1:10, ddof = 0)
all.equal(csdev(1:10, ddof = 0), sqrt(mean((1:10 - mean(1:10))^2)))

# Missing values propagate; remove them first if they should be ignored.
csdev(c(3, NA, 5))
csdev(stats::na.omit(c(3, NA, 5)))

# Euclidean distance between two points.
cdistm(c(0, 0), c(3, 4))     # 5
cdistm(1:5, 1:5)             # 0 -- a point is zero from itself

# Vectors of different lengths are refused rather than recycled.
try(cdistm(1:3, 1:2))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
## cmn(): sample mean (NA/NaN propagate; no na.rm)
cmn(1:10)                 # 5.5
cmn(c(1, 2, NA))          # NA -- call stats::na.omit() first if needed
cmn(stats::na.omit(c(1, 2, NA)))
cmn(c(1e308, 1e308))      # no overflow

## cvari(): n-1 (sample) variance, matching stats::var()
cvari(c(2, 4, 4, 4, 5, 5, 7, 9))
all.equal(cvari(1:10), stats::var(1:10))   # agrees with base R

## ccorr(): Pearson correlation of two equal-length vectors
ccorr(1:10, (1:10)^2)        # strong positive, near 0.97
ccorr(1:10, 10:1)            # perfect negative: -1

## refusals
try(cmn(c("1", "2")))     # character input is not coerced
try(ccorr(1:3, 1:4))         # lengths differ
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 100)

mean(x)                               # dragged up by the 100
ctrmmean(x, 0.1)             # the 100 and the 1 dropped
cwinsmean(x, 0.1)          # the 100 pulled back to 9

# Agrees with base R's own trimming.
all.equal(ctrmmean(x, 0.2), mean(x, trim = 0.2))

# trim = 0 is the plain mean; trim = 0.5 is the median.
all.equal(ctrmmean(x, 0), mean(x))
all.equal(ctrmmean(x, 0.5), cmed(x))

# A trim past one half is not a trim.
try(cwinsmean(x, 0.7))
try(ctrmmean(letters))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
cunif(3, 42)
identical(cunif(5, 1), cunif(5, 1))

# a stream is a prefix of a longer one with the same seed
all.equal(cunif(3, 7), cunif(10, 7)[1:3])

# R's own generator is left alone
set.seed(1); a <- runif(1)
set.seed(1); invisible(cunif(100, 9)); b <- runif(1)
identical(a, b)

# negative counts and seeds past 2^53 are refused
try(cunif(-1, 1))
try(cunif(2, 2^53))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# made-up profile figures for two communities, to show the computation
cwbscr(incpercap = c(18000, 31000), highsch20p = c(58, 81),
          uni25p = c(6, 19), notcro = c(71, 95),
          nomajrep = c(62, 90),
          partic = c(55, 68), empl = c(78, 92))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c(10, 20, 30, 40)
w <- c(1, 1, 2, 4)
cwtd(x, w)

# The mean agrees with base R.
all.equal(cwtd(x, w)[["mean"]], stats::weighted.mean(x, w))

# Equal weights recover the unweighted variance.
all.equal(cwtd(x, rep(1, 4))[["variance"]], stats::var(x))

# A single dominant weight pulls the mean onto that observation.
cwtd(x, c(1, 1, 1, 1000))[["mean"]]

# A negative weight is refused.
try(cwtd(x, c(1, -1, 1, 1)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(a = rnorm(400), b = sample(letters[1:4], 400, TRUE))
drftcal(d, n = 10)

# a stricter level, and the per-column rates
cal <- drftcal(d, n = 10, alpha = 0.001)
cal$columns

try(drftcal(d[1:3, ]))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
ref <- c(a = 50, b = 30, c = 20)

# Counts matching the reference proportions: nothing to report.
drftchisq(c(a = 100, b = 60, c = 40), ref)

# A reallocated mix is detected.
drftchisq(c(a = 40, b = 60, c = 100), ref)

# Agrees with stats::chisq.test().
o <- c(a = 40, b = 60, c = 100)
all.equal(drftchisq(o, ref)[["statistic"]],
          as.numeric(stats::chisq.test(o, p = ref / sum(ref))$statistic))

# Raw vectors are tabulated for you.
drftchisq(c("a", "a", "b", "b"), c("a", "b"))

# A category the reference rules out, but which occurs, is a flat
# contradiction rather than a large finite statistic.
drftchisq(c("a", "a", "b", "d"), c("a", "a", "b", "b"))

# When a new category is legitimate, compare two samples instead.
drfthomog(c("a", "a", "b", "b"), c("a", "a", "b", "d"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
a <- sample(c("x", "y", "z"), 300, TRUE)
b <- sample(c("x", "y", "z"), 300, TRUE)

# Two draws from the same distribution: no evidence of a difference.
drfthomog(a, b)

# A reallocated mix is detected.
drfthomog(a, sample(c("x", "y", "z"), 300, TRUE,
                            prob = c(0.7, 0.2, 0.1)))

# Agrees with stats::chisq.test() on the 2-by-k table.
tab <- rbind(table(a), table(b))
all.equal(drfthomog(a, b)[["statistic"]],
          as.numeric(stats::chisq.test(tab)$statistic))

# It is more conservative than treating the reference as known, which
# is exactly the point.
drfthomog(a, b)[["p_value"]] >= drftchisq(b, a)[["p_value"]]

# named count vectors, and a small table that takes the Monte Carlo branch
drfthomog(c(a = 30, b = 20), c(a = 25, b = 25))
attr(drfthomog(c(a = 3, b = 1, c = 2), c(a = 1, b = 4, c = 1)), "method")

try(drfthomog(c(1, 2), c(a = 3)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
ref <- stats::rnorm(200)

# The same distribution: a small D and a large p-value.
drftks(ref, stats::rnorm(200))

# A shifted distribution is detected.
drftks(ref, stats::rnorm(200, mean = 0.8))

# So is a change in spread alone, which a mean comparison would miss.
drftks(ref, stats::rnorm(200, sd = 2.5))

# The statistic agrees with stats::ks.test().
a <- stats::rnorm(60); b <- stats::rnorm(45, 0.6)
all.equal(drftks(a, b)[["statistic"]],
          as.numeric(suppressWarnings(stats::ks.test(a, b))$statistic))

# Identical samples have nothing to report.
drftks(ref, ref)[["statistic"]]
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(2)
ref <- stats::rnorm(500)

# Same distribution: both indices near zero.
drftpsi(ref, stats::rnorm(500))

# A shift both indices register.
drftpsi(ref, stats::rnorm(500, mean = 1))

# A sample compared with itself has moved nowhere at all.
drftpsi(ref, ref)

# The Jensen-Shannon divergence is bounded by log(2), whatever the
# shift, which is what makes it comparable across columns.
drftpsi(c(1, 1, 1), c(9, 9, 9))[["jsdiv"]] <= log(2)

# a coarser binning, and a larger floor that damps an empty bin
drftpsi(ref, stats::rnorm(500, mean = 1), bins = 4)
drftpsi(ref, stats::rnorm(500, mean = 1), eps = 0.01)

try(drftpsi(ref, ref, bins = 1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
df <- data.frame(
  keep = c(1, 2, NA),
  allna = c(NA, NA, NA),
  constant = c(7, 7, 7),
  stringsAsFactors = FALSE
)

drpempty(df)
attr(drpempty(df), "dropped")

drpconst(df)
attr(drpconst(df), "dropped")

# Rows only.
drpempty(data.frame(a = c(1, NA), b = c(2, NA)), which = "rows")

# A column of NAs plus one value is constant by default, and not when
# NA is treated as a value of its own.
x <- data.frame(v = c(NA, NA, 5))
ncol(drpconst(x))
ncol(drpconst(x, naasval = TRUE))

# only data frames
try(drpempty(c(1, NA)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
x <- stats::rgamma(300, shape = 2, rate = 0.5)
f <- dstfit(x, nboot = 20)
f
f$fits$gamma

# counts with extra zeros
n <- ifelse(stats::runif(300) < 0.3, 0, stats::rpois(300, 4))
dstfit(n, nboot = 0)$table[, c("family", "aic")]

# a family the data do not allow
try(dstfit(c(-1, 2, 3, 4, 5), fams = "gamma"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
x <- sample(1:5000, 200000, replace = TRUE)

# Close to the true 5000 distinct values, in fixed memory.
dstncnt(dstnskch(x))
length(unique(x))

# Small cardinalities are near-exact, via linear counting.
dstncnt(dstnskch(c("a", "b", "c", "a", "b")))

# Chunks fold into one sketch, so a file can be counted block by
# block, and two independent sketches can be merged.
s <- dstnskch(x[1:100000])
s <- dstnskch(x[100001:200000], regstr = s)
dstncnt(s)

a <- dstnskch(x[1:100000])
b <- dstnskch(x[100001:200000])
dstncnt(skchmrg(a, b))

# An empty input has no distinct values.
dstncnt(dstnskch(character(0)))

# a smaller sketch: less memory, more error
dstncnt(dstnskch(x, p = 8))

# sketches of different sizes cannot be merged
try(skchmrg(dstnskch(1:10, p = 4), dstnskch(1:10, p = 5)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# perceived mental health very good or excellent, 2019/2022, adults (table
# 13-10-0924-01)
h <- indiex("health")
mh <- h[
  h$period == "2019/2022" &
    h$age == "Total, 18 years and over" &
    h$group != "Non-Indigenous" &
    h$indicator == "Perceived mental health, very good or excellent",
]
dt <- dstntst(mh, "group", "estimate", "lower", "upper", qual = "quality")
dt
plot(dt)
# your own table: made-up numbers, with the pooled row named
own <- data.frame(
  group = c("Aboriginal", "Torres Strait Islander", "Both"),
  est = c(24.0, 31.0, 24.6),
  lo = c(22.1, 26.2, 22.8),
  hi = c(25.9, 35.8, 26.4)
)
dstntst(own, "group", "est", "lo", "hi", pooled = "Both")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
dtctloc()
dtctloc(envloc = "", codloc = "", tz = "Europe/Paris")
dtctloc(envloc = "", codloc = "", tz = "",
                locale = "en_IN.UTF-8")
# an explicit setting wins over everything else
dtctloc(envloc = "CA-QC", tz = "Europe/Paris")
# nothing usable: the world average, and the method says so
dtctloc(envloc = "", codloc = "", tz = "UTC", locale = "C")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
wb <- indiex("wellbeing")
w <- welprof(wb, "group", "indicator", "estimate", "lower", "upper",
                      well = "Always or often has a hopeful outlook",
                      distress = "Life satisfaction rating between 0 and 5",
                      qual = "quality")
dc <- dualcont(w, "Always or often has a hopeful outlook",
                     "Life satisfaction rating between 0 and 5")
dc
plot(dc)

# your own table: made-up percentages for two communities, with limits
own <- data.frame(
  community = rep(c("Lakeside", "Riverbend"), each = 4),
  item = rep(c("Hopeful", "Satisfied", "Rarely hopeful", "Low satisfaction"),
             2),
  pct = c(64, 71, 12, 18, 58, 66, 16, 22),
  lo = c(59, 66, 9, 14, 52, 60, 12, 17),
  hi = c(69, 76, 15, 22, 64, 72, 20, 27)
)
w <- welprof(own, "community", "item", "pct", "lo", "hi",
             well = "Hopeful", distress = "Rarely hopeful")
dualcont(w, "Hopeful", "Rarely hopeful")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Three areas, one of them tiny. The tiny area's raw ratio is
# extreme; its shrunk one is not.
ebrates(obs = c(30, 45, 2), expd = c(25, 50, 0.5),
         area = c("North", "South", "Tiny"))

# no variation beyond chance: every estimate is the overall ratio
ebrates(c(10, 11, 9), c(10, 10, 10))

# one area has nothing to borrow from
try(ebrates(5, 4))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
a <- capenv(c("stats", "utils"))
b <- a

# An environment matches itself.
envdiff(a, b)$identical

# Stage a moved dependency, an added one and a newer R.
b$packages[["stats"]] <- "0.0.0"
b$packages[["tools"]] <- "4.9.0"
b$r_version <- "9.9.9"
d <- envdiff(a, b)
d$packages
d$r_version
d

# Whole manifests are accepted, not just the environment block.
m <- mkmnf(list(run = "demo"))
envdiff(m, m)$identical

# anything other than a record is refused
try(envdiff("4.5.1", a))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
es <- evstudy(p, "district", "month", "crmrate", "refmonth", leads = 3,
                  lags = 4)
es
attr(es, "pretrend")$p_value
plot(es)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# three years either side of adoption, weighted by population
evstudy(own, "town", "year", "rate", "first", leads = 3, lags = 3,
        w = "pop")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- expbands(c("1", "2 to 5", "Greater than 5"),
                  cnts = c(10, 4, 2), openupcap = 12)
table(x)
ginicoef(x)

# the lower-bound reading of the same table
expbands(c("1", "2 to 5", "Greater than 5"), cnts = c(10, 4, 2),
             rule = "lower")

# an unparseable band with units in it stops the call
try(expbands(c("1", "not stated"), cnts = c(3, 2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(
  region = rep(c("North", "South", "East"), each = 2),
  age = rep(c("18 to 24", "25 to 49"), 3),
  n = c(30, 45, 12, 60, 8, 20),
  pop = c(1000, 6000, 900, 9000, 400, 3500)
)

# Adjusting for size only.
expcnts(d$n, d$pop, d$region)

# Adjusting for size AND age composition, which is the comparison
# that says something about the region.
e <- expcnts(d$n, d$pop, d$region, strata = d$age)
e

# the expected counts feed the standardised ratio
stdinc(e$observed, e$expected, area = e$area)

# a population of zero has no rate
try(expcnts(c(1, 2), c(10, 0), c("a", "b")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(exposure = c(30, 25, 20, 15, 10), income = 1:5)
ci <- expconcidx(d, "exposure", "income")
ci$concidx
ci$interpretation

# Even exposure across income gives 0; tied incomes share a rank.
expconcidx(data.frame(exposure = 20, income = c(1, 1, 2, 3)),
                             "exposure", "income")$concidx

# A text income cannot be ranked.
try(expconcidx(data.frame(exposure = 1:3, income = c("a", "b", "c")),
                                 "exposure", "income"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(x1 = rnorm(200), x2 = rnorm(200))
d$exposure <- 20 + 2 * d$x1 + rnorm(200)
d$asthma <- 5 + 0.3 * d$exposure + d$x2 + rnorm(200)
r <- exprspplr(d, y = "asthma", expo = "exposure",
                           confs = c("x1", "x2"), nboot = 20)
r$ate
c(r$cilobs, r$ciupbs)

# Any estimator with the same interface: here an ordinary regression.
ols <- function(data, outcome, treatment, covariates) {
  f <- stats::reformulate(c(treatment, covariates), outcome)
  cf <- summary(stats::lm(f, data = data))$coefficients
  list(ate = cf[treatment, 1], se = cf[treatment, 2], method = "OLS")
}
exprspplr(d, "asthma", "exposure", c("x1", "x2"),
                      nboot = 20, estr = ols)$method

# Fewer than 10 resamples cannot give an interval.
try(exprspplr(d, "asthma", "exposure", c("x1", "x2"), nboot = 5))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# made-up counts by 0, 1 and 2 generations of attendance, to show the
# computation
et <- exptrnd(cases = c(60, 95, 70), n = c(500, 520, 300))
et
plot(et)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The funnel narrows as the expected count grows, which is the whole
# point: a ratio of 2 means nothing at an expected count of 2 and a
# great deal at an expected count of 200.
fnllim(c(2, 20, 200))

# one 90 percent funnel around a target ratio of 1.2
fnllim(c(5, 50), target = 1.2, lvls = 0.90)

# a funnel drawn with base graphics
e <- c(1, 2, 5, 10, 20, 50, 100, 200)
f <- fnllim(e, lvls = 0.95)
plot(f$expected, f$upper, type = "s", log = "x", ylim = c(0, 4),
     xlab = "expected count", ylab = "ratio")
lines(f$expected, f$lower, type = "s")
abline(h = 1, lty = 2)

try(fnllim(10, lvls = 1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
fpeqv(1200)

# the footprint of a small computation, in everyday terms
fp <- co2fp(sum(sqrt(seq_len(2e5))), loc = "CA-ON",
                        cpupwrw = 45, memgb = 8)
unlist(fpeqv(fp$co2eg)[c("carkm", "treemon")])

# a vector is refused: convert one total at a time
try(fpeqv(c(10, 20)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
df <- data.frame(grade = c("a", "b", "b", "c", NA, "b"),
                 stringsAsFactors = FALSE)
freqtbl(df, "grade")

# The two percentage columns differ exactly by the missingness.
freqtbl(df, "grade")[, c("pct", "pctvalid")]

# A vector works directly.
freqtbl(c(1, 1, 2, 3, 3, 3))

# Sorted value order rather than frequency order.
freqtbl(c("c", "a", "b", "a"), sort = FALSE)

# Long tails are folded so the percentages still total 100.
set.seed(1)
ft <- freqtbl(sample(letters, 500, TRUE), maxlvl = 5)
ft
sum(ft$pct)

# a data frame needs a column name
try(freqtbl(df))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
wb <- indiex("wellbeing")
w <- welprof(
  wb,
  "group",
  "indicator",
  "estimate",
  "lower",
  "upper",
  well = "Always or often has a hopeful outlook",
  distress = c(
    "Rarely or never has a hopeful outlook",
    "Life satisfaction rating between 0 and 5",
    "Fair or poor perceived health"
  )
)
frmaud(w)

# your own table: made-up percentages for two communities, with limits
own <- data.frame(
  community = rep(c("Lakeside", "Riverbend"), each = 4),
  item = rep(c("Hopeful", "Satisfied", "Rarely hopeful", "Low satisfaction"),
             2),
  pct = c(64, 71, 12, 18, 58, 66, 16, 22),
  lo = c(59, 66, 9, 14, 52, 60, 12, 17),
  hi = c(69, 76, 15, 22, 64, 72, 20, 27)
)
frmaud(welprof(own, "community", "item", "pct", "lo", "hi",
               well = c("Hopeful", "Satisfied"),
               distress = c("Rarely hopeful", "Low satisfaction")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
genexpo(c(TRUE, FALSE, TRUE, NA, FALSE), c(TRUE, FALSE, FALSE, TRUE, NA))
genexpo(c(TRUE, FALSE, TRUE, NA, FALSE), c(TRUE, FALSE, FALSE, TRUE, NA),
                    partial = "lowerbnd")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# 2015/2018 to 2019/2022, adults (table 13-10-0924-01)
h <- indiex("health")
belong <- paste0(
  "Sense of belonging to local community, ",
  "somewhat strong or very strong"
)
h <- h[
  h$age == "Total, 18 years and over" &
    h$indicator \%in\%
      c(
        "Perceived mental health, very good or excellent",
        belong,
        "Mood disorder",
        "Anxiety disorder"
      ),
]
hc <- healchg(
  h,
  "group",
  "indicator",
  "period",
  "estimate",
  "lower",
  "upper",
  from = "2015/2018",
  to = "2019/2022",
  qual = "quality",
  well = c("Perceived mental health, very good or excellent", belong)
)
hc
plot(hc)

# your own table: made-up percentages for one community in two surveys
own <- data.frame(
  community = "Lakeside",
  item = rep(c("Good mental health", "Anxiety"), 2),
  survey = rep(c("2018", "2023"), each = 2),
  pct = c(55, 14, 61, 11),
  lo = c(50, 11, 56, 8),
  hi = c(60, 17, 66, 14)
)
healchg(own, "community", "item", "survey", "pct", "lo", "hi",
        from = "2018", to = "2023", well = "Good mental health",
        distress = "Anxiety")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A continuous Pareto tail with exponent 2.5.
set.seed(1)
x <- (1 - stats::runif(5000))^(-1 / 1.5)
round(hilltlidx(x, xmin = 1, discrete = FALSE)$alpha, 2)

# A discrete power law, where the exact likelihood is needed: the
# closed-form correction is badly biased at a threshold of one.
k <- 1:10000
p <- k^(-2.5) / sum(k^(-2.5))
set.seed(2)
z <- sample(k, 5000, replace = TRUE, prob = p)
c(exact = round(hilltlidx(z, xmin = 1)$alpha, 2),
  approx = round(hilltlidx(z, xmin = 1, approx = TRUE)$alpha, 2))

# A short tail still returns an estimate, marked as not to be leaned
# on, and with a standard error that says the same thing.
short <- hilltlidx(c(3, 4, 5, 9), xmin = 3)
c(alpha = round(short$alpha, 2), n = short$ntl,
  reliable = short$reliable)

# Below `mintl` there is nothing to estimate from.
hilltlidx(c(3, 4), xmin = 3)$alpha

# the threshold has to be positive
try(hilltlidx(z, xmin = 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# four domains from table 13-10-0924-01, 2019/2022, adults: which indicator
# stands for each is a choice for the people whose data these are; this is
# one reading of it
h <- indiex("health")
belong <- paste(
  "Sense of belonging to local community,",
  "somewhat strong or very strong"
)
dom <- c(
  "Perceived health, very good or excellent" = "physical",
  "Perceived mental health, very good or excellent" = "mental",
  "Life satisfaction, satisfied or very satisfied" = "emotional",
  stats::setNames("community", belong)
)
d <- h[
  h$period == "2019/2022" &
    h$age == "Total, 18 years and over" &
    h$indicator \%in\% names(dom),
]
d$domain <- dom[d$indicator]
hb <- holbal(
  d,
  "group",
  "domain",
  "estimate",
  "lower",
  "upper",
  qual = "quality"
)
hb
plot(hb)
# a community that counts belonging twice
holbal(
  d,
  "group",
  "domain",
  "estimate",
  "lower",
  "upper",
  qual = "quality",
  w = c(physical = 1, mental = 1, emotional = 1, community = 2)
)

# your own table: made-up percentages of wellness in four domains a Nation
# set for itself, for two communities
own <- data.frame(
  community = rep(c("Lakeside", "Riverbend"), each = 4),
  domain = rep(c("body", "mind", "spirit", "family"), 2),
  pct = c(62, 58, 70, 75, 55, 61, 66, 80),
  lo = c(57, 53, 65, 70, 49, 55, 60, 75),
  hi = c(67, 63, 75, 80, 61, 67, 72, 85)
)
holbal(own, "community", "domain", "pct", "lo", "hi", reps = 2000)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
b <- read.csv(system.file("extdata", "tps_break_enter_d14_2024.csv",
                          package = "rmoriebricklayer"))
b <- b[!is.na(b$lon), ]
q <- quarters(as.Date(b$occ_date))
h <- hotpers(b$lon, b$lat, q, cell = 0.3)
h$periods
plot(h)

# the cells hot in every quarter
subset(h$cells, perhot == 4)

# larger cells and a wider hot set
h2 <- hotpers(b$lon, b$lat, q, cell = 0.5, top = 0.1)
h2$periods[, c("period", "hotcells", "hotshr", "jacpre")]

# planar coordinates, here in kilometres
set.seed(3)
hotpers(stats::runif(200, 0, 10), stats::runif(200, 0, 10),
                    rep(2023:2024, 100), cell = 2, top = 0.2, xy = "planar")

# a share of zero hot cells is refused
try(hotpers(b$lon, b$lat, q, top = 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The Riemann zeta at even integers has a closed form.
c(hurwzeta(2), pi^2 / 6)
c(hurwzeta(4), pi^4 / 90)

# Apery's constant.
hurwzeta(3)

# Shifting the lower limit removes exactly the leading term.
hurwzeta(2.5, 3) - hurwzeta(2.5, 4)
3^-2.5

# Outside the domain of convergence there is no value to return.
hurwzeta(1)

# several exponents at once, including the analytic continuation
hurwzeta(c(2, 0.5, -1))  # -1/12 at s = -1

# one lower limit per call
try(hurwzeta(2, q = c(1, 2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Perceived mental health very good or excellent, adults, 2019/2022
# (Statistics Canada, table 13-10-0924-01; The Daily, 2025-02-13)
h <- indiex("health")
mh <- h[
  h$period == "2019/2022" &
    h$age == "Total, 18 years and over" &
    h$indicator == "Perceived mental health, very good or excellent",
]
g <- indgap(mh, "group", "estimate", "lower", "upper", qual = "quality")
g
plot(g)
plot(g, what = "ratio")
# your own table: made-up numbers in another country's layout, with relative
# standard errors instead of limits and that agency's flags
own <- data.frame(
  group = c(
    "Aboriginal",
    "Torres Strait Islander",
    "Aboriginal and Torres Strait Islander",
    "Non-Indigenous Australians"
  ),
  pct = c(31.2, 27.5, 30.8, 18.9),
  rse = c(4.1, 22.0, 3.9, 1.2),
  flag = c("", "*", "", "")
)
own <- cbind(own, limfrom(own$pct, cv = own$rse)[c("lower", "upper")])
own$q <- qltyrcd(own$flag, suppr = c("np", "**"), caution = "*")
indgap(
  own,
  "group",
  "pct",
  "lower",
  "upper",
  ref = "Non-Indigenous Australians",
  qual = "q",
  pooled = "Aboriginal and Torres Strait Islander"
)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
h <- indiex("health")
mh <- h[h$period == "2019/2022" & h$age == "Total, 18 years and over" &
          h$indicator == "Perceived mental health, very good or excellent", ]
plot(indgap(mh, "group", "estimate", "lower", "upper", qual = "quality"))
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
indtabs("mental health")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
# A symmetric distribution peaks in the middle.
inlhist(stats::rnorm(1000))

# A skewed one leans left.
inlhist(stats::rexp(1000))

# Bimodality is visible here and in no single summary number.
inlhist(c(stats::rnorm(500, -3), stats::rnorm(500, 3)))

# A constant column has no spread to show.
inlhist(rep(5, 10))

# more bins for more detail
inlhist(stats::rexp(1000), bins = 30)

# text is not a distribution
try(inlhist(c("a", "b")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
limfrom(c(24.1, 31.5), cv = c(8, 12))
limfrom(1520, moe = 210)                 # a 90\% margin of error
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
n <- 200
df <- data.frame(height = stats::rnorm(n, 170, 10))
df$weight <- df$height * 0.5 + stats::rnorm(n, 0, 5)

# A row that is ordinary on each variable but unlikely jointly:
# short and heavy.
df[1, ] <- list(height = 155, weight = 100)

out <- mahaoutl(df)
head(out, 3)

# It is flagged, although both values lie inside the other rows' ranges.
out$row[1] == 1
range(df$height[-1])
range(df$weight[-1])

# A cluster of bad rows drags the mean toward itself; the median and
# MAD move less, so the robust distance of such a row is the larger.
bad <- df
bad[2:21, ] <- list(height = 150, weight = 110)
dclassical <- mahaoutl(bad, robust = FALSE)
drobust <- mahaoutl(bad, robust = TRUE)
dclassical$distance[dclassical$row == 2] < drobust$distance[drobust$row == 2]

# A duplicated column has no distance defined, and is refused.
dup <- df
dup$height2 <- dup$height
try(mahaoutl(dup))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
n <- 300
x <- stats::rnorm(n)
y <- x + stats::rnorm(n)

# Missing completely at random: a coin flip decides, so the test
# should not reject.
mcar <- data.frame(x = x, y = y)
mcar$y[sample(n, 90)] <- NA
mcartst(mcar)

# Missing depending on the OTHER, observed variable: not MCAR, and
# detectable, because the pattern's mean of x is shifted.
mar <- data.frame(x = x, y = y)
mar$y[x > 0.4] <- NA
mcartst(mar)

# Complete data has one pattern and nothing to test.
mcartst(data.frame(a = x, b = y))$df

# A duplicated column makes the likelihood degenerate, and is refused.
dup <- mcar
dup$x2 <- dup$x
try(mcartst(dup))

# The EM estimates are the ML ones: with no missingness they are the
# column means and the ML (1/n) covariance.
fit <- mcartst(data.frame(a = x, b = y))
all.equal(fit$mu, c(mean(x), mean(y)), check.attributes = FALSE)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# well-being, 2024 (table 41-10-0082-01): hope, and meaning and purpose
# (asked together); this table has no measure of belonging, so that direction
# is reported as missing
wb <- indiex("wellbeing")
mw <- mhcont(
  wb,
  "group",
  "indicator",
  "estimate",
  "lower",
  "upper",
  hope = "Always or often has a hopeful outlook",
  meaning = "Sense of meaning and purpose rating of 8, 9 or 10",
  purp = "Sense of meaning and purpose rating of 8, 9 or 10",
  qual = "quality"
)
mw
plot(mw)

# your own table: made-up percentages for two communities, with limits;
# one item stands for both meaning and purpose, and none for belonging
own <- data.frame(
  community = rep(c("Lakeside", "Riverbend"), each = 2),
  item = rep(c("Hopeful", "Life has meaning"), 2),
  pct = c(64, 70, 58, 75),
  lo = c(59, 65, 52, 70),
  hi = c(69, 75, 64, 80)
)
mhcont(own, "community", "item", "pct", "lo", "hi", hope = "Hopeful",
       meaning = "Life has meaning", purp = "Life has meaning")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
df <- data.frame(
  complete = 1:100,
  block = c(rep(NA, 30), 31:100),
  scattered = ifelse(stats::runif(100) < 0.3, NA, 1),
  mostlygone = c(1:10, rep(NA, 90))
)
missgrid(df)

# a coarser map with short labels
missgrid(df, height = 5, width = 4)

try(missgrid(df, height = 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Two columns missing in the SAME rows: one structural gap.
structural <- data.frame(
  id = 1:10,
  a = c(rep(NA, 3), 4:10),
  b = c(rep(NA, 3), 4:10)
)
misspat(structural)

# The same per-column rates, but missing independently.
scattered <- data.frame(
  id = 1:10,
  a = c(rep(NA, 3), 4:10),
  b = c(1:7, rep(NA, 3))
)
misspat(scattered)

# A complete frame has exactly one pattern.
misspat(data.frame(x = 1:3, y = 4:6))

# keep only the most common pattern
misspat(scattered, maxpat = 1)

# a frame without columns has no patterns
try(misspat(data.frame()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# One long outage and two isolated gaps, with the same total count.
df <- data.frame(
  outage = c(1, 2, NA, NA, NA, NA, 7, 8),
  scattered = c(1, NA, 3, 4, NA, 6, NA, NA)
)
sum(is.na(df$outage)) == sum(is.na(df$scattered))

missruns(df)

# Isolated gaps too, by lowering the threshold.
missruns(df, minrun = 1)

# A complete column has no runs.
missruns(data.frame(x = 1:5))

try(missruns(df, minrun = 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Six areas in a line, each adjacent to the next.
nb <- list(2L, c(1L, 3L), c(2L, 4L), c(3L, 5L), c(4L, 6L), 5L)

# A smooth gradient is strongly positively autocorrelated.
set.seed(1)
morani(c(1, 2, 3, 4, 5, 6), nb, nperm = 999L)[c("I", "p_value")]

# An alternating pattern is negatively autocorrelated.
set.seed(1)
morani(c(1, 6, 1, 6, 1, 6), nb, nperm = 999L)[c("I", "p_value")]

# And the null expectation is not zero.
-1 / (6 - 1)

# the same line as a binary weight matrix, unstandardised
w <- matrix(0, 6, 6)
for (i in 1:5) w[i, i + 1] <- w[i + 1, i] <- 1
set.seed(1)
morani(c(1, 2, 3, 4, 5, 6), w, style = "B", nperm = 999L)$I

# a constant variable has no autocorrelation to measure
try(morani(c(2, 2, 2), list(2L, c(1L, 3L), 2L)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A 10-unit cut, a million people, 800 deaths per 100,000 a year.
mortdisp(10, 1e6, 0.008, 0.0039)

# The PM2.5 all-cause coefficient is published per 10 micrograms.
mortdisp(5, 2.8e6, 0.0075, log(1.08) / 10)

# A rare outcome must be declared.
mortdisp(5, 1e6, 5e-6, 0.01, rare = TRUE)

# A rate per 100,000 passed as a rate per person is refused.
try(mortdisp(10, 1e6, 800, 0.0039))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
m <- mtchdid(p, "district", "month", "crmrate", "refmonth", ratio = 2)
m$estimate
m$balance

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# each adopting town matched to one never treated on its path before 2019,
# the standard errors clustered by county: with two counties the package
# warns that so few clusters cannot be trusted
mtchdid(own, "town", "year", "rate", "first", cl = "county")$estimate
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
x <- stats::rnorm(1000)

# Accumulate in blocks of 100.
acc <- onlsmry()
for (i in seq(1, 1000, by = 100)) {
  acc <- smryupd(acc, x[i:(i + 99)])
}
smrystat(acc)

# The batch answer to rounding (the formulas are exact; the arithmetic is
# double):
all.equal(smrystat(acc)[["variance"]], stats::var(x))
all.equal(smrystat(acc)[["mean"]], mean(x))

# Two accumulators built independently can be merged, so blocks can be
# processed in any order or on different machines.
a <- smryupd(onlsmry(), x[1:400])
b <- smryupd(onlsmry(), x[401:1000])
all.equal(smrystat(smrymrg(a, b)), smrystat(acc))

# An empty accumulator reports nothing rather than zero.
smrystat(onlsmry())

# NA values are skipped; text that is not a number is refused
smrystat(onlsmry(c(1, NA, 3)))[c("n", "mean")]
try(onlsmry(c("a", "b")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Self-perceived mental health, 15 years and older, Canada, 2022 (table
# 41-10-0067-01)
mh <- indiex("mentalhealth")
mh <- mh[mh$region == "Canada", ]
oc <- ordcmp(
  mh,
  "group",
  "rating",
  "estimate",
  "lower",
  "upper",
  lvls = c("Fair or poor", "Good", "Very good", "Excellent"),
  ref = "M\u00e9tis",
  qual = "quality"
)
oc
plot(oc)

# your own table: a made-up four-level rating for two groups, with limits
own <- data.frame(
  group = rep(c("Nation A", "Everyone else"), each = 4),
  rating = rep(c("Poor", "Fair", "Good", "Excellent"), 2),
  pct = c(10, 25, 40, 25, 6, 20, 44, 30),
  lo = c(7, 21, 35, 21, 5, 18, 42, 28),
  hi = c(13, 29, 45, 29, 7, 22, 46, 32)
)
ordcmp(own, "group", "rating", "pct", "lo", "hi",
       lvls = c("Poor", "Fair", "Good", "Excellent"), ref = "Everyone else")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
perminf(p, "district", "month", c("crmrate", "arrrate"),
                      "refmonth",
                      cl = "region", reps = 199, seed = 3)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# every assignment of the two adoption dates to the eight towns
perminf(own, "town", "year", "rate", "first", reps = 99, seed = 1)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# plume widths 1 km downwind: neutral, then very stable, rural and urban
pgsig(1000, "D")
pgsig(c(500, 1000, 2000), "F", set = "urban")

# rise of a hot plume, and the effective height it gives a 50 m stack
rise <- briggs(c(100, 1000), u = 4, diam = 1, exitvel = 12,
                          stktmp = 420, ambtmp = 285)
rise$rise
heff <- 50 + rise$finalrise

# ground-level concentration (g/m^3) from 100 g/s along the centreline
rec <- cbind(x = c(500, 1000, 2000, 8000), y = 0, z = 0)
gplume(100, u = 4, h = heff, rcpt = rec)

# under a 120 m mixing lid the far receptor sees a trapped plume
gplume(100, u = 4, h = heff, rcpt = rec, mixh = 120)

# a 1 kg puff, 10 minutes after release, at the puff centre
gspuff(1000, u = 3, h = 10, rcpt = rbind(c(1800, 0, 0)), t = 600)

# a small grid: a blob moved by wind and spread by diffusion
c0 <- matrix(0, 15, 15)
c0[4, 8] <- 1
f <- advdif2d(c0, u = 1, v = 0, kx = 0.5, ky = 0.5,
                            dx = 1, dy = 1, dt = 0.2, nsteps = 20)
f$stable
round(f$mass, 3)

# 2,000 particles, counted on a grid
p <- lagrprt(2000, x0 = 0, y0 = 0, u = 1, v = 0, kx = 1, ky = 1,
                          dt = 1, nsteps = 10, seed = 1,
                          grid = c(-10, 30, -20, 20, 8, 8))
c(p$mean_x, p$meany)

# inputs that cannot be right are refused
try(pgsig(100, "G"))
try(briggs(100, u = 4, diam = 1, exitvel = 12,
                      stktmp = 150 + 5, ambtmp = 20))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(2)
reports <- rpois(36, 400)
charges <- rpois(36, 90)
piperate(charges, reports, win = 12, lag = 3)[30:36, ]
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
plndid(p, "district", "month", "crmrate", "reformed")
# clustered by region instead of district: only four regions, so the
# package warns, and wcb() is the tool for so few clusters
plndid(p, "district", "month", "crmrate", "reformed", cl = "region")

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# the effect of the by-law, with income as a control, clustered by town
# (the default), weighted by population
plndid(own, "town", "year", "rate", "bylaw", covs = "income", w = "pop")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
set.seed(9)
p$unemployment <- 6 + sin(p$month / 6) + stats::rnorm(nrow(p), 0, 0.5)
p$patrols <- 0.5 * p$unemployment + p$reformed + stats::rnorm(nrow(p))
plndml(p, "district", "month", "crmrate", "patrols",
          c("unemployment", "arrrate"), lrn = "ridge")

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# the by-law as the treatment, income as the confounder
plndml(own, "town", "year", "rate", "bylaw", "income", lrn = "ridge")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
plnpois(p, "district", "month", "crimes", "reformed", offset = "logpop")

# these counts are not overdispersed, so the negative binomial collapses
# to the Poisson fit and says so
plnpois(p, "district", "month", "crimes", "reformed", offset = "logpop",
           family = "negbin")

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# counts with the population as exposure
own$crimes <- round(own$rate * own$pop / 1e4)
own$logpop <- log(own$pop)
plnpois(own, "town", "year", "crimes", "bylaw", offset = "logpop")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
pre <- p[p$month <= 12, ]
pw <- plnpwr(pre, "district", "month", "crmrate", ntrt = 10, adopt = 7:10,
                  eff = c(0, 1, 2, 3), reps = 30, seed = 1)
pw
plot(pw)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# the power of four towns adopting in 2017 or 2018, from the years before
# any by-law
plnpwr(own[own$year <= 2018, ], "town", "year", "rate", ntrt = 4,
       adopt = 2017:2018, eff = c(0, 2, 4), reps = 20, seed = 1)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(2)
f <- dstfit(stats::rlnorm(200), nboot = 0)
plot(f)
plot(f, which = "qq")
plot(f, which = "pp", fams = "lognormal")
plot(f, which = "tail")
try(plot(f, fams = "beta"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
times <- sort(stats::runif(200, 0, 100))
fit <- chwkfit(times, 100)
plothwk(fit, times)
plothwk(fit, times, "qq")
tr <- plothwk(fit, times, "tree")
table(tr$generation)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(x1 = rnorm(200), x2 = rnorm(200))
d$exposure <- 20 + 2 * d$x1 + rnorm(200)
d$asthma <- 5 + 0.3 * d$exposure + d$x2 + rnorm(200)
fit <- plrcf(d, "asthma", "exposure", c("x1", "x2"))
fit$ate

# A 95 percent normal confidence interval from the standard error.
fit$ate + c(-1.96, 1.96) * fit$se

# The fold split changes the estimate a little; ten folds instead of five.
plrcf(d, "asthma", "exposure", c("x1", "x2"), kfol = 10, seed = 2)$ate

# A text column is refused rather than read as codes.
d$region <- sample(c("north", "south"), 200, replace = TRUE)
try(plrcf(d, "asthma", "exposure", c("x1", "region")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
t <- data.frame(fsa = c("M6H", "M5V"), exposure = c(28, 18),
                population = c(40000, 60000), brate = 0.008)
polbrdarea(t)

# PM2.5 and different column names.
u <- data.frame(tract = c("A", "B", "C"), pm = c(7, 11, 9),
                pop = c(5000, 8000, 6500), rate = 0.0075)
polbrdarea(u, areacol = "tract", expcol = "pm",
                         popcol = "pop", basratecol = "rate",
                         poll = "PM2.5")

# A missing column is named in the error.
try(polbrdarea(t[, c("fsa", "exposure")]))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Ambient NO2 of 25 micrograms per cubic metre over a million people.
b <- polbrdn(25, 1, 0.008, 1e6, poll = "NO2")
b$attrcases
b$paf

# PM2.5 and ischaemic heart disease deaths, against the WHO guideline
# of 5 as the counterfactual.
polbrdn(12, 1, 0.0012, 2.8e6, poll = "PM2.5", y = "ihd",
                 refconc = 5)$attrcases

# Childhood asthma counts incident cases, not deaths.
polbrdn(30, 1, 0.012, 5e5, y = "chiast")$extra$unit

# Only PM2.5 and NO2 have concentration-response functions here.
try(polbrdn(40, 1, 0.008, 1e6, poll = "O3"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
head(polex())
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
prsbands(c("1", "2 to 5", "6 to 10", "Greater than 10"))

prsbands(c("18 to 24", "25 to 49", "50+", "under 18"))

# "50+" excluding 50, and a continuous scale
prsbands(c("50+", "over 15"), clsup = FALSE)
prsbands(c("over 15", "under 0.5"), intsca = FALSE)

# An unrecognised or self-contradictory label is NA, not guessed at.
prsbands(c("3", "unknown", "24 to 18", "15 to 19 and over"))

try(prsbands(1:3))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
pubbnd(c(120, 35, 0), rnd = 5)
pubbnd(c("120", "x", "<5"), rnd = 5,
                 suplim = 5)
# random rounding to base 5 is wider than rounding to the nearest 5
pubbnd(15, rnd = 5, rndkind = "random")

# thousands separators and a custom suppression mark
pubbnd(c("1,200", "--", "<10"), suplim = 10,
                 supmar = "--")

# a suppressed cell needs a limit
try(pubbnd(c("120", "x")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# flags as an Australian table might give them
qltyrcd(c("", "np", "*", "**", NA), suppr = c("np", "**"), caution = "*")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
raplok()

# a fake powercap tree with one readable package domain (Linux names the
# domain "intel-rapl:0"; a colon is not allowed in a Windows file name)
if (.Platform$OS.type != "windows") {
  d <- file.path(tempfile(), "intel-rapl:0")
  dir.create(d, recursive = TRUE)
  writeLines("package-0", file.path(d, "name"))
  writeLines("123456789", file.path(d, "energy_uj"))
  raplok(dirname(d))
}

# a folder that does not exist is simply FALSE; a non-path is an error
raplok(file.path(tempdir(), "no-such-dir"))
try(raplok(NA_character_))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(
  year = rep(2021:2023, each = 2),
  division = rep(c("North", "South"), 3),
  stops = c(400, 70, 430, 66, 455, 61),
  residents = c(120000, 41000, 122000, 41500, 125000, 42000))

# North's count rose while its population rose too: the rate change
# is smaller than the count change, which is the reason to use it
ratechg(d, stops, residents, year, by = "division", per = "100k")

# a missing year gives no comparison rather than a wrong one
gap <- data.frame(year = c(2019, 2020, 2022), n = c(10, 14, 12),
                  pop = c(1000, 1000, 1100))
ratechg(gap, n, pop, year)$flag

# two-year change, flagging small earlier counts
ratechg(d, stops, residents, year, by = "division", lag = 2,
            mincnt = 65)

try(ratechg(1:3))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# made-up counts, to show the computation
std <- c(30000, 25000, 20000, 15000, 10000)
r <- agestd(events = c(4, 9, 11, 6, 3, 2, 4, 6, 5, 4),
                     pop = c(9000, 8000, 6000, 4000, 2000,
                                    20000, 19000, 18000, 15000, 12000),
                     std = std, grp = rep(c("Inuit", "Non-Indigenous"),
                                                 each = 5))
plot(r)
rategap(r, "Inuit", "Non-Indigenous")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A reproducible sample of 5 from 1000.
rsvidx(1000, 5, seed = 1)
rsvsmp(letters, 4, seed = 2)

# Reproducible on every platform, and independent of R's own RNG.
identical(rsvidx(1000, 5, seed = 1),
          rsvidx(1000, 5, seed = 1))

# Asking for more than the stream holds returns the whole stream.
rsvidx(3, 10)

# Every item is equally likely: over many seeds the retained positions
# are spread uniformly rather than favouring the start or the end.
hits <- unlist(lapply(1:400, function(s) rsvidx(50, 5, s)))
round(mean(hits))          # near the midpoint, 25.5

# sample rows of a data frame
df <- data.frame(id = 1:20, v = (1:20)^2)
df[rsvidx(nrow(df), 3, seed = 7), ]

# a negative size is refused
try(rsvidx(10, -1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
stops <- data.frame(
  division = c("North", "South", "East"),
  stops = c(412, 77, 3),
  residents = c(120000, 41000, 9500))

# per 1,000 residents, the default
rtcalc(stops, stops, residents, by = "division")

# the denominator published guidance usually asks for
rtcalc(stops, stops, residents, by = "division", per = "100k")

# East's three events: the interval is wider than the estimate, and
# flagging it is the point of mincnt
rtcalc(stops, stops, residents, by = "division", per = "100k",
     mincnt = 5)

# vectors work too, for a single figure; a zero count has a lower limit of 0
rtcalc(c(3, 0), 9500, per = "100k")

# a fractional count has no Poisson interval
try(rtcalc(2.5, 1000))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
seg <- data.frame(year = rep(2022:2023, each = 3),
                  site = rep(c("A", "B", "C"), 2),
                  n = c(30, 50, 80, 45, 52, 79))
y <- yoy(seg, value = "n", prd = "year", by = "site")
scanadj(y)[, c("site", "pctchg", "p_value", "padj")]

# family-wise control instead of the false discovery rate
scanadj(y, meth = "holm")$padj

# any table with a p_value column
scanadj(data.frame(test = c("a", "b", "c"), p_value = c(0.001, 0.02, 0.4)))

try(scanadj(data.frame(p_value = 1.5)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# the layout of a downloaded table: percent and number of persons, with
# limits for the percent
d <- data.frame(
  REF_DATE = "2022",
  GEO = "Canada",
  `Indigenous identity` = rep(c("First Nations", "Metis"), each = 4),
  Statistics = rep(
    c(
      "Number of persons",
      "Percent",
      "Low 95\% confidence interval",
      "High 95\% confidence interval"
    ),
    2
  ),
  UOM = rep(c("Persons", "Percent", "Percent", "Percent"), 2),
  VALUE = c(415000, 47.1, 45.2, 49.0, 320000, 50.3, 48.1, 52.5),
  STATUS = "",
  check.names = FALSE
)
scests(d)
# a rate with its coefficient of variation instead of limits
r <- data.frame(
  GEO = "Canada",
  Characteristics = c("Rate", "Coefficient of variation for rate"),
  VALUE = c(12.5, 8),
  STATUS = ""
)
scests(r)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# the layout of a downloaded table, with one cell suppressed
d <- data.frame(REF_DATE = "2019/2022", GEO = "Canada",
                `Indigenous identity` = c("First Nations", "Inuk (Inuit)",
                                          "Non-Indigenous"),
                VALUE = c("45.8", "", "61.5"), STATUS = c("", "x", ""),
                check.names = FALSE)
sctidy(d)
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs a data service key: sign in once with dlogin()
t924 <- sctidy("13100924")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(
  city = rep(c("A", "B"), each = 3),
  year = 2024,
  offence = rep(c("homicide", "robbery", "burglary"), 2),
  n = c(5, 120, 300, 2, 90, 410),
  pop = rep(c(250000, 180000), each = 3)
)
sevidx(
  d,
  "city",
  "year",
  "offence",
  "n",
  w = c(homicide = 25, robbery = 8, burglary = 4),
  pop = "pop"
)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
stops <- data.frame(
  division = c("North", "South", "East"),
  stops = c(412, 77, 3))

# shares of the table's own total, summing to 100
shrs(stops, stops, by = "division")

# East is 0.6\% of stops, and the interval does not run below zero
# the way a normal approximation would
shrs(stops, stops, by = "division")$lower

# a denominator from outside the table
shrs(stops, stops, by = "division", total = 10000)

# a plain vector
shrs(c(3, 7))

# a count larger than its total is not a share
try(shrs(c(5, 2), total = 4))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c(12, 15, 9, 20, 14)
sprd(x)                                   # a sample: n - 1
sprd(x, des = "census")                # the whole population: n
sprd(x, N = 40)             # 5 of 40 drawn: finite-population correction
sprd(x, N = 5)              # n = N: a census
sprd(c(1, 2, 3), w = c(10, 5, 1))   # frequency weights
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
stdinc(obs = c(30, 12, 3), expd = c(20, 14, 5),
    area = c("North", "South", "East"))

# An observed count of three carries almost no information, and the
# interval says so rather than hiding it.
stdinc(3, 5)

# a 90 percent interval, and a zero count (lower limit exactly 0)
stdinc(c(0, 40), c(2, 25), conflvl = 0.90)

try(stdinc(c(3, 4), c(5, 0)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# seriously contemplated suicide in the past 12 months, 2017 (table
# 41-10-0021-01), standardised to the Indigenous population's age structure
# (2021 Census)
ages <- c(
  "15 to 24 years",
  "25 to 34 years",
  "35 to 44 years",
  "45 to 54 years",
  "55 years and over"
)
si <- indiex("suicide")
si <- si[
  si$measure == "Seriously contemplated suicide in the past 12 months" &
    si$age \%in\% ages,
]
si <- si[order(si$group, match(si$age, ages)), ]
std <- cnsstd(cnsprof(indiex("censuspop")))
w <- c(
  sum(std$population[4:5]),
  std$population[6:8],
  sum(std$population[9:11])
)
sp <- stdprev(
  si$estimate,
  si$lower,
  si$upper,
  std = w,
  grp = si$group,
  qual = si$quality
)
sp
plot(sp)

# your own numbers: made-up percentages in three age groups for two groups,
# standardised to a population of 500, 300 and 200 in those age groups
stdprev(
  est = c(12, 9, 6, 8, 6, 4),
  lower = c(9, 6, 3, 7, 5, 3),
  upper = c(15, 12, 9, 9, 7, 5),
  std = c(500, 300, 200),
  grp = rep(c("Nation A", "Everyone else"), each = 3)
)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A step down after the third period. With six periods there are only
# 720 orderings, so even a clean step has p near 0.1.
stepchg(c(100, 104, 98, 60, 63, 58), x = 2018:2023)

# A longer series with the same step is clearly significant.
stepchg(c(100, 104, 98, 101, 97, 60, 63, 58, 61, 59), nperm = 999)$p_value

# Pure noise: the best split is still found, and is not significant.
set.seed(2)
stepchg(stats::rnorm(12), nperm = 999)$p_value

try(stepchg(c(1, 2, 3)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
s <- stgatt(p, "district", "month", "crmrate", "refmonth", reps = 99,
                   seed = 1)
s$overall
head(s$dynamic)
plot(s)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# each adoption cohort against the towns not yet treated
stgatt(own, "town", "year", "rate", "first", reps = 49, seed = 1)$overall
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
null <- matrix(rnorm(3000), ncol = 3)
stpdnpv(c(2.5, 0.4, -2.1), null)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(region = rep(c("north", "south", "east"), length.out = 150),
                smoker = rbinom(150, 1, 0.3), w = runif(150, 50, 150))
des <- svydes(d, w = "w")
svycmp(des, d, "smoker", by = "region", stat = "proportion",
               lvls = "1", ref = "north")

# means, against the default (first) domain, at 90 percent
d$drinks <- rpois(150, 3)
svycmp(des, d, "drinks", by = "region", conflvl = 0.90)

# the reference must be one of the domains
try(svycmp(des, d, "drinks", by = "region", ref = "west"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(region = rep(c("north", "south"), each = 50),
                smoker = rbinom(100, 1, rep(c(0.2, 0.35), each = 50)),
                w = runif(100, 50, 150))
# ten bootstrap replicates, made here by resampling for the example
reps <- replicate(10, d$w * tabulate(sample(100, replace = TRUE), 100))
des <- svydes(d, w = "w", reps = reps, type = "bootstrap")
des
# the same data as a stratified design, variance by linearization
svydes(d, w = "w", strata = "region")

# delete-one jackknife replicates over ten groups of respondents
grp <- rep(1:10, length.out = 100)
jk <- sapply(1:10, function(g) ifelse(grp == g, 0, d$w * 10 / 9))
svydes(d, w = "w", reps = jk, type = "jk1")

# a weight column that does not exist
try(svydes(d, w = "wt"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(region = rep(c("north", "south"), each = 50),
                smoker = rbinom(100, 1, rep(c(0.2, 0.35), each = 50)),
                drinks = rpois(100, 3), w = runif(100, 50, 150))
des <- svydes(d, w = "w", strata = "region")
svyest(des, d, "smoker", by = "region", stat = "proportion", lvls = "1")
svyest(des, d, "drinks", stat = "mean")
svyest(des, d, "drinks", by = "region", stat = "total")

# a ratio of two totals, with Student's t on the design's degrees of freedom
d$visits <- rpois(100, 6)
svyest(des, d, "drinks", stat = "ratio", den = "visits", df = "design")

# a logit interval at 90 percent
svyest(des, d, "smoker", stat = "proportion", lvls = "1", ci = "logit",
                conflvl = 0.90)

# the design remembers its rows: a subset is refused
try(svyest(des, d[-1, ], "drinks"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
swtdid(p, "district", "month", "crmrate", "reformed", reps = 99, seed = 1)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
swtdid(own, "town", "year", "rate", "bylaw", reps = 49, seed = 1)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
p1 <- p[is.na(p$refmonth) | p$district == "D01", ]
s <- synctl(p1, "district", "month", "crmrate", treunit = "D01",
                       adopt = 13)
round(s$weights, 3)
s$p_value
plot(s)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# one treated town, A, against the four towns never treated
own1 <- own[is.na(own$first) | own$town == "A", ]
synctl(own1, "town", "year", "rate", treunit = "A", adopt = 2019)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
p1 <- p[is.na(p$refmonth) | p$refmonth == 13, ]
syndid(p1, "district", "month", "crmrate", "refmonth", reps = 50, seed = 1)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
own1 <- own[is.na(own$first) | own$first == 2019, ]
syndid(own1, "town", "year", "rate", "first", reps = 50, seed = 1)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
n <- 200
df <- data.frame(
  a = stats::rnorm(n),
  b = stats::rnorm(n),
  grade = sample(letters[1:3], n, TRUE)
)
df$c <- df$a * 2 + stats::rnorm(n, sd = 0.1) # strongly related to a
df$d <- exp(df$a) # monotone but curved

topcors(df)

# The curved pair is ranked correctly by Spearman and understated by
# Pearson, which is why Spearman is the default.
tc <- topcors(df, meth = "spearman")
tc[tc$x == "a" & tc$y == "d", "correlation"]
tp <- topcors(df, meth = "pearson")
tp[tp$x == "a" & tp$y == "d", "correlation"]

# Filter to the pairs worth looking at, and keep the top two.
topcors(df, n = 2, minabs = 0.5)

# a threshold above 1 is an error
try(topcors(df, minabs = 2))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
trccmpl()
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- trcprog()
p
plot(p)

# your own count: Calls completed by the end of each year, made up
trcprog(done = c(2, 6, 9, 13), yearend = 2016:2019)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Five years of placements.
y <- c(402, 377, 190, 268, 331)
trndtst(y)

# A monotone series is detected even at n = 5, where a regression's
# standard error would be nearly uninformative.
trndtst(c(1, 2, 3, 4, 5))

# One aberrant period does not create a trend.
trndtst(c(100, 100, 100, 100, 900))$p_value

# From a data frame, testing for a decrease only.
d <- data.frame(year = 2019:2023, n = y)
trndtst(d, value = "n", prd = "year", alt = "decreasing")$p_value

try(trndtst(c(5, 6)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
es <- evstudy(p, "district", "month", "crmrate", "refmonth",
                  leads = 3, lags = 4)
tse(es, seed = 1)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
es <- evstudy(own, "town", "year", "rate", "first", leads = 3, lags = 3)
# a 90 percent robust interval
tse(es, seed = 1, conflvl = 0.9)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
r <- vrfpol("no2", demo = TRUE)
r$status
r$pipeline$paf
cat(polrpttxt(r))

# Scalar inputs: a city of 2.8 million at a PM2.5 mean of 9.
s <- vrfpol(
  "pm25",
  expomean = 9,
  expoprev = 1,
  brate = 750,
  pop = 2.8e6,
  reg = "Toronto"
)
s$pipeline$burden$attrcases
attr(s, "exitstat")

# A CSV of measurements with an income column.
f <- tempfile(fileext = ".csv")
utils::write.csv(
  data.frame(exposure = c(12, 18, 25, 31, 9), income = 1:5),
  f,
  row.names = FALSE
)
vrfpol("no2", expcsv = f)$pipeline$equity$concidx

# A rate per person-year passed as per 100,000 fails an assumption ...
bad <- vrfpol("no2", expomean = 20, expoprev = 1, brate = 0.008)
bad$status
# ... and an argument it cannot use is an error report, not an R error.
vrfpol("no2")$error
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
# the reform was assigned to four regions: four clusters
wcb(p, "district", "month", "crmrate", "reformed",
                       cl = "region", wtype = "webb", reps = 99,
                       seed = 1)

# your own panel: eight towns over ten years, four adopting a by-law (two
# in 2019, two in 2021), with each town's population, county and income
own <- data.frame(
  town = rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each = 10),
  year = rep(2015:2024, times = 8)
)
i <- match(own$town, unique(own$town))
own$first <- c(2019, 2019, 2021, 2021, NA, NA, NA, NA)[i]
own$bylaw <- as.integer(!is.na(own$first) & own$year >= own$first)
own$pop <- c(12, 30, 8, 22, 15, 40, 9, 18)[i] * 1000
own$county <- rep(c("North", "South"), 4)[i]
own$income <- 50 + own$year - 2015 + cos(seq_len(80))
own$rate <- 30 + i + 0.5 * (own$year - 2015) - 4 * own$bylaw +
  0.2 * own$income + sin(seq_len(80))
# eight towns: every one of the 2^8 sign patterns
wcb(own, "town", "year", "rate", "bylaw", covs = "income")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# well-being, 2024 (table 41-10-0082-01)
wb <- indiex("wellbeing")
w <- welprof(
  wb,
  "group",
  "indicator",
  "estimate",
  "lower",
  "upper",
  well = c(
    "Life satisfaction rating of 8, 9 or 10",
    "Sense of meaning and purpose rating of 8, 9 or 10",
    "Always or often has a hopeful outlook"
  ),
  distress = c(
    "Life satisfaction rating between 0 and 5",
    "Rarely or never has a hopeful outlook"
  ),
  qual = "quality"
)
w
plot(w)

# your own table: made-up percentages for two communities, with limits
own <- data.frame(
  community = rep(c("Lakeside", "Riverbend"), each = 4),
  item = rep(c("Hopeful", "Satisfied", "Rarely hopeful", "Low satisfaction"),
             2),
  pct = c(64, 71, 12, 18, 58, 66, 16, 22),
  lo = c(59, 66, 9, 14, 52, 60, 12, 17),
  hi = c(69, 76, 15, 22, 64, 72, 20, 27)
)
welprof(own, "community", "item", "pct", "lo", "hi",
        well = c("Hopeful", "Satisfied"),
        distress = c("Rarely hopeful", "Low satisfaction"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
seg <- data.frame(year = 2021:2023, n = c(40, 45, 60))
y <- yoy(seg, value = "n", prd = "year")
yoybnd(y, rnd = 5)

# random rounding to base 5 widens the envelope
yb <- yoybnd(y, rnd = 5, rndkind = "random")
as.data.frame(yb)[, c("year", "envpctlo", "envpctup",
                      "compctlo", "compctup")]

# only yoy() results are accepted
try(yoybnd(seg, rnd = 5))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
seg <- data.frame(year = rep(2022:2023, each = 3),
                  site = rep(c("A", "B", "C"), 2),
                  n = c(30, 50, 80, 45, 52, 79))
y <- yoy(seg, value = "n", prd = "year", by = "site")
yoypv(y)$p_value

# the same test by hand for site A: 45 against 30
stats::binom.test(45, 75)$p.value

# anything that is not a yoy() table is refused
try(yoypv(seg))
\dontshow{\}) # examplesIf}

}
