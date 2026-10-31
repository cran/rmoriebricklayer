\name{rmbl-data}
\alias{anltab}
\alias{asciifb}
\alias{audcats}
\alias{b64}
\alias{jsb64enc}
\alias{jsb64dec}
\alias{jsb64uenc}
\alias{jsb64udec}
\alias{bldl}
\alias{blfetch}
\alias{caseflow}
\alias{clrdcmp}
\alias{cnscwb}
\alias{cnsprof}
\alias{cnsstd}
\alias{crmdens}
\alias{deccodes}
\alias{declbld}
\alias{dispmix}
\alias{dldata}
\alias{dmnf}
\alias{dtabs}
\alias{dload}
\alias{duprows}
\alias{fdl}
\alias{fromjs}
\alias{grdbin}
\alias{grdlvls}
\alias{grdrcd}
\alias{infsch}
\alias{jsgz}
\alias{jsgzenc}
\alias{jsgzdec}
\alias{jsserdoc}
\alias{jsser}
\alias{jsunser}
\alias{justice-data}
\alias{knoxtst}
\alias{lifetbl}
\alias{loadprov}
\alias{ltrlrng}
\alias{swpwdth}
\alias{srchpod}
\alias{pswppod}
\alias{srchscs}
\alias{datumpmap}
\alias{optcrcsrch}
\alias{opteffort}
\alias{misssmry}
\alias{mksyncol}
\alias{mksyncsv}
\alias{orchk}
\alias{plot.rmbl_census_cwb}
\alias{plot.rmbl_profile_share}
\alias{plot.rmbl_hotspot}
\alias{plot.rmbl_connection}
\alias{plot.rmbl_healing_change}
\alias{plot.rmbl_community_index}
\alias{plot.rmbl_indigenous_gap}
\alias{plot.rmbl_dsr}
\alias{plot.rmbl_prevalence}
\alias{plot.rmbl_exposure_trend}
\alias{plot.rmbl_trc_progress}
\alias{plot.rmbl_ordinal_compare}
\alias{plot.rmbl_wellness_profile}
\alias{plot.rmbl_holistic_balance}
\alias{plot.rmbl_dual_continuum}
\alias{plot.rmbl_distinctions}
\alias{plot.rmbl_case_flow}
\alias{plot.rmbl_life_table}
\alias{plot.rmbl_disposition_mix}
\alias{plot.rmbl_density}
\alias{plot.rmbl_knox}
\alias{plot.rmbl_clearance_decomposition}
\alias{plot.rmbl_synthdid}
\alias{plot.rmbl_power}
\alias{plot.rmbl_balance}
\alias{plot.rmbl_aipw}
\alias{plot-methods}
\alias{plot.rmbl_stock_flow}
\alias{plot.rmbl_yoy}
\alias{plot.rmbl_rate}
\alias{plot.rmbl_share}
\alias{plot.rmbl_rate_change}
\alias{plot.rmbl_band_sensitivity}
\alias{plot.rmbl_drift_calibration}
\alias{plot.bricklayer_drift}
\alias{plot.bricklayer_benford}
\alias{plot.bricklayer_power}
\alias{plot.bricklayer_freq}
\alias{plot.bricklayer_missingness}
\alias{plot.rmbl_region_coverage}
\alias{plot.bricklayer_outliers}
\alias{plot.bricklayer_correlations}
\alias{plot.bricklayer_cortable}
\alias{plot.bricklayer_falsification}
\alias{plot.rmbl_bounds}
\alias{plot.rmbl_crf}
\alias{plot.rmbl_burden}
\alias{plot.rmbl_equity}
\alias{plot.rmbl_pollution_report}
\alias{plot.rmbl_footprint}
\alias{plot.rmbl_field}
\alias{plot.rmbl_particles}
\alias{plot.rmbl_count_trend}
\alias{plot.bricklayer_analysis}
\alias{plot.rmbl_event_study}
\alias{plot.rmbl_staggered_att}
\alias{plot.rmbl_synth}
\alias{plot.rmbl_bacon}
\alias{plot.rmbl_permutation}
\alias{plot.rmbl_loo}
\alias{plot.rmbl_cohort_trends}
\alias{plot.rmbl_ltrlrng}
\alias{plot.rmbl_srchpod}
\alias{plot.rmbl_datummap}
\alias{plot.rmbl_opteffort}
\alias{plot.rmbl_svy_estimate}
\alias{plot.rmbl_svy_compare}
\alias{plot.rmbl_trc_gaps}
\alias{profshr}
\alias{rcdmnf}
\alias{relbl}
\alias{rlblfrns}
\alias{rptanl}
\alias{rslvarc}
\alias{rslvckan}
\alias{rslvckns}
\alias{rslvsoc}
\alias{rul}
\alias{rulelib}
\alias{ruleinset}
\alias{rulebtw}
\alias{rulenull}
\alias{ruleuniq}
\alias{rulerx}
\alias{ruleincr}
\alias{rulemad}
\alias{rulecmpl}
\alias{ruledstn}
\alias{rulecolcnt}
\alias{schval}
\alias{sha256file}
\alias{siudate}
\alias{siufetch}
\alias{siufprs}
\alias{siuprs}
\alias{siusch}
\alias{siuso}
\alias{siutxt}
\alias{svcs}
\alias{toascii}
\alias{tojs}
\alias{trchlthgap}
\alias{trcind}
\alias{valrules}
\alias{valsch}
\alias{vrfmrg}
\alias{vrfrcd}
\alias{vrfsha256}
\alias{wbsnpnat}
\alias{wbsnpurl}
\alias{wrrcdmnf}
\alias{vrfrcdmnf}
\alias{wrtxtfb}
\alias{xfrvrf}
\title{Data: loading, fetching, parsing and checking}
\usage{

anltab(
  data,
  value,
  prd,
  by = NULL,
  pop = NULL,
  prior = NULL,
  units = c("count", "continuous", "percent"),
  rnd = NULL,
  rndkind = c("nearest", "random"),
  suplim = NULL,
  dir = c("neutral", "higher", "lower"),
  per = 1000,
  conflvl = 0.95,
  alpha = 0.05,
  adjust = "BH",
  prdord = NULL
)


asciifb(x, force = FALSE)


audcats(data, cols = NULL)


jsb64enc(input)

jsb64dec(input)

jsb64uenc(input)

jsb64udec(input)


bldl(
  url,
  dest,
  headers = NULL,
  label = basename(dest),
  size = NULL,
  tmout = 3600,
  quiet = NULL,
  tty = NULL,
  allowfile = FALSE,
  maxbytes = 2^31
)


blfetch(url, dest, wb = "", tmout = 120L)


caseflow(recv, disp, pend = NULL, prd = NULL, win = 12L, conflvl = 0.95)


clrdcmp(num, den, grp, cmp, base = NULL, conflvl = 0.95)


cnscwb(
  x,
  dwell = NULL,
  groups = c("First Nations", "Métis", "Inuit", "Non-Indigenous"),
  bounds = c(2650, 75000),
  resid = "Total - Residence on or off reserve",
  minpop = 250
)


cnsprof(x)


cnsstd(
  x,
  grp = "Indigenous identity",
  geo = "Canada",
  ages = c("0 to 4 years", "5 to 9 years", "10 to 14 years", "15 to 19 years",
    "20 to 24 years", "25 to 34 years", "35 to 44 years", "45 to 54 years",
    "55 to 64 years", "65 to 74 years", "75 years and over"),
  resid = "Total - Residence on or off reserve"
)


crmdens(
  lon,
  lat,
  w = NULL,
  bw = NULL,
  ngrid = 200L,
  cover = c(0.5, 0.9),
  xy = c("lonlat", "planar")
)


deccodes(x, vlabs, keepna = TRUE)


declbld(x, vlabs = NULL)


dispmix(cnts, prd = NULL, scores = NULL, conflvl = 0.95)


dldata(url, tpath, mode = "wb", quiet = FALSE, allowfile = FALSE)


dmnf(refresh = FALSE)

dtabs(refresh = FALSE)

dload(key, refresh = FALSE, token = NULL)


duprows(data, cols = NULL, quiet = FALSE)


fdl(url, tpath, attwb = NULL, allowfile = FALSE)


fromjs(
  txt,
  simplifyVector = TRUE,
  simplifyDataFrame = simplifyVector,
  simplifyMatrix = simplifyVector,
  flatten = FALSE,
  bigint_as_char = FALSE,
  simplify = NULL,
  duplicate_keys = c("error", "keep"),
  bigint_warn = TRUE,
  ...
)


grdbin(x, col)


grdlvls(x, lvls, ref = NULL)


grdrcd(x, map, keep = character())


infsch(data, slack = 0.1, maxlvl = 50L)


jsgzenc(x, raw = FALSE, ...)

jsgzdec(txt, raw = FALSE, ...)


jsser(x, digits = 8, pretty = FALSE)

jsunser(txt, trusted = FALSE)


knoxtst(
  x,
  y,
  time,
  spcbands,
  tmbands,
  nsim = 999L,
  seed = NULL,
  xy = c("lonlat", "planar"),
  maxprs = 5e+07
)


lifetbl(
  breaks,
  events,
  cens = 0,
  conflvl = 0.95,
  conftype = c("log-log", "log", "plain")
)


loadprov(path)


ltrlrng(x, W, model = c("invcube", "definite", "mbeta"), m = 1, navsd = 0)

swpwdth(x, p = NULL)

srchpod(
  coverage = NULL,
  model = c("random", "definite", "invcube", "mbeta"),
  m = 1,
  W = NULL,
  effort = NULL,
  area = NULL
)

pswppod(
  W,
  S,
  model = c("invcube", "definite", "mbeta"),
  m = 1,
  navsd = 0,
  npts = 2001,
  ntrk = 60
)

srchscs(poc, pod)

datumpmap(
  xedg,
  yedg,
  datum = c("point", "line", "area", "corridor", "general"),
  center = c(0, 0),
  sigma = 1,
  end = NULL,
  nodes = 64,
  wts = NULL
)

optcrcsrch(sigma, W, effort)

opteffort(poc, area = NULL, W, effort, tol = 1e-14)


misssmry(data)


mksyncol(spec, n, ctx = list(), basep = NULL)


mksyncsv(schema, outpath, nrows = NULL, seed = NULL)


orchk(cnts, ref = NULL, rptd, tol = 0.05)


\method{plot}{rmbl_census_cwb}(
  x,
  ...,
  component = c("cwb", "income", "education", "housing", "labour"),
  main = NULL,
  col = NULL,
  palette = NULL
)

\method{plot}{rmbl_profile_share}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_hotspot}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_connection}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_healing_change}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_community_index}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_indigenous_gap}(
  x,
  ...,
  what = c("difference", "ratio"),
  main = NULL,
  col = NULL,
  palette = NULL
)

\method{plot}{rmbl_dsr}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_prevalence}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_exposure_trend}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_trc_progress}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_ordinal_compare}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_wellness_profile}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_holistic_balance}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_dual_continuum}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_distinctions}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_case_flow}(
  x,
  ...,
  what = c("flow", "clearance"),
  main = NULL,
  col = NULL,
  palette = NULL
)

\method{plot}{rmbl_life_table}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_disposition_mix}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_density}(x, ..., points = TRUE, main = NULL,
  col = NULL, palette = NULL)

\method{plot}{rmbl_knox}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_clearance_decomposition}(x, ..., what = NULL,
  maxparts = 20L, main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_synthdid}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_power}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_balance}(
  x,
  ...,
  threshold = 0.1,
  after = NULL,
  main = NULL,
  col = NULL,
  palette = NULL
)

\method{plot}{rmbl_aipw}(
  x,
  ...,
  type = c("overlap", "estimate"),
  main = NULL,
  col = NULL,
  palette = NULL
)

\method{plot}{rmbl_stock_flow}(
  x,
  ...,
  what = c("adp", "alos", "people", "days"),
  main = NULL,
  col = NULL,
  palette = NULL,
  xlab = NULL
)

\method{plot}{rmbl_yoy}(
  x,
  ...,
  what = c("pctchg", "value"),
  main = NULL,
  col = NULL,
  palette = NULL,
  xlab = NULL,
  gaps = c("break", "join")
)

\method{plot}{rmbl_rate}(x, ..., period = NULL, main = NULL,
  col = NULL, palette = NULL, xlab = NULL)

\method{plot}{rmbl_share}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_rate_change}(x, ..., main = NULL, col = NULL,
  palette = NULL, xlab = NULL)

\method{plot}{rmbl_band_sensitivity}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_drift_calibration}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_drift}(
  x,
  ...,
  what = c("psi", "columns", "benford", "ecdf", "quantiles", "fingerprint"),
  cols = NULL,
  warn = NULL,
  fail = NULL,
  main = NULL,
  col = NULL,
  palette = NULL
)

\method{plot}{bricklayer_benford}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_power}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_freq}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_missingness}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_region_coverage}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_outliers}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_correlations}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_cortable}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{bricklayer_falsification}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_bounds}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_crf}(x, ..., exposure = NULL, main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_burden}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_equity}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_pollution_report}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_footprint}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_field}(x, ..., contours = 8L, main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_particles}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_count_trend}(x, ..., main = NULL, col = NULL,
  palette = NULL, xlab = NULL)

\method{plot}{bricklayer_analysis}(x, ..., which = NULL, main = NULL)

\method{plot}{rmbl_event_study}(
  x,
  ...,
  main = NULL,
  col = NULL,
  palette = NULL,
  style = c("dot", "stata"),
  shadepost = FALSE,
  refline = -0.5,
  xlab = NULL,
  gaps = c("break", "join")
)

\method{plot}{rmbl_staggered_att}(
  x,
  ...,
  main = NULL,
  col = NULL,
  palette = NULL,
  style = c("dot", "stata"),
  shadepost = FALSE,
  refline = -0.5
)

\method{plot}{rmbl_synth}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_bacon}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_permutation}(
  x,
  ...,
  main = NULL,
  col = NULL,
  palette = NULL,
  type = c("density", "histogram")
)

\method{plot}{rmbl_loo}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_cohort_trends}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_ltrlrng}(x, ..., equiv = FALSE, spacing = NULL,
  main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_srchpod}(x, ..., models = NULL, m = NULL,
  cmax = NULL, main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_datummap}(x, ...,
  view = c("map", "persp", "both", "cells"), contours = 8L, digits = 2,
  main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_opteffort}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_svy_estimate}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_svy_compare}(x, ..., main = NULL, col = NULL, palette = NULL)

\method{plot}{rmbl_trc_gaps}(x, ..., main = NULL, col = NULL, palette = NULL)


profshr(
  x,
  num,
  den = NULL,
  smpfrac = 0.25,
  deff = 1,
  conflvl = 0.95,
  roubase = 5
)


rcdmnf(orig, recd, map, pub = NULL, key = NULL, ctx = NULL)


relbl(x, map, keep = character())


rlblfrns(vlabs, obs, cnts = NULL)


rptanl(
  x,
  path = NULL,
  format = NULL,
  title = "Analysis of a published table",
  digits = 1L
)


rslvarc(prov)


rslvckan(prov)


rslvckns(prov)


rslvsoc(prov)


rul(name, expr, col = NULL, sev = c("warning", "fatal"), msg = NULL)


ruleinset(col = NULL, set, napass = TRUE, sev = c("warning", "fatal"))

rulebtw(col = NULL, lo, hi, napass = TRUE, sev = c("warning", "fatal"))

rulenull(col = NULL, sev = c("warning", "fatal"))

ruleuniq(col = NULL, sev = c("warning", "fatal"))

rulerx(col = NULL, pat, napass = TRUE, sev = c("warning", "fatal"))

ruleincr(col = NULL, strict = FALSE, sev = c("warning", "fatal"))

rulemad(col = NULL, n = 3, napass = TRUE, sev = c("warning", "fatal"))

rulecmpl(sev = c("warning", "fatal"))

ruledstn(cols = NULL, sev = c("warning", "fatal"))

rulecolcnt(n, sev = c("warning", "fatal"))


schval(dfraw, prov)


sha256file(path)


siudate(x)


siufetch(drid, dest, lang = c("en", "fr"), wb = "", tmout = 120L)


siufprs(drid, lang = c("en", "fr"))


siuprs(html)


siusch()


siuso(text)


siutxt(html)


svcs(refresh = FALSE, maxage = 86400, tmout = 20, offline = FALSE)


toascii(x)


tojs(
  x,
  dataframe = c("rows", "columns", "values"),
  matrix = c("rowmajor", "columnmajor"),
  Date = c("ISO8601", "epoch"),
  POSIXt = c("string", "ISO8601", "epoch", "mongo"),
  factor = c("string", "integer"),
  complex = c("string", "list"),
  raw = c("base64", "hex", "mongo", "int", "js"),
  null = c("list", "null"),
  na = NULL,
  auto_unbox = FALSE,
  digits = 4,
  pretty = FALSE,
  force = FALSE,
  ...
)


trchlthgap(
  health = indiex("health"),
  lifeexp = indiex("lifeexp"),
  infmort = indiex("infantmort"),
  suiide = indiex("suicide"),
  ref = "Non-Indigenous",
  agetot = NULL
)


trcind()


valrules(data, rules)


valsch(dfraw, prov)


vrfmrg(x, pub, tol = 0, strict = TRUE)


vrfrcd(orig, recd, decl)


vrfsha256(path, expsha)


wbsnpnat(url, tmout = 30L)


wbsnpurl(url, ts = NULL)


wrrcdmnf(man, path)

vrfrcdmnf(path, orig, recd)


wrtxtfb(text, path)


xfrvrf(imported, soucnts, codebook = NULL, tol = 0, strict = TRUE)

}
\arguments{
\item{data}{For \code{anltab}: A data frame in long form: one row per period and group.

For \code{audcats}: A data frame whose categorical columns are audited.

For \code{duprows}: A data frame whose rows are checked for duplicates.

For \code{infsch}: A data frame to learn from.

For \code{misssmry}: A data frame with at least one column.

For \code{valrules}: A data frame the rules are applied to.}
\item{value}{Name of the column (a string) with the published count (or
measure).}
\item{prd}{For \code{anltab}: Name of the column with the period (fiscal year, quarter,
...); numeric periods are used as the time axis of the trend tests. Text
periods (\code{"2019/20"}, \code{"2021 Q3"}, \code{"Mar 2021"}) are
ordered as \code{\link[=yoy]{yoy()}} reads them (see its \code{prd}), or as
\code{prdord} gives.

For \code{caseflow}: Optional period labels: numbers, dates, or
\code{"YYYY-MM"} strings (which the plot draws on a date axis).

For \code{dispmix}: Optional period labels (default: the row names, or
\code{1:nrow(counts)}).}
\item{by}{Optional character vector of grouping column names
(institution, region, ...). \code{NULL} (the default) treats the table as
one series.}
\item{pop}{Optional name of an exposure column for rates
(\code{NULL}, the default, skips the rate step).}
\item{prior}{Optional data frame: the previous capsule of the same
table, for the drift screen. \code{NULL} (the default) skips it.}
\item{units}{\code{"count"} (the default), \code{"continuous"} or
\code{"percent"}, as in \code{\link[=yoy]{yoy()}}.}
\item{rnd}{How the release rounds
or suppresses cells; see \code{\link[=pubbnd]{pubbnd()}}.
\code{rnd} is the
rounding base (for example 5), \code{rndkind} \code{"nearest"} (the
default) or \code{"random"}, \code{suplim} the threshold below
which cells are suppressed. \code{NULL} when the counts are exact. Used
only for counts: with other \code{units} they are ignored, with a
warning.}
\item{rndkind}{How the release rounds
or suppresses cells; see \code{\link[=pubbnd]{pubbnd()}}.
\code{rnd} is the
rounding base (for example 5), \code{rndkind} \code{"nearest"} (the
default) or \code{"random"}, \code{suplim} the threshold below
which cells are suppressed. \code{NULL} when the counts are exact. Used
only for counts: with other \code{units} they are ignored, with a
warning.}
\item{suplim}{How the release rounds
or suppresses cells; see \code{\link[=pubbnd]{pubbnd()}}.
\code{rnd} is the
rounding base (for example 5), \code{rndkind} \code{"nearest"} (the
default) or \code{"random"}, \code{suplim} the threshold below
which cells are suppressed. \code{NULL} when the counts are exact. Used
only for counts: with other \code{units} they are ignored, with a
warning.}
\item{dir}{Which way is an improvement, as in \code{\link[=yoy]{yoy()}}:
\code{"neutral"} (the default), \code{"higher"} or
\code{"lower"}.}
\item{per}{Rate denominator, as in \code{\link[=rtcalc]{rtcalc()}}; default 1000 (rates
per
1,000 of \code{pop}).}
\item{conflvl}{For \code{anltab}: Confidence level for every interval, default 0.95.

For \code{caseflow}: Confidence level for the intervals. Default 0.95.

For \code{clrdcmp}, \code{dispmix}, \code{lifetbl}: Confidence level. Default 0.95.

For \code{profshr}: Confidence level of the share's limits (default 0.95).}
\item{alpha}{Level for the multiple-comparison decision and the drift
screens, default 0.05.}
\item{adjust}{Multiple-comparison method for
\code{\link[=scanadj]{scanadj()}}. The default is \code{"BH"} (Benjamini-Hochberg).}
\item{prdord}{Optional character vector: the period labels in order,
for text periods the reader does not know (see \code{\link[=yoy]{yoy()}}); passed to
\code{\link[=yoy]{yoy()}}, \code{\link[=ratechg]{ratechg()}} and the trend tests.}
\item{x}{For \code{asciifb}, \code{toascii}: A character vector (other types are converted with
\code{\link[=as.character]{as.character()}}).

For \code{cnscwb}: A \code{\link{cnsprof}} of a population table.

For \code{cnsprof}: A profile table as published (a data frame read from its CSV), or a
data service key (\code{"census2021_ipp/x2021001_pop"}).

For \code{cnsstd}, \code{profshr}: A \code{\link{cnsprof}}.

For \code{deccodes}: Vector of codes: numeric, integer, character or factor. A factor
is read through its labels, not its integer codes; an ordered factor is
treated the same as an unordered one (its level order is not used).

For \code{declbld}: A vector with a \code{labels} attribute (as produced by haven),
or a plain vector of codes when \code{vlabs} is supplied. A factor,
ordered or not, is read through its integer codes; the result is an
unordered factor whose levels follow the codes.

For \code{grdbin}: The column to check.

For \code{grdlvls}: Character or factor vector. A factor is read through its labels.

For \code{grdrcd}: A factor or character vector. Other atomic vectors are compared
by matching the values that \code{as.character()} gives. Ordered and
unordered factors are treated the same: both are read through their labels,
and the result is character either way.

For \code{jsgz}: Object to encode.

For \code{jsserdoc}: Object to serialise.

For \code{knoxtst}: Locations: longitude and latitude in degrees by default
(\code{coords = "lonlat"}), or planar coordinates in metres.

For \code{ltrlrng}: Numeric vector: lateral ranges (distances from the track), any
sign. For \code{swpwdth()}, strictly increasing abscissae, or an
\code{rmbl_ltrlrng} object (then \code{p} is taken from it).

For \code{plot.rmbl_census_cwb}: An \code{rmbl_stock_flow} result.

For \code{relbl}: A factor or character vector.

For \code{rptanl}: A \code{bricklayer_analysis} from
\code{\link[=anltab]{anltab()}}.

For \code{siudate}: A character vector of human-readable dates. A vector that is
all \code{NA} (of any type) is accepted.

For \code{tojs}: The object to encode.

For \code{vrfmrg}: A character or factor vector after recoding.}
\item{force}{For \code{asciifb}: A single logical: \code{TRUE} always transliterates every
element to ASCII; \code{FALSE} (the default) only the elements that are not
valid UTF-8. Anything other than \code{TRUE} counts as \code{FALSE}.

For \code{tojs}: Logical scalar, default \code{FALSE}: write objects that have
no JSON form (as \code{{}}) instead of failing.}
\item{cols}{For \code{audcats}: Character vector of column names to audit, default
\code{NULL}: every factor, character or haven-labelled column. Columns of
other types can be named explicitly and are audited by their distinct
values.

For \code{duprows}: Character vector of the columns defining a duplicate, or
\code{NULL} (the default) for all of them.

For \code{plot.rmbl_census_cwb}: For \code{bricklayer_drift}, the columns to draw with
\code{what = "columns"} or \code{"benford"}; \code{NULL} (the default)
takes up to six, worst first.

For \code{rulelib}: Character vector of columns that jointly must be unique
(\code{ruledstn()}), or \code{NULL} (the default) for all of
them.}
\item{input}{For the encoders, a raw vector, or a character vector
(its elements are joined with newlines and encoded as UTF-8 bytes), or
\code{NULL}. For \code{jsb64dec()}, base64 text (a
character vector, joined with newlines) or its raw bytes. For
\code{jsb64udec()}, URL-safe base64 text, with or
without \code{=} padding.}
\item{url}{For \code{bldl}: The URL, \code{https}. The option
\code{rmoriebricklayer.allowhttp} set to \code{TRUE} also allows plain
\code{http}. A loopback, link-local or private address is refused.

For \code{blfetch}: Live source URL, a single \code{https} string.

For \code{dldata}: The URL to download, a single string.

For \code{fdl}: URL to download, a single string.

For \code{wbsnpnat}: URL to resolve, a single string (\code{http} or \code{https}).

For \code{wbsnpurl}: The original source URL to look up, a single string.}
\item{dest}{For \code{bldl}: Character string: the path to write.

For \code{blfetch}: Destination file path, a single string; its directory must
exist.

For \code{siufetch}: Character string: the file to write the fetched HTML to.}
\item{headers}{Character vector of request headers, every element named
(name = header, value = its value), or \code{NULL} (the default).}
\item{label}{Text shown in front of the bar; the file name by default.}
\item{size}{Expected size in bytes when known (a percent bar instead of a
spinner); otherwise the size the server announces is used.}
\item{tmout}{For \code{bldl}: Seconds allowed for the whole transfer: a whole number from 1
to 2147483647, default 3600. A transfer slower than 64 bytes a second
for 30 seconds is ended before that.

For \code{blfetch}: Per-request timeout in seconds, a positive whole number
(default 120).

For \code{siufetch}: Request timeout in seconds. Default 120.

For \code{svcs}: Numeric scalar, the seconds allowed for each of the two
fetches (document and signature); default \code{20}.

For \code{wbsnpnat}: Request timeout in seconds, default 30.}
\item{quiet}{For \code{bldl}: \code{TRUE}, \code{FALSE}, or \code{NULL} (the default) to
follow the session and options.

For \code{dldata}: Logical. \code{TRUE} suppresses the progress output;
\code{FALSE} (the default) shows it.

For \code{duprows}: Logical: \code{TRUE} skips the boxed count of duplicate rows
and groups, which is otherwise sent through \code{message()}; default
\code{FALSE}.}
\item{tty}{Draw the live bar (\code{TRUE}) or print milestone lines
(\code{FALSE}); \code{NULL} (the default) draws the bar when the
console redraws a line in place, as described in Details.}
\item{allowfile}{For \code{bldl}: Logical, default \code{FALSE}: accept a \code{file://}
URL (for offline tests).

For \code{dldata}: Logical. Accept a \code{file://} URL (default
\code{FALSE}; offline tests and examples pass \code{TRUE}). Every URL
must otherwise be \code{https} and public.

For \code{fdl}: Logical. Accept a \code{file://} URL for \code{url}
(default \code{FALSE}; offline tests pass \code{TRUE}). It does not
apply to \code{attwb}.}
\item{maxbytes}{Most bytes the body may have (default 2 GiB, the
transport's ceiling). A body past it, chunked or not, ends the transfer
with an error and leaves nothing behind: a caller that expects a small
file should say so.}
\item{wb}{For \code{blfetch}: Optional explicit Wayback snapshot URL, a string.
\code{""} (default) or \code{NULL} auto-resolves one via
\code{\link{wbsnpurl}}'s API when the live download fails.

For \code{siufetch}: Optional explicit Wayback snapshot URL (passed through to
\code{blfetch}); \code{""} (the default) lets it discover one.}
\item{recv}{Cases received (new cases), one per period, in time
order.}
\item{disp}{Cases disposed, one per period.}
\item{pend}{Optional cases pending at the end of each period.}
\item{win}{Periods in the rolling clearance rate and in the pace
behind \code{pertoclear}. Default 12, a year of months.}
\item{num}{For \code{clrdcmp}: Cases disposed (or cleared), one per part and
comparison.

For \code{profshr}: The characteristic counted: its \code{chaid}, or its name
exactly.}
\item{den}{For \code{clrdcmp}: Cases received (or reported), one per part and
comparison.

For \code{profshr}: The characteristic it is a share of (id or name); default its
parent.}
\item{grp}{For \code{clrdcmp}: The part each row belongs to: offence group, court, case
type.

For \code{cnsstd}: The group (default \code{"Indigenous identity"}).}
\item{cmp}{The comparison each row belongs to: exactly two values,
such as two years or two jurisdictions.}
\item{base}{Which value of \code{cmp} is the baseline. Default: the
first in sorted order.}
\item{dwell}{Optional \code{\link{cnsprof}} of the matching household table.}
\item{groups}{The groups to score (default First Nations, Metis, Inuit and
non-Indigenous people).}
\item{bounds}{Income bounds of \code{\link{cwbscr}}.}
\item{resid}{On or off reserve, in the tables that split it (default the
total).}
\item{minpop}{The smallest population scored (default 250; the Department
uses 65).}
\item{geo}{The geography: its name (default \code{"Canada"}) or, where names
repeat, its DGUID.}
\item{ages}{The age groups, as the profile names them.}
\item{lon}{Coordinates of the incidents: longitude and latitude in
degrees (WGS84) by default, or planar coordinates in metres with
\code{coords = "planar"}. Points with a missing coordinate are
dropped with a message; in degrees, points at exactly (0, 0), which
is how several open-data portals publish an incident with no
location, are dropped too.}
\item{lat}{Coordinates of the incidents: longitude and latitude in
degrees (WGS84) by default, or planar coordinates in metres with
\code{coords = "planar"}. Points with a missing coordinate are
dropped with a message; in degrees, points at exactly (0, 0), which
is how several open-data portals publish an incident with no
location, are dropped too.}
\item{w}{Optional non-negative weight per incident. Default 1.}
\item{bw}{Kernel standard deviation in kilometres: one value for
both directions or two (east-west, north-south). Default: Scott's
normal-reference rule, \eqn{\sigma n^{-1/6}} for each direction.}
\item{ngrid}{Grid nodes per direction. Default 200.}
\item{cover}{Shares of the incidents whose highest-density regions
are reported and outlined. Default \code{c(0.5, 0.9)}.}
\item{xy}{For \code{crmdens}: \code{"lonlat"} (the default) or \code{"planar"}.

For \code{knoxtst}: \code{"lonlat"} or \code{"planar"}.}
\item{vlabs}{For \code{deccodes}: Named character vector, code = label, for example
\code{c("1" = "White", "2" = "Black")}. The names are the codes as they
print with \code{as.character()}; the values are the labels. Codes in the
dictionary that do not occur in \code{x} are allowed.

For \code{declbld}: Optional named character vector, code = label, used
only when \code{x} carries no \code{labels} attribute. Default
\code{NULL}.

For \code{rlblfrns}: Named character vector, code = true label, in code
order (the source program's code book).}
\item{keepna}{Logical, default \code{TRUE}: \code{NA} codes stay
\code{NA} in the result. \code{FALSE} makes any \code{NA} code an error,
for columns where missingness should not occur.}
\item{cnts}{For \code{dispmix}: A matrix or data frame of non-negative counts, one row per
period and one column per outcome. Columns that are not numeric are
refused; pass only the outcome columns.

For \code{orchk}: Numeric matrix, data frame or table of counts with row names
(the groups) and exactly two columns: outcome absent, then outcome
present.

For \code{rlblfrns}: Optional named numeric vector of frequencies per true label,
default \code{NULL}. Enables the two frequency-order mechanisms.}
\item{scores}{Numeric scores for the periods in the trend tests.
Default: \code{1:nrow(counts)}, i.e. equally spaced.}
\item{tpath}{For \code{dldata}: Destination path on disk, a single string. Its
directory must exist.

For \code{fdl}: Destination path on disk, a single string.}
\item{mode}{Kept for the signature of \code{utils::download.file()}; only
\code{"wb"} (the default) or \code{"w"} is accepted. Every transfer is
binary and written fresh through the package's own transport, so an
append mode cannot be honoured and is an error rather than a silent
\code{"wb"}.}
\item{refresh}{For \code{dmnf}: Logical scalar, default \code{FALSE}: fetch again even when a
day-old copy (of the manifest, or for \code{dload()} of the
table) is cached.

For \code{svcs}: Logical scalar, default \code{FALSE}: \code{TRUE} fetches
the live document even when the cached copy is fresh.}
\item{key}{For \code{dmnf}: Character scalar, a \code{db/table} key from the manifest (the
\code{key} column of \code{dtabs()}).

For \code{rcdmnf}: Optional signing key, default \code{NULL} (unsigned): a key from
\code{\link{pqckg}} or \code{\link{fipskg}}. When given the
manifest carries a signature and the public key.}
\item{token}{For \code{dload()}: the MORIE key to use for this call,
in place of the one \code{\link{dlogin}} stored; \code{NULL} (the
default) uses the stored key. It is never printed or written to disk.}
\item{attwb}{The Wayback Machine snapshot URL tried as a
fallback if the primary download fails. \code{NULL} (the default)
resolves a snapshot automatically via
\code{\link[=wbsnpurl]{wbsnpurl()}} (one more
request); a URL string overrides the lookup; \code{""} or \code{FALSE}
disables the fallback entirely.}
\item{txt}{For \code{fromjs}: JSON text (a character vector, joined with newlines), a file
path, an \code{http(s)} URL, or a connection. A URL goes through
the same check and the same transport as every other fetch in the
package (public https host, redirects re-checked, body capped).

For \code{jsgz}: Base64 string (or raw vector of gzip bytes) from
\code{jsgzenc()}.

For \code{jsserdoc}: Character scalar: JSON produced by
\code{jsser()}.}
\item{simplifyVector}{Logical scalar, default \code{TRUE}: turn arrays of
scalars into atomic vectors.}
\item{simplifyDataFrame}{Logical scalar, default \code{simplifyVector}: turn
arrays of records into data frames.}
\item{simplifyMatrix}{Logical scalar, default \code{simplifyVector}: turn
arrays of equal-length arrays into matrices.}
\item{flatten}{Logical scalar, default \code{FALSE}. \code{TRUE} expands
nested data frame columns into columns named \code{outer.inner}.}
\item{bigint_as_char}{Logical scalar, default \code{FALSE}: integers beyond
2^53 come back as strings.}
\item{simplify}{Legacy, default \code{NULL}: \code{FALSE} turns every
simplification off.}
\item{duplicate_keys}{What to do with an object that repeats a key:
\code{"error"} (default) refuses the document, \code{"keep"} returns both
values under the repeated name, as jsonlite does.}
\item{bigint_warn}{Logical scalar, default \code{TRUE}: warn (once per
document) when a whole number beyond 2^53 is read into a double; the
package's own readers of API payloads turn this off, since long numeric
identifiers are routine there.}
\item{...}{For \code{fromjs}: Ignored, for call compatibility with jsonlite.

For \code{jsgz}: For \code{jsgzenc()}, passed to
\code{\link[=tojs]{tojs()}}
(for example \code{auto_unbox} or \code{digits}); for \code{jsgzdec()},
passed
to \code{\link[=fromjs]{fromjs()}} (for example
\code{simplifyVector}).

For \code{plot.rmbl_census_cwb}: Passed to the base-graphics call (\code{plot}, \code{barplot}
or \code{image}). They are passed on to each panel's method for a
\code{bricklayer_analysis} object.

For \code{tojs}: Further options of jsonlite's \code{toJSON()} and of this
package (see Details).}
\item{col}{For \code{grdbin}: Character string: the column's name, used only in the error
message.

For \code{plot.rmbl_census_cwb}: Colours, overriding the palette.

For \code{rul}: Name of the column the rule applies to, or \code{NULL} (the
default) for a table-level rule.

For \code{rulelib}: Character scalar, the name of the column the rule applies
to.}
\item{lvls}{Character vector of every allowed level, in the intended
order. The first element is the reference category.}
\item{ref}{For \code{grdlvls}: Optional character string, default \code{NULL} (no
check). When given it must equal \code{levels[1]}; use it to state the
intended baseline next to the code that fits the model.

For \code{orchk}: Character string: the row name of the reference group.

For \code{trchlthgap}: The reference group's label (default \code{"Non-Indigenous"}).}
\item{map}{For \code{grdrcd}: Named character vector, \code{c(old_label = "new_label", ...)}.
Every name must be non-empty.

For \code{rcdmnf}: Named character vector, old = new: the mapping that was
applied.

For \code{relbl}: Named character vector, old label = new label. Every level
of \code{x} must appear as a name unless listed in \code{keep}. Several
old labels may map to one new label.}
\item{keep}{For \code{grdrcd}: Character vector, default empty. Labels allowed to pass
through unchanged.

For \code{relbl}: Character vector, default empty: levels allowed to pass
through unchanged.}
\item{slack}{Headroom, one non-negative number (default 0.1). It is a
fraction of the row count and of each numeric range, and an absolute
amount added to each missingness rate (0.1 allows ten more percentage
points of \code{NA}). \code{0} pins exactly to what was observed, which
will reject almost any re-release.}
\item{maxlvl}{Maximum distinct values for a
categorical column to have its value set recorded, one positive whole
number (default 50). Above this the column is treated as free text and
no value set is pinned.}
\item{raw}{For \code{jsgz}: Logical scalar, default \code{FALSE}: return (or, for the decoder,
insist on) gzip bytes instead of base64 text.

For \code{tojs}: How a raw vector is written: \code{"base64"} (the default, one
string), \code{"hex"}, \code{"mongo"}, \code{"int"} or \code{"js"}.}
\item{digits}{For \code{jsserdoc}: Decimal digits retained for doubles (default
8, the jsonlite default, so \code{1/3} is written as \code{0.33333333}).
\code{digits = I(17)} writes every double exactly (17 significant digits),
which makes the round trip \code{identical()} for doubles too; \code{NA}
means 15 significant digits, as in jsonlite, and is not exact.
A complex value with only one \code{NA} part comes back as \code{NA}, as it
does in jsonlite.

For \code{plot.rmbl_census_cwb}: Decimal places of the percentages in the \code{"cells"} view.

For \code{rptanl}: Number of decimals for percentages and rates, default 1.

For \code{tojs}: Numeric scalar, default \code{4}: decimal places kept for
doubles. \code{I(n)} means \code{n} significant digits (\code{I(17)}
writes every double exactly) and \code{NA} means 15 significant digits.}
\item{pretty}{For \code{jsserdoc}: Logical scalar, default \code{FALSE}: indent the output.

For \code{tojs}: \code{FALSE} (the default) for compact output, \code{TRUE}
to indent by two spaces, or a number of spaces.}
\item{trusted}{\code{FALSE} (default) rebuilds data types only (vectors,
lists, factors, matrices, data frames, environments, symbols) and
refuses functions, calls, expressions, namespaces and S4 objects:
rebuilding those runs code the JSON's author chose, through
\code{unserialize()}, \code{parse()}, \code{getNamespace()} or an \code{initialize}
method. Set \code{TRUE} only for JSON your own session produced.}
\item{y}{Locations: longitude and latitude in degrees by default
(\code{coords = "lonlat"}), or planar coordinates in metres.}
\item{time}{Times of the incidents: \code{Date}, \code{POSIXct}, or
numbers in days.}
\item{spcbands}{Upper edges of the distance bands in metres,
increasing: \code{c(100, 200, 400)} is 0-100, 100-200 and 200-400 m.}
\item{tmbands}{Upper edges of the time bands in days, increasing.}
\item{nsim}{Monte Carlo permutations. Default 999.}
\item{seed}{For \code{knoxtst}: Optional seed for the permutations, a whole number from
-2147483647 to 2^53 - 1; the caller's random stream is left as it was.

For \code{mksyncsv}: Random seed for reproducibility. Defaults to
\code{schema$seed}, then 91735246.}
\item{maxprs}{Limit on candidate pairs held in memory. Default 5e7.}
\item{breaks}{Band edges, increasing, starting at the time origin:
\code{c(0, 10, 15, 18, Inf)} for the four bands above. The last edge
may be \code{Inf} (an open band). Or band labels such as
\code{c("Under 10", "10-15", "15-18", "Over 18")}, read with
\code{\link{prsbands}}.}
\item{events}{Cases that ended in each band (counts, or expected
counts such as a published share times the number of cases).}
\item{cens}{Cases withdrawn from observation in each band without
the event (still open when the data were drawn); one value or one per
band. Default 0.}
\item{conftype}{Scale of the interval: \code{"log-log"} (the default,
which keeps the limits inside 0 to 1), \code{"log"} or \code{"plain"}.}
\item{path}{For \code{loadprov}: Path to the provenance JSON file, a single string.

For \code{rptanl}: Where to write, a file path. With \code{NULL} (the default)
the text is returned invisibly and nothing is written.

For \code{sha256file}: A single string: the path of the file to hash (\code{~} is
expanded as usual by R's file functions).

For \code{vrfsha256}: Path to the file to hash, a single string.

For \code{wrrcdmnf}: Character string: the JSON file to write
(\code{wrrcdmnf()}) or read (\code{vrfrcdmnf()}).

For \code{wrtxtfb}: The destination file, a single non-empty string. Its
directory must exist.}
\item{W}{Positive number: the sweep width, in the distance unit of the
grid and the effort (nautical miles, kilometres: one unit throughout). For
\code{srchpod()}, give it with \code{effort} and \code{area} in place of
\code{coverage}; default \code{NULL}.}
\item{model}{For \code{ltrlrng()} and \code{pswppod()}: \code{"invcube"}
(the default), \code{"definite"} or \code{"mbeta"}. For
\code{srchpod()}: \code{"random"} (the default), \code{"definite"},
\code{"invcube"} or \code{"mbeta"}.}
\item{m}{For \code{ltrlrng}: Number in (0, 1]: the M-Beta detection probability inside its
range. Default 1.

For \code{plot.rmbl_census_cwb}: M-Beta heights, one curve each when \code{"mbeta"} is among the
models.}
\item{navsd}{Non-negative number: the standard deviation of the
cross-track navigation error, in the units of \code{x}. Default 0.}
\item{p}{Numeric vector in [0, 1]: the lateral range curve at \code{x}.}
\item{coverage}{Non-negative numeric vector of coverages (sweep width
times track length over the area searched; 1 means the effort equals the
area). Default \code{NULL}: then \code{W}, \code{effort} and \code{area}
give it, \code{W * effort / area}. Give one or the other, not both.}
\item{effort}{Non-negative number: the total effort, as track length (the
distance the searchers travel while searching, in the unit of \code{W}).
For \code{srchpod()}, the track length in each area, one number or one per
area (a matrix laid out like the map when \code{area} is one); default
\code{NULL}.}
\item{area}{Positive numeric vector, one per cell: the cell areas, in the
square of the unit of \code{W}. May be \code{NULL} when \code{poc} is an
\code{rmbl_datummap} (its cells' areas are used). For \code{srchpod()},
the areas searched, or a map from \code{datumpmap()} whose cell areas are
taken; default \code{NULL}.}
\item{S}{Positive number: the track spacing.}
\item{npts}{Whole numbers: the quadrature points across one spacing
(at least 3, raised to the next odd number; default 2001) and the tracks
on each side (at least 1; default 60).}
\item{ntrk}{Whole numbers: the quadrature points across one spacing
(at least 3, raised to the next odd number; default 2001) and the tracks
on each side (at least 1; default 60).}
\item{poc}{Numeric vector or matrix in [0, 1], summing to at most 1: the
probability that each area contains the object (your own areas' shares,
for example from a consensus of the planners' scenarios). For
\code{srchscs()} and \code{opteffort()} also a probability map from
\code{datumpmap()}: its cells are the areas, in the order of
\code{as.vector(map$poc)}.}
\item{pod}{Numeric vector in [0, 1], one per area, or a matrix with one
row per search and one column per area. When \code{poc} is a map, also a
matrix laid out like the map (one search, cell by cell), a
\code{srchpod()} result with one value per cell, or an
\code{opteffort()} result (its cells' PODs).}
\item{xedg}{Strictly increasing numeric vectors: the cell edges of the
grid laid over your search area, east-west and north-south, in the
distance unit (\code{seq(-5, 5, by = 0.5)}: half-unit cells over ten
units). Cells may differ in size.}
\item{yedg}{Strictly increasing numeric vectors: the cell edges of the
grid laid over your search area, east-west and north-south, in the
distance unit (\code{seq(-5, 5, by = 0.5)}: half-unit cells over ten
units). Cells may differ in size.}
\item{datum}{\code{"point"} (the default), \code{"line"}, \code{"area"},
\code{"corridor"} or \code{"general"}.}
\item{center}{Two numbers, x then y in the grid's coordinates: the datum
point (for example the last known position), the start of a line datum or
a corner of an area datum. Default \code{c(0, 0)}.}
\item{sigma}{Positive number: the standard deviation of the circular normal
position error, in the distance unit (a total probable error \code{E} is
\code{1.1774 sigma}). Default 1.}
\item{end}{Two numbers: the end of a line datum or the opposite corner of
an area datum; \code{NULL} for a point datum.}
\item{nodes}{Whole number from 2 to 1000: Gauss-Legendre nodes along a line
datum. Default 64.}
\item{wts}{For \code{datum = "general"}: a non-negative matrix of cell
weights, one row per \code{y} cell and one column per \code{x} cell.}
\item{tol}{For \code{ltrlrng}: Positive number: the bisection tolerance on log lambda.

For \code{orchk}: Number, default \code{0.05}: the relative tolerance for a
match (5 percent), to allow for rounding in the report.

For \code{vrfmrg}: Non-negative number, default \code{0}. The absolute
difference in counts allowed per label, for releases that round or
suppress small counts.

For \code{xfrvrf}: Non-negative number, default \code{0}: the absolute
difference in count allowed per label, passed to
\code{\link{vrfmrg}}.}
\item{spec}{A list describing the column: \code{type} and the fields
listed in Details. Lists as parsed from JSON (for example
\code{values = list("a", "b")}) are accepted.}
\item{n}{For \code{mksyncol}: Whole number: how many values to generate.

For \code{rulelib}: Numeric scalar: the multiplier for \code{rulemad()}
(default \code{3}), or the expected number of columns for
\code{rulecolcnt()} (a whole number, no default).}
\item{ctx}{For \code{mksyncol}: Named list of already-generated columns. Later columns can then
reference earlier ones, as \code{id_pattern} does with a \code{year_col}.
Defaults to an empty list.

For \code{rcdmnf}: Optional character string, default \code{NULL}: free text
such as the dataset, table and analyst. Only the first element is kept.}
\item{basep}{Optional numeric vector of per-row latent propensities in
\eqn{[0, 1]}, length \code{n}, used by the \code{"bernoulli"} type to add
row-level variation. Default \code{NULL}.}
\item{schema}{The synthetic recipe: a list with \code{columns} (a named
list of column specs), and optional \code{nrows}, \code{seed} and
\code{row_replication}.}
\item{outpath}{Character string: the path of the CSV to write.}
\item{nrows}{Whole number: the number of rows (persons, if replicating)
to generate, from 1 to 100 million (the table is built in memory).
Defaults to \code{schema$nrows}, then 50000.}
\item{rptd}{Named numeric vector of the odds ratios the report states,
one per non-reference group, named by group. Extra names are ignored.}
\item{component}{For \code{rmbl_census_cwb}: \code{"cwb"} (the index,
default) or one of its components \code{"income"}, \code{"education"},
\code{"housing"}, \code{"labour"}.}
\item{main}{Title; each method has a default.}
\item{palette}{A \code{\link{blpal}} name, overriding the
session option.}
\item{what}{Depends on the class: \itemize{ \item \code{rmbl_indigenous_gap}:
\code{"difference"} or \code{"ratio"}; \item \code{rmbl_stock_flow}: the
measures to draw (one panel each), any of \code{"adp"}, \code{"alos"},
\code{"people"}, \code{"days"}, \code{"flowrate"}, \code{"stkrate"}; \item
\code{rmbl_yoy}: \code{"pctchg"} or \code{"value"}; \item
\code{bricklayer_drift}: \code{"psi"}, \code{"columns"}, \code{"benford"},
\code{"ecdf"}, \code{"quantiles"} or \code{"fingerprint"}; \item
\code{rmbl_case_flow}: \code{"flow"} and/or \code{"clearance"}; \item
\code{rmbl_clearance_decomposition}: any of \code{"rates"}, \code{"mix"}
and \code{"effects"} (the default fits the device). } The 0.5.x values
\code{"pct_change"}, \code{"flow_rate"} and \code{"stock_rate"} are still
accepted, as is \code{"rate_change"} for \code{which}.}
\item{points}{For \code{rmbl_density}, whether to draw the incidents
over the surface.}
\item{maxparts}{For \code{rmbl_clearance_decomposition}, the most parts
drawn: past it, the parts that moved the aggregate most, and the rest
summed into one row. The 0.5.x name \code{max_parts} is still accepted.}
\item{threshold}{For \code{rmbl_balance}: the absolute standardised
difference drawn as the line of acceptable balance (default 0.1).}
\item{after}{For \code{rmbl_balance}: optionally a second
\code{\link{baltab}} on the same covariates (after weighting or matching),
drawn beside the first.}
\item{type}{For a permutation test: \code{"density"} (a kernel density of the
permuted statistics, their 5th and 95th percentiles dashed, the observed
one in red; the default) or \code{"histogram"}. For a cross-fitted AIPW
result: \code{"overlap"} (the weighted distribution of the out-of-fold
propensity in each arm with the clipping bounds; the default) or
\code{"estimate"} (the effect with its confidence interval).}
\item{xlab}{For the plots over time (\code{rmbl_stock_flow}, \code{rmbl_yoy},
\code{rmbl_rate_change}, \code{rmbl_count_trend}, \code{rmbl_event_study},
and \code{rmbl_rate} with \code{period}), the title of the period axis. The
default \code{NULL} names the unit the period implies: \code{"Date"} for
dates, \code{"Time"} for date-times, \code{"Fiscal year"} for fiscal-year
labels such as \code{"2022/23"}, \code{"Periods since adoption"} for an
event study, otherwise \code{"Period"}. A number or a date is drawn on its
own continuous scale, so a missing period leaves its gap; any other period
(text, a factor) is drawn at evenly spaced positions labelled with its
text.}
\item{gaps}{For \code{rmbl_yoy} (\code{what = "value"}) and
\code{rmbl_event_study} (\code{style = "stata"}): how a missing value
shows in a line. \code{"break"} (the default) breaks the
line there, so a \dQuote{no data} period that \code{yoy(complete = TRUE)}
inserted is a visible gap; \code{"join"} draws the line straight over it.}
\item{period}{For \code{rmbl_rate}, a \code{by} column holding the period:
the rate is drawn over time with its interval band, one panel per group of
the other \code{by} columns.}
\item{warn}{For \code{bricklayer_drift}, the PSI bands: a column is
\code{warn} above the first and \code{fail} above the second (or when
its test rejects at alpha). \code{NULL} takes the object's \code{bands}.}
\item{fail}{For \code{bricklayer_drift}, the PSI bands: a column is
\code{warn} above the first and \code{fail} above the second (or when
its test rejects at alpha). \code{NULL} takes the object's \code{bands}.}
\item{exposure}{For \code{rmbl_crf} and \code{rmbl_burden}, the exposure
range to draw the curve over; the default runs from 0 to 1.5 times the
exposure in the object.}
\item{contours}{Number of contour lines over a field image (0 for none).}
\item{which}{For \code{bricklayer_analysis}, the panels: any of
\code{"change"}, \code{"rates"}, \code{"ratechg"}; \code{NULL} draws
every panel the analysis has.}
\item{style}{For an event study: \code{"dot"} (filled points with solid
capped bars, the default) or \code{"stata"} (hollow points joined by a
line, dashed capped bars, dashed reference lines).}
\item{shadepost}{Shade the periods after adoption (default \code{FALSE}).}
\item{refline}{Where the vertical reference line goes (default \code{-0.5},
between the reference period and adoption; \code{0} puts it at adoption).}
\item{equiv}{Whether to draw the equivalent definite-range rectangle and the
A and B areas (figure 4-7 of the book).}
\item{spacing}{NULL, or the distance to a second track, drawn beside the
first.}
\item{models}{Model codes (\code{"random"}, \code{"definite"},
\code{"invcube"}, \code{"mbeta"}), one curve each; NULL draws the fitted
model.}
\item{cmax}{The largest coverage drawn.}
\item{view}{\code{"map"} (the top view), \code{"persp"} (the surface),
\code{"both"} (side by side, in the book's colour bands) or \code{"cells"}
(the probability map as a grid of percentages).}
\item{smpfrac}{The long-form sampling fraction (default 0.25); full-count
characteristics use 1 whatever is given.}
\item{deff}{Design effect (default 1).}
\item{roubase}{The base of the random rounding (default 5, Statistics
Canada's); 1 for counts that are not rounded.}
\item{orig}{For \code{rcdmnf}: Vectors of the same length: the values before and
after the recode.

For \code{vrfrcd}: Atomic vectors of the same length: the values
before and after the recode, row for row.

For \code{wrrcdmnf}: The vectors before and after the recode, to check
the manifest against.}
\item{recd}{For \code{rcdmnf}: Vectors of the same length: the values before and
after the recode.

For \code{vrfrcd}: Atomic vectors of the same length: the values
before and after the recode, row for row.

For \code{wrrcdmnf}: The vectors before and after the recode, to check
the manifest against.}
\item{pub}{For \code{rcdmnf}: Optional named numeric vector of published counts per
recoded label, default \code{NULL} (no check).

For \code{vrfmrg}: Named numeric vector, label = published count.}
\item{obs}{Named character vector, true label = label it was seen
under, covering every label once.}
\item{format}{\code{"markdown"} or \code{"html"}. With \code{NULL} (the
default), a \code{path} ending in \code{.html} or \code{.htm} gives
HTML and anything else, or no \code{path}, gives Markdown.}
\item{title}{Report title, a string; the top heading and, for HTML, the
page title.}
\item{prov}{For \code{rslvarc}: A provenance list as returned by
\code{\link[=loadprov]{loadprov()}}, or \code{NULL}.
It must have the field \code{dataset$arcgis_layer_url}, a
FeatureServer layer root. An example is\cr
\code{https://services.arcgis.com/.../}\cr
followed by \code{Assault_Open_Data/FeatureServer/0}.

For \code{rslvckan}: A provenance list as returned by
\code{\link[=loadprov]{loadprov()}}, or \code{NULL}.
A lookup is made only when it has both of these fields:
\itemize{
\item \code{dataset$ckan_api_endpoint};
\item \code{resource$name_match_pattern}.
}

For \code{rslvckns}: A provenance list as returned by
\code{\link[=loadprov]{loadprov()}}, or \code{NULL}.
The fields read are \code{dataset$ckan_api_endpoint},
\code{resource$name_match_pattern} (a regular expression, required for
a match), and, both optional, \code{resource$search_query} (search
words) and \code{resource$format} (a format name such as \code{"XLSX"}).

For \code{rslvsoc}: A provenance list as returned by
\code{\link[=loadprov]{loadprov()}}, or \code{NULL}.
It must have two fields. The first is \code{dataset$socrata_domain}, a
host name without scheme such as \code{"data.cityofchicago.org"}. The
second is \code{dataset$socrata_id}, the four-by-four dataset id such as
\code{"ijzp-q8t2"}.

For \code{schval}: A provenance list as returned by
\code{\link[=loadprov]{loadprov()}} (with a \code{schema} element), or
one rule or a list
of rules from \code{\link[=rul]{rul()}}, run with
\code{\link[=valrules]{valrules()}} under the same
stop-on-fatal contract.

For \code{valsch}: A provenance list as returned by
\code{\link[=loadprov]{loadprov()}}, or
\code{list(schema = infsch(df))}. The
\code{schema} block may contain:
\itemize{
\item \code{expected_columns} -- required column names (character). A missing
one is \code{"fatal"}; everything else below is a \code{"warning"}.
\item \code{structural_invariants} -- a list with \code{min_data_rows} and
\code{max_data_rows} (numbers of rows).
\item \code{expected_value_sets} -- a named list of allowed values per
column.
\item \code{expected_types} -- a named character vector of expected classes.
\code{integer}, \code{numeric} and \code{double} are treated as
interchangeable, since a re-release legitimately widens one to another.
\item \code{numeric_ranges} -- a named list of \code{c(min =, max =)} bounds.
\item \code{max_missing_fraction} -- a named numeric of per-column ceilings
on the share of \code{NA}, between 0 and 1.
}

\code{\link[=infsch]{infsch()}} produces all six from data you already
trust.}
\item{name}{A short identifier for the rule, a string. It names the issue in
the result of \code{\link[=valrules]{valrules()}}, so give each rule a different name.}
\item{expr}{A function, as described above.}
\item{sev}{For \code{rul}: \code{"warning"} (default) or \code{"fatal"}. A fatal
failure stops \code{\link[=schval]{schval()}}.

For \code{rulelib}: \code{"warning"} (the default) or \code{"fatal"}: how
\code{\link[=valrules]{valrules()}} and the capsule gate treat a
failure.}
\item{msg}{Human-readable description of what a failure means, a
string. Defaults to \code{"Rule '<name>' failed"}.}
\item{set}{Vector of allowed values (\code{ruleinset()}); compared as
text.}
\item{napass}{Logical scalar, default \code{TRUE}: treat \code{NA} as
passing (see above); \code{FALSE} makes a missing value fail.}
\item{lo}{Numeric scalars, the inclusive bounds (\code{rulebtw()});
\code{lo} must not exceed \code{hi}.}
\item{hi}{Numeric scalars, the inclusive bounds (\code{rulebtw()});
\code{lo} must not exceed \code{hi}.}
\item{pat}{Character scalar, the regular expression the values must
match (\code{rulerx()}); only the first element is used.}
\item{strict}{For \code{rulelib}: Logical scalar, default \code{FALSE}: require a strict
increase rather than non-decreasing (\code{ruleincr()}).

For \code{vrfmrg}: Logical, default \code{TRUE}: a mismatch is an error, so a
pipeline stops. \code{FALSE} returns the result with \code{ok = FALSE},
the \code{permutation} that would explain the counts and the
\code{message} the error would have carried, for callers that want to
report it or pass the permutation to \code{\link{rlblfrns}}.

For \code{xfrvrf}: Logical, default \code{TRUE}: any disagreement is an error.
When \code{FALSE} the result comes back with \code{ok = FALSE},
\code{reasons}, and \code{marginals$permutation} ready for
\code{\link{rlblfrns}}.}
\item{dfraw}{The data frame to validate.}
\item{drid}{For \code{siufetch}: Director's-report id: the \code{drid=} query parameter, one
positive whole number (integer or integer-like, such as \code{648} or
\code{"648"}).

For \code{siufprs}: The director's report id: one positive whole number (or a
string of one), the \code{drid=} query parameter of the report URL on
the SIU site.}
\item{lang}{For \code{siufetch}: \code{"en"} (default) or \code{"fr"}: the language of the
report page.

For \code{siufprs}: Report language: \code{"en"} (default, the English page) or
\code{"fr"} (the French page). Partial matching is allowed.}
\item{html}{For \code{siuprs}: A character vector. Each element is either the raw HTML of
one report or the path to a saved report file (for example one written
by \code{\link[=siufetch]{siufetch()}}). With more than one
element, each is
parsed and the results are bound into a data frame.

For \code{siutxt}: A length-1 character vector holding the raw HTML of one
report page. A file path is not read here (use
\code{\link[=siuprs]{siuprs()}}, which accepts a path).}
\item{text}{For \code{siuso}: A length-1 character vector of plain report text
(see \code{\link[=siutxt]{siutxt()}}), not HTML.

For \code{wrtxtfb}: A character vector of lines to write;
\code{\link[=as.character]{as.character()}} converts any other type.}
\item{maxage}{Numeric scalar, the seconds a cached copy is used without
asking the site; default \code{86400} (one day); \code{Inf} keeps a
cached copy forever.}
\item{offline}{Logical scalar, default \code{FALSE}: \code{TRUE} never
fetches: the session's copy, the cached copy, then the bundled one (what
the examples and an offline session get).}
\item{dataframe}{How a data frame is written: \code{"rows"} (the default,
an array of records), \code{"columns"} (an object of column arrays) or
\code{"values"} (an array of row arrays, without names).}
\item{matrix}{How a matrix is written. \code{"rowmajor"} (the default) gives
an array of rows, and \code{"columnmajor"} an array of columns.}
\item{Date}{How a \code{Date} is written: \code{"ISO8601"} (the default,
\code{"2024-01-02"}) or \code{"epoch"} (days since 1970-01-01).}
\item{POSIXt}{How a date-time is written: \code{"string"} (the default,
\code{"2024-01-02 03:04:05"}), \code{"ISO8601"}
(\code{"2024-01-02T03:04:05"}), \code{"epoch"} (milliseconds since
1970) or \code{"mongo"} (\code{{"$date": ms}}).}
\item{factor}{How a factor is written: \code{"string"} (the default, its
labels) or \code{"integer"} (its codes).}
\item{complex}{How a complex number is written: \code{"string"} (the
default, \code{"1+2i"}) or \code{"list"} (an object of \code{real} and
\code{imaginary} arrays).}
\item{null}{How \code{NULL} inside a list is written: \code{"list"} (the
default, \code{{}}; a round trip gives an empty list) or \code{"null"}
(a JSON \code{null}).
\code{\link[=jsser]{jsser()}} round-trips
\code{NULL} exactly.}
\item{na}{How missing values are written: \code{"null"} or
\code{"string"} (\code{"NA"}). When \code{NULL} (the default), the
per-type default of jsonlite applies (see Details).}
\item{auto_unbox}{Logical scalar, default \code{FALSE}: write length-one
vectors as scalars (\code{1}) rather than arrays (\code{[1]}).}
\item{health}{A health indicators table (default
\code{indiex("health")}, table 13-10-0924), or \code{NULL}.}
\item{lifeexp}{Life expectancy (default
\code{indiex("lifeexp")}, table 17-10-0160), or \code{NULL}.}
\item{infmort}{Infant mortality (default
\code{indiex("infantmort")}, table 17-10-0161), or \code{NULL}.}
\item{suiide}{Suicidal thoughts (default \code{indiex("suicide")}, table
41-10-0021), or \code{NULL}. The name is kept as it was first published;
it is the suicidal-ideation table.}
\item{agetot}{The label of the all-ages row in the \code{age} column, one
string for both tables or two (\code{health}, then \code{suiide}).
Default \code{NULL}: Statistics Canada's \code{"Total, 18 years and
over"} and \code{"Total, 15 years and over"}. A table of your own with no
\code{age} column is used whole.}
\item{rules}{A list of \code{\link[=rul]{rul()}} objects, or a single rule.}
\item{decl}{Named character vector, old = new: the mapping the analyst
says was applied. Old values not listed are expected to be unchanged.}
\item{expsha}{The expected SHA-256 digest: a hex string (64
characters, any case), or a length-1 list holding one, as read from
provenance JSON.}
\item{ts}{Optional target time as a string of digits
\code{YYYYMMDDhhmmss} (or a prefix such as \code{"2023"} or
\code{"20230115"}); the API returns the snapshot closest to it.
\code{NULL} or \code{""} (the default) asks for the most recent.}
\item{man}{A manifest returned by \code{\link{rcdmnf}}.}
\item{imported}{The vector as it arrived. It is a haven-style labelled
vector, plain codes given with \code{codebook}, or labels already decoded.}
\item{soucnts}{Named numeric vector, label = count, as printed by
the source program (SPSS FREQUENCIES, Stata tabulate).}
\item{codebook}{Optional named character vector, code = label, from the
source program's variable view. Default \code{NULL}. When
\code{imported} carries a \code{labels} attribute the two are compared
and any disagreement fails the check.}
}
\description{Data: loading, fetching, parsing and checking. Each function has its own section below; \code{?name} opens this page for any of them.}
\value{
\subsection{Analyse a published administrative table in one call (\code{anltab})}{
A list of class \code{bricklayer_analysis} (with a print method that
summarises it in a few lines): \describe{
\item{\code{profile}}{\code{\link[=profcols]{profcols()}} of \code{data}.}
\item{\code{missingness}}{named numeric from \code{\link[=misssmry]{misssmry()}}.}
\item{\code{change}}{the \code{\link[=yoy]{yoy()}} table; for counts with the added
columns \code{p_value}, \code{padj} and \code{significant}, and with
\code{env_*} and \code{compctlo}/\code{compctup} when publication bounds
were requested.} \item{\code{rates}, \code{ratechg}}{the
\code{\link[=rtcalc]{rtcalc()}} and \code{\link[=ratechg]{ratechg()}} tables when
\code{population} is given, otherwise \code{NULL}.}
\item{\code{trend}}{data frame with one row per group: the \code{by}
columns, \code{periods}, \code{first}, \code{last}, \code{tau},
\code{trndp}, \code{slope}, \code{rateratio}, \code{rateratiolo},
\code{rateratioup}.} \item{\code{drift}}{\code{\link[=cpsdrft]{cpsdrft()}} result
against \code{prior}, or \code{NULL}.} \item{\code{meta}}{list of the
arguments used, \code{nrows}, the sorted \code{periods}, \code{prior}
(logical) and \code{when} (a time stamp).} }
}
\subsection{Use Text As-Is, Falling Back to ASCII When It Cannot Be Represented (\code{asciifb})}{
A character vector the length of \code{x}: each element unchanged
when it is valid UTF-8 (and \code{force} is not \code{TRUE}), otherwise its
ASCII transliteration.
}
\subsection{Audit the categorical columns of a data frame for coding hazards (\code{audcats})}{
A data frame of class \code{c("bricklayer_category_audit",
  "data.frame")}, one row per audited column, with character columns
\code{column}, \code{storage} (the column's class), \code{levels} (up to
eight levels joined with \code{"|"}), \code{reference} (the first level)
and \code{hazards} (all hazards joined with \code{" ;; "}, or \code{""}),
and integer \code{n_levels}. The attribute \code{clean} is \code{TRUE}
when no hazard was found. The print method lists each column and its
hazards.
}
\subsection{Base64 encoding (\code{b64})}{
The encoders return a character scalar (\code{""} for empty input,
\code{NA_character_} for \code{NULL}); the decoders return a raw vector
(use \code{rawToChar()} for text).
}
\subsection{Download a file with live progress (\code{bldl})}{
\code{dest}, invisibly.
}
\subsection{Fetch a URL to disk with an Internet Archive fallback (C++/libcurl) (\code{blfetch})}{
Invisibly, \code{"live"} or \code{"wayback"}: the source that
served the file. Throws on total failure.
}
\subsection{Case flow through a court: clearance, backlog and time to clear (\code{caseflow})}{
A data frame of class \code{rmbl_case_flow}, one row per period, with
\code{period}, \code{received}, \code{disposed}, \code{clearance} with
\code{lower} and \code{upper}, \code{net} (received less disposed:
positive grows the inventory), \code{rolclr} with
\code{rollo} and \code{rolup} (\code{NA} until a full
window is available), and either \code{pending},
\code{penchg} and \code{pertoclear}, or, without
\code{pending}, \code{cumnet} (the inventory change since the
first period).
}
\subsection{Decompose a change in a clearance rate into rate and case-mix effects (\code{clrdcmp})}{
A list of class \code{rmbl_clearance_decomposition}:
\describe{
\item{\code{groups}}{one row per part: the counts, rates and
denominator shares (\code{weight}) in both comparisons, the rate
ratio with its exact interval, and the part's \code{rateeff} and
\code{mixeff}.}
\item{\code{overall}}{the aggregate rates, their \code{change}, its
\code{rateeff} and \code{mixeff} (which add to it exactly),
the comparison rate standardised to the baseline mix
(\code{staonbase}) and to the average mix
(\code{staonave}).}
\item{\code{rateratio}}{the crude rate ratio and the Mantel-Haenszel
rate ratio over the parts, each with its interval, and the p-value
for the stratified ratio.}
\item{\code{simpson}}{\code{"full"} when every part moved one way and
the aggregate the other; \code{"mix"} when the aggregate moved
against the mix-standardised change (the mix outweighed the rates);
\code{"none"} otherwise; with the number of parts that rose and
fell.}
}
}
\subsection{A Community Well-Being score from the census profile (\code{cnscwb})}{
A data frame of class \code{rmbl_census_cwb}: \code{geo},
\code{dguid}, \code{group}; the components \code{income}, \code{education},
\code{housing}, \code{labour} and the score \code{cwb} (0 to 100, \code{NA}
where not scored); and the inputs \code{incpercap} (dollars),
\code{highsch25p}, \code{uni25p}, \code{population}, \code{participation},
\code{employment}, \code{nomajrep}, \code{notcro} (percentages).
}
\subsection{Read the 2021 Census Indigenous Population Profile (\code{cnsprof})}{
A data frame of class \code{rmbl_census_profile}: \code{geo},
\code{dguid}, \code{geolvl}, \code{residence} (on or off reserve, in the
tables that split it), \code{gender}, \code{age}, \code{chaid},
\code{characteristic}, \code{level}, \code{parid}, \code{rootid},
\code{sample}, \code{group}, \code{value}, \code{quality}, \code{tnrsf},
\code{tnrlf}.
}
\subsection{An Indigenous standard population from the census (\code{cnsstd})}{
A data frame: \code{age}, \code{population}, \code{weight} (shares
summing to 1).
}
\subsection{Where incidents cluster: a kernel density surface (\code{crmdens})}{
A list of class \code{rmbl_density}: \code{field} (incidents per
square kilometre on the grid), \code{x} and \code{y} (grid coordinates
in kilometres from the centre), \code{lon} and \code{lat} (the same
grid in degrees, for \code{"lonlat"}), \code{bandwidth}, \code{n},
\code{dropped}, \code{points} (the projected incidents), and
\code{regions}: one row per coverage share with the density
\code{level} that bounds it, its \code{areakm2}, and its share of the
mapped area.
}
\subsection{Decode numeric category codes with an explicit code-to-label dictionary (\code{deccodes})}{
A character vector of labels, the same length as \code{x}, with
\code{NA} where \code{x} is \code{NA}. It carries a \code{recode_audit}
attribute: a list with \code{mapping} (the dictionary), \code{kept}
(\code{character(0)}) and \code{checksum} (64-character hexadecimal
SHA-256 of the \code{code=label} pairs).
}
\subsection{Decode a labelled import by its value labels, by code (\code{declbld})}{
A factor whose levels are the labels in code order (not
alphabetical), with a \code{recode_audit} attribute as described in
\code{\link{grdrcd}}.
}
\subsection{The mix of outcomes over time, with simultaneous intervals and trend tests (\code{dispmix})}{
A list of class \code{rmbl_disposition_mix}: \code{shares}, a long
data frame (\code{period}, \code{outcome}, \code{count}, \code{total},
\code{share}, \code{lower}, \code{upper}); \code{homogeneity}, the
Pearson chi-square test that every period has the same mix (with
Cramer's V); \code{trend}, one row per outcome with the
Cochran-Armitage trend statistic, its p-value, the Holm-adjusted
p-value, and the change in share from the first to the last period.
}
\subsection{Download a File (\code{dldata})}{
The \code{tpath}, returned invisibly.
}
\subsection{Curated datasets at data.rmorie.com (\code{dmnf})}{
\code{dmnf()}: the manifest as a list (element
\code{datasets}, one list per table with at least \code{key}, and as the
service provides them \code{rows}, \code{columns}, sizes, the SHA-256 of
the compressed file and the BigQuery \code{source});
\code{dtabs()}: a data frame with \code{key},
\code{name} (the description, else the source, else the key), integer
\code{rows} and \code{source} (class
\code{dtabs}, which prints one left-aligned line per
table, cut to the console width);
\code{dload()}: the table as a data frame.
}
\subsection{Duplicated rows, with their groups (\code{duprows})}{
A data frame: the duplicated rows (every occurrence, including the
first), ordered so each group sits together, with an integer
\code{dupe_count} column giving each group's size and row names reset.
Zero rows (with the same columns) when there are none.
}
\subsection{Download a File With Diagnostic Error Messages (\code{fdl})}{
\code{TRUE} if either the primary download or the Wayback
fallback succeeded (the file is at \code{tpath}), otherwise
\code{FALSE}.
}
\subsection{Parse JSON into R objects (jsonlite's fromJSON, natively) (\code{fromjs})}{
An R object: a list, an atomic vector, a data frame, a matrix or
\code{NULL}, depending on the JSON and the simplification options.
}
\subsection{Refuse a categorical column where a numeric 0/1 treatment is required (\code{grdbin})}{
\code{TRUE}, invisibly, when the column is a 0/1 indicator;
otherwise an error.
}
\subsection{Build a factor with explicit, verified levels (\code{grdlvls})}{
A factor with exactly the levels in \code{levels}, in that order.
}
\subsection{Recode a categorical column by explicit name-to-name mapping (\code{grdrcd})}{
A character vector the same length as \code{x}, with a
\code{recode_audit} attribute: a list with \code{mapping} (the mapping as
given), \code{kept} (the \code{keep} vector) and \code{checksum}
(hexadecimal SHA-256 of the mapping).
}
\subsection{Infer a pinnable schema from a data frame (\code{infsch})}{
A list of class \code{bricklayer_schema} with these elements:
\itemize{
\item \code{expected_columns} (character);
\item \code{expected_types} (named character);
\item \code{structural_invariants} (list of \code{min_data_rows} and
\code{max_data_rows}, integers);
\item \code{expected_value_sets} (named list of character vectors);
\item \code{numeric_ranges} (named list of \code{c(min =, max =)});
\item \code{max_missing_fraction} (named numeric).
}
Wrap it as \code{list(schema = <this>)} to hand to
\code{\link[=valsch]{valsch()}}.
}
\subsection{Compressed, base64-encoded JSON (\code{jsgz})}{
\code{jsgzenc()} a length-1 character vector, or a raw
vector when \code{raw = TRUE}. \code{jsgzdec()} the decoded
object, as \code{\link[=fromjs]{fromjs()}}
returns it.
}
\subsection{JSON serialisation of an R object, type and attributes included (\code{jsserdoc})}{
\code{jsser()} returns a length-1 character
vector of class \code{json}; \code{jsunser()}
returns the original object.
}
\subsection{Court and police data shipped with the package (\code{justice-data})}{
No R object: each file is a CSV in \code{inst/extdata}. Read one
into a data frame with \code{read.csv()} on the path that
\code{system.file("extdata", <file>, package = "rmoriebricklayer")} gives.
}
\subsection{Near-repeat analysis: the Knox test for space-time clustering (\code{knoxtst})}{
A list of class \code{rmbl_knox}: \code{table}, a long data frame
with one row per distance-by-time cell (\code{spclo},
\code{spcup}, \code{tmlo}, \code{tmup},
\code{observed}, \code{expected}, \code{ratio}, \code{p_value}); the
\code{n} incidents used; \code{nsim}.
}
\subsection{Life table for grouped times: how long cases take (\code{lifetbl})}{
A data frame of class \code{rmbl_life_table}, one row per band:
\code{lower}, \code{upper} (the band edges), \code{entering},
\code{events}, \code{censored}, \code{atrisk} (entering less half the
censored), \code{q} (conditional probability of the event in the
band), \code{survival} at the end of the band with \code{se},
\code{conflo} and \code{confup}, \code{hazard} (events per
unit time within the band; \code{NA} for an open band), and the
attribute \code{median}.
}
\subsection{Load a Pinned Data-Provenance Record (\code{loadprov})}{
The parsed provenance as a nested named list (JSON objects become
named lists, arrays become unnamed lists, strings, numbers and booleans
become length-1 vectors), or \code{NULL} if the file does not exist.
The list has class \code{c("rmbl_provenance", "list")}, which only
changes how it prints (a box); its elements, and the JSON written from it,
are those of a plain list.
}
\subsection{Search theory for search and rescue planning (\code{ltrlrng})}{
\code{ltrlrng()}: a numeric vector of class \code{rmbl_ltrlrng}
(the detection probabilities, with the inputs as attributes;
\code{as.numeric()} drops them). \code{srchpod()}: a numeric vector of
class \code{rmbl_srchpod}. \code{swpwdth()} and \code{pswppod()}: one
number. \code{srchscs()}: a list of class \code{rmbl_srchscs} with
\code{pos} (the probability of success), \code{posarea} (per area),
\code{pocupd} (the updated containment probabilities) and
\code{cumpod} (the cumulative POD per area), and when \code{poc} is a
map, \code{map}: the map after the unsuccessful search, ready for
\code{opteffort()} and \code{plot()}. \code{datumpmap()}: a list
of class \code{rmbl_datummap} with \code{poc}, a matrix with one row
per \code{y} cell and one column per \code{x} cell, \code{outside}, and
the inputs. \code{optcrcsrch()}: a list of class \code{rmbl_optcrc} with
\code{radius}, \code{pos} and \code{cntrdns} (the coverage at the
centre). \code{opteffort()}: a list of class \code{rmbl_opteffort} with
\code{effort}, \code{coverage} and \code{pod} per cell (a matrix when
\code{poc} is one), \code{pos} and \code{lambda}. Every class has a
\code{print()} method, and \code{plot()} draws the lateral range curve
(\code{equiv = TRUE} adds the equivalent definite-range rectangle,
\code{spacing} a second track), the POD by coverage for any of the
models (\code{models}, \code{m}, \code{cmax}), the map as an image with
contours, a surface banded by height, the surface and its top view side
by side (the device's two panels, or the
next two of a layout the caller set with \code{par(mfrow = )}), or its
cells with their percentages (\code{view}), and the allocation (see
\code{\link{plot-methods}}). \code{\link{srchfig}} draws every figure of
Frost (1996) with them.
}
\subsection{Missingness in one line per question (\code{misssmry})}{
A named numeric vector: \code{nrows}, \code{n_cols},
\code{n_missing} (missing cells), \code{pct_missing} (percent of cells),
\code{n_complete_rows}, \code{pct_complete_rows} (percent of rows),
\code{n_cols_any_missing} (columns with at least one missing value) and
\code{n_cols_all_missing} (columns with no value at all).
}
\subsection{Generate One Synthetic Column From a Spec (\code{mksyncol})}{
A vector for the requested column type: character for
\code{"sample"} of strings, \code{"bernoulli"} and \code{"id_pattern"},
numeric or integer for \code{"poisson"} and \code{"sequence"} (and for
\code{"sample"} of numbers). Its length is \code{n}, except for
\code{"id_pattern"} with a \code{year_col}.
}
\subsection{Generate a Synthetic CSV From a Schema Recipe (\code{mksyncsv})}{
Invisibly, a list of class \code{bricklayer_synthetic} with
\code{path}, \code{sidecar} (the \code{<path>.synthetic} marker file;
\code{\link{vrfcps}} treats its presence as a failed check),
\code{rows} (rows written), \code{seed} (the seed used) and
\code{recipe_sha256} (the recipe's digest, \code{NA} when it could not
be computed). Its print method labels the file as synthetic.
}
\subsection{Check reported odds ratios against a labelled table, under every relabelling (\code{orchk})}{
A list of class \code{rmbl_or_check} (it prints as a box)
with elements \code{computed} (named numeric odds ratios
from the table as labelled), \code{reported} (the reported values, in
the same order), \code{consistent} (logical), \code{matches} (a data frame
with character \code{relabelling}, for example \code{"B -> C, C -> B"},
and logical \code{outcome_columns_swapped}, one row per relabelling that
reproduces the reported values) and \code{verdict} (a one-sentence
character summary).
}
\subsection{Plot methods for the package's results (\code{plot.rmbl_census_cwb})}{
The data drawn, invisibly. For the plots over time the frame
carries the x position of each point drawn: an \code{at} column
(\code{rmbl_yoy}, \code{rmbl_rate_change}), or an \code{"at"} attribute
(\code{rmbl_stock_flow}).
}
\subsection{The share of a population with a characteristic, from the census profile (\code{profshr})}{
A data frame of class \code{rmbl_profile_share} with \code{geo},
\code{dguid}, \code{residence}, \code{gender}, \code{age}, \code{group},
\code{numerator}, \code{denominator}, \code{estimate} (percent),
\code{lower}, \code{upper}, \code{quality}; ready for \code{\link{indgap}}
and \code{\link{dstntst}}. \code{plot()} draws it.
}
\subsection{Record a recode as a manifest that can be signed and verified later (\code{rcdmnf})}{
A list of class \code{bricklayer_recode_manifest} with these
elements: \itemize{ \item \code{context}; \item \code{created} (ISO 8601
UTC time); \item \code{mapping} (list) and \code{mapping_sha256}; \item
\code{n} (number of rows) and \code{n_missing}; \item \code{counts_before}
and \code{counts_after} (named lists of counts); \item \code{checks}, a
list: \code{crosstab_is_function}, \code{missingness_unchanged} and
\code{matches_published}; \item \code{published} (list or \code{NULL});
\item \code{body_sha256}; \item with a key, \code{signature} and
\code{public_key}. }
}
\subsection{Relabel a categorical variable by name, never by position (\code{relbl})}{
A factor with the new labels, levels in the order of
\code{mapping}, carrying a \code{recode_audit} attribute (see
\code{\link{grdrcd}}).
}
\subsection{Name the mechanical step that reproduces a label permutation (\code{rlblfrns})}{
A data frame of class \code{c("bricklayer_relabel_forensics",
  "data.frame")} with one row per mechanism tried and columns
\code{mechanism} (character), \code{permutation} (character,
\code{"A -> B, ..."}) and \code{matches} (logical). The \code{verdict}
attribute is a character summary. The print method shows only the
matching mechanisms and the verdict.
}
\subsection{Write an analysis as a Markdown or HTML report (\code{rptanl})}{
The report text (a length-1 character string, Markdown or a full
HTML document), invisibly.
}
\subsection{Resolve a Query URL via ArcGIS FeatureServer Metadata (\code{rslvarc})}{
The layer query URL as a length-1 character string, or
\code{NULL} if the field is missing, the request fails, or the layer
metadata reports an error.
}
\subsection{Resolve a Download URL via CKAN package_show (\code{rslvckan})}{
The matched resource URL as a length-1 character string, or
\code{NULL} as described in Details.
}
\subsection{Resolve a Download URL via CKAN package_search (\code{rslvckns})}{
The matched resource URL as a length-1 character string, or
\code{NULL}.
}
\subsection{Resolve a Download URL via the Socrata Metadata API (\code{rslvsoc})}{
The CSV export URL as a length-1 character string, or \code{NULL}
if the fields are missing, the request fails, or the metadata reports an
error.
}
\subsection{Declare a validation rule (\code{rul})}{
A list of class \code{c("bricklayer_rule", "list")} with
\code{name}, \code{expr}, \code{column} (\code{NULL} for a table rule),
\code{severity} and \code{message}; it prints as one line.
}
\subsection{Ready-made validation rules (\code{rulelib})}{
A \code{\link[=rul]{rul()}} object: a list of class
\code{c("bricklayer_rule", "list")} with
\code{name}, \code{expr} (the predicate function), \code{column}
(\code{NULL} for whole-table rules), \code{severity} and
\code{message}.
}
\subsection{Apply Schema Validation, Stopping on Fatal Issues (\code{schval})}{
Invisibly, \code{TRUE} if no issues were found and \code{FALSE}
if only warning-severity issues were found (each raised as a warning).
Errors if any fatal issue is present.
}
\subsection{Compute a File's SHA256 Digest (\code{sha256file})}{
A single string of 64 lowercase hexadecimal characters, the
SHA-256 digest of the file's bytes.
}
\subsection{Convert a human-readable SIU report date to ISO format (\code{siudate})}{
A character vector the same length as \code{x}: \code{YYYY-MM-DD}
strings, \code{""} for unparseable input and \code{NA} for \code{NA}.
Unnamed.
}
\subsection{Fetch an Ontario SIU director's report by drid (\code{siufetch})}{
\code{"live"} or \code{"wayback"} (invisibly), as
\code{blfetch}: which source the HTML came from.
}
\subsection{Fetch and parse one SIU director's report (\code{siufprs})}{
A named character vector of parsed fields, as from
\code{\link[=siuprs]{siuprs()}}, or \code{NULL} when the
fetch fails.
}
\subsection{Parse an SIU director's report into the schema fields (\code{siuprs})}{
For one input, a named character vector of 17 elements: the 16
schema fields plus \code{_language} (\code{"en"}, \code{"fr"} or
\code{"unknown"}), in alphabetical order of name. Every value is a
string, counts included (\code{"2"}); convert with
\code{as.integer()} as needed. For several inputs, a data.frame with one
row per input and one character column per field (\code{NA} where a
field is absent from a row).
}
\subsection{The panel-reviewed SIU report field schema (\code{siusch})}{
A data.frame with 16 rows and three columns: \code{name}
(character, the field name used by
\code{\link[=siuprs]{siuprs()}}),
\code{count} (logical, \code{TRUE} for the five count fields) and
\code{description} (character, what the field records).
}
\subsection{Resolve the subject-official count from SIU report text (\code{siuso})}{
A list with two elements: \code{count} (integer, \code{NA} when
unresolved) and \code{reason} (character, the rule that fired and its
evidence, for example \code{"plural cue 'three subject officials'"}).
}
\subsection{Convert SIU report HTML to plain text (\code{siutxt})}{
A length-1 character vector of plain text.
}
\subsection{The hosted MORIE services, as the project site currently describes them (\code{svcs})}{
A list with \code{version} (integer, 1), \code{issued} (the
signing time, ISO 8601 UTC), \code{notice} (text for the user, possibly
empty), \code{llm} (\code{mode}, \code{base_url}, \code{auth_url}: where
the sign-in for the data key is reached; also \code{models},
\code{default_model} and \code{request_access}) and
\code{data} (\code{mode}, \code{base_url}, \code{license},
\code{request_access}, and \code{auth_url} when the document has one),
with the attribute \code{"source"} set to
\code{"live"}, \code{"cache"}, \code{"bundled"} or \code{"off"}.
}
\subsection{Transliterate Text to Plain ASCII (\code{toascii})}{
A character vector the length of \code{x}, containing only printable
ASCII characters (bytes 32 to 126); \code{NA} elements become \code{""}.
}
\subsection{Encode an R object as JSON (jsonlite's toJSON, natively) (\code{tojs})}{
A character scalar of class \code{json}, the JSON text.
}
\subsection{The Call to Action 19 health gaps, in one place (\code{trchlthgap})}{
A data frame of class \code{rmbl_trc_gaps}: \code{indicator},
\code{measure}, \code{period}, \code{group}, \code{estimate},
\code{refest}, \code{difference} (group minus reference, on the indicator's
scale), \code{disratio}, \code{lower}, \code{upper}, \code{worse} (the
interval above 1), \code{usewithcau}. \code{plot()} draws it.
}
\subsection{The indicators of Calls to Action 19 and 55, and the tables that measure them (\code{trcind})}{
A data frame with \code{call}, \code{indicator} (the Call's words),
\code{table}, \code{measure}, \code{better} (\code{"higher"} or
\code{"lower"}) and \code{note}.
}
\subsection{Apply declared rules to a data frame (\code{valrules})}{
A named list of issues, one per failed rule, each a list with
\code{severity} (character) and \code{message} (character; for a row-wise
rule it ends with \dQuote{(k of n rows)}), and for a row-wise rule
\code{n_failed} (integer) and \code{rows} (integer, the first ten failing
row indices). Empty when everything passes.
}
\subsection{Validate a Data Frame Against a Provenance Schema (\code{valsch})}{
A named list of issues; each issue is a list with
\code{severity} (\code{"fatal"} or \code{"warning"}) and a
human-readable \code{message}. The names are those listed in Details. A
zero-length list means the data frame is clean.
}
\subsection{Verify recoded category counts against the counts a release published (\code{vrfmrg})}{
A list of class \code{rmbl_margin_check} (it prints as a box)
with elements \code{counts} (named numeric, observed count
per published label), \code{published} (named numeric), \code{ok}
(logical), \code{permutation} (named character, true label = label it
would have to be read as, or \code{NULL}) and \code{message}
(character, or \code{NULL} when \code{ok}). It is returned invisibly
when the counts match and visibly when \code{strict = FALSE} and they do
not. With \code{strict = TRUE} a mismatch is an error instead.
}
\subsection{Prove a recode with a before/after cross-tabulation (\code{vrfrcd})}{
Invisibly, when every check passes, the cross-tabulation as a data
frame with columns \code{original}, \code{recoded} (factors) and
\code{Freq} (integer), including the zero cells of the full table.
Otherwise an error.
}
\subsection{Verify a File's SHA256 Against an Expected Digest (\code{vrfsha256})}{
A list of three elements: \code{actual} (character, the computed
digest, 64 lower-case hex characters), \code{expected} (character, the
normalised expected value) and \code{match} (logical, \code{TRUE} when
they are identical).
}
\subsection{Resolve a Wayback Machine snapshot URL (C++/libcurl) (\code{wbsnpnat})}{
The \code{https} snapshot URL (a length-1 character string), or
\code{NULL} if none is archived or the lookup failed.
}
\subsection{Resolve a Wayback Machine snapshot URL (\code{wbsnpurl})}{
A length-1 character string, the \code{https} snapshot URL of the
form \code{https://web.archive.org/web/} followed by
\code{<timestamp>/<url>}, or \code{NULL}.
}
\subsection{Write and verify a recode manifest (\code{wrrcdmnf})}{
\code{wrrcdmnf()} returns \code{path} invisibly.

\code{vrfrcdmnf()} returns a list of class
\code{rmbl_recode_manifest_check} (it prints as a box) with \code{ok}
(logical), \code{reasons} (character; empty, \code{character(0)}, when
\code{ok}), \code{signature_ok} (logical, \code{NA} when the manifest is
unsigned) and \code{manifest} (the parsed JSON as a list).
}
\subsection{Write Text as UTF-8, Falling Back to ASCII on an Encoding Error (\code{wrtxtfb})}{
Invisibly, \code{path}.
}
\subsection{Verify a categorical variable that crossed from one program to another (\code{xfrvrf})}{
A list of class \code{rmbl_transfer_check} (it prints as a box)
with \code{ok} (logical), \code{decoded} (a factor; in code
order when decoded from codes), \code{marginals} (the
\code{\link{vrfmrg}} result), \code{code_book_ok} (logical, or
\code{NA} when there was nothing to compare) and \code{reasons}
(character messages, or \code{NULL} when \code{ok}).
}
}
\section{Analyse a published administrative table in one call (\code{anltab})}{

The questions asked of a published table are always the same: what
is in it, what changed between periods and how sure can one be, what
the rates are if there is an exposure, whether a short series trends,
and whether this release differs from the one held before. Each has a
function in this package; this runs them together, with the pieces a
reviewer needs and that are easy to forget on a deadline: exact
intervals on every change, multiple-comparison adjustment over the
groups scanned, the envelope that rounding and suppression in the
release imply, and a drift screen against the prior capsule.


The steps, in order: \enumerate{ \item profile:
\code{\link[=profcols]{profcols()}} and \code{\link[=misssmry]{misssmry()}} on
\code{data}; \item change: \code{\link[=yoy]{yoy()}} between consecutive periods within
each \code{by} group. For \code{units = "count"} the exact p-values are then
adjusted across all comparisons with \code{\link[=scanadj]{scanadj()}}, and, when
\code{rnd} or \code{suplim} is given, \code{\link[=yoybnd]{yoybnd()}} adds the
publication envelope (see \code{\link[=pubbnd]{pubbnd()}}). For \code{"continuous"} and
\code{"percent"} units neither step runs: \code{rnd} and \code{suplim} are
then ignored, with a warning; \item rates (only with \code{pop}):
\code{\link[=rtcalc]{rtcalc()}} per group and period, and
\code{\link[=ratechg]{ratechg()}} between periods, adjusted with
\code{\link[=scanadj]{scanadj()}}; \item trend: per group, the values summed within each
period, then \code{\link[=trndtst]{trndtst()}} (Mann-Kendall tau, p-value and Theil-Sen
slope) and, for counts, \code{\link[=cnttrnd]{cnttrnd()}} (Poisson rate ratio per
period). A group with fewer than three periods gets \code{NA}; a test that
fails gets \code{NA} rather than an error; \item drift (only with
\code{prior}): \code{\link[=cpsdrft]{cpsdrft()}} of \code{data} against \code{prior}. }
Nothing is written and nothing is fetched; a progress bar for the trend step
is drawn on stderr unless \code{options(morie.quiet = TRUE)}. Errors:
\code{data} or \code{prior} not a data frame; a named column not in
\code{data}; an invalid \code{units}, \code{dir} or \code{rndkind}; a
\code{conflvl} outside (0, 1); and any error of the functions called (for
example negative counts in \code{\link[=yoy]{yoy()}}).

}
\section{Use Text As-Is, Falling Back to ASCII When It Cannot Be Represented (\code{asciifb})}{

Returns \code{x} unchanged when it is valid, well-formed text (so
legitimate UTF-8 such as an accented name is preserved), and only
transliterates to plain ASCII via \code{\link[=toascii]{toascii()}}
when the text is not valid UTF-8 (an encoding error) or when
\code{force = TRUE} (for ASCII-only destinations such as a package
\code{DESCRIPTION}) . This lets author and supervisor names keep their
accents wherever UTF-8 is supported while degrading gracefully instead
of erroring where it is not.


Each element is tested on its bytes with \code{\link[=validUTF8]{validUTF8()}}, so the
outcome
does not depend on the session locale. Valid elements (including plain
ASCII and properly encoded accented text) are returned unchanged;
invalid ones go through \code{\link[=toascii]{toascii()}}, which drops the bytes
that are
not UTF-8 and transliterates the rest. With \code{force = TRUE} every
element goes through \code{\link[=toascii]{toascii()}}. A missing value is kept as
\code{NA}
unless \code{force = TRUE}, when it becomes \code{""}.

}
\section{Audit the categorical columns of a data frame for coding hazards (\code{audcats})}{

Checks every categorical column of a data frame for the coding problems
that silently change results: numbers that are really category codes
whose labels were lost, labels still in foreign value-label form, labels
that differ only by case or by an invisible space, empty strings or
\code{"NA"} stored as a category, unused levels, and identifiers mistaken
for categories. Run it once after every import, before any model. It also
reports which level R will use as the reference category.


For each column the levels are \code{levels(x)} for a factor and the
sorted distinct values (radix sort, as \code{factor()} would order them)
otherwise. A hazard is reported when:
\itemize{
\item the column is haven \code{labelled} (it still carries value labels
and must be decoded with \code{\link{deccodes}} or
\code{\link{declbld}});
\item every level looks like a number (\code{^[0-9.]+$});
\item every level starts with a code prefix such as \code{"1. White"};
\item a level has leading or trailing whitespace, including non-breaking
and other Unicode spaces, or two levels are equal once trimmed;
\item a level is empty, or is a missing-value sentinel (\code{NA},
\code{N/A}, \code{NAN}, \code{NULL}, \code{NONE}, \code{.}, \code{-},
\code{?}, compared case-insensitively);
\item the reference (first) level is empty, a sentinel, or padded;
\item two different trimmed levels agree once lower-cased;
\item a factor has levels that never occur;
\item there are more than 50 levels.
}
The function only reports; it never changes \code{data}. It errors when
\code{data} is not a data frame.

}
\section{Base64 encoding (\code{b64})}{

Encodes and decodes base64, in both the standard alphabet and the
URL-safe variant. Computed in R with no dependency, so a capsule can
embed binary content in a text manifest wherever this package runs.


\code{jsb64enc()} breaks its output into 72-character
lines (a newline after each complete block of 54 input bytes), matching
jsonlite's encoder byte for byte; the decoder ignores line breaks, other
white space and \code{=} padding, so either form round trips. Any other
character outside the alphabet is an error rather than being skipped,
because skipping it would decode a corrupted body into a shorter
valid-looking one.

The URL-safe variant substitutes \code{-} and \verb{_} for \code{+} and
\code{/} and drops the \code{=} padding, which is what makes it safe in
a URL path, a query string or a filename.

Base64 is an ENCODING, not encryption or a digest: it hides nothing and
anyone can reverse it. Use \code{\link[=csha256]{csha256()}} to
pin content and \code{\link[=chmac]{chmac()}} to
authenticate it.

Errors: an encoder given anything but a raw vector, a character vector or
\code{NULL}; \code{jsb64dec()} given anything but text or
raw bytes, or text with a character outside the standard alphabet;
\code{jsb64udec()} given anything but character text
(raw bytes are refused), \code{NA}, or a character outside the URL-safe
alphabet.

}
\section{Download a file with live progress (\code{bldl})}{

Downloads one file from the web to a local path, showing a progress bar
(percent, size and rate) while a person is watching. It is the single
download routine of the package and its sibling packages, and it applies
the package's network safety rules: HTTPS only, no local or private
addresses, a size cap, and checked redirects. Use it when a script must
fetch a source file and you want a visible, safe transfer.


Progress is an animated bar, redrawn in place, when the console can
redraw a line: a terminal, or the RStudio, Positron, R.app or RKWard console
(never a knitr or Jupyter notebook; the options
\code{rmoriebricklayer.dynamic} or \code{cli.dynamic}, or the environment
variable \code{R_CLI_DYNAMIC}, override the choice). In the RStudio or
Positron console the bar is drawn on stdout, elsewhere on stderr. Otherwise
milestone lines go to stderr (every 10 percent, or every 50 MB when the size
is unknown), and nothing is shown when quiet. By default output is shown in
an interactive session or when \code{options(morie.progress = TRUE)} is set,
and suppressed by \code{options(morie.quiet = TRUE)}.

Network: the transfer runs in the package's compiled HTTP client. The URL is
checked, its host resolved and pinned, and every redirect is checked again
(no switch from https to http; credentials are not passed to another host).
Plain \code{http://} is allowed only when \code{rmoriebricklayer.allowhttp},
an option, is \code{TRUE}. A transfer slower than 64 bytes a second for 30
seconds is abandoned. A \code{file://} URL is copied locally through the same
progress display, only with \code{allowfile = TRUE}.

Errors: a URL that is not https (or allowed http/file), or that points at a
loopback, link-local or private address; \code{headers} not a named character
vector; \code{tmout} below 1 or above 2147483647; \code{maxbytes} below 1; a
network failure; an HTTP status of 400 or more; a body larger than
\code{maxbytes}. \code{dest} is overwritten. A server busy for a moment (HTTP
429, 500, 502, 503 or 504) is asked again up to three times, after the wait
its \code{Retry-After} header asks for (at most a minute) or else 1, 2 and 4
seconds.

}
\section{Fetch a URL to disk with an Internet Archive fallback (C++/libcurl) (\code{blfetch})}{

The shared data-fetch foundation of the morie ecosystem. Downloads
\code{url} to \code{dest}; if the live download fails (404, network),
it retries the Wayback Machine snapshot -- so a rotated or removed
source file (CIHI, open-data portals) stays retrievable. Backed by the
package's C++ kernel \code{rmbl_fetch_with_fallback} (libcurl), which
\pkg{rmorie} and \pkg{morie} share through \code{LinkingTo}. The return
value says which source served the file, so a report can note that it
used an archived copy.


Before any network use the arguments are checked: \code{url} must be one
\code{https} URL to a public host (plain \code{http} only when the option
\code{rmoriebricklayer.allowhttp} is \code{TRUE}; loopback, private,
link-local and metadata addresses are refused), the directory of
\code{dest} must exist and be writable, and \code{tmout} must be at
least one second. The compiled layer then resolves the host, pins the
connection to the checked addresses and re-checks every redirect.

If the live download fails, the fallback is the \code{wb} URL when
given, else a snapshot looked up through the Wayback availability API
(as \code{\link[=wbsnpnat]{wbsnpnat()}} does).
\code{dest} is overwritten. A
spinner is drawn on stderr while waiting, unless
\code{options(morie.quiet = TRUE)}.

Errors: invalid arguments as above; and, when both sources fail, an error
saying whether the live URL could not be reached or answered an HTTP
status, and whether the Wayback Machine had no snapshot or its copy could
not be downloaded.

}
\section{Case flow through a court: clearance, backlog and time to clear (\code{caseflow})}{

Turns the counts a court publishes each period -- cases received, cases
disposed and, when it is published, cases pending -- into the measures
used to judge whether a court is keeping up: the clearance rate (cases
disposed per case received), its rolling value over a window, the net
flow into the inventory and, with the pending count, the number of
periods the current inventory would take to clear at the recent pace of
disposition.


A clearance rate above 1 means the court disposed of more cases than it
received, so its inventory fell. The interval treats received and
disposed as Poisson counts over the same period: given their sum, the
disposed count is binomial, and the exact (Clopper-Pearson) limits for
that proportion give exact limits for the ratio. The interval measures
the period-to-period noise of counts this size; it does not make
received and disposed the same cases, which they are not (a case
disposed this month was usually received months before).

\code{pertoclear} divides the pending inventory by the mean
number disposed over the last \code{win} periods (fewer at the start
of the series). The published pending count need not equal the previous
count plus the net flow -- courts reactivate cases on bench warrants and
transfer them -- so \code{penchg} is reported next to
\code{net} rather than derived from it.

The result carries attribute \code{"caseflow"}: \code{win},
\code{conflvl} and the totals received and disposed. Errors:
\code{recv} empty; a count vector that is not numeric, has a missing,
negative or infinite value, or a length other than \code{recv}'s;
\code{prd} of another length, with missing or repeated values;
\code{win} not a whole number of at least 1; \code{conflvl}
outside (0, 1).

}
\section{Decompose a change in a clearance rate into rate and case-mix effects (\code{clrdcmp})}{

An aggregate clearance rate -- cases disposed per case received by a
court, or offences cleared per offence reported to a police service --
is a weighted mean of the rates of its parts (offence groups, courts,
case types), weighted by each part's share of the denominator. It can
therefore fall while the rate of every part rises, if the work shifts
toward the parts that clear more slowly: Simpson's paradox. This
function compares two periods (or two jurisdictions), splits the change
in the aggregate exactly into the change in the parts' rates and the
change in the mix, reports the rate standardised to a common mix, tests
the within-part change, and says whether the comparison is a reversal.


With part rates \eqn{r_g} and denominator shares \eqn{w_g}, the
aggregate is \eqn{R = \sum_g w_g r_g}. Kitagawa's symmetric decomposition
writes the change between comparisons A and B as \deqn{R_B - R_A = \sum_g
\bar w_g (r_{gB} - r_{gA}) + \sum_g \bar r_g (w_{gB} - w_{gA}),} with
\eqn{\bar w_g} and \eqn{\bar r_g} the averages over A and B: the first sum is
the rate effect (the change the aggregate would show with the mix held at its
average), the second the mix effect. The two add to the observed change with
no residual. Because the shares' changes add to zero, each part's mix term is
reported as \eqn{(\bar r_g - \bar R)(w_{gB} - w_{gA})}, centred on the
average aggregate rate \eqn{\bar R}: the total is the same, and a part's term
is negative when work moved toward a part that clears below average.

The within-part change is estimated by the Mantel-Haenszel rate ratio,
treating each part's numerator as a Poisson count over its denominator,
with the Greenland-Robins variance; the p-value is for the hypothesis
that the ratio is 1. Each part's own rate ratio has the exact
conditional (binomial) interval. A court's clearance rate can exceed 1,
so it is treated as a rate rather than a proportion; for police
clearance, where it is a proportion, the Poisson treatment is
conservative.

The decomposition is only as good as the parts: a different grouping
(courts instead of offence groups) can tell a different story, and both
can be right. Demers and Rossmo found 210 reversals in fifteen years of
clearance rates for Canada's fifty largest police services, four of
them reversed in every crime category, and advise comparing clearance
rates only within comparable mixes.

}
\section{A Community Well-Being score from the census profile (\code{cnscwb})}{

Indigenous Services Canada's Community Well-Being (CWB) index
(\code{\link{cwbscr}}) computed from the public 2021 Census Indigenous
Population Profile, for each geography and group.


The Department computes the CWB from census microdata; the public
profile gives close but not the same inputs, and this function says where it
departs: \describe{ \item{income}{per capita: the number of total income
recipients aged 15 and over times their average total income, over the
population in private households (all ages), as the CWB does.}
\item{education}{the shares with at least a high school diploma (all but
those with no certificate, diploma or degree) and with a bachelor's degree or
higher, both among those aged 25 and over: the profile has no age group of 20
and over, which the CWB uses for the first.} \item{labour force}{the
participation rate and the employment rate of participants (100 less the
unemployment rate) of those aged 25 to 64: the CWB uses 20 to 64.}
\item{housing}{the shares of households with one person or fewer per room and
needing no major repairs, from the household profile (\code{dwell}), which
splits Indigenous from non-Indigenous households only, so First Nations,
Metis and Inuit people all get the pooled Indigenous households' housing: the
CWB counts persons, not households. Without \code{dwell} the housing
component and the score are \code{NA}.} } A group of fewer than \code{minpop}
people in a geography gets no score. The Department scores communities of 65
people or more; the default here is 250, because the public profile's counts
are rounded to multiples of 5 and its long-form counts rest on a few dozen
households at that size. Geographies are matched by DGUID, so places that
share a name stay apart. The inputs are those of the 2021 profile
(98-510-X2021001 to -016): other editions name their characteristics
differently. Read the result as a CWB-style description of socio-economic
conditions, close to but not the Department's index, and never as a measure
of the wellness of First Nations, Metis or Inuit people as they define it
(see \code{\link{cwbscr}}).

}
\section{Read the 2021 Census Indigenous Population Profile (\code{cnsprof})}{

Reads a table of the Indigenous Population Profile, 2021 Census of Population
(Statistics Canada catalogue 98-510-X2021001 to 98-510-X2021016), as the data
service mirrors it, into one row per geography, gender, age group,
characteristic and group: First Nations, Metis, Inuit, the other identity
groups and non-Indigenous people (or, in the household tables, Indigenous and
non-Indigenous households), each in its own rows. The data service keeps
these tables under \code{census2021_ipp/}.


The profile gives each characteristic in a hierarchy shown only by
indentation (\dQuote{Total - Highest certificate, diploma or degree},
\dQuote{High (secondary) school diploma or equivalency certificate}, ...):
the level, the parent and the topic's total (\code{rootid}) are worked out
from it, so a share can be taken of its parent. A topic marked "25\%
sample data" comes from the long-form sample (\code{sample = "25\%"}); the
others from the full count (\code{"100\%"}). Counts are randomly rounded to
multiples of 5 (of 10 below 10) by Statistics Canada, and a cell suppressed
to protect confidentiality (\code{x}), too unreliable (\code{F}), not
available (\code{..}) or not applicable (\code{...}) has no value here;
\code{E} values are kept and marked. The global non-response rates of the
geography (\code{tnrsf}, \code{tnrlf}, in percent) are kept: Statistics
Canada suppresses an area whose long-form rate is 50\% or more, and a high
rate means a larger error than the sample alone.

}
\section{An Indigenous standard population from the census (\code{cnsstd})}{

The age structure of a group in a geography of the 2021 Census Indigenous
Population Profile, as the standard of \code{\link{agestd}} or
\code{\link{stdprev}}.


Comparisons of First Nations, Metis and Inuit health are
standardised to the Indigenous population's own, younger, age structure
(Kumar and Tjepkema 2019): a standard as old as Canada's gives weight to ages
where few Indigenous people are. This takes the population in private
households of each age group (the profile's first characteristic) for the
group and geography given. Age groups that do not overlap are chosen by
default (0 to 4, 5 to 9, 10 to 14, 15 to 19, 20 to 24, 25 to 34, 35 to 44, 45
to 54, 55 to 64, 65 to 74, 75 and over); collapse them to the age groups of
the rates being standardised.

}
\section{Where incidents cluster: a kernel density surface (\code{crmdens})}{

Estimates the density of incident locations -- police-reported
occurrences, calls for service, addresses of people in a program -- as
a smooth surface in incidents per square kilometre, and the smallest
areas holding a given share of them (the highest-density regions). The
plot draws the surface as a heat map with those regions outlined.


The estimate is the Gaussian product-kernel density, computed on the
grid by linear binning followed by an exact discrete convolution, which
agrees with the direct sum to within the binning error (of order the
squared grid spacing over the squared bandwidth). The grid extends three
bandwidths past the outermost incident so the surface integrates to the
total weight.

A highest-density region for share \eqn{p} is the set of grid cells
with the largest densities whose estimated incidents add up to \eqn{p}
of the total. Its area is the spatial counterpart of a concentration
index: when half the incidents fall in a few per cent of the mapped
area, they are concentrated. The bandwidth decides how sharp the
surface is, so it should be reported with any map; the default suits a
first look, not a definitive one.

Errors: \code{lon} and \code{lat} of different lengths, or (with
\code{coords = "lonlat"}) a coordinate that is not a longitude and
latitude in degrees; fewer than two located incidents with positive weight;
\code{ngrid} not a whole number from 10 to 2000; \code{cover} not
shares strictly between 0 and 1; incidents all on one line with no
\code{bw} given; a \code{bw} that is not one or two positive
numbers, or longer than half the earth's circumference. Incidents with a
missing coordinate are dropped.

}
\section{Decode numeric category codes with an explicit code-to-label dictionary (\code{deccodes})}{

Turns a vector of category codes (for example \code{1}, \code{2}, \code{3}
from an SPSS, Stata or SAS file) into the category labels they stand for,
using a code-to-label dictionary that you write out. Every code that occurs
in the data must be in the dictionary; a code without a label is an error
rather than a silent \code{NA} or a pass-through. Use it whenever a column
arrives as numbers that are really categories, before any table or model,
so that a group can never be renumbered by treating codes (or
\code{as.numeric()} on a factor of them) as the categories.


\code{x} is converted to character (a factor by its labels, a number by
\code{as.character()}, so \code{1} and \code{1.0} both become \code{"1"})
and every distinct non-missing code is looked up by name in
\code{vlabs}. The lookup itself is done by
\code{\link{grdrcd}}, so the result carries the same
\code{recode_audit} attribute, including a SHA-256 of the dictionary.

Errors:
\itemize{
\item \code{vlabs} not a character vector with non-empty names;
\item a code in \code{x} that is not a name of \code{vlabs}
(the message lists the unmapped codes);
\item any \code{NA} in \code{x} when \code{keepna = FALSE}.
}
For a haven-style labelled vector, which carries its dictionary as a
\code{labels} attribute, use \code{\link{declbld}}, which returns a
factor with the levels in code order.

}
\section{Decode a labelled import by its value labels, by code (\code{declbld})}{

Converts a vector read from SPSS, Stata or SAS (for example by
\code{haven::read_sav()}), which stores categories as numeric codes with a
\code{labels} attribute, into a factor of the labels. Each code is looked
up by its value, so neither the order of the codes nor the alphabetical
order of the labels can affect which label a row gets. Codes with no label
are refused. The factor's levels are in code order, which keeps the
source program's reference category.


When \code{x} has a \code{labels} attribute (a named vector, label = code)
it is used and \code{vlabs} is ignored; otherwise
\code{vlabs} (code = label) is required. Decoding is done by
\code{\link{deccodes}}. The levels are the labels ordered by their
numeric code (codes that are not numbers are ordered after the numeric
ones, by string), and include labels of codes that do not occur.

Errors: a \code{labels} attribute without names; no attribute and no
\code{vlabs}; a code with no label.

}
\section{The mix of outcomes over time, with simultaneous intervals and trend tests (\code{dispmix})}{

For a table of counts -- periods in rows, outcomes in columns, such as
cases withdrawn, pleaded guilty, or tried -- gives each outcome's share
of its period with Goodman's simultaneous confidence intervals, tests
whether the mix is the same in every period, and tests each outcome for
a linear trend in its share.


Goodman's intervals hold for all \eqn{k} shares of a period at once: with
\eqn{A} the upper \eqn{\alpha/k} point of the chi-square distribution
on one degree of freedom, the limits for a share \eqn{n_i / N} are
\deqn{\frac{A + 2 n_i \pm \sqrt{A (A + 4 n_i (N - n_i) / N)}}{2 (N + A)}.}

The trend test for each outcome is the Cochran-Armitage test of its
count against the period totals (\code{stats::prop.trend.test()}); the
Holm adjustment covers the \eqn{k} tests. Counts of court cases are
large, so these tests detect small changes; the shares and their
intervals show whether a change is large enough to matter.

Errors: \code{cnts} not a numeric matrix or data frame, with a
non-numeric column, fewer than one period or two outcomes, or a negative,
missing or infinite count; a period with no cases; \code{scores} not one
finite number per period, or all equal; \code{prd} of the wrong length
or with repeats; \code{conflvl} outside (0, 1).

}
\section{Download a File (\code{dldata})}{

Downloads one file to a path on disk through the package's own transport,
\code{\link[=bldl]{bldl()}}, and returns the path. It is
the plain download
step of a data pipeline: resolve a URL (for example with
\code{\link[=rslvckan]{rslvckan()}}), download it with this function,
then check it with
\code{\link[=vrfsha256]{vrfsha256()}}. Use
\code{\link[=fdl]{fdl()}} instead when a person should
see advice about the failure and a Wayback Machine fallback.


Before anything is fetched the URL must be one public \code{https} URL:
plain \code{http} needs the option \code{rmoriebricklayer.allowhttp} set to
\code{TRUE}, \code{file://} needs \code{allowfile = TRUE}, and loopback,
private, link-local and cloud-metadata addresses are refused. The
transport then resolves the host, pins the connection to the checked
addresses, re-checks every redirect hop, caps the body at 2 GiB and allows
3600 seconds for the transfer. The file at \code{tpath} is
overwritten. Errors from the transfer (network, HTTP status, size cap)
propagate as R errors; nothing partial is left behind.

Progress is drawn on stderr while \code{quiet = FALSE}, whatever the
\code{morie.quiet} option says, because the value is passed to the
transport explicitly.

Errors: \code{url} or \code{tpath} not a single non-empty string;
a refused URL; \code{mode} other than \code{"wb"} or \code{"w"}.

}
\section{Curated datasets at data.rmorie.com (\code{dmnf})}{

The MORIE project keeps databases materialised from Google BigQuery
public datasets (Chicago crime, EPA air quality, US census, FEC, FDA,
NOAA, NHTSA, Hacker News, Ethereum, World Bank, ...) and serves their
tables from the edge, under the data access terms at
\code{www.rmorie.com/data-license/}. They open with the key
\code{\link{dlogin}} stores, the same key rmorie and morie
use; keys are personal: sign in with GitHub or an emailed code, or ask at
\code{www.rmorie.com/access/}. The service address comes from
\code{\link{svcs}}.
\code{dmnf()} returns the gateway's manifest
(every table with rows, columns, size, SHA-256 and its BigQuery source),
kept for a day; \code{dtabs()} the same as a data frame;
\code{dload("db/table")} one table as a data frame, cached
under \code{tempdir()} (or the directory in
\code{options(rmoriebricklayer.dcache = )}) so later calls are
local.
From the shell: \code{rmoriebricklayer data list} and
\code{rmoriebricklayer data pull db/table [--out FILE.csv]}.


The manifest is cached as \code{manifest.json} in the cache folder and
fetched again when it is more than a day old or \code{refresh = TRUE}. A
reply that is not a manifest (not a JSON object with a list of datasets
each carrying a \code{key}), or one that lists no tables while the cached
copy lists some, is refused and the cached copy kept.

\code{dload()} downloads \code{db/table.csv.gz} once into the
cache folder (as \code{db__table.csv.gz}) and checks its SHA-256 against the
manifest before every use, cached or not: a file that does not match is
deleted and refused (after one refresh of the manifest, since a table
rebuilt upstream has a new digest). When the manifest cannot be fetched,
the last copy on disk, however old, supplies the digest; with none, a fresh
download is not kept and a cached file is kept but not used. The CSV is
read in compiled code with the same result as
\code{read.csv(gzfile(f), stringsAsFactors = FALSE)}, two malformed shapes
apart, which are refused with the record they are in where \code{read.csv()}
changes the data without a word: a record with more fields than the header
(\code{read.csv()} turns the first column into row names) and a quote mark
inside an unquoted field (\code{read.csv()} takes the rest of the file as one
quoted run). Tables that inflate
past 512 MiB are read by \code{read.csv()} itself, a piece at a time. A
table whose SHA-256 matches the manifest is the file the service holds, so
it is read whatever its size; one the manifest lists without a digest may
decompress to at most the option \code{rmoriebricklayer.maxcsvbytes}
(1 GiB by default). A large table needs memory for all of it: a 1 GB
decompressed CSV takes a few GB of RAM as a data frame.

The key is sent only to the address of the signed services document. With
\code{MORIE_DATA_URL} set to another address the key is not sent and the
download fails with a message saying so. Some tables (ICPSR studies, the NCVS
38604 extract, the A2AJ case law) open only after their terms are accepted on
the terms page, \code{data.rmorie.com/terms}. Downloads draw a progress bar
when \code{options(morie.progress)} allows it.

Errors: \code{refresh} not \code{TRUE} or \code{FALSE}; no key stored (the
message says how to sign in); the service unavailable, or the key rejected;
a \code{key} that is not of the form \code{db/table}, or not listed in the
manifest; a \code{token} that is not one non-empty string; a digest
mismatch; a restricted table whose terms were not accepted.

}
\section{Duplicated rows, with their groups (\code{duprows})}{

Returns the rows that share a combination of \code{cols} with at
least one other row, grouped so the duplicates sit together. The
counterpart of \code{janitor::get_dupes()}.


\code{ruledstn()} tells you THAT there are duplicates, which
is what a validation gate needs. This shows you WHICH, which is what
fixing them needs -- and a duplicate is usually a join that fanned out
or a re-release appended rather than replaced, both of which are visible
only once the offending rows are in front of you.

Two rows are duplicates when their values, converted to text, are equal
in every column of \code{cols}; two \code{NA}s are equal. Columns are
taken by position when \code{cols = NULL}, so a table with repeated
column names can still be inspected. Errors when \code{data} is not a data
frame, a named column does not exist, or a named column's name is shared
by two columns.

}
\section{Download a File With Diagnostic Error Messages (\code{fdl})}{

Downloads one file like \code{\link[=dldata]{dldata()}}, but never stops
on a network
failure: it returns \code{TRUE} or \code{FALSE}, prints plain-language
advice for the usual academic and corporate network problems, and then
tries a Wayback Machine copy of the same address. Use it in scripts that
other people run on networks you do not control (university VPNs,
corporate proxies), where a bare \dQuote{cannot open the connection} is not
enough to act on.


The URL is checked first, as in \code{\link[=dldata]{dldata()}}; a
refused URL is an
error, not \code{FALSE}. The download is then attempted. On failure the
messages name the URL and the error, then the likely causes picked out
from the error text: rate limiting (HTTP 429, common behind shared VPN
addresses), a TLS handshake failure (VPNs that inspect TLS, such as Cisco
AnyConnect, GlobalProtect, Zscaler or Netskope), a DNS failure, a refused
or reset connection, a timeout, an HTTP 403, or otherwise a moved file or
a portal that is down. When base R reports the HTTP status only in a
warning, that warning's text is used as the cause.

The fallback: with \code{attwb = NULL} a snapshot is looked up
with \code{\link[=wbsnpurl]{wbsnpurl()}}; with a URL that URL
is used; with
\code{""} or \code{FALSE} the fallback is off. The fallback is fetched
without \code{allowfile}, so it must be a public \code{https} URL even
when \code{allowfile = TRUE}; a refused fallback URL counts as a failed
fallback (\code{FALSE}), with a message.

All output goes to the message stream. The transport always draws its
progress (it is called with \code{quiet = FALSE}). \code{tpath} is
overwritten on success.

}
\section{Parse JSON into R objects (jsonlite's fromJSON, natively) (\code{fromjs})}{

Reads JSON text, a JSON file or a JSON address on the web into R objects,
with the same simplification rules as jsonlite's \code{fromJSON()}: an
array of numbers becomes a numeric vector, an array of records a data
frame, an array of equal-length arrays a matrix. The parser is this
package's own, so it works without jsonlite, and it is stricter in two
places that matter for provenance records: a repeated key is an error by
default, and a whole number too large for a double is flagged.


A single string shorter than 2,084 bytes that is not valid JSON is taken
as a location: an \code{http(s)} address is fetched (a public \code{https}
host only, redirects re-checked, 60 second timeout, body capped at 16
MiB), otherwise an existing file is read. Anything else is parsed as JSON
text; a character vector is joined with newlines. A connection is read to
its end (and closed when this call opened it).

Without simplification (\code{simplifyVector = FALSE}) objects become named
lists, arrays unnamed lists, \code{null} \code{NULL}, and numbers integer
or double. Whole numbers beyond \eqn{2^{53}} cannot be held exactly in a
double: they are read as doubles with a warning, or kept as text with
\code{bigint_as_char = TRUE}.

Errors: \code{txt} not character or a connection; invalid JSON (the message
gives the character offset); a repeated key under
\code{duplicate_keys = "error"}; an address that is not a public
\code{https} host, that cannot be reached or that answers with an HTTP
error.

}
\section{Refuse a categorical column where a numeric 0/1 treatment is required (\code{grdbin})}{

Checks that a column meant as a binary treatment or outcome indicator is
numeric 0/1 and not a factor or character column. Coercing a factor with
\code{as.numeric()} returns the level indices (1, 2, ...) rather than the
data, and a mis-ordered level silently flips every observation; this guard
stops before that happens. Call it at the top of any function that needs a
0/1 column.


The checks are: \code{x} is an atomic vector; it is not a factor or
character vector; its distinct non-missing values are all \code{0} or
\code{1}. Logical vectors pass, because \code{TRUE} and \code{FALSE}
compare equal to \code{1} and \code{0}. Missing values are ignored. Each
failure is an error that names the column.

}
\section{Build a factor with explicit, verified levels (\code{grdlvls})}{

Creates a factor whose levels you write out in full and in order, instead
of letting \code{factor()} sort them alphabetically. The first level is
the reference category of every regression fitted on the factor, so
writing the levels out decides the baseline on purpose. Values outside the
declared levels are an error, and you can assert which level is the
reference so that a later edit to \code{lvls} cannot change it unnoticed.


The function checks that every non-missing value of \code{x} is in
\code{lvls}, then returns \code{factor(x, levels = levels)}. Declared
levels that do not occur are kept as empty levels (they still appear in
tables with a count of zero).

Errors: \itemize{ \item \code{lvls} not a non-empty character vector, or
containing \code{NA}; \item a value of \code{x} not in \code{lvls} (listed in
the message); \item \code{ref} given and not identical to \code{levels[1]}. }

}
\section{Recode a categorical column by explicit name-to-name mapping (\code{grdrcd})}{

Recodes a categorical variable with a mapping written out by name,
\code{old_label = "new_label"}, so that the recode cannot depend on the
order of the levels. Any value that the mapping does not cover is an error
unless you list it in \code{keep}; nothing is silently set to \code{NA} or
passed through. The result records the mapping and its SHA-256, so the
recode that was applied can be shown later. Use it for collapsing or
renaming categories (race, offence type, region) before analysis.


Let \eqn{S} be the set of distinct non-missing values of \code{x}. The
function refuses unless \eqn{S \subseteq} \code{names(mapping)} \eqn{\cup}
\code{keep}. Each value found in \code{names(mapping)} is replaced by its
mapped label; values in \code{keep} are returned unchanged; \code{NA}
stays \code{NA}. Several old labels may map to the same new label (a
collapse). Matching is exact: case and whitespace count.

The checksum is \code{\link{csha256}} of the string
\code{"old1=new1;old2=new2;..."} built from the mapping in its given order,
so the same mapping written in a different order has a different checksum.

Errors: \code{map} not a character vector with non-empty names; any
observed value that is neither mapped nor kept (the message lists them).

\code{\link{relbl}} is the same check but returns a factor;
\code{\link{vrfrcd}} proves the result against the declared mapping;
\code{\link{rcdmnf}} records it.

}
\section{Infer a pinnable schema from a data frame (\code{infsch})}{

Derives the schema \code{\link[=valsch]{valsch()}}
consumes from data you already trust, so a capsule can be pinned without
writing one by hand. Infer it once from the extract the analysis was run
on, read it, edit it, commit it, and validate every later download
against it.


What it records: the column names and their types, row-count bounds with
\code{slack} either side, the observed value set for every
low-cardinality categorical column, the observed range of every numeric
column widened by \code{slack}, and the observed missingness rate per
column with headroom.

The rules, with \eqn{n} rows: \itemize{ \item types: the first class of each
column (\code{"integer"}, \code{"numeric"}, \code{"character"},
\code{"factor"}, \code{"Date"}, ...); \item rows: \code{min_data_rows} \eqn{=
\lfloor n(1 - slack) \rfloor} (at least 0) and \code{max_data_rows} \eqn{=
\lceil n(1 + slack) \rceil}; \item numeric ranges: \eqn{[lo - pad, hi + pad]}
with \eqn{pad = slack \times (hi - lo)}, or \eqn{slack \times \max(|lo|, 1)}
for a constant column; a column with no non-missing value gets no range;
\item value sets: for character, factor and logical columns with at most
\code{maxlvl} distinct non-missing values, those values as sorted text; \item
missingness: the observed share of \code{NA} plus \code{slack} (added, not
multiplied), capped at 1. } Other column types (dates, lists) get a type and
a missingness ceiling only.
\subsection{This is a starting point, not an oracle}{

An inferred schema describes ONE extract. It cannot know that a category
which happens not to occur is nonetheless legal, or that a range is a
physical bound rather than an accident of this sample. Read what it
produces and edit it before committing -- the value is in not starting
from a blank file, not in trusting the output blindly.

Errors: \code{data} not a data frame or without columns; \code{slack} not
one non-negative number; \code{maxlvl} not one positive whole number.
}

}
\section{Compressed, base64-encoded JSON (\code{jsgz})}{

\code{jsgzenc()} serialises to JSON, compresses with gzip and
encodes the result as base64, so it can be embedded in another JSON
document, a header, or a text column. \code{jsgzdec()} reverses
all three steps.


JSON is highly compressible because every record repeats the key names,
so this is usually a large saving on anything record-shaped -- but it is
opaque. Use it for payloads that travel, and plain
\code{\link[=tojs]{tojs()}} for
anything a person is meant to read or a \verb{git diff} is meant to
show.

\code{raw = TRUE} skips the base64 step and returns the gzip bytes,
which is what to use when writing to a file rather than embedding in
text.

The bytes are a real gzip member (RFC 1952, with header bytes \verb{1f 8b}),
readable by \code{gzip -d}, \code{zcat} and any HTTP client, not the zlib stream
that \code{memCompress(type = "gzip")} returns. The modification time in the
header is zero, so the same input always gives the same bytes and a digest
of the result does not depend on the clock. The base64 text uses the
standard alphabet with line breaks every 72 characters
(\code{\link[=jsb64enc]{jsb64enc()}}).

The decoder takes the input's own type: a raw vector is read as gzip
bytes whatever \code{raw} says, and text as base64. As a guard against
decompression bombs it refuses a member whose declared uncompressed size
is over 64 MiB. Errors: text given with \code{raw = TRUE}; text that is not
base64; bytes that are not a gzip member (under 18 bytes or not starting
\verb{1f 8b}); a declared size over 64 MiB; a corrupt member; invalid JSON
inside.

Note that the JSON keeps data, not R types: a factor comes back as text and
attributes are lost. Compress
\code{\link[=jsser]{jsser()}} output when the
object must come back exactly.

}
\section{JSON serialisation of an R object, type and attributes included (\code{jsserdoc})}{

Writes an R object to JSON with its type and attributes alongside the
value, so the round trip returns THE SAME OBJECT rather than something
that merely prints the same. The counterpart of jsonlite's
\code{serializeJSON()} / \code{unserializeJSON()}, computed by this
package's own codec with no jsonlite dependency.


Use this, not
\code{\link[=tojs]{tojs()}},
whenever the JSON has to reconstruct the object faithfully.
\code{tojs()} writes the DATA -- which is what an API
or a human wants, and which loses factor levels, matrix dimensions,
classes and every other attribute. These two keep them, at the cost of
JSON no other tool will understand.

}
\section{Court and police data shipped with the package (\code{justice-data})}{

Small excerpts of published court and police statistics, in
\code{inst/extdata}, used by the examples, tests and the
\code{courts-and-crime} vignette. Each is a faithful copy of published
numbers (no value altered, no row invented); the full tables, every
edition and location, are on the package's data hub
(\code{\link{dload}}, collections \code{ocj_statistics}
and \code{tps_open_data}).


\describe{
\item{\code{ocj_flow_ontario.csv}}{Ontario Court of Justice, criminal
clearance-rate statistics, province-wide, monthly from April 2024 to
March 2026 (the 2026 edition): \code{month}, cases \code{received},
cases \code{disposed}, cases \code{pending} (net of bench warrants).}
\item{\code{ocj_time_to_disposition.csv}}{The same months from the
disposition-rate statistics: the shares of cases disposed in under 10
months, 10-15, 15-18 and over 18 months (cases without bench
warrants), and the average days to disposition.}
\item{\code{ocj_dispositions.csv}}{Province-wide criminal cases
disposed by how they ended, one row per calendar year 2012-2019,
2021, 2022, 2024 and 2025; each row adds to the year's published
total. The 2020 edition covers October to September and the 2026
edition April to March; the 2023 edition publishes no Toronto figures,
so it has no province-wide row.}
\item{\code{ocj_offence_groups.csv}}{The same years by offence group:
cases received and disposed. The groups add to each year's
province-wide total.}
\item{\code{ocj_courts.csv}}{The same years by court, with
\code{court_series}, which names Toronto's courthouses \code{"Toronto"}
throughout: from 2023 the Court publishes Toronto as one location (the
new Toronto courthouse consolidated its criminal courts that year).
Each year's courts add to the province-wide total.}
\item{\code{tps_break_enter_d14_2024.csv}}{Toronto Police Service
Break and Enter open data, every break and enter that occurred in
2024 in division D14, one row per occurrence (508): \code{event_id},
occurrence date, premises type, the published longitude and
latitude (which the Service offsets to the nearest intersection),
and \code{offence_records}, the number of offence records the
Service publishes for the occurrence (five have two). The source package
builds it with the script \code{tps_break_enter_d14_2024.R} in its
\code{data-raw} folder.}
}

\subsection{Source}{
Ontario Court of Justice, court statistics,
ontariocourts.ca/ocj/statistics (retrieved
2026-10-13), editions 2012 to 2026, published by the Court for
public use. Toronto Police Service, Public Safety Data Portal,
dataset \dQuote{Break and Enter Open Data}, data.tps.ca
(retrieved 2026-10-13); contains information licensed under the
Open Government Licence - Toronto Police Service. See
\code{inst/COPYRIGHTS}.
}
}
\section{Near-repeat analysis: the Knox test for space-time clustering (\code{knoxtst})}{

Asks whether incidents close together in space also happen close
together in time more often than chance would give -- the near-repeat
pattern of burglary and shootings. Pairs of incidents are classified by
distance band and time band; each cell's count is compared with the
count expected if the times were shuffled among the locations, and a
Monte Carlo permutation test gives its p-value.


Under the null hypothesis that the times are exchangeable among the
locations, every unordered pair of locations receives a uniformly random
pair of times, so the expected count in a cell is exact:
\eqn{E_{st} = S_s T_t / P}, where \eqn{S_s} is the number of pairs in
distance band \eqn{s}, \eqn{T_t} the number in time band \eqn{t}, and
\eqn{P = n(n-1)/2}. The ratio is \eqn{O_{st} / E_{st}}: above 1, pairs
that close in space are that close in time more often than chance. The
p-value of each cell is one-sided, \eqn{(1 + \#\{O^* \ge O\}) / (1 +
nsim)} over the permutations. Cells are tested separately; a table of
many cells will show some small p-values by chance alone.

Only pairs within the largest distance band are needed, and they are
found by hashing the locations to a grid, so the work grows with the
number of close pairs rather than with \eqn{n^2}.

Ties in time -- incidents recorded to the day -- put same-day pairs in
the first time band (0 to its edge). The test speaks to the timing of
incidents relative to each other, not to what caused them; near-repeat
patterns also arise when one offender commits a series.

Errors: \code{x}, \code{y} and \code{time} of different lengths;
\code{spcbands} or \code{tmbands} not positive, finite and
increasing; \code{nsim} below 19; \code{maxprs} below 1; longitude and
latitude out of range under \code{coords = "lonlat"}; fewer than three
incidents. With \code{seed} the random number stream is set for the call
and restored afterwards.

}
\section{Life table for grouped times: how long cases take (\code{lifetbl})}{

The actuarial (Cutler-Ederer) life table for times published only in
bands -- for example the share of court cases disposed within 10
months, between 10 and 15 months, and so on. It gives, at the end of
each band, the proportion still open (the survival function) with a
Greenwood confidence interval, the hazard within the band, and the
median time.


Within a band the censored cases are assumed to have been at risk
for half of it, so the number at risk is \eqn{n'_j = n_j - c_j/2}; the
conditional probability of the event is \eqn{q_j = d_j / n'_j} and the
survival at the end of band \eqn{j} is \eqn{\prod_{i \le j} (1 - q_i)}.
Greenwood's formula gives \eqn{\mathrm{Var}(\hat S_j) = \hat S_j^2 \sum_{i
\le j} q_i / (n'_i (1 - q_i))}. With no censoring the table equals the
Kaplan-Meier estimate at the band edges, and the Greenwood variance equals
the one \code{survival::survfit()} reports. The hazard in a closed band is
\eqn{d_j / (w_j (n'_j - d_j / 2))} for band width \eqn{w_j}. The median is
interpolated linearly inside the band where survival crosses one half, which
assumes events are spread evenly across that band; when the crossing falls in
an open band, the median is reported as greater than its lower edge.

Court statistics that count only disposed cases describe time to
disposition among cases that were disposed, with no censoring; cases
still pending are not in them, so the survival function describes the
disposed cohort, not every case received.

The median is attribute \code{"median"} (\code{Inf}, with a \code{note},
when survival never falls to one half or crosses it in the open band), and
attribute \code{"lifetbl"} records \code{conflvl} and
\code{conftype}. Errors: band labels that cannot be read, or that are
not contiguous, or with an open band other than the last; fewer than two
increasing edges, or an infinite edge other than the last; \code{events}
or \code{cens} that are not non-negative counts, one per band; no
cases at all; \code{conflvl} outside (0, 1); an unknown
\code{conftype}.

}
\section{Load a Pinned Data-Provenance Record (\code{loadprov})}{

Reads a \code{data_provenance.json} file, the record that pins where a
project's data came from: the portal endpoint (CKAN, Socrata or ArcGIS),
the resource name pattern, the expected SHA-256 of the file, a Wayback
Machine snapshot, the schema the data must match and the recipe for a
synthetic stand-in. The resolvers
(\code{\link[=rslvckan]{rslvckan()}},
\code{\link[=rslvsoc]{rslvsoc()}},
\code{\link[=rslvarc]{rslvarc()}}) and the checks
(\code{\link[=vrfsha256]{vrfsha256()}},
\code{\link[=valsch]{valsch()}}) all take the list this returns.


The file is parsed with the package's own JSON codec (see
\code{\link[=fromjs]{fromjs()}}) without
simplification: JSON arrays stay
lists, so a pinned digest such as \code{"sha256": "abc"} is a length-1
character and an array of column names is a list of strings (use
\code{unlist()} where a vector is needed). Nothing is checked about the
content here; \code{\link[=valsch]{valsch()}} reads the
\code{schema} block.

A missing file is not an error: it returns \code{NULL}, so a project can
run without a provenance record and every resolver treats \code{NULL} as
\dQuote{nothing pinned}.

Errors: \code{path} that is not a single non-empty string; \code{path}
that is a directory; a file that is not valid JSON.

}
\section{Search theory for search and rescue planning (\code{ltrlrng})}{

The quantities a search and rescue planner works with (Koopman's search
theory, as used in the U.S. Coast Guard and IAMSAR planning methods):
\itemize{
\item \code{ltrlrng()} (lateral range): the probability that a sensor
passing at distance \code{x} detects the object, under the inverse
cube, definite range or M-Beta model with sweep width \code{W};
\item \code{swpwdth()} (sweep width): the area under a sampled lateral
range curve;
\item \code{srchpod()} (search POD): the probability of detection from
coverage, for random search, a definite-range sweep and an inverse
cube parallel sweep;
\item \code{pswppod()} (parallel sweep POD): the POD of a parallel sweep
at track spacing \code{S}, computed for any model, with optional
normal navigation error;
\item \code{srchscs()} (search success): the probability of success,
the cumulative POD of repeated searches and the containment
probabilities updated after an unsuccessful search;
\item \code{datumpmap()} (datum probability map): the probability that
each grid cell contains the object, for a point, line or area datum;
\item \code{optcrcsrch()} (optimal circular search): Koopman's optimal
effort for a circular normal datum;
\item \code{opteffort()} (optimal effort): the allocation of a fixed
effort over cells that maximises the probability of success.
}


Coverage is \code{C = W z / A}: sweep width times track length over the
area searched (for a parallel sweep, \code{W / S}). The lateral range
curves are: definite range, \code{p(x) = 1} for \code{|x| <= W / 2};
M-Beta, \code{p(x) = m} for \code{|x| <= W / (2 m)}; inverse cube,
\code{p(x) = 1 - exp(-W^2 / (4 pi x^2))}. Each has area \code{W}, the
sweep width. \code{swpwdth()} integrates by the trapezoid rule.

With \code{navsd > 0}, \code{ltrlrng()} gives the expected curve seen
through a normal cross-track navigation error: the convolution of the curve
with that normal (Frost 1996, equation 5-14), exact for the rectangular
curves and by the trapezoid rule for the inverse cube. Its
area is still \code{W}; the curve is lower and wider.

\code{srchpod()}: random search \code{1 - exp(-C)}; definite range
\code{min(C, 1)}; inverse cube parallel sweep
\code{erf(sqrt(pi) C / 2)} (Koopman 1956); M-Beta parallel sweep
\code{C} for \code{C < M} and \code{1 - (1 - M)^(C / M)} above it
(Frost 1996, equation 5-11), which is exact wherever the tracks overlap a
whole number of times.

\code{pswppod()} integrates over one track spacing (Simpson's rule on
\code{npts} points) the probability that at least one of the tracks
\code{-ntrk, ..., ntrk} detects the object; for the inverse cube model the
tracks beyond \code{ntrk} are added in closed form from
\code{sum_k 1 / (x - k S)^2 = (pi / S)^2 / sin^2(pi x / S)}. With
\code{navsd > 0} the lateral range curve is averaged over a normal
cross-track error (40-point Gauss-Hermite quadrature). Without navigation
error the inverse cube result equals \code{srchpod(W / S, "invcube")}.

\code{srchscs()}: the probability of success is
\code{POS = sum(POC * POD)}; after an unsuccessful search the containment
probabilities become \code{POC (1 - POD) / (1 - POS)} (Bayes). With several
searches (\code{pod} a matrix, one row per search) the update is applied in
turn and the cumulative POD is \code{1 - prod(1 - POD)} per area. When a
search is certain to succeed (\code{POS = 1}) the update is undefined: it
is returned as \code{NA}, with a warning.

\code{datumpmap()}: a point datum is a circular normal of standard
deviation \code{sigma} about \code{center}; a line datum the same spread
along the segment from \code{center} to \code{end} (Gauss-Legendre
quadrature on \code{nodes} points); an area datum a uniform distribution
over the rectangle with corners \code{center} and \code{end}; a corridor
datum normal across the segment from \code{center} to \code{end} and
uniform along it, with nothing beyond its ends (Frost 1996, figure 3-8;
the segment must run along x or along y); a general datum the cell weights
\code{wts} scaled to sum to 1. The share of the probability outside the
grid is returned as \code{outside}.

\code{optcrcsrch()}: with effort (track length) \code{L}, the optimal
search of a circular normal datum covers a disc of radius
\code{R = (4 sigma^2 W L / pi)^(1/4)}, and succeeds with probability
\code{1 - (1 + u) exp(-u)}, \code{u = R^2 / (2 sigma^2)} (Koopman 1957).

\code{opteffort()}: under random search detection the optimal effort in
cell \code{i} is \code{z_i = (A_i / W) log(r_i / lambda)} where
\code{r_i = POC_i W / A_i} exceeds \code{lambda}, and 0 elsewhere; the
Lagrange multiplier \code{lambda} is found by bisection on its logarithm so
that the efforts add up to \code{effort} (Stone 1975, chapter 2). It assumes
random search detection in every cell (the exponential POD curve,
\code{srchpod(model = "random")}), the conservative choice when the tracks
are not laid evenly; a plan searched by parallel sweeps does at least as
well.

All distances (\code{x}, \code{W}, \code{S}, \code{navsd}, the grid
edges, \code{center}, \code{end}, \code{sigma}, \code{effort}) are in one
unit of your choice, and areas in its square.

Every input is checked: numbers must be finite and of the right length,
sweep widths, spacings and standard deviations positive, probabilities in
[0, 1] and containment probabilities summing to at most 1; unknown models
and datum types are errors.

}
\section{Missingness in one line per question (\code{misssmry})}{

The scalar summaries of missingness: how much of the table is missing,
how many rows are complete, and how many columns have any or only missing
values. Use it as a first look at a new extract, or to report data
completeness in a methods section;
\code{\link[=misspat]{misspat()}} then shows which
columns are missing together.


A cell is missing when \code{is.na()} is \code{TRUE} (so \code{NaN}
counts, and an empty string does not). A row is complete when no cell in it
is missing (\code{stats::complete.cases()}). Percentages are of all cells
and of all rows. A table with no rows gives zeros. Columns are taken by
position, so duplicate or empty column names are fine. Errors when
\code{data} is not a data frame or has no columns.

}
\section{Generate One Synthetic Column From a Spec (\code{mksyncol})}{

Builds one column of synthetic (made-up) data from a short
specification, such as \dQuote{sample these categories with these weights} or
\dQuote{Poisson counts with mean 25}. It is the building block of
\code{\link{mksyncsv}}, which assembles a whole table from a recipe. Use
synthetic columns to develop and test an analysis pipeline before, or instead
of, touching restricted data.


The supported \code{spec$type}s and the fields each reads (defaults
in parentheses): \describe{ \item{\code{"sample"} (the default
type)}{\code{values}, a vector or list of categories; \code{weights} (default
equal), their probabilities. Drawn with replacement.}
\item{\code{"bernoulli"}}{\code{p} (default 0.1), the probability of the
first label; \code{labels} (default \code{c("Yes", "No")});
\code{p_with_baserate} (default 0), added as \code{p_with_baserate * basep}
to give row-level variation when \code{basep} is supplied. A per-row
probability above 1 behaves as 1.} \item{\code{"poisson"}}{\code{lambda}
(default 1); \code{min} (default 0), a floor: draws below it are raised to it
(so the result is not Poisson below the floor).}
\item{\code{"id_pattern"}}{\code{pattern} (default \code{"id-\{seq:05d\}"}),
in which \code{\{seq:05d\}} becomes a five-digit zero-padded sequence number
and \code{\{year\}} the year; \code{year_col}, the name of a column in
\code{ctx} whose values supply \code{\{year\}} and restart the sequence
within each year. With \code{year_col}, that column must have \code{n}
values. No other tokens are recognised.} \item{\code{"sequence"}}{\code{from}
(default 1): \code{from, from + 1, ...}.} \item{\code{"fitted"}}{\code{fit},
a \code{\link{dstfit}} result, and \code{family} (default the first-ranked
converged fit): draws from that fitted distribution.} } Random draws use R's
random number generator, so call \code{set.seed()} first for a reproducible
column. Errors: \code{spec} not a list; an unknown \code{type}; errors from
\code{sample()} or \code{rpois()} on invalid weights or rates.

}
\section{Generate a Synthetic CSV From a Schema Recipe (\code{mksyncsv})}{

Generates a reproducible synthetic data set from a recipe (the
\code{schema$synthetic_recipe} block of a provenance object, or a list
written by hand) and writes it to a CSV file. Each column is described as
in \code{\link{mksyncol}}. Next to the CSV it writes a
\code{.synthetic} marker file, so the generated rows can never be
mistaken for real data later. Use it to share a runnable version of an
analysis without sharing restricted records.


Columns are produced in declaration order so later columns can reference
earlier ones. A shared per-person latent propensity, uniform on
\eqn{[0, 1]}, drives every \code{"bernoulli"} column through the column's
\code{p_with_baserate} field, so those columns are correlated with each
other. An optional \code{row_replication} block (\code{values} and
\code{weights}) draws how many rows each person gets: person-level
columns are drawn once per person and repeated, while \code{"bernoulli"}
columns are drawn once per row. With replication the file therefore has
more than \code{nrows} rows.

The data are drawn under \code{seed} and the caller's random number
stream is restored afterwards, so the same recipe and seed give the same
file and the surrounding analysis is not disturbed.

Side effects: writes \code{outpath} (overwriting it) and
\code{paste0(outpath, ".synthetic")}, a small JSON file with
\code{synthetic: true}, the row count, the seed, the recipe's SHA-256 and
the time; and marks the R session as having made synthetic data, so a
manifest built later in the same session is labelled synthetic. A
progress bar is shown in an interactive session.

Errors: \code{schema} not a list; any error from
\code{\link{mksyncol}}; an unwritable \code{outpath}.

}
\section{Check reported odds ratios against a labelled table, under every relabelling (\code{orchk})}{

Recomputes the odds ratios a report gives for each group from the
underlying table of counts, and says whether the reported values follow
from the table as it is labelled. If they do not, it tries every
reassignment of the group labels (and the two outcome columns swapped) and
lists the relabellings that do reproduce the reported values. Use it when
a published odds ratio looks implausible: a four-fold ratio reported as
thirty-six-fold is typically reproduced exactly by one such relabelling,
which shows the groups were mislabelled rather than the arithmetic wrong.


With row \eqn{r} holding \eqn{a_r} (outcome absent) and \eqn{b_r}
(outcome present), the odds ratio of group \eqn{r} against the reference
\eqn{0} is \deqn{OR_r = \frac{b_r / a_r}{b_0 / a_0}.} A reported value
matches when \eqn{|OR_r - \widehat{OR}_r| \le} \code{tol} \eqn{\times
|\widehat{OR}_r|} for every non-reference group, and all values are finite.
The search covers all \eqn{k!} permutations of the row labels, each with and
without the outcome columns swapped (the identity without a swap is the
\dQuote{as labelled} check), and is only run for \eqn{k \le 7} groups. A zero
cell gives an infinite or undefined odds ratio, which never matches.

Errors: \code{cnts} not a matrix, data frame or table with two columns
and row names; \code{ref} not a row name; \code{rptd} not named
by every non-reference row.

}
\section{Plot methods for the package's results (\code{plot.rmbl_census_cwb})}{

Every result the package returns draws itself with \code{plot()}: no
arguments beyond the object are needed, and every method takes the same
customisation (\code{main}, \code{col} or \code{palette}, \code{...} for
the base-graphics call, the grid from the session option; see
\code{\link{plotopt}}). Titles fit their panel: a title
too wide for it is drawn a step smaller, and in a panel set one that still
does not fit becomes a letter with the key printed under the panels (the
returned data carry it as the \code{plnkey} attribute); the left margin
is sized from the widest tick label, so an axis title never overlaps the
numbers. (Session defaults: see
\code{\link{plotopt}} for the session defaults). Each
method returns the data it drew, invisibly, as a data frame.


\describe{ \item{\code{rmbl_stock_flow}}{(\code{\link{stkflow}}) the average
daily population, length of stay, people and person-days over the periods,
one panel per measure in \code{what}; with an exposure, the flow and stock
rates too.} \item{\code{rmbl_yoy}}{(\code{\link{yoy}}) the
period-over-period percent change with its interval over the periods, the
period across and the change up, groups side by side, coloured by verdict;
\code{what = "value"} draws the values instead.} \item{\code{rmbl_rate},
\code{rmbl_share}}{ (\code{\link{rtcalc}}, \code{\link{shrs}}) the rate or
share per group with its interval.}
\item{\code{rmbl_rate_change}}{(\code{\link{ratechg}}) the percent change
in the rate with its interval over the periods, groups side by side.}
\item{\code{rmbl_band_sensitivity}}{(\code{\link{bandsens}}) the statistic
against the cap applied to the open band.}
\item{\code{rmbl_drift_calibration}, \code{bricklayer_drift}}{
(\code{\link{drftcal}}, \code{\link{cpsdrft}}) the false-alarm rate per
column against alpha; for a drift result, \code{what = "psi"} (the default)
the population stability index per column, worst first, coloured by
verdict, with the warn and fail bands as dashed lines; \code{"columns"} the
reference and current distributions of up to six columns (\code{cols}, or
the worst), each PSI bin's term written on it; \code{"benford"} the first
digits of numeric columns against Benford's law with its 95\% band, and the
test's verdict; \code{"ecdf"} both ECDFs with the area between them shaded;
\code{"quantiles"} the current quantiles against the reference's on the
identity line; \code{"fingerprint"} one spoke per column, its PSI as the
distance out, with the bands as rings.}
\item{\code{bricklayer_benford}}{(\code{\link{benfordtst}}) observed
first-digit proportions against Benford's law.}
\item{\code{bricklayer_power}}{(\code{\link{cpspwr}}) the power curve:
detection rate against injected effect size, with the 0.8 line.}
\item{\code{bricklayer_freq}, \code{bricklayer_missingness},
\code{rmbl_region_coverage}}{(\code{\link{freqtbl}}, \code{\link{misspat}}
and \code{\link{rgncov}}) horizontal bars.}
\item{\code{bricklayer_outliers}}{(\code{\link{mahaoutl}}) the distance of
every row, outliers marked.} \item{\code{bricklayer_correlations},
\code{bricklayer_cortable}}{ (\code{\link{topcors}}, \code{\link{cortbl}})
the correlation of every pair as a diverging bar.}
\item{\code{bricklayer_falsification}}{(\code{\link{cpsfals}}) the
permutation null distribution with the observed statistic.}
\item{\code{rmbl_bounds}}{(\code{\link{pubbnd}}) each value inside its
published-rounding envelope.} \item{\code{rmbl_indigenous_gap},
\code{rmbl_dsr}, \code{rmbl_prevalence}}{ each group's difference or ratio,
rate, percentage, odds ratio or index with its interval, for these classes
and for \code{rmbl_exposure_trend} and \code{rmbl_community_index}
(\code{\link{indgap}}, \code{\link{agestd}}, \code{\link{stdprev}},
\code{\link{exptrnd}}, \code{\link{commidx}}); \code{what = "ratio"} draws
the ratio of a gap.}
\item{\code{rmbl_trc_progress}}{(\code{\link{trcprog}}) the Calls to Action
completed, and the pace projected with the band its interval gives.}
\item{\code{rmbl_ordinal_compare}}{(\code{\link{ordcmp}}) each group's
ratings as one stacked bar, lowest rating on the left.}
\item{\code{rmbl_wellness_profile}, \code{rmbl_wellness_continuum}}{
wellness indicators above, distress below, each group's estimate and
interval (\code{\link{welprof}}, \code{\link{mhcont}}).}
\item{\code{rmbl_dual_continuum}}{(\code{\link{dualcont}}) each group on
the two axes, wellness up and distress across.}
\item{\code{rmbl_holistic_balance}}{(\code{\link{holbal}}) the domains as
spokes and each group's levels on them, with its balance.}
\item{\code{rmbl_distinctions}}{(\code{\link{dstntst}}) each group's
estimate and the pooled figure, with I-squared.}
\item{\code{rmbl_connection}}{(\code{\link{connassoc}}) the places on the
two indicators, with their intervals; \code{xlab} and \code{ylab} name the
axes (default: the indicators' column names).}
\item{\code{rmbl_healing_change}}{(\code{\link{healchg}}) the change in
each indicator between the periods, wellness first.}
\item{\code{rmbl_profile_share}}{(\code{\link{profshr}}) each group's share
of a census characteristic with its interval.} \item{\code{rmbl_crf},
\code{rmbl_burden}, \code{rmbl_equity}}{and \code{rmbl_pollution_report}:
in turn, the concentration-response curve with the exposure marked;
baseline against attributable cases; the concentration curve of exposure
over income rank; and, for a report, all three on one page
(\code{\link{crfpm25}}, \code{\link{polbrdn}}, \code{\link{expconcidx}},
\code{\link{vrfpol}}).} \item{\code{rmbl_footprint}}{(\code{\link{co2fp}})
the CPU, memory and total emission in one unit chosen to fit, with the
car-kilometre and tree-month equivalents as a caption; \dQuote{Too short to
measure} when the work took no measurable time.} \item{\code{rmbl_field},
\code{rmbl_particles}}{ (\code{\link{plmfld}}, \code{\link{advdif2d}},
\code{\link{lagrprt}}) a concentration field as an image with contours;
particle positions, with the counting grid behind them when one was given.}
\item{\code{rmbl_count_trend}}{(\code{\link{cnttrnd}}) the counts with the
fitted trend.} \item{\code{bricklayer_analysis}}{(\code{\link{anltab}}) the
change, rates and rate change of a published table, one panel each.}
\item{\code{rmbl_event_study}, \code{rmbl_staggered_att}}{
(\code{\link{evstudy}}, \code{\link{stgatt}}) the effect at each period
since adoption with its interval, the reference period at zero.}
\item{\code{rmbl_synth}, \code{rmbl_synthdid}}{(\code{\link{synctl}},
\code{\link{syndid}}) the treated unit (or mean) and its synthetic or
weighted comparison over time, adoption marked.}
\item{\code{rmbl_power}}{(\code{\link{plnpwr}}) power against effect size,
with the 0.8 line and the minimum detectable effect.}
\item{\code{rmbl_prevalence}}{(\code{\link{stdprev}}) each group's
age-standardised prevalence with its interval.}
\item{\code{rmbl_census_cwb}}{(\code{\link{cnscwb}}) the Community
Well-Being index, or one \code{component}, by place, one colour per group.}
\item{\code{rmbl_balance}}{(\code{\link{baltab}}) a love plot: each
covariate's absolute standardised difference against the \code{threshold}
line, with a second table (\code{after}, after weighting or matching)
beside it.} \item{\code{rmbl_aipw}}{(\code{\link{aipwcf}}) the overlap of
the two groups' out-of-fold propensities (\code{type = "overlap"}) or the
estimate with its interval (\code{type = "estimate"}).}
\item{\code{rmbl_event_study}, \code{rmbl_staggered_att}}{also take
\code{style = "stata"} (hollow points joined by a line, dashed bars) and
\code{shadepost}; \code{\link{plotevgrid}} puts several in one grid.}
\item{\code{rmbl_bacon}}{(\code{\link{bacondcmp}}) each two-group
comparison's estimate against its weight, by type, with the two-way
estimate.} \item{\code{rmbl_permutation}}{(\code{\link{perminf}}) the
permuted statistics as a density (5th and 95th percentiles dashed) or
histogram, the observed one in red, one panel per outcome.}
\item{\code{rmbl_loo}, \code{rmbl_cohort_trends}}{(\code{\link{loounit}},
\code{\link{cohtrnd}}) the leave-one-out estimates with the full-sample
one; each cohort's outcome by time since adoption.}
\item{\code{rmbl_case_flow}}{(\code{\link{caseflow}}) cases received and
disposed, shaded where the inventory grew or fell, and the clearance rate
with its interval and rolling value.}
\item{\code{rmbl_life_table}}{(\code{\link{lifetbl}}) the share of cases
still open at each band edge with its interval, and the median.}
\item{\code{rmbl_disposition_mix}}{(\code{\link{dispmix}}) the shares of
each outcome over the periods, stacked.}
\item{\code{rmbl_density}}{(\code{\link{crmdens}}) the density of incidents
as a heat map, with the highest-density regions outlined.}
\item{\code{rmbl_knox}}{(\code{\link{knoxtst}}) the Knox ratio of each
distance-by-time cell, coloured on a log scale around 1.}
\item{\code{rmbl_hotspot}}{(\code{\link{hotpers}}) the share of places
holding half the incidents and the overlap of hot spots with the period
before, over time, and a map of the cells coloured by how often they were
hot.} \item{\code{rmbl_svy_estimate},
\code{rmbl_svy_compare}}{(\code{\link{svyest}}, \code{\link{svycmp}}) each
domain's estimate with its interval, flagged domains marked; each
difference from the reference domain with its interval.}
\item{\code{rmbl_clearance_decomposition}}{(\code{\link{clrdcmp}}) the
parts' rates in both comparisons with the aggregate on top, where the
workload moved (coloured by whether a part clears above or below the
average), and the change as a waterfall of rate and mix effects: the
pictures that show a Simpson's-paradox reversal and why it happened.} }

}
\section{The share of a population with a characteristic, from the census profile (\code{profshr})}{

The share of a group with a characteristic of the 2021 Census Indigenous
Population Profile (foster children among children, speakers of an Indigenous
language, households needing major repairs, ...), with an approximate
confidence interval that carries the long-form sample and the random rounding
of the counts.


The share is the numerator's count over the denominator's (by
default the numerator's parent in the profile's hierarchy), for each
geography, gender, age group and group. Statistics Canada does not publish
standard errors for the profile, so the interval is an approximation built
from what is known about how the counts were made: \itemize{ \item a
long-form ("25\% sample") count is estimated from a sample of about one
household in four, so the share has variance \eqn{d (1 - f) p (1 - p) / (f
N)} for a sampling fraction \eqn{f} (\code{smpfrac}, 0.25) of a population of
\eqn{N} (the denominator) and a design effect \eqn{d} (\code{deff}, 1 by
default: the clustering of people in households raises it, and a value of 1.5
to 2 is prudent for characteristics shared within a household). On reserves
(rows whose \code{residence} is \code{"On reserve"}) every household got the
long form, so \eqn{f = 1} there and the sampling term vanishes; \item every
count is randomly rounded, up or down without bias, to a multiple of \eqn{b}
(\code{roubase}, 5). Averaged over the remainders, that adds variance \eqn{c
= (b^2 - 1)/6} to each count (4 for \eqn{b = 5}), so \eqn{c (1 + p^2) / N^2}
to the share (the only error of a full-count share). } In all, \deqn{V =
\frac{d (1 - f) p (1 - p)}{f N} + \frac{c (1 + p^2)}{N^2}.}{V = d (1 - f) p
(1 - p) / (f N) + c (1 + p^2) / N^2.} The interval is Wilson's at the
effective sample size \eqn{n_e = \max(p(1-p), 1/N) / V} (the floor \eqn{1/N}
keeps a share of 0 or 100\% from an infinite \eqn{n_e}), so it stays inside 0
and 100. It does not carry non-response (see \code{tnrlf}) or the edit and
imputation error, so it is narrower than the full error; treat it as a lower
bound on the uncertainty.

}
\section{Record a recode as a manifest that can be signed and verified later (\code{rcdmnf})}{

Builds a record of a recode that a later reader can check: the mapping
and its SHA-256, the counts per label before and after, the results of the
before/after cross-tabulation check and (when given) of the match against
published counts, a UTC timestamp, and, with a key, a signature over the
whole record. Write it to disk with \code{\link{wrrcdmnf}}
and re-check it with \code{\link{vrfrcdmnf}}, so anyone can
confirm which labels went where and that nothing was changed afterwards.


The function first runs \code{\link{vrfrcd}}, as
\code{vrfrcd(original, recoded, mapping)}. When \code{pub} is given it then
runs \code{\link{vrfmrg}}, as \code{vrfmrg(recoded, published)}, with the
default \code{strict = TRUE}. Either check failing is an error, so a manifest
is only produced for a recode that passed. For that reason
\code{checks$matches_published} is \code{TRUE} or \code{NA} (no published
counts), never \code{FALSE}.

\code{body_sha256} is \code{\link{csha256}} of the canonical JSON of
every other field. With a \code{key}, \code{\link{cpssign}} signs that
hash and the manifest also stores the public key: a
\code{bricklayer_signing_key} from \code{\link{pqckg}} (XMSS, which
consumes one one-time leaf per signature) or a key from
\code{\link{fipskg}} (ML-DSA or SLH-DSA). Nothing is written to disk.

}
\section{Relabel a categorical variable by name, never by position (\code{relbl})}{

Gives a factor or character vector new labels with a mapping written by
name, old label = new label, and returns a factor. Assigning a vector of
labels by position (the \code{levels(x) <- ...} idiom, or
\code{factor(x, labels = ...)} with labels in a different order from the
codes) is how the four race categories were rotated in the analysis that
the Ontario Human Rights Commission corrected on 26 January 2023; this
function refuses unnamed mappings outright, and refuses levels that the
mapping does not cover.


The old levels are \code{levels(x)} for a factor and the sorted distinct
values otherwise; all of them must be names of \code{map} or members
of \code{keep}, so for a factor even an unused level must be mapped. The
recode itself is \code{\link{grdrcd}}. The levels of the result are
the distinct values of \code{map} in the order given, followed by the
\code{keep} labels that occur in the data.

Errors: \code{map} without names (including a plain vector of new
labels); a level with no mapping.

}
\section{Name the mechanical step that reproduces a label permutation (\code{rlblfrns})}{

When categories come out permuted (each true group reported under another
group's label), this function asks which deterministic step, applied to
the code book, produces exactly that permutation. It tries the known
mechanisms: labels sorted alphabetically (also reversed or
case-insensitive) and assigned by code position, labels reversed, every
rotation, codes sorted as strings, and, when counts are given, labels
ordered by frequency. A match is a reconstruction, not proof of intent;
but a file transfer has no reason to pick the sort order of the labels, so
a match on a sort-based mechanism points to a positional relabel in the
analysis rather than to the software.


With labels \eqn{L_1, \dots, L_k} in code order, each mechanism
produces a sequence \eqn{M_1, \dots, M_k} meaning \dQuote{true group
\eqn{L_i} was seen as \eqn{M_i}}. It matches when \eqn{M_i =}
\code{observed[L_i]} for all \eqn{i}. There are five fixed mechanisms, \eqn{k
- 1} rotations, and two frequency orders with \code{cnts}. When \code{obs} is
the identity no mechanism is reported as matching.

Errors: either argument unnamed; \code{obs} not a permutation of the
labels in \code{vlabs}.

}
\section{Write an analysis as a Markdown or HTML report (\code{rptanl})}{

Renders an \code{\link[=anltab]{anltab()}} result as a report: the
change table with
its intervals and adjusted p-values, the rates, the trends, the drift
screen and the column profile, each with one sentence saying how to read
it. The Markdown is plain enough to paste into a notebook or a pull
request; the HTML is a single self-contained file with no external
resources, suitable for e-mailing to a reviewer.


Sections appear in this order: a header line (value, period, groups,
rows, period range and the time of the analysis), \dQuote{Change between
periods}, \dQuote{Rates per ...} (when there were rates), \dQuote{Trend over
the series}, \dQuote{Drift against the prior capsule} (when a prior was
given) and \dQuote{What is in the table} (with \dQuote{Missing values} when
any are missing). Tables use pipe syntax; numbers are rounded to
\code{digits} decimals, whole numbers of 10,000 and above get thousands
separators, logicals are written yes/no and \code{NA} is blank. When the
values are percentages the change is reported in percentage points. The HTML
is produced by a small built-in converter (headings, paragraphs, tables and
inline code, with the text escaped). The file is written as UTF-8 and
overwritten if it exists.

Errors: \code{x} not from \code{\link[=anltab]{anltab()}}; an invalid
\code{format}.

}
\section{Resolve a Query URL via ArcGIS FeatureServer Metadata (\code{rslvarc})}{

Checks that an ArcGIS FeatureServer layer still exists and returns a
query URL that downloads every feature of the layer as GeoJSON.
FeatureServer layers back the Toronto Police Service open-data portal
and many municipal portals used across the MORIE family.


Trailing slashes are dropped from \code{dataset$arcgis_layer_url}, the
URL is checked (public \code{https} only), and one request is made to
\code{<layer>?f=json}. If the answer is JSON with a \code{name} and no
\code{error} element, the function returns
\code{<layer>/query?where=1\%3D1&outFields=*&f=geojson}: every row
(\code{where=1=1}), every field, as GeoJSON. ArcGIS servers return at
most their \code{maxRecordCount} features per request, so a large layer
needs paging (\code{resultOffset}) by the caller; the URL is not fetched
here.

\code{NULL} is returned when \code{prov} is \code{NULL}, when the
field is missing, when the request fails or when the metadata reports an
error. Errors: a \code{prov} that is not a list; a layer URL that is
not public \code{https}.

}
\section{Resolve a Download URL via CKAN package_show (\code{rslvckan})}{

Asks a CKAN open-data portal for the current list of files in a dataset
and returns the URL of the first file whose name matches the pattern
pinned in the provenance record. CKAN powers data.ontario.ca,
data.gov.uk, data.gov and most government open-data portals; when a
portal replaces a file (a new resource UUID, a new URL) the dataset page
stays the same, so this recovers the current download URL without editing
the project.


The function reads \code{dataset$ckan_api_endpoint}, the full URL, which
ends in \code{/api/3/action/} and \code{package_show?id=<slug>}. It also
reads \code{resource$name_match_pattern}, a regular expression. It fetches
the endpoint as JSON, and walks \code{result$resources} in the order the
portal lists them. The first resource whose \code{name} matches the
pattern (case-insensitively, with \code{\link[=grepl]{grepl()}}) wins. If the slug
itself has
changed, \code{\link[=rslvckns]{rslvckns()}} is the
fallback.

\code{NULL} is returned, without an error, when \code{prov} is
\code{NULL}, when either field is missing or empty, when the request
fails (offline, HTTP error, invalid JSON), when CKAN answers
\code{"success": false}, or when no resource name matches. Errors are
raised for a \code{prov} that is not a list, for an endpoint that is
not a public \code{https} URL (plain \code{http} only when the option
\code{rmoriebricklayer.allowhttp} is \code{TRUE}; loopback, private and
link-local addresses are refused), and for a matched resource URL that
fails the same check. One network request; nothing is written.

}
\section{Resolve a Download URL via CKAN package_search (\code{rslvckns})}{

The fallback for \code{\link[=rslvckan]{rslvckan()}} when a dataset's
slug has changed
and \code{package_show} no longer finds it. It runs a full-text
\code{package_search} on the same CKAN portal and returns the URL of the
first resource, across all datasets returned, whose name matches the
pinned pattern.


The portal base is the part of \code{dataset$ckan_api_endpoint} before
\code{/api/3/}; the request goes to \code{<base>/api/3/action/} followed by
\code{package_search?q=<query>}.

The query is \code{resource$search_query} when given, otherwise the
\code{resource$name_match_pattern} with every character other than a
letter, digit or space replaced by a space. Datasets are walked in the
order CKAN ranks them, and their resources in listed order. A resource is
taken when its \code{name} matches \code{resource$name_match_pattern}
(case-insensitively) and either its format is CSV, or
\code{resource$format} is unset, or its format equals
\code{resource$format} (case-insensitively). So a CSV resource is accepted
even when \code{resource$format} asks for another format.

\code{NULL} is returned when \code{prov} is \code{NULL}, when no
query can be formed, when there is no endpoint to derive the base from,
when the request fails, or when nothing matches. Errors: a
\code{prov} that is not a list; a search URL or matched resource
URL that is not public \code{https}. One network request.

}
\section{Resolve a Download URL via the Socrata Metadata API (\code{rslvsoc})}{

Checks that a dataset still exists on a Socrata open-data portal and
returns its full CSV export URL. Socrata powers the Calgary, Chicago and
New York City portals used across the MORIE family; a dataset is named by
its portal domain and a four-by-four id such as \code{ijzp-q8t2}.


One request is made, to \code{https://<domain>/api/views/<id>.json}. If
it answers with JSON that has an \code{id} field the dataset is taken to
exist. The function then returns the portal's export of every row, the URL
\code{https://<domain>/api/views/<id>/} followed by
\code{rows.csv?accessType=DOWNLOAD}. The id is not checked further, and the
export URL is not fetched.

\code{NULL} is returned when \code{prov} is \code{NULL}, when the
domain or id is missing, when the request fails (offline, HTTP error,
invalid JSON) or when the metadata has no \code{id}. Errors: a
\code{prov} that is not a list; a domain that is not a public host
(\code{localhost}, a private address, a single-label name).

}
\section{Declare a validation rule (\code{rul})}{

Builds a rule for \code{\link[=valrules]{valrules()}}: a predicate over
one column, or over
the whole data frame, with a severity and a message. Use rules for the
checks that are particular to a data set and that a schema cannot express:
an age must be non-negative, an identifier must be unique, a release date
must not precede an admission date. Rules live alongside a schema in a
provenance record, which keeps the project-specific checks in data rather
than scattered through code.


\code{expr} is a function. Given \code{col}, it receives that column
and must return a logical vector the same length (\code{TRUE} = the row
passes) or a single logical for a whole-column property. Given no
\code{col}, it receives the whole data frame and must return a single
logical. How the result is read is described in
\code{\link[=valrules]{valrules()}}.

Only the first element of \code{name}, \code{col} and \code{msg} is
kept. The rule is not run here. Errors: an empty or \code{NA} \code{name};
\code{expr} not a function; an empty or \code{NA} \code{col}; a
\code{sev} other than \code{"warning"} or \code{"fatal"}.

}
\section{Ready-made validation rules (\code{rulelib})}{

Constructors for the checks most schemas need, each returning a
\code{\link[=rul]{rul()}} that
\code{\link[=valrules]{valrules()}} evaluates. Use
\code{\link[=rul]{rul()}} directly for anything not covered here. Writing the common
checks once, here, avoids the off-by-one or the forgotten \code{NA} that
makes a hand-written rule pass silently, and gives every failure a
readable message and the rows that failed.


What each rule checks:
\itemize{
\item \code{ruleinset()}: each value, compared as text, is one of
\code{set} (so \code{1} and \code{"1"} match). Name
\code{"<column>_in_set"}.
\item \code{rulebtw()}: each value lies in \code{[lo, hi]}, ends
included. Name \code{"<column>_between"}.
\item \code{rulenull()}: no value is \code{NA}. Name
\code{"<column>_not_null"}.
\item \code{ruleuniq()}: no value repeats an earlier one; the rows
reported are the repeats, not the first occurrence. Two \code{NA}s count
as a repeat. Name \code{"<column>_unique"}.
\item \code{rulerx()}: each value, as text, matches \code{pattern}
(an extended regular expression, \code{grepl()}). Name
\code{"<column>_regex"}.
\item \code{ruleincr()}: the column never decreases from one row to
the next (or always increases, with \code{strictly = TRUE}); missing
steps are skipped. A whole-column check: a failure names no rows. Name
\code{"<column>_increasing"}.
\item \code{rulemad()}: each value lies within \code{n}
median absolute deviations (scaled by 1.4826, so comparable to standard
deviations for normal data) of the column's median. When the MAD is zero
(more than half the values equal) any value other than the median fails.
The column must be numeric when the rule is evaluated. Name
\code{"<column>_within_mads"}.
\item \code{rulecmpl()}: no row has a missing value. Name
\code{"complete_rows"}.
\item \code{ruledstn()}: no row repeats an earlier one on
\code{cols} (columns not in the data are ignored; when none is
present the rule passes). Name \code{"distinct_rows"}.
\item \code{rulecolcnt()}: the data have exactly \code{n} columns.
Name \code{"col_count"}.
}
The name is the key of the rule's entry in the list
\code{\link[=valrules]{valrules()}} returns, which holds only the rules
that failed (with
\code{sev}, \code{message}, and for row-wise rules \code{n_failed}
and \code{rows}). A rule that cannot be evaluated (a missing column, text
in a numeric rule) is reported as failed, with the reason in its message.

Errors, at construction: \code{col} not a single non-empty string;
\code{sev} other than \code{"warning"} or \code{"fatal"};
\code{rulebtw()} with \code{lo > hi} or a missing bound;
\code{rulemad()} with \code{n} not positive;
\code{rulecolcnt()} with \code{n} not a non-negative whole number.

\code{NA} handling is explicit and per-rule, because the right answer
differs. \code{rulenull()} exists precisely to fail on \code{NA}.
The value rules ( \code{ruleinset}, \code{rulebtw},
\code{rulerx}, \code{rulemad}) treat \code{NA} as PASSING
by default, so that a column's missingness is reported once by
\code{rulenull()} or \code{max_missing_fraction} rather than again
by every other rule; set \code{napass = FALSE} to make them fail on it
instead.

}
\section{Apply Schema Validation, Stopping on Fatal Issues (\code{schval})}{

Runs \code{\link[=valsch]{valsch()}} (or, for a list of rules,
\code{\link[=valrules]{valrules()}}) and
acts on the result: the first fatal issue stops with an error, and every
warning-severity issue is raised as an R warning. Put it at the top of an
analysis script so that a re-released file with a missing column stops
the run before any result is computed.


Issues are handled in the order the validator returns them; a fatal issue
stops at once, so warnings after it are not raised. With a list of rules
the same contract applies to each rule's \code{severity}.

Unlike \code{\link[=valsch]{valsch()}}, this function refuses to
check against
nothing, because a validation that checks nothing must not report success.
Errors: \code{dfraw} not a data frame; \code{prov} a data frame;
\code{prov} \code{NULL} or an empty list; a list that mixes rules
with other elements; an unnamed list that is not all rules; something
other than a list; a provenance list with no \code{schema} element (the
message names the elements it has, so a typo such as \code{scheme}
shows); an empty schema (\code{list(schema = list())}).

}
\section{Compute a File's SHA256 Digest (\code{sha256file})}{

Returns the SHA-256 digest of a file as a lowercase hex string. A
digest is a 64-character fingerprint of the file's exact bytes: any
change to the file, even one byte, gives a different digest, so
recording it when data are downloaded and checking it later shows
whether the file used in an analysis is the one that was recorded. The
package uses it to record and verify data provenance in capsules and
manifests.


The digest is SHA-256 as specified in FIPS 180-4 (National Institute of
Standards and Technology, 2015), computed by the package's own compiled
core; it is identical to \code{digest::digest(file = path, algo = "sha256")}
and to the \code{sha256sum} command-line tool. The file is read in binary
mode, 8 MB at a time, so memory use stays at one chunk whatever the
file's size, and line endings or encodings are never altered. A file
larger than one chunk shows a byte-progress bar on stderr after 0.75 s
when a person is watching (an interactive session, or
\code{options(morie.progress = TRUE)}); \code{options(morie.quiet = TRUE)} silences
it. Hashing runs at roughly 100 MB a second or faster.

When this file is sourced on its own inside a capsule bundle (outside
the package), the same digest comes from base R's
\code{tools::sha256sum()} (R 4.5.0 and later) or else from the bundle's
pure-R SHA-256 implementation, which reads the file 1 MB at a time (slow
on a large file, but in constant memory).

Refusals: anything other than a single string naming an existing
regular file -- a missing path, a directory, \code{NA}, a number or a vector
of several paths -- stops with \code{"sha256file: <path> is not a file"}.

}
\section{Convert a human-readable SIU report date to ISO format (\code{siudate})}{

Turns the written-out dates found in SIU reports, in English or French,
into ISO \code{YYYY-MM-DD} strings that sort and convert with
\code{as.Date()}. \code{"January 5, 2023"}, \code{"January 5 2023"},
\code{"5 January 2023"} and \code{"5 janvier 2023"} all become
\code{"2023-01-05"}.


Each element is parsed by the native core. Month names may be English or
French (accents optional), full or abbreviated, before or after the day;
ordinals such as \code{"1er"} are accepted, and an ISO date is passed
through. A date that does not exist (\code{"February 30, 2023"}) or text
that is not a date gives \code{""}. \code{NA} stays \code{NA}.

Error: \code{x} that is neither character nor all \code{NA} (\dQuote{x must
be a character vector of dates}).

}
\section{Fetch an Ontario SIU director's report by drid (\code{siufetch})}{

Downloads the web page of one director's report of the Ontario Special
Investigations Unit (SIU), the agency that investigates police
interactions that end in death, serious injury or sexual-assault
allegations, and saves its HTML to \code{dest}. Reports are identified by
their \code{drid} number. If the live site does not answer, a copy from
the Wayback Machine is used. This is the fetch step of the open SIU
corpus pipeline: pair it with the SIU parser in this package
(\code{\link{siufprs}} fetches and parses in one call;
the compiled core under \code{src/siu_*.cpp} is the canonical
implementation, and \pkg{rmorie} links to the same core) to rebuild the
director's-report corpus yourself.


The URL fetched is
\preformatted{
https://www.siu.on.ca/<lang>/directors_report_details.php?drid=<drid>
}
through \code{\link{blfetch}}, which tries the live page first and falls back
to a Wayback Machine snapshot (the one given in \code{wb}, or one it looks
up).

Network: one or more HTTPS requests to www.siu.on.ca and, on failure,
web.archive.org. Side effect: writes \code{dest}.

Errors, before any request: \code{drid} not one positive whole number
(\code{1.5} is refused rather than read as report 1); \code{lang} not
\code{"en"} or \code{"fr"}; \code{dest} not a single non-empty string.
Then any error from \code{blfetch()}, for example when neither
the live page nor an archived copy can be reached.

}
\section{Fetch and parse one SIU director's report (\code{siufprs})}{

In one call, downloads one director's report from the SIU web site with
\code{\link[=siufetch]{siufetch()}} and parses it with \code{\link[=siuprs]{siuprs()}}.
It is meant for loops over many
report ids: a report that
cannot be retrieved gives \code{NULL} and a message instead of stopping
the loop.


The arguments are checked before any network use, so a bad id or
language fails at once. The report is downloaded to a temporary file,
which is deleted on exit. Any error from the download (network failure,
an HTTP error, no report at that id) is caught and turned into a message
of the form \code{"bricklayer: could not fetch SIU report <drid>: <reason>"}
and a \code{NULL} return. Errors from parsing are not caught.

Errors: \code{drid} that is not one positive whole number;
\code{lang} other than \code{"en"} or \code{"fr"}.

}
\section{Parse an SIU director's report into the schema fields (\code{siuprs})}{

Extracts every \code{\link[=siusch]{siusch()}} field
from the HTML of an
Ontario SIU director's report: the police service, the incident,
notification and decision dates, the investigator and witness counts,
the affected person's age and sex, the injuries, the legislation
considered and the director's name. The extraction is rule-based,
deterministic and offline, so the same report always gives the same
answer; use it to turn a folder of saved reports into a data set.


The text is first converted as in
\code{\link[=siutxt]{siutxt()}}, then the
report language is detected from section headings (English or French;
the SIU publishes both) and each field is read by its own rule set in
the native core. Dates are converted with the same rules as
\code{\link[=siudate]{siudate()}}. The
subject-official count uses the rules
of \code{\link[=siuso]{siuso()}}. Fields the
report does not state come
back as \code{""}; a page that is not a report gives all fields
\code{""} and \code{_language} \code{"unknown"}.

A single string with no \code{<} that is shorter than 1000 bytes and
names an existing file is read as a path. A string that looks like a path
(ends in \code{.htm}/\code{.html} or contains a slash) but names no file is
an error, not an empty report.

Errors: \code{html} not character, empty or \code{NA}; a missing file
(\dQuote{no such file}); input over 2 MiB.

\subsection{Limits}{

The input is capped at 2 MiB (a report page is a few hundred KB). Before
the text is read, a line longer than 2000 characters is split at the
sentence end nearest the cap (else at a space), and a warning says how
many lines were split: a field that spans a split may be incomplete.
}
}
\section{The panel-reviewed SIU report field schema (\code{siusch})}{

Returns the sixteen fields that the package extracts from every Ontario
Special Investigations Unit (SIU) director's report, with a one-line
description of each. Use it to see what
\code{\link[=siuprs]{siuprs()}} returns,
to build an empty coding sheet for hand review, or to check which fields
are counts before summing them across reports.


The schema is held in the native core (src/siu_schema.h) and is the same
list that \code{\link[=siuprs]{siuprs()}} fills. Three
fields are dates in ISO
\code{YYYY-MM-DD} form, five are counts and the rest are free text.
Count-type fields (\code{count = TRUE}) count distinct entities, and
zero is a real answer: a witness-official-only investigation has zero
subject officials. The function takes no arguments, reads no files and
uses no network.

}
\section{Resolve the subject-official count from SIU report text (\code{siuso})}{

Counts the subject officials (SO), the officers whose conduct the SIU
investigated, from the plain text of one report, and says which rule
gave the answer. Use it for reports where a model panel or a human coder
is unsure, so that the number is reproducible and its evidence can be
checked.


The standard SIU privacy paragraph and the witness-officer glossary
note are stripped first (both mention \dQuote{subject officer} without naming
one). The rules then run most-specific first and the first that applies wins:
\enumerate{ \item the roster under the \dQuote{Subject
Officials}/\dQuote{Subject Officers} heading: the larger of the highest
\code{SO #N} ordinal and the number of entries; \item the highest \code{SO
#N} ordinal in the whole document, trusted only when \code{SO #1} is also
present; \item a spelled-out or numeric plural (\dQuote{two subject
officials}); \item a singular subject official present (1); \item an explicit
statement that there was no subject official, or witness officials listed and
no subject official anywhere (0, a real answer); \item otherwise unresolved
(\code{NA}). } French reports use the same rules in their vocabulary (the
subject official is tagged \dQuote{AI no 1}, the witness official \dQuote{AT
no 1}).

This function is the pure rule set. For reports that already have a
panel-reviewed count, prefer that verified value; use these rules for
unreviewed reports.

Error: \code{text} that is not a single non-NA string.

}
\section{Convert SIU report HTML to plain text (\code{siutxt})}{

Strips the markup from one SIU director's report page and returns the
readable text, keeping line breaks so section headings (\dQuote{Subject
Officials}, \dQuote{Witness Officials}) stay on lines of their own. Use it
before \code{\link[=siuso]{siuso()}}, or to
read or search a saved report
without a browser.


The conversion runs in the native core: tags are removed, block-level
tags become line breaks, HTML entities are decoded and runs of spaces are
collapsed while newlines are kept. Nothing is fetched and nothing is
written.

Errors: \code{html} must be a single non-NA character string (\dQuote{html
must be a single non-NA character string}), and input over 2 MiB is refused
(\dQuote{html is larger than 2 MiB: not a report page}).

\subsection{Limits}{

The input is capped at 2 MiB (a report page is a few hundred KB). Before
the text is read, a line longer than 2000 characters is split at the
sentence end nearest the cap (else at a space), and a warning says how
many lines were split: a field that spans a split may be incomplete.
}
}
\section{The hosted MORIE services, as the project site currently describes them (\code{svcs})}{

Reads \code{https://rmorie.com/.well-known/morie-services.json}, a signed
document naming the curated-data service and its sign-in: their
endpoints, whether each is \code{"key"} (reachable with a key requested on
the site) or \code{"off"}, and a notice.
The signature (ML-DSA-44, public key pinned in this package) is checked
before anything in it is believed, so the endpoints can move or be
switched off on the site without a package release, and a document that
does not verify is ignored. The result is cached for a day; without a
network the cached copy is used, then the copy bundled with the package.


Every other MORIE package reads the same document through this function,
so one sign-in and one document serve rmorie, rmoriedata and morie alike.
Language models are never hosted: you bring your own key or model
(\code{\link{llmask}}). The \code{llm} block of documents
signed before that change carries the sign-in address only.

The environment variable \code{MORIE_SERVICES_URL} points the fetch at a
mirror of the document (its signature is fetched from the same place, with
the suffix \code{.sig}); the signature check is unchanged, so a mirror can
only serve a document the project signed.

The order of resolution: a cached copy younger than \code{maxage} (unless
\code{refresh}); the live document, fetched through the package's own
checked transport (public https only, at most 1 MiB), verified, and kept
only when it is not older than the copy already held or the bundled copy
(an older signed document is a rollback and is refused); the stale cached
copy; the bundled copy; and finally a document with every mode
\code{"off"}. A cached copy no newer than the bundled one is not used, and
one that is older is deleted. Network failures are not errors: they fall
through to the next copy.

Side effects: an accepted live document and its signature are written as
\code{morie-services.json} and \code{morie-services.sig} to the folder
\code{tools::R_user_dir("rmoriebricklayer", "cache")}. The result is
also kept for the session, so later \code{offline = TRUE} calls (which the
rest of the package makes) return it without checking the signature again.

Errors: \code{refresh} or \code{offline} not \code{TRUE} or \code{FALSE};
\code{maxage} not a single non-negative number; \code{tmout} not a
single finite number of at least 1.

}
\section{Transliterate Text to Plain ASCII (\code{toascii})}{

Converts a character vector to plain 7-bit ASCII, transliterating
accented or non-Latin characters to their nearest ASCII equivalent (for
example, an accented capital A becomes a plain \code{"A"}). Falls back to
dropping any character that has no transliteration. This is the
deterministic \code{"fallback"} used by
\code{\link[=asciifb]{asciifb()}}. Use it for destinations that accept
only ASCII --
a package \code{DESCRIPTION}, a file name, a legacy system -- so a name
written with an accented letter arrives with the plain letter rather
than as an encoding error or a question mark.


Bytes that are not valid UTF-8 at all (a mislabelled file) are dropped
first. Then, when the \pkg{stringi} package is installed, the ICU
transform \code{"Any-Latin; Latin-ASCII"} romanises any script and folds
accents (Cyrillic, Greek and Chinese become Latin letters). Without
\pkg{stringi}, a fixed table folds the common Latin accents and
ligatures (sharp s to \code{"ss"}, the ae ligature to \code{"ae"}, thorn to
\code{"th"} and so on) and
every other non-ASCII character is dropped, so non-Latin scripts
disappear rather than being romanised. Either way the result is then
stripped of anything outside the printable ASCII range (space to
tilde), so control characters such as newlines and tabs are removed
too. The result never depends on the session's locale.

A missing value becomes \code{""}; non-character input is converted with
\code{\link[=as.character]{as.character()}} first (so numbers pass through as their
digits).

}
\section{Encode an R object as JSON (jsonlite's toJSON, natively) (\code{tojs})}{

Converts R data (vectors, lists, data frames, matrices, dates, factors)
to JSON text, with the same options, the same defaults and the same bytes
out as jsonlite's \code{toJSON()}, but computed by this package's own
code, so manifests, provenance records and capsules can be written where
jsonlite is not installed and their digests stay the same either way. Use
it to write data for an API or a person; use
\code{\link[=jsser]{jsser()}}
when the JSON must rebuild the exact R object (classes, factor levels,
attributes).


Atomic vectors become arrays, so a single value is \code{[1]} unless
\code{auto_unbox = TRUE}. Named lists become objects and unnamed lists
arrays. Missing values follow jsonlite: with \code{na} not given, a
missing number is written as the string \code{"NA"} and a missing string
or logical as \code{null}; in a data frame by rows a missing value is
left out of its record.

Further options of \code{toJSON()} are taken through \code{...}:
\code{rownames}, \code{keep_vec_names}, \code{json_verbatim},
\code{always_decimal}, \code{time_format}, \code{UTC}, \code{no_dots},
\code{hms} (\code{"string"} or \code{"secs"}), and two of this package's
own: \code{keep_empty_names} (an empty-string key is written as
\code{""} rather than replaced by its position) and
\code{quiet_vec_names} (no message when \code{keep_vec_names} is used).
\code{\link[=mnfcanon]{mnfcanon()}} uses both.

Errors: an option value not among its choices (the message lists them);
an object with no JSON form (a function, a symbol) unless
\code{force = TRUE}.

}
\section{The Call to Action 19 health gaps, in one place (\code{trchlthgap})}{

For each health indicator of Call to Action 19 that the published tables
measure, each group's estimate against non-Indigenous people's, with its
interval, turned into one scale, the disadvantage ratio: the factor by which
the group's outcome is worse (above
\enumerate{
\item or better (below 1).
}


The gaps come from \code{\link{indgap}} on the latest period of each
table, with \code{ref} (non-Indigenous people) as the reference. To put
years, rates and percentages on one scale, each gap is given as a ratio
oriented by the indicator's better direction (\code{\link{trcind}}): the
group's estimate over the reference's where lower is better (infant
mortality, chronic conditions), the reference's over the group's where higher
is better (life expectancy, good mental health, a regular provider): \deqn{D
= \hat\theta_g / \hat\theta_r \ \textrm{(lower is better)}, \qquad D =
\hat\theta_r / \hat\theta_g \ \textrm{(higher is better)}.}{D = g / r (lower
is better), D = r / g (higher is better).} It is a ratio of the published
estimates, not a relative risk: for life expectancy, D = 1.1 means the
reference lives 10\% longer, not that the group's risk is 10\% higher. Above 1
the group fares worse; the interval is the published one carried through
(\code{indgap}'s log-scale interval, inverted where needed). The difference
on the indicator's own scale is kept beside it.

This is a description of gaps that Call 19 asks to be closed, measured as the
surveys measure them; it is not a ranking of peoples. Report it with the
trends (\code{\link{healchg}}) and the strengths (\code{\link{welprof}}) that
sit beside it.

Each table is in the long layout of \code{\link{scests}} (or
\code{indiex()}): columns \code{group}, \code{indicator} or \code{measure},
\code{period}, \code{estimate}, \code{lower}, \code{upper}, \code{quality},
and \code{age} for the health and suicidal-ideation tables (the all-ages
total is used). The latest period with estimates is taken. Table 41-10-0021
publishes Indigenous groups only, so it adds a gap only when given a table
with \code{ref} rows.

}
\section{The indicators of Calls to Action 19 and 55, and the tables that measure them (\code{trcind})}{

Call to Action 19 asks the federal government to \dQuote{establish measurable
goals to identify and close the gaps in health outcomes between Aboriginal
and non-Aboriginal communities, and to publish annual progress reports and
assess long-term trends}, focusing on \dQuote{infant mortality, maternal
health, suicide, mental health, addictions, life expectancy, birth rates,
infant and child health issues, chronic diseases, illness and injury
incidence, and the availability of appropriate health services}. Call to
Action 55 asks for annual data on, among others, \dQuote{the number of
Aboriginal children--including Metis and Inuit children--in care, compared
with non-Aboriginal children} and \dQuote{the educational and income
attainments of Aboriginal peoples in Canada compared with non-Aboriginal
people}. This lists, for each indicator, the Statistics Canada tables at the
data service (or the census profile) that measure it, the measure, and which
direction is better.


The list is a map of what the published tables can measure, not a
judgement of what the Calls require: maternal health is measured here only
through birth outcomes in Inuit regions, and several indicators (addictions,
the availability of services) only through proxies. The direction is the
direction of better health for the people measured.

}
\section{Apply declared rules to a data frame (\code{valrules})}{

Evaluates each rule from \code{\link[=rul]{rul()}} on a data frame and returns the
failures in the same shape \code{\link[=valsch]{valsch()}} uses, so
the two can be
combined and handed to
\code{\link[=schval]{schval()}} together. Use it
each
time a data set is refreshed, to see which of its own invariants still
hold.


A rule whose column is absent is SKIPPED rather than failed -- a missing
column is \code{\link[=valsch]{valsch()}}'s business, and reporting
it twice buries
the real finding. A rule that ERRORS is reported as a failure naming the
error, never swallowed: a rule that cannot run has not passed. On a table
of no rows a row-wise rule has no row to fail and passes.

How a rule's result is read: a result that is not logical, or has length 0,
is a failure (\code{"rule returned <class>, not a logical"}); a single value
fails unless it is \code{TRUE} (so \code{NA} fails); a longer vector is read
row by row, and rows that are \code{FALSE} or \code{NA} fail (a rule that
cannot decide has not been satisfied). The length of a row-wise result is not
checked against the number of rows. The issue is named by the rule's
\code{name}; two rules with the same name keep only the later failure. Rules
run in the order given and only read the data.

Errors: \code{data} not a data frame (or with missing or duplicated
column names); \code{rules} not a rule or a list; an element that is not
a rule.

}
\section{Validate a Data Frame Against a Provenance Schema (\code{valsch})}{

Checks a data frame against the \code{schema} block of a provenance
record: required columns, row-count bounds, column types, numeric ranges,
missingness and allowed category values. It returns the problems it
finds instead of stopping, so the caller can log them, show them, or pass
the same schema to \code{\link[=schval]{schval()}},
the wrapper that turns
them into errors and warnings. Use it each time a file is re-downloaded,
to catch a re-release that renamed, retyped or recoded a column.


Every schema field is optional and is checked only when present, so a
schema written for an earlier version keeps working unchanged.

This is the STRUCTURAL check -- names, types, bounds, value sets. It
cannot tell you that a column kept its name, type and range while its
distribution moved; \code{\link[=cpsdrft]{cpsdrft()}} answers that. Rules
that are
particular to a data set (an age must be non-negative, two dates must be
ordered) belong in \code{\link[=rul]{rul()}} and
\code{\link[=valrules]{valrules()}}.

The checks, and the name of the issue each one adds: \itemize{ \item a
missing \code{expected_columns} entry: \code{missing_columns},
\code{"fatal"}; \item fewer than \code{min_data_rows} rows:
\code{row_count_low}; \item more than \code{max_data_rows} rows:
\code{row_count_high}; \item a column whose class differs from
\code{expected_types}: \code{type_<col>}. \code{integer}, \code{numeric} and
\code{double} are one family, and so are \code{character} and \code{factor};
\item non-missing values outside \code{numeric_ranges} (inclusive bounds;
non-numeric columns are skipped): \code{range_<col>}; \item a share of
\code{NA} above \code{max_missing_fraction}: \code{missing_<col>}; \item
values not in \code{expected_value_sets}: \code{unexpected_<col>}. } A column
that a check names but the data lack is skipped by that check. Only the
\code{expected_columns} check reports such a column. All of these are
\code{"warning"} except \code{missing_columns}.

The schema itself is checked too. An empty schema (\code{list()}) gives
one \code{schema_empty} warning. An unknown field name within three edits
of a known one (\code{expected_colums}) is \code{"fatal"}, because it
would otherwise be ignored silently; any other unknown name is a warning.
An unknown structural invariant one edit, or one swap of neighbouring
letters, away from \code{min_data_rows} or \code{max_data_rows} is fatal;
other invariant names are left alone. \code{expected_dtypes} is accepted
as another name for \code{expected_types}, and \code{synthetic_recipe} is
a known field that is not checked here.

Errors: \code{dfraw} that is not a data frame; a \code{schema} that is
not a list. A \code{prov} that is \code{NULL} or has no
\code{schema} returns an empty list (use
\code{\link[=schval]{schval()}} to
make that an error).

}
\section{Verify recoded category counts against the counts a release published (\code{vrfmrg})}{

Compares the number of rows per category after a recode with the counts
the data source published for those categories (for example the
frequency table in a codebook or a statistical release). If they disagree,
it tries every reordering of the labels and names the one under which the
observed counts would match, which is the signature of labels attached to
the wrong groups. Use it after decoding or recoding a column whenever
published totals exist.


For each label \eqn{l} in \code{names(published)} the observed count is
\eqn{n_l = \sum_i 1[x_i = l]} (missing values excluded). The counts match
when \eqn{|n_l - p_l| \le} \code{tol} for every label.

On a mismatch, and when there are at most 7 labels, the function searches
the \eqn{k!} permutations of the labels (5040 at \eqn{k = 7}) for the
first non-identity one under which the observed counts match the
published counts, and names it in the message. With more than 7 labels no
search is done and \code{permutation} is \code{NULL}. Several
permutations can match when counts are tied; only the first is reported.

A label that occurs in \code{x} but not in \code{pub} is always a
failure (no permutation search). \code{pub} must be a named numeric
vector, otherwise an error.

}
\section{Prove a recode with a before/after cross-tabulation (\code{vrfrcd})}{

Checks, after the fact, that a recode did what you said it did. It
cross-tabulates the original values against the recoded ones and stops
with an error unless each original category went to exactly one new
category, that category is the one in your declared mapping, no rows were
lost or added, and no value became missing (or was filled in). Use it
directly after any recode, including recodes done by other code or other
software, to catch swapped groups before a model runs.


Factors are compared through their labels. The checks, in order:
\enumerate{ \item \code{orig} and \code{recd} are atomic and the same length;
\item \code{is.na(original)} equals \code{is.na(recoded)} element by element;
\item in the table of non-missing pairs, no original value has more than one
recoded value (the recode is a function of the label); \item each original
value's recoded value equals \code{declared[old]}; an original value that is
not a name of \code{decl} must be unchanged (identity). } The first failed
check is an error naming the offending categories.

}
\section{Verify a File's SHA256 Against an Expected Digest (\code{vrfsha256})}{

Computes the SHA-256 digest of a file and compares it with the digest
pinned in a provenance record, so a pipeline can tell whether the file it
downloaded is byte for byte the one the analysis was run on. A changed
file (a silent re-release, a truncated download, an edited copy) gives a
different digest.


The digest is computed by \code{\link[=sha256file]{sha256file()}}, the package's own
compiled
SHA-256 core (FIPS 180-4), reading the file in chunks. The expected
value is normalised before the comparison: a length-1 list (as
\code{\link[=loadprov]{loadprov()}} returns a pinned digest) is
unlisted, surrounding
spaces are trimmed and letters are lower-cased, so an upper-case digest
copied from a web page still matches. The function reports and does not
stop on a mismatch; the caller decides.

Errors: \code{path} that does not name a readable file;
\code{expsha} that is not exactly one non-NA value.

}
\section{Resolve a Wayback Machine snapshot URL (C++/libcurl) (\code{wbsnpnat})}{

Queries the Internet Archive \dQuote{available} API for the closest
archived snapshot of \code{url} and returns its address, or \code{NULL}
when nothing is archived. Use it to find an archived copy of a data file
or page that has moved or been removed. C++ backend; supersedes the older
R-level resolver \code{\link{wbsnpurl}}, which is kept for
the pure-R path and now parses with the package's own JSON codec.


\code{url} is only a query parameter of the lookup, never fetched, so a
plain \code{http://} page can be looked up; a local or private address is
still refused. One request is made to \code{https://archive.org/}; the
most recent snapshot is asked for (there is no timestamp argument; use
\code{\link[=wbsnpurl]{wbsnpurl()}} for one). Any network
failure, and a URL that was
never archived, give \code{NULL} rather than an error. A spinner is drawn
on stderr while waiting, unless \code{options(morie.quiet = TRUE)}.

Errors: \code{url} not a single non-empty string; a local or private
address.

}
\section{Resolve a Wayback Machine snapshot URL (\code{wbsnpurl})}{

Asks the Internet Archive which archived copy of a web address is closest
to a given time and returns a URL that downloads that copy. This is the
fetch failsafe the wider morie package family relies on: callers try the
live source first and fall back to the snapshot when the source is down,
has moved or has been taken offline.
\code{\link[=fdl]{fdl()}} uses it
automatically.


The function sends one request to the availability API,\cr
\code{https://archive.org/wayback/available?url=<url>[&timestamp=<ts>]},\cr
where the timestamp part is sent only when \code{ts} is given.

The answer's \code{archived_snapshots$closest} is read. When the API reports
an available snapshot its URL is returned, with \code{http://} rewritten to
\code{https://} and passed through the same public-URL check as every other
URL the package fetches. The timestamp is passed to the API as given; the API
accepts any prefix of \code{YYYYMMDDhhmmss} and returns the snapshot nearest
to it, before or after.

\code{NULL} is returned when the API has no snapshot, when the request
fails (offline, an HTTP error, invalid JSON) or when the answer has no
usable URL. Errors: \code{url} that is not a single non-empty string or
is not a public web address; \code{ts} that is not \code{NULL},
\code{""} or a string of 1 to 14 digits.
Nothing is written.

}
\section{Write and verify a recode manifest (\code{wrrcdmnf})}{

\code{wrrcdmnf()} saves a manifest from
\code{\link{rcdmnf}} as a JSON file. \code{vrfrcdmnf()}
reads such a file back and checks it against the data: that the mapping
and the manifest body are unchanged since they were written, that the
recode in the data still matches the recorded mapping, that the recoded
counts are the recorded counts, and, for a signed manifest, that the
signature verifies. Use the pair to hand a recode to a reviewer or to
re-check it before a later analysis.


\code{vrfrcdmnf()} collects every failure in \code{reasons}
instead of stopping at the first:
\itemize{
\item the SHA-256 of the stored mapping differs from \code{mapping_sha256};
\item the SHA-256 of the body (all fields except \code{body_sha256},
\code{signature} and \code{public_key}) differs from \code{body_sha256},
meaning the file was edited after it was written;
\item \code{\link{vrfrcd}(original, recoded, mapping)} fails;
\item the counts of \code{recoded} differ from \code{counts_after}.
}
The signature, when present, is checked with \code{\link{cpsvrf}}
over the stored \code{body_sha256}. It therefore proves who wrote that
hash; the body check above proves the body still matches it. Both are
needed for \code{ok = TRUE}.

\code{wrrcdmnf()} errors when \code{man} is not a
\code{bricklayer_recode_manifest}; it overwrites \code{path}.

}
\section{Write Text as UTF-8, Falling Back to ASCII on an Encoding Error (\code{wrtxtfb})}{

Writes \code{text} to \code{path} as UTF-8, one element per line. If the write
fails (for example a destination or locale that cannot represent the
characters), it retries with an ASCII transliteration produced by
\code{\link[=toascii]{toascii()}}, so capsule generation never fails on a non-ASCII
name.
Use it to write generated text files (README, citation, script) whose
content may include names with accents.


The lines are joined with \code{"\\n"}, a final newline is added, and the
UTF-8 bytes are written through a binary connection, so the bytes on
disk are UTF-8 whatever the session locale (a text connection would
re-encode from the native locale) and line endings are \code{"\\n"} on every
platform. An existing file is overwritten. A missing element is written
as the two letters \code{NA}, and an empty \code{text} writes a file holding a
single newline.

The ASCII retry is taken on any error from the first write, not only on
an encoding error; if the retry also fails (a directory that does not
exist, a read-only location), that error reaches the caller. A \code{path}
that is not a single non-empty string is refused before anything is
written (\code{"path must be a single non-empty string"}).

}
\section{Verify a categorical variable that crossed from one program to another (\code{xfrvrf})}{

Checks a categorical variable that was moved from SPSS, Stata or SAS into
R against what the source program reported for it. You give the frequency
table the source program printed (label = count) and, optionally, its code
book (code = label); the function decodes the imported vector and refuses
to continue unless it reproduces those counts exactly and its value labels
agree with the code book. Rotated, swapped or positionally relabelled
groups fail at import, with the permutation named.


Steps:
\enumerate{
\item When \code{imported} has a \code{labels} attribute and
\code{codebook} is given, the two are compared code by code; any
code whose label differs (or that is present in only one) is a
disagreement.
\item The vector is decoded: by its \code{labels} attribute
(\code{\link{declbld}}), else by \code{codebook}, else taken
as already-decoded labels.
\item The decoded labels are checked with
\code{\link{vrfmrg}} against \code{soucnts}.
}
With \code{strict = TRUE} the first disagreement is an error. With
\code{strict = FALSE} both checks run and are reported. A code without a
label is an error in either mode (from the decoding step).

}
\references{

Ostrom, B. J. and Hanson, R. A. (1999). \emph{Efficiency, Timeliness,
and Quality: A New Perspective from Nine State Criminal Trial Courts}.
National Center for State Courts, Williamsburg, VA. (Clearance rate and
time-to-disposition measures.)

Ulm, K. (1990). A simple method to calculate the confidence interval of
a standardized mortality ratio. \emph{American Journal of Epidemiology},
131(2), 373-375. (Exact limits for a ratio of Poisson counts through the
beta distribution.)


Simpson, E. H. (1951). The interpretation of interaction in contingency
tables. \emph{Journal of the Royal Statistical Society, Series B},
13(2), 238-241.

Kitagawa, E. M. (1955). Components of a difference between two rates.
\emph{Journal of the American Statistical Association}, 50(272),
1168-1194. DOI 10.2307/2281213

Das Gupta, P. (1993). \emph{Standardization and Decomposition of Rates:
A User's Manual}. U.S. Bureau of the Census, Current Population Reports
P23-186. Washington, DC.

Greenland, S. and Robins, J. M. (1985). Estimation of a common effect
parameter from sparse follow-up data. \emph{Biometrics}, 41(1), 55-68.

Demers, S. and Rossmo, D. K. (2015). Simpson's paradox in Canadian
police clearance rates. \emph{Canadian Journal of Criminology and
Criminal Justice}, 57(3), 424-434.
DOI 10.3138/cjccj.2014-E29


Indigenous Services Canada (2019). Report on trends in First
Nations communities, 1981 to 2016 (Community Well-Being index).\cr
sac-isc.gc.ca/eng/1345816651029/1557323327644


Statistics Canada (2023). Indigenous Population Profile, 2021
Census of Population. Statistics Canada Catalogue no. 98-510-X2021001.
Released June 21, 2023. Published at
www12.statcan.gc.ca/census-recensement/2021/dp-pd/ipp-ppa/index.cfm?Lang=E
(the site answers scripts with 403); the Wayback Machine holds a copy of that
address captured on 8 March 2026 (web.archive.org, snapshot 20260308015010).

Statistics Canada (2022). Guide to the Census of Population, 2021. Catalogue
no. 98-304-X.


Kumar MB, Tjepkema M (2019). Suicide among First Nations people,
Metis and Inuit (2011-2016): findings from the 2011 Canadian Census Health
and Environment Cohort (CanCHEC). Statistics Canada catalogue no.
99-011-X2019001.


Scott, D. W. (2015). \emph{Multivariate Density Estimation: Theory,
Practice, and Visualization}, 2nd ed. Wiley, Hoboken, NJ.

Wand, M. P. (1994). Fast computation of multivariate kernel estimators.
\emph{Journal of Computational and Graphical Statistics}, 3(4),
433-445.

Hyndman, R. J. (1996). Computing and graphing highest density regions.
\emph{The American Statistician}, 50(2), 120-126.

Chainey, S., Tompson, L. and Uhlig, S. (2008). The utility of hotspot
mapping for predicting spatial patterns of crime. \emph{Security
Journal}, 21(1-2), 4-28.


Goodman, L. A. (1965). On simultaneous confidence intervals for
multinomial proportions. \emph{Technometrics}, 7(2), 247-254.

Armitage, P. (1955). Tests for linear trends in proportions and
frequencies. \emph{Biometrics}, 11(3), 375-386.

Holm, S. (1979). A simple sequentially rejective multiple test
procedure. \emph{Scandinavian Journal of Statistics}, 6(2), 65-70.


Knox, E. G. (1964). The detection of space-time interactions.
\emph{Journal of the Royal Statistical Society, Series C (Applied
Statistics)}, 13(1), 25-30.

Mantel, N. (1967). The detection of disease clustering and a
generalized regression approach. \emph{Cancer Research}, 27(2),
209-220.

Johnson, S. D., Bernasco, W., Bowers, K. J., Elffers, H., Ratcliffe,
J., Rengert, G. and Townsley, M. (2007). Space-time patterns of risk: a
cross national assessment of residential burglary victimization.
\emph{Journal of Quantitative Criminology}, 23(3), 201-219.


Cutler, S. J. and Ederer, F. (1958). Maximum utilization of the life
table method in analyzing survival. \emph{Journal of Chronic
Diseases}, 8(6), 699-712.

Greenwood, M. (1926). \emph{The Natural Duration of Cancer}. Reports on
Public Health and Medical Subjects 33. HMSO, London.

Lee, E. T. and Wang, J. W. (2003). \emph{Statistical Methods for
Survival Data Analysis}, 3rd ed. Wiley, Hoboken, NJ. Chapter 4.


Koopman, B. O. (1946). Search and Screening. OEG Report 56,
Operations Evaluation Group, Office of the Chief of Naval Operations.

Koopman, B. O. (1956). The theory of search. I. Kinematic bases.
Operations Research 4(3), 324-346. DOI 10.1287/opre.4.3.324

Koopman, B. O. (1956). The theory of search. II. Target detection.
Operations Research 4(5), 503-531. DOI 10.1287/opre.4.5.503

Koopman, B. O. (1957). The theory of search. III. The optimum
distribution of searching effort. Operations Research 5(5), 613-626.
DOI 10.1287/opre.5.5.613

Frost, J. R. (1996). The Theory of Search: A Simplified Explanation.
Soza and Company and U.S. Coast Guard Office of Search and Rescue.

Stone, L. D. (1975). Theory of Optimal Search. Academic Press.


Statistics Canada (2022). Guide to the Census of Population,
2021, chapter 9 (data quality) and chapter 10 (confidentiality and random
rounding). Catalogue no. 98-304-X.

Wilson EB (1927). Probable inference, the law of succession, and statistical
inference. Journal of the American Statistical Association 22(158):209-212.
DOI 10.1080/01621459.1927.10502953


National Institute of Standards and Technology (2015).
Secure Hash Standard (SHS). FIPS PUB 180-4.
DOI 10.6028/NIST.FIPS.180-4


Truth and Reconciliation Commission of Canada (2015), see
\code{\link{trcind}}.


Truth and Reconciliation Commission of Canada (2015). Truth and
Reconciliation Commission of Canada: Calls to Action. Winnipeg. Government of
Canada catalogue IR4-8/2015E.
publications.gc.ca/collections/collection_2015/trc/IR4-8-2015-eng.pdf

}
\seealso{

\code{\link[=rptanl]{rptanl()}} writes the result as a
Markdown or HTML
report.


\code{\link[=toascii]{toascii()}}, which does the transliteration.


\code{\link{deccodes}}, \code{\link{grdlvls}},
\code{\link{xfrvrf}}.


\code{\link[=jsgzenc]{jsgzenc()}}, which composes this
with gzip.


\code{\link{blfetch}} for a download with a Wayback
Machine fallback.


\code{\link{lifetbl}}, \code{\link{dispmix}},
\code{\link{stkflow}} for custody populations.


\code{\link{caseflow}} for the clearance rate over time.


\code{\link{cwbscr}}.


\code{\link{profshr}}, \code{\link{cnsstd}},
\code{\link{cnscwb}}, \code{\link{indiex}}.


\code{\link{agestd}}, \code{\link{stdprev}}.


\code{\link{knoxtst}}, \code{\link{plmfld}} (the same
kind of surface, for an air pollutant).


\code{\link{declbld}}, \code{\link{grdrcd}},
\code{\link{audcats}}.


\code{\link{deccodes}}, \code{\link{relbl}},
\code{\link{xfrvrf}}


\code{\link{shrs}} for one period's shares with Wilson
intervals.


\code{\link{dlogin}}, \code{\link{svcs}}.


\code{\link[=ruledstn]{ruledstn()}},
\code{\link[=ruleuniq]{ruleuniq()}}


\code{\link[=tojs]{tojs()}} for the
reverse.


\code{\link{grdrcd}} to build an explicit indicator.


\code{\link{grdrcd}}, \code{\link{audcats}}.


\code{\link{vrfrcd}} to prove the recode,
\code{\link{grdlvls}} to fix the levels,
\code{\link{rcdmnf}} to record the chain.


\code{\link[=valsch]{valsch()}},
\code{\link[=cpsdrft]{cpsdrft()}} for the distributional
check the schema cannot make.


\code{\link[=tojs]{tojs()}},
\code{\link[=jsser]{jsser()}}
for an uncompressed form that keeps types and attributes.


\code{\link[=tojs]{tojs()}} for
plain data JSON, \code{\link[=csha256]{csha256()}} for
fingerprinting the result.


\code{\link{caseflow}}, \code{\link{lifetbl}},
\code{\link{dispmix}}, \code{\link{clrdcmp}},
\code{\link{crmdens}}, \code{\link{knoxtst}}.


\code{\link{crmdens}}.


\code{\link{caseflow}}, \code{\link{prsbands}}.


\code{\link[=misspat]{misspat()}} for which
columns are missing together,
\code{\link[=profcols]{profcols()}} for per-column rates.


\code{\link{mksyncsv}}.


\code{\link{mksyncol}}, \code{\link{vrfcps}}.


\code{\link{vrfmrg}}, \code{\link{rlblfrns}}.


\code{\link{cnsprof}}.


\code{\link{grdrcd}}, \code{\link{rlblfrns}},
\code{\link{declbld}}


\code{\link{vrfmrg}}, \code{\link{relbl}}.


\code{\link[=valrules]{valrules()}},
\code{\link[=valsch]{valsch()}} for the structural
checks that need no rules.


\code{\link[=rul]{rul()}} for an arbitrary predicate,
\code{\link[=valrules]{valrules()}} to evaluate them,
\code{\link[=infsch]{infsch()}} for the structural checks
that need no rules at all.


\code{\link[=csha256]{csha256()}} for the digest of a string or raw
vector held
in memory.


\code{\link{blfetch}},
\code{\link{siufprs}}


\code{\link{dlogin}}, \code{\link{dmnf}}.


\code{\link[=asciifb]{asciifb()}} to transliterate only when
needed,
\code{\link[=wrtxtfb]{wrtxtfb()}} to write text with an
ASCII retry.


\code{\link[=fromjs]{fromjs()}} for the
reverse,
\code{\link[=jsser]{jsser()}} for an exact
round trip.


\code{\link{trcind}}, \code{\link{indgap}}.


\code{\link{trchlthgap}}, \code{\link{trcprog}}.


\code{\link[=rul]{rul()}},
\code{\link[=valsch]{valsch()}},
\code{\link[=schval]{schval()}}


\code{\link[=infsch]{infsch()}} to derive a schema,
\code{\link[=cpsdrft]{cpsdrft()}} for the distributional
check, \code{\link[=schval]{schval()}}
to raise on the issues.


\code{\link{xfrvrf}}, \code{\link{rlblfrns}}.


\code{\link{grdrcd}}, \code{\link{rcdmnf}}.


\code{\link[=toascii]{toascii()}} for the retry's transliteration.


\code{\link{declbld}}, \code{\link{vrfmrg}},
\code{\link{rlblfrns}}

}
\examples{

\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
path <- system.file("extdata", "otis_a01_individuals.csv",
                    package = "rmoriebricklayer")
otis <- read.csv(path)
a <- anltab(otis, value = "individuals", prd = "year",
                   by = c("table", "group"))
a
a$change[, c("table", "group", "year", "pctchg", "padj")]
a$trend[, c("group", "tau", "trndp", "rateratio")]

# counts published rounded to base 5: the intervals widen
b <- anltab(otis, value = "individuals", prd = "year",
                   by = c("table", "group"), rnd = 5)
b$change[1:3, c("group", "year", "pctlo", "compctlo")]

# rates with an exposure column
d <- data.frame(year = rep(2019:2022, 2), site = rep(c("A", "B"), each = 4),
                n = c(10, 12, 15, 9, 30, 28, 35, 40),
                pop = rep(c(1000, 2000), each = 4))
r <- anltab(d, "n", "year", by = "site", pop = "pop", per = 1000)
r$ratechg[, c("site", "year", "rate", "rateratio", "padj")]

# a column that is not in the data is an error
try(anltab(otis, value = "count", prd = "year"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# By default valid UTF-8 is preserved (accents kept where supported).
asciifb("\u00c1ngela")               # "\u00c1ngela"

# force = TRUE always transliterates (for ASCII-only destinations
# such as a package DESCRIPTION).
asciifb("\u00c1ngela", force = TRUE)  # "Angela"

# Plain ASCII is returned unchanged either way.
asciifb("plain name")

# Vectorised; each element handled independently.
asciifb(c("caf\u00e9", "resume"), force = TRUE)

# Bytes that are not UTF-8 (a Latin-1 file read as UTF-8) are repaired.
bad <- rawToChar(as.raw(c(0x63, 0x61, 0x66, 0xe9)))
validUTF8(bad)
asciifb(bad)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# codes without labels, and a case-variant city name
a <- audcats(data.frame(
  race = factor(c("1", "2", "2", "3")),
  city = c("Toronto", "toronto", "Ottawa")[c(1, 2, 3, 3)]
))
a
attr(a, "clean")

# padded, empty and sentinel labels, and an unused level
audcats(data.frame(
  g = factor(c(" A", "A", "NA", ""), levels = c("", " A", "A", "NA", "B"))
))

# a clean frame; non-categorical columns are skipped by default
audcats(data.frame(sex = c("F", "M", "F"), age = c(31, 45, 27)))

try(audcats(1:3))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Round trip through the standard alphabet.
b <- jsb64enc("hello capsule")
b
rawToChar(jsb64dec(b))

# Raw input works the same way.
jsb64enc(charToRaw("abc"))
jsb64dec(jsb64enc(charToRaw("abc")))

# Padding appears when the length is not a multiple of three.
jsb64enc("a")
jsb64enc("ab")
jsb64enc("abc")

# The URL-safe variant has no "+", "/" or "=" to escape.
jsb64uenc(as.raw(c(255, 224, 63)))
jsb64enc(as.raw(c(255, 224, 63)))
jsb64udec(
  jsb64uenc("path/safe?yes")
)

# Long input is wrapped, and the decoder ignores the breaks.
long <- jsb64enc(strrep("x", 200))
grepl("\n", long)
rawToChar(jsb64dec(long)) == strrep("x", 200)

# A character outside the alphabet is refused, not skipped.
try(jsb64dec("ab$c"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# offline: a local file through the same routine
src <- tempfile(fileext = ".txt")
writeLines("hello", src)
dest <- tempfile(fileext = ".txt")
bldl(paste0("file://", src), dest, quiet = TRUE,
                    allowfile = TRUE)
readLines(dest)

# the safety checks run before any connection is made
try(bldl("http://example.org/table.csv", tempfile()))
try(bldl("https://127.0.0.1/table.csv", tempfile()))
try(bldl(paste0("file://", src), tempfile()))

# a real download needs the network
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
bldl("https://www.ontario.ca/some/open-data/table.csv",
                    "table.csv", maxbytes = 50e6)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Inputs are validated before any network access:
try(blfetch("", tempfile()))          # empty url -> error
try(blfetch("ftp://example.org/data.csv", tempfile()))
try(blfetch("https://127.0.0.1/data.csv", tempfile()))
try(blfetch("https://example.org/data.csv",
                     file.path(tempdir(), "no-such-dir", "data.csv")))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network
dst <- tempfile(fileext = ".xlsx")

# Live download; auto-resolves a Wayback snapshot only if the live URL fails.
blfetch(
  paste0(
    "https://www.cihi.ca/sites/default/files/document/",
    "hospital-beds-2024-2025-data-tables-en.xlsx"
  ),
  dst
)

# Pin an explicit Wayback snapshot to fall back to, and a shorter timeout.
blfetch(
  "https://example.org/rotated-file.csv",
  tempfile(fileext = ".csv"),
  wb = paste0(
    "https://web.archive.org/web/2024id_/https://example.org/rotated-fil",
    "e.csv"
  ),
  tmout = 60
)

# The return value tells you which source served the file.
status <- blfetch("https://cloud.r-project.org/", tempfile())
status # "live" or "wayback"
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- read.csv(system.file(
  "extdata",
  "ocj_flow_ontario.csv",
  package = "rmoriebricklayer"
))
cf <- caseflow(f$received, f$disposed, pend = f$pending, prd = f$month)
cf
plot(cf)

# without the pending count, a quarterly rolling window and 90\% intervals
cq <- caseflow(
  f$received,
  f$disposed,
  prd = f$month,
  win = 3,
  conflvl = 0.90
)
head(as.data.frame(cq)[, c("period", "clearance", "rolclr", "cumnet")])

# one value per period in every count
try(caseflow(c(100, 120, 90), c(95, 130)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
g <- read.csv(system.file(
  "extdata",
  "ocj_offence_groups.csv",
  package = "rmoriebricklayer"
))
g <- g[g$year \%in\% c(2014, 2022), ]
cd <- clrdcmp(g$disposed, g$received, g$offence_group, g$year)
cd
plot(cd)

# Simpson's paradox in four numbers: each part clears better in B, yet the
# aggregate falls, because B's workload moved to the part that clears less
toy <- clrdcmp(
  num = c(90, 20, 19, 60),
  den = c(100, 50, 20, 140),
  grp = c("minor", "serious", "minor", "serious"),
  cmp = c("A", "A", "B", "B")
)
toy

# every part must appear in both comparisons
try(clrdcmp(c(5, 6, 7), c(10, 10, 10), c("x", "y", "x"), c(1, 1, 2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- cnsprof(indiex("censuspop"))
h <- cnsprof(indiex("censushh"))
cnscwb(p, h)[, c("geo", "group", "income", "education", "housing", "labour",
                     "cwb")]
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- cnsprof(indiex("censuspop"))
head(p[p$characteristic == "Foster children" & p$geo == "Canada", ])
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- cnsprof(indiex("censuspop"))
cnsstd(p)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
b <- read.csv(system.file("extdata", "tps_break_enter_d14_2024.csv",
                          package = "rmoriebricklayer"))
kd <- crmdens(b$lon, b$lat, ngrid = 120)
kd
plot(kd)

# a fixed 300 m bandwidth on a coarser grid: a sharper surface
kd3 <- crmdens(b$lon, b$lat, bw = 0.3, ngrid = 60)
kd3$regions

# planar coordinates in metres
set.seed(2)
xy <- cbind(rnorm(200, sd = 500), rnorm(200, sd = 500))
crmdens(xy[, 1], xy[, 2], xy = "planar", ngrid = 40)$bandwidth

# longitudes and latitudes are checked
try(crmdens(c(-79.4, 200), c(43.7, 43.8)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# codes from a survey file with their code book
race <- c(1, 2, 2, 3, NA)
book <- c("1" = "White", "2" = "Black", "3" = "Indigenous")
deccodes(race, book)

# the dictionary that was applied is kept on the result
attr(deccodes(race, book), "recode_audit")$checksum

# a code with no label is refused, never passed through
try(deccodes(c(1, 2, 9), book))

# missing codes can be refused too
try(deccodes(race, book, keepna = FALSE))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- structure(c(1, 2, 2, 4),
               labels = c(White = 1, Black = 2, Other = 3, Unknown = 4))
declbld(x)

# plain codes with a code book; levels follow the codes 1, 2, 10
declbld(c(2, 1, 10), vlabs = c("10" = "Ten", "2" = "Two", "1" = "One"))

# codes alone are not categories
try(declbld(c(1, 2, 2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- read.csv(system.file("extdata", "ocj_dispositions.csv",
                          package = "rmoriebricklayer"))
mix <- dispmix(d[, -(1:2)], prd = d$year)
mix
plot(mix)

# the parts of the result
head(mix$shares)
mix$trend

# years as trend scores, so the gap where no row exists is respected
dispmix(d[, -(1:2)], prd = d$year, scores = d$year)$trend[, 1:3]

# outcome columns only: a text column is refused
try(dispmix(data.frame(year = c("a", "b"), x = 1:2, y = 3:4)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# offline: a local file through a file:// URL
src <- tempfile(fileext = ".csv")
writeLines(c("id,value", "1,10", "2,20"), src)
dest <- dldata(paste0("file://", src), tempfile(fileext = ".csv"),
  quiet = TRUE, allowfile = TRUE)
read.csv(dest)

# file:// is refused unless asked for, and so is an append mode
try(dldata(paste0("file://", src), tempfile()))
try(dldata("https://example.org/x.csv", tempfile(), mode = "a"))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network
dest <- dldata("https://cloud.r-project.org/",
  tempfile(fileext = ".html"),
  quiet = TRUE
)
file.exists(dest)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Offline, against a cache folder holding a manifest and one table made
# here (no key is stored and nothing is fetched).
oldenv <- Sys.getenv(c("XDG_CONFIG_HOME", "MORIE_HOSTED_KEY"), unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile())
Sys.unsetenv("MORIE_HOSTED_KEY")
cache <- file.path(tempdir(), "data-hub-example")
dir.create(cache)
old <- options(rmoriebricklayer.dcache = cache)
f <- file.path(cache, "demo__counts.csv.gz")
con <- gzfile(f, "w")
write.csv(
  data.frame(region = c("a", "b"), n = c(3L, 5L)),
  con,
  row.names = FALSE
)
close(con)
m <- list(
  datasets = list(list(
    key = "demo/counts",
    rows = 2,
    source = "an example",
    meta = list(description = "Counts by region"),
    sha256_gz = csha256(readBin(f, "raw", file.size(f)))
  ))
)
writeLines(tojs(m, auto_unbox = TRUE), file.path(cache, "manifest.json"))

dtabs()
dload("demo/counts")

# keys are checked against the manifest
try(dload("counts"))
try(dload("demo/other"))

# a cached file that no longer matches its digest is deleted and refused
writeBin(as.raw(1:10), f)
try(dload("demo/counts"))
file.exists(f)

options(old)
unlink(cache, recursive = TRUE)
for (v in names(oldenv)) {
  if (is.na(oldenv[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(oldenv[v]))
  }
}
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# the real service: needs a key and the network
dlogin(token = "sk-...")  # a key issued at www.rmorie.com/access/
head(dtabs())
df <- dload("chicago_crime/incidents")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
df <- data.frame(
  id = c(1, 2, 2, 3, 3, 3),
  value = c("a", "b", "b", "c", "d", "c"),
  stringsAsFactors = FALSE
)

# Duplicated on every column.
duprows(df)

# Duplicated on the identifier alone, which catches more.
duprows(df, "id")

# No duplicates gives zero rows, not an error.
duprows(data.frame(x = 1:3))

# a column that does not exist is an error
try(duprows(df, "code"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
src <- tempfile(fileext = ".csv")
writeLines(c("id,value", "1,10"), src)

# a successful download returns TRUE
fdl(paste0("file://", src), tempfile(fileext = ".csv"),
  attwb = "", allowfile = TRUE)

# a failed one returns FALSE with advice, here with the fallback off
fdl(paste0("file://", src, "-missing"), tempfile(),
  attwb = "", allowfile = TRUE)

# a refused URL is an error, not FALSE
try(fdl("http://example.org/data.csv", tempfile()))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network; the Wayback fallback is looked up on failure
ok <- fdl("https://cloud.r-project.org/",
  tempfile(fileext = ".html"))
ok
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
fromjs('[{"a":1,"b":"x"},{"a":2,"b":"y"}]')
fromjs('[[1,2],[3,4]]')

# no simplification: nested lists exactly as in the document
str(fromjs('{"a": [1, 2], "b": {"c": null}}', simplifyVector = FALSE))

# from a file
f <- tempfile(fileext = ".json")
writeLines('[{"a":1},{"a":2,"b":"x"}]', f)
fromjs(f)

# a large identifier kept exactly, as text
fromjs('[12345678901234567890]', bigint_as_char = TRUE)

# a repeated key is refused unless asked for
try(fromjs('{"a": 1, "a": 2}'))
fromjs('{"a": 1, "a": 2}', duplicate_keys = "keep")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
grdbin(c(0, 1, 1, 0, NA), "treated")
grdbin(c(TRUE, FALSE), "arrested")

# a factor is refused rather than coerced
try(grdbin(factor(c("control", "treated")), "treated"))

# so is a numeric column with other values
try(grdbin(c(0, 1, 2), "treated"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# reference category chosen on purpose, not by alphabet
g <- grdlvls(c("White", "Black", "White"), c("White", "Black"), "White")
levels(g)

# a declared level that does not occur is kept, with a zero count
table(grdlvls(c("a", "a"), c("a", "b")))

# a stray value, or a reference that is not first, is refused
try(grdlvls(c("White", "Blak"), c("White", "Black")))
try(grdlvls(c("White", "Black"), c("White", "Black"), ref = "Black"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# rename three codes
x <- c("W", "B", "O", "W", NA)
grdrcd(x, c(W = "White", B = "Black", O = "Other"))

# collapse two categories and let one pass through unchanged
off <- c("assault", "robbery", "theft", "fraud")
grdrcd(off, c(assault = "violent", robbery = "violent",
                    theft = "property"), keep = "fraud")

# a value with no mapping is an error
try(grdrcd(x, c(W = "White", B = "Black")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
df <- data.frame(
  id = 1:100,
  score = stats::runif(100, 0, 10),
  grade = sample(c("a", "b", "c"), 100, TRUE),
  note = paste0("free text ", 1:100),
  stringsAsFactors = FALSE
)

sch <- infsch(df)
sch

# The categorical column has its levels pinned; the free-text one does
# not, because it exceeds max_levels.
sch$expected_value_sets

# It validates the data it was learned from.
length(valsch(df, list(schema = sch)))

# And catches a column that has gone missing, or a new category.
length(valsch(df[, -3], list(schema = sch))) > 0
bad <- df; bad$grade[1] <- "z"
length(valsch(bad, list(schema = sch))) > 0

# no slack pins the exact observed range
infsch(df, slack = 0)$numeric_ranges$score

# a negative slack is refused
try(infsch(df, slack = -0.1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- list(rows = data.frame(id = 1:50, value = stats::runif(50)))

enc <- jsgzenc(x)
substring(enc, 1, 40)

# Smaller than the JSON it came from, because the keys repeat.
c(json = nchar(tojs(x)), gzipb64 = nchar(enc))

# Round trips.
identical(jsgzdec(enc)$rows$id, 1:50)

# Raw gzip bytes, for writing to a file.
bytes <- jsgzenc(x, raw = TRUE)
class(bytes)
identical(jsgzdec(bytes, raw = TRUE)$rows$id, 1:50)

# the bytes are ordinary gzip: a file any gzip tool can read
f <- tempfile(fileext = ".json.gz")
writeBin(bytes, f)
substr(readLines(gzfile(f), warn = FALSE), 1, 40)

# options pass through to the JSON writer and reader
jsgzdec(jsgzenc(list(a = 1, b = "x"), auto_unbox = TRUE),
                 simplifyVector = FALSE)

# text that is not a gzip member is refused
try(jsgzdec(jsb64enc("not gzip")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A factor survives the round trip with its levels intact.
f <- factor(c("b", "a", "b"), levels = c("a", "b", "c"))
back <- jsunser(jsser(f))
identical(back, f)

# So does a matrix, with its dimensions.
m <- matrix(1:6, nrow = 2)
identical(jsunser(jsser(m)), m)

# Plain data JSON does not keep either, which is the trade-off.
tojs(f)

# Nested lists, names and NULLs round trip too.
x <- list(a = 1:3, b = list(c = "x", d = NULL), e = TRUE)
identical(jsunser(jsser(x)), x)

# Doubles are rounded to `digits`; I(17) keeps them exact.
jsser(1/3)
exact <- jsser(1/3, digits = I(17))
identical(jsunser(exact), 1/3)

# The serialised form is JSON, so it can be pinned like any other text.
nchar(csha256(jsser(m)))

# A function is refused unless the JSON is trusted.
try(jsunser(jsser(function(x) x + 1)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- read.csv(system.file("extdata", "ocj_flow_ontario.csv",
                          package = "rmoriebricklayer"))
head(f)
c <- read.csv(system.file("extdata", "ocj_courts.csv",
                          package = "rmoriebricklayer"))
tapply(c$disposed, c$year, sum)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
b <- read.csv(system.file("extdata", "tps_break_enter_d14_2024.csv",
                          package = "rmoriebricklayer"))
b <- b[!is.na(b$lon), ]
kn <- knoxtst(b$lon, b$lat, as.Date(b$occ_date), spcbands = c(100, 200, 400),
                tmbands = c(7, 14, 28), nsim = 199, seed = 1)
kn
plot(kn)

# planar coordinates in metres and times in days, on simulated points
set.seed(5)
n <- 150
kp <- knoxtst(runif(n, 0, 2000), runif(n, 0, 2000), runif(n, 0, 365),
                spcbands = c(200, 400), tmbands = c(14, 28),
                nsim = 99, seed = 2, xy = "planar")
kp

# bands must increase
try(knoxtst(b$lon, b$lat, as.Date(b$occ_date), c(400, 100), c(7, 14)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- read.csv(system.file("extdata", "ocj_time_to_disposition.csv",
                          package = "rmoriebricklayer"))
f <- read.csv(system.file("extdata", "ocj_flow_ontario.csv",
                          package = "rmoriebricklayer"))
last <- nrow(d)
shares <- unlist(d[last, c("under_10", "m10_15", "m15_18", "over_18")])
lt <- lifetbl(c(0, 10, 15, 18, Inf), events = shares * f$disposed[last])
lt
plot(lt)

# bands given by their labels, with some cases still open, on the log scale
lt2 <- lifetbl(c("Under 10", "10-15", "15-18", "Over 18"),
                  events = c(600, 150, 60, 90), cens = c(40, 20, 10, 0),
                  conftype = "log")
as.data.frame(lt2)[, c("lower", "upper", "atrisk", "survival",
                       "conflo", "confup")]
attr(lt2, "median")

# an open band can only come last
try(lifetbl(c(0, Inf, 20), events = c(5, 5)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
provfile <- tempfile(fileext = ".json")
writeLines('{"dataset": {"title": "demo"}, "sha256": "abc"}', provfile)
prov <- loadprov(provfile)
prov$dataset$title
loadprov(file.path(tempdir(), "no-such-file.json")) # NULL

# arrays stay lists: unlist() them for a vector
writeLines('{"schema": {"expected_columns": ["id", "year"]}}', provfile)
p <- loadprov(provfile)
unlist(p$schema$expected_columns)
length(valsch(data.frame(id = 1, year = 2020), p))

# a directory is not a provenance file
try(loadprov(tempdir()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# inverse cube detection 0.5, 1 and 2 sweep widths off the track
ltrlrng(c(0.5, 1, 2), W = 1)
plot(ltrlrng(seq(-3, 3, by = 0.5), W = 2))

# the area under the curve is the sweep width
xs <- seq(-200, 200, by = 0.01)
swpwdth(xs, ltrlrng(xs, W = 1, model = "definite"))

# POD at coverage 1 under the three models
srchpod(1)
srchpod(c(0.5, 1, 2), model = "invcube")
plot(srchpod(c(0.5, 1, 1.5)))
# the book's M-Beta curves against random search and the definite range
plot(
  srchpod(1, "mbeta", m = 0.5),
  models = c("random", "definite", "mbeta"),
  m = c(0.5, 0.25)
)
# the expected curve under a navigation error as large as half the sweep
# width
plot(ltrlrng(0, W = 1, navsd = 0.5), equiv = TRUE)

# a parallel sweep at spacing 1.3 W, without and with navigation error
pswppod(1, 1.3)
pswppod(1, 1.3, navsd = 0.3, npts = 201)

# three areas searched once; the containment after finding nothing
srchscs(c(0.5, 0.3, 0.2), c(0.8, 0.5, 0))

# a point datum on a 10 x 10 grid, and the best use of 30 units of track
m <- datumpmap(seq(-5, 5), seq(-5, 5), sigma = 2)
plot(m)
plot(m, view = "both")
# the book's line datum: normal across the line, uniform along it
plot(
  datumpmap(0:10, seq(-3, 3, by = 1.2), "corridor", c(0, 0), end = c(10, 0)),
  view = "cells",
  digits = 1
)
a <- opteffort(m, W = 1, effort = 30)
a$pos
plot(a)
optcrcsrch(sigma = 2, W = 1, effort = 30)$pos

# your own search, step by step: a last known position 2 km east and 3 km
# north of the base, known to about 1.5 km, on a grid of 1 km cells
own <- datumpmap(seq(-3, 7), seq(-2, 8), center = c(2, 3), sigma = 1.5)
own
# 0.6 km sweep width; 12 km of track walked in each of the four cells round
# the position, none elsewhere
walked <- matrix(0, nrow(own$poc), ncol(own$poc))
walked[5:6, 5:6] <- 12
pd <- srchpod(W = 0.6, effort = walked, area = own, model = "invcube")
# the chance that search found the hiker, and the map if it did not
day1 <- srchscs(own, pd)
day1
# the best use of tomorrow's 40 km on what is left
day2 <- opteffort(day1$map, W = 0.6, effort = 40)
day2
plot(day1$map)

# inputs that cannot be right are refused
try(ltrlrng(1, W = -1))
try(srchpod(1, W = 0.6))
try(srchscs(c(0.8, 0.8), c(0.5, 0.5)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
df <- data.frame(a = c(1, NA, 3), b = c(NA, NA, 3), c = 1:3)
misssmry(df)

# A complete table is all zeros but for its dimensions.
misssmry(data.frame(x = 1:3, y = 4:6))

# a wholly empty column
ms <- misssmry(data.frame(x = 1:4, note = NA))
ms[c("pct_missing", "n_cols_all_missing")]

# a vector is not a table
try(misssmry(c(1, NA, 3)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
# "sample": categorical draw, optionally weighted.
mksyncol(list(
  type = "sample", values = list("a", "b"),
  weights = list(0.7, 0.3)
), 5)

# "bernoulli": two-label draw at probability p.
mksyncol(list(
  type = "bernoulli", p = 0.5,
  labels = list("Yes", "No")
), 5)

# "poisson": counts with a floor via min.
mksyncol(list(type = "poisson", lambda = 3, min = 1), 5)

# "id_pattern": templated IDs (the {seq:05d} token is zero-padded).
mksyncol(list(
  type = "id_pattern",
  pattern = "case-{seq:05d}"
), 3)

# ... numbered within each year of an earlier column
yrs <- c(2024, 2024, 2025)
unname(mksyncol(list(type = "id_pattern",
  pattern = "{year}-{seq:05d}", year_col = "year"), 3,
  ctx = list(year = yrs)))

# "fitted": draws from a distribution fitted by dstfit()
f <- dstfit(stats::rexp(100, 2), fams = "exponential", nboot = 0)
mksyncol(list(type = "fitted", fit = f), 4)

# "sequence": a running integer sequence from from.
mksyncol(list(type = "sequence", from = 100), 4)

# An unknown type errors.
try(mksyncol(list(type = "nope"), 3))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
recipe <- list(
  n_rows = 20, seed = 42,
  columns = list(
    year   = list(type = "sample", values = list(2024, 2025)),
    alert  = list(type = "bernoulli", p = 0.2),
    visits = list(type = "poisson", lambda = 3, min = 1),
    id     = list(type = "id_pattern", pattern = "p-{seq:05d}")
  )
)
out <- tempfile(fileext = ".csv")
res <- mksyncsv(recipe, out)
res$rows # 20
res$seed # 42 (reproducible)

# The written CSV round-trips and has the declared columns.
df <- utils::read.csv(out)
dim(df)
names(df)

# and the marker file says it is synthetic
file.exists(res$sidecar)

# nrows overrides the recipe's own row count.
mksyncsv(recipe, tempfile(fileext = ".csv"), nrows = 5)$rows

# one to three rows per person
recipe$row_replication <- list(values = list(1, 2, 3))
mksyncsv(recipe, tempfile(fileext = ".csv"), nrows = 5)$rows

try(mksyncsv("not a recipe", tempfile()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
tab <- matrix(c(900, 100, 700, 300, 400, 600),
  ncol = 2, byrow = TRUE,
  dimnames = list(c("A", "B", "C"), c("no", "yes"))
)
# the odds ratios as labelled: B 3.86, C 13.5
orchk(tab, "A", c(B = 3.857, C = 13.5))$consistent

# a report that swapped B and C
chk <- orchk(tab, "A", c(B = 13.5, C = 3.857))
chk$matches
chk$verdict

# every non-reference group needs a reported value
try(orchk(tab, "A", c(B = 3.857)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
sf <- stkflow(
  days = c(13500, 14600, 15100),
  people = c(300, 320, 310),
  prd = 2021:2023
)
plot(sf)
plot(sf, what = "alos", col = "firebrick", main = "Length of stay")
y <- yoy(
  data.frame(year = 2019:2023, n = c(400, 420, 390, 460, 450)),
  value = "n",
  prd = "year"
)
plot(y)
# small counts: each percentage carries its exact interval
plot(yoy(
  data.frame(year = 2019:2023, n = c(10, 12, 11, 15, 14)),
  value = "n",
  prd = "year"
))
plot(benfordtst(c(1, 12, 123, 1234, 2, 23, 3, 31, 4, 45, 5, 6, 7, 8, 9)))
plot(crfno2(25))
plot(co2fp(
  for (i in 1:20) {
    sum(sqrt(seq_len(2e5)))
  },
  loc = "CA",
  cpupwrw = 45,
  memgb = 8
))
# the courts and crime data shipped with the package
ext <- function(f) {
  read.csv(system.file("extdata", f, package = "rmoriebricklayer"))
}
fl <- ext("ocj_flow_ontario.csv")
plot(caseflow(fl$received, fl$disposed, pend = fl$pending, prd = fl$month))
td <- ext("ocj_time_to_disposition.csv")
open <- unlist(td[nrow(td), 2:5]) * fl$disposed[nrow(fl)]
plot(lifetbl(c(0, 10, 15, 18, Inf), open))
dm <- ext("ocj_dispositions.csv")
plot(dispmix(dm[, -(1:2)], prd = dm$year))
og <- ext("ocj_offence_groups.csv")
og <- og[og$year \%in\% c(2014, 2022), ]
plot(clrdcmp(og$disposed, og$received, og$offence_group, og$year))
be <- ext("tps_break_enter_d14_2024.csv")
be <- be[!is.na(be$lon), ]
plot(crmdens(be$lon, be$lat, ngrid = 60))
plot(knoxtst(
  be$lon,
  be$lat,
  as.Date(be$occ_date),
  c(100, 200, 400),
  c(7, 14, 28),
  nsim = 99,
  seed = 1
))
plot(hotpers(be$lon, be$lat, quarters(as.Date(be$occ_date)), cell = 0.3))
# rates, shares and the change in a rate
rt <- data.frame(
  division = rep(c("n", "e", "w"), 2),
  year = rep(2022:2023, each = 3),
  stops = c(120, 90, 60, 150, 85, 70),
  residents = rep(c(1e4, 8e3, 5e3), 2)
)
r23 <- rt[rt$year == 2023, ]
plot(rtcalc(r23, count = "stops", pop = "residents", by = "division"))
plot(shrs(r23, count = "stops", by = "division"))
plot(ratechg(
  rt,
  count = "stops",
  pop = "residents",
  prd = "year",
  by = "division"
))
# a rate over time, one panel per group
plot(
  rtcalc(rt, count = "stops", pop = "residents", by = c("division", "year")),
  period = "year"
)
# complex survey estimates by domain, and the differences between domains
set.seed(3)
sv <- data.frame(
  region = rep(c("north", "south", "east"), length.out = 300),
  smoker = rbinom(300, 1, 0.25),
  w = runif(300, 50, 150)
)
sd <- svydes(sv, w = "w", strata = "region")
plot(svyest(
  sd,
  sv,
  "smoker",
  by = "region",
  stat = "proportion",
  lvls = "1"
))
plot(svycmp(
  sd,
  sv,
  "smoker",
  by = "region",
  stat = "proportion",
  lvls = "1"
))
# a published table in one call: change, rates and rate change
tab <- data.frame(
  year = rep(2020:2023, each = 2),
  g = rep(c("a", "b"), 4),
  n = c(10, 20, 12, 22, 11, 25, 15, 24),
  pop = rep(c(1000, 2000), 4)
)
plot(anltab(tab, value = "n", prd = "year", by = "g", pop = "pop"))
plot(cnttrnd(c(21000, 23000, 22000, 25000, 24000)))
# banded tables
plot(bandsens(
  prsbands(c("0-17", "18-24", "25-44", "45+")),
  c(10, 20, 30, 40),
  caps = c(60, 70, 80, 90)
))
plot(pubbnd(c(10, 20), rnd = 5))
plot(rgncov(c("a", "b", "c"), c(100, 200, 300), c(1L, 0L, 2L)))
# drift between two extracts, and how often the test cries wolf
set.seed(1)
dd <- data.frame(a = rnorm(400), b = sample(letters[1:3], 400, TRUE))
dr <- cpsdrft(dd, transform(dd, a = a + 3))
plot(dr)
plot(dr, what = "columns")
plot(dr, what = "benford", warn = 0.05, fail = 0.2)
plot(dr, what = "ecdf")
plot(dr, what = "quantiles")
plot(dr, what = "fingerprint")
plot(drftcal(dd, n = 20L))
# describing a table
plot(freqtbl(data.frame(g = c("a", "b", "b", "c", "c", "c")), "g"))
plot(misspat(data.frame(a = c(1, NA, 3, NA), b = c(NA, NA, 1, 2))))
hw <- data.frame(h = rnorm(100), w = rnorm(100))
hw$h[1] <- 15
plot(mahaoutl(hw))
sq <- data.frame(a = 1:20, b = (1:20)^2, c = rev(1:20))
plot(topcors(sq))
plot(cortbl(sq))
# power and falsification of a statistic
xy <- data.frame(x = rnorm(60), y = rnorm(60))
shift <- function(z, s) {
  z$y <- z$y + s * z$x
  z
}
plot(cpspwr(
  xy,
  function(z) cor(z$x, z$y),
  inject = shift,
  trt = "x",
  sizes = c(0, 0.25, 0.5),
  n = 19,
  reps = 3,
  seed = 1
))
plot(cpsfals(xy, function(z) cor(z$x, z$y), trt = "x", n = 29, seed = 1))
# air pollution: burden, equity, and the full report
plot(polbrdn(25, 1, 0.008, 1e6, poll = "NO2"))
plot(expconcidx(
  data.frame(exposure = c(4, 1, 8, 2), income = c(2, 1, 4, 3)),
  "exposure",
  "income"
))
plot(vrfpol("no2", demo = TRUE))
plot(lagrprt(
  200,
  0,
  0,
  1,
  0.5,
  1,
  1,
  1,
  20,
  grid = c(-10, 40, -15, 25, 10, 8)
))
plot(plmfld(
  q = 100,
  u = 5,
  h = 50,
  x = seq(100, 2000, by = 100),
  y = seq(-300, 300, by = 50)
))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- cnsprof(indiex("censuspop"))
# children who are foster children, by province, First Nations, Metis, Inuit
# and non-Indigenous
fc <- profshr(p, "Foster children", "Total - Children in census families")
fc <- fc[
  fc$age == "0 to 14 years" &
    fc$group \%in\%
      c("First Nations", "M\u00e9tis", "Inuit", "Non-Indigenous"),
]
head(fc)
plot(fc[fc$geo == "Canada", ])
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c("W", "B", "W", "I")
map <- c(W = "White", B = "Black", I = "Indigenous")
y <- grdrcd(x, map)
m <- rcdmnf(x, y, map,
  pub = c(White = 2, Black = 1, Indigenous = 1),
  ctx = "example survey, race item"
)
m$checks
m$counts_after

# signed with an ML-DSA key
k <- fipskg("ML-DSA-44", seed = as.raw(1:32))
ms <- rcdmnf(x, y, map, key = k)
names(ms)

# a recode that does not match the published counts is refused
try(rcdmnf(x, y, map, pub = c(White = 1, Black = 2, Indigenous = 1)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- factor(c("W", "B", "O", "W"))
relbl(f, c(W = "White", B = "Black", O = "Other"))

# the level order follows the mapping, not the alphabet
levels(relbl(f, c(W = "White", O = "Other", B = "Black")))

# a kept label passes through
relbl(c("W", "B", "X"), c(W = "White", B = "Black"), keep = "X")

# positional labels are refused
try(relbl(f, c("Black", "Other", "White")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# the OHRC 2023 case: alphabetical labels assigned to codes 1-4
vl <- c("1" = "White", "2" = "Black", "3" = "Other", "4" = "Unknown")
obs <- c(White = "Black", Black = "Other", Other = "Unknown",
         Unknown = "White")
rlblfrns(vl, obs)

# a frequency-ordered relabel needs the counts
obs2 <- c(White = "White", Black = "Other", Other = "Black",
          Unknown = "Unknown")
rf <- rlblfrns(vl, obs2, cnts = c(White = 50, Black = 10,
                                             Other = 30, Unknown = 5))
rf$mechanism[rf$matches]

# observed must be a permutation of the labels
try(rlblfrns(vl, c(White = "Black")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
path <- system.file("extdata", "otis_a01_individuals.csv",
                    package = "rmoriebricklayer")
a <- anltab(read.csv(path), value = "individuals",
                   prd = "year", by = c("table", "group"))
md <- rptanl(a)
cat(substr(md, 1, 400))

# HTML, chosen from the file extension
out <- tempfile(fileext = ".html")
rptanl(a, out, title = "OTIS A01: individuals in custody", digits = 2)
readLines(out, n = 3)

# only an anltab() result can be reported
try(rptanl(read.csv(path)))
unlink(out)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Missing fields return NULL rather than erroring:
rslvarc(list())

# only https layer URLs are accepted
try(rslvarc(list(dataset = list(
  arcgis_layer_url = "ftp://example.org/FeatureServer/0"))))
try(rslvarc("not a list"))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network
prov <- list(dataset = list(arcgis_layer_url = paste0(
  "https://services.arcgis.com/S9th0jAJ7bqgIRjw/arcgis/rest/services/",
  "Neighbourhood_Crime_Rates_Open_Data/FeatureServer/0"
)))
rslvarc(prov)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Missing fields return NULL rather than erroring:
rslvckan(list())
rslvckan(NULL)

# the endpoint must be public https, checked before any request
prov <- list(
  dataset = list(
    ckan_api_endpoint = "http://localhost/api/3/action/package_show?id=x"
  ),
  resource = list(name_match_pattern = "2014")
)
try(rslvckan(prov))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network: asks data.ontario.ca for the current file URL
prov <- list(
  dataset = list(ckan_api_endpoint = paste0(
    "https://data.ontario.ca/api/3/action/package_show",
    "?id=ontario-public-library-statistics"
  )),
  resource = list(name_match_pattern = "2014")
)
rslvckan(prov)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Missing fields return NULL rather than erroring:
rslvckns(list())

# no endpoint to derive the portal from: NULL, no request made
rslvckns(list(resource = list(name_match_pattern = "2014")))

# a provenance must be a list
try(rslvckns("data.ontario.ca"))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network: searches data.ontario.ca
prov <- list(
  dataset = list(ckan_api_endpoint = paste0(
    "https://data.ontario.ca/api/3/action/package_show",
    "?id=ontario-public-library-statistics"
  )),
  resource = list(
    name_match_pattern = "2014",
    search_query = "public library statistics"
  )
)
rslvckns(prov)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Missing fields return NULL rather than erroring:
rslvsoc(list())
rslvsoc(list(dataset = list(socrata_domain = "data.cityofchicago.org")))

# a local host is refused before any request
try(rslvsoc(list(dataset = list(
  socrata_domain = "localhost", socrata_id = "abcd-1234"))))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network
prov <- list(dataset = list(
  socrata_domain = "data.cityofchicago.org",
  socrata_id = "ijzp-q8t2"
))
rslvsoc(prov)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# A column predicate, applied row-wise.
rul("agenonnegative", function(v) v >= 0, col = "age")

# A whole-column property.
rul("idunique", function(v) !anyDuplicated(v), col = "id",
     sev = "fatal")

# A table-level rule spanning two columns.
rul("datesordered", function(df) all(df$start <= df$end))

# with a message that says what a failure means
r <- rul("releaseafteradmission",
          function(d) all(d$release >= d$admission, na.rm = TRUE),
          msg = "a release date precedes its admission date")
r$message

# the predicate must be a function, not an expression
try(rul("agenonnegative", "age >= 0", col = "age"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
df <- data.frame(
  id = c(1, 2, 2),
  grade = c("a", "b", "z"),
  score = c(5, 200, 7),
  email = c("a@b.com", "nope", "c@d.org"),
  day = c(3, 1, 2),
  stringsAsFactors = FALSE
)

rules <- list(
  ruleuniq("id", sev = "fatal"),
  ruleinset("grade", c("a", "b", "c")),
  rulebtw("score", 0, 100),
  rulerx("email", "^[^@]+@[^@]+\\\\\\\\.[a-z]+$"),
  ruleincr("day")
)
names(valrules(df, rules))

# Each names the rows that failed.
valrules(df, rules)$grade_in_set$rows

# Clean data passes every one of them.
ok <- data.frame(
  id = 1:3,
  grade = c("a", "b", "c"),
  score = c(5, 50, 7),
  email = c("a@b.com", "c@d.org", "e@f.net"),
  day = 1:3,
  stringsAsFactors = FALSE
)
length(valrules(ok, rules))

# A robust outlier rule: MADs from the median, not standard
# deviations from the mean, so one wild value cannot hide the others.
valrules(
  data.frame(v = c(1, 2, 3, 2, 1, 900)),
  rulemad("v", 5)
)$v_within_mads$rows

# Whole-table rules.
valrules(df, ruledstn())
valrules(df, rulecolcnt(5))
valrules(df, rulecmpl())

# NA fails only when asked to
g <- data.frame(grade = c("a", NA, "b"))
length(valrules(g, ruleinset("grade", c("a", "b"))))
valrules(
  g,
  ruleinset("grade", c("a", "b"), napass = FALSE)
)$grade_in_set$rows

# bounds are checked when the rule is made
try(rulebtw("score", 100, 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
prov <- list(schema = list(expected_columns = "id"))
schval(data.frame(id = 1), prov)
# A missing required column is fatal:
try(schval(data.frame(x = 1), prov))

# a warning-level issue is raised as a warning and the result is FALSE
ranged <- list(schema = list(numeric_ranges = list(v = c(min = 0, max = 1))))
ok <- withCallingHandlers(
  schval(data.frame(v = c(0.5, 3)), ranged),
  warning = function(w) {
    message("warning: ", conditionMessage(w))
    invokeRestart("muffleWarning")
  }
)
ok

# rules work the same way
rules <- list(rul(
  "id_positive",
  function(v) v > 0,
  col = "id",
  sev = "fatal"
))
try(schval(data.frame(id = c(1, -2)), rules))

# a provenance without a schema is refused, not passed
try(schval(data.frame(id = 1), list(scheme = list())))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- tempfile()
writeLines("hello capsule", f)
sha256file(f)

# Deterministic: the same bytes always yield the same digest.
identical(sha256file(f), sha256file(f))

# Any change to the file changes the digest (tamper-evidence).
before <- sha256file(f)
writeLines("hello capsule (edited)", f)
after <- sha256file(f)
before == after      # FALSE

# Provenance pin: record a digest, verify it later.
pinned <- sha256file(f)
stopifnot(sha256file(f) == pinned)

# An empty file has the well-known empty-input digest.
e <- tempfile()
file.create(e)
sha256file(e)

# The file's bytes and the same bytes in memory hash alike.
identical(sha256file(f), csha256(readBin(f, "raw", file.size(f))))

# A directory or a missing file is refused.
try(sha256file(tempdir()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
siudate(c("January 5, 2023", "not a date"))

# French, day-first and impossible dates
siudate(c("5 janvier 2023", "5 January 2023", "February 30, 2023", NA))
as.Date(siudate("April 28, 2023"))

# numbers are refused
try(siudate(20230105))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# the report number is checked before anything is sent
try(siufetch(1.5, tempfile(fileext = ".html")))
try(siufetch(648, tempfile(fileext = ".html"), lang = "de"))

# a real fetch needs the network (the SIU site or the Wayback Machine)
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
dest <- tempfile(fileext = ".html")
siufetch(648, dest)
siufetch(648, tempfile(fileext = ".html"), lang = "fr")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# argument errors come before any network use
try(siufprs("abc"))
try(siufprs(648, lang = "de"))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network: downloads report 648 from the SIU site
f <- siufprs(648)
if (!is.null(f)) f[["police_service"]]
fr <- siufprs(648, lang = "fr")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- siuprs(system.file(
  "extdata",
  "siu_synthetic_report.html",
  package = "rmoriebricklayer"
))
f[["number_of_subject_officials"]]
f[c(
  "police_service",
  "date_of_incident_iso",
  "date_of_director_decision_iso"
)]

# several reports at once give a data frame, one row each
path <- system.file(
  "extdata",
  "siu_synthetic_report.html",
  package = "rmoriebricklayer"
)
html <- paste(readLines(path), collapse = "\n")
df <- siuprs(c(html, "<p>not a report</p>"))
df[, c("_language", "police_service", "number_of_witness_officials")]

# a mistyped path is an error, not an empty report
try(siuprs("no-such-report.html"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
s <- siusch()
s$name

# only the count fields
s[s$count, c("name", "description")]

# an empty hand-coding sheet with one column per field
sheet <- as.data.frame(setNames(
  replicate(nrow(s), character(0), simplify = FALSE),
  s$name
))
ncol(sheet)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
siuso(
  "Subject Officials\nSO #1 Interviewed\nSO #2 Declined interview")

# witness officials only: zero is the answer
siuso("Witness Officials\nWO #1 Interviewed\nWO #2 Interviewed")

# a spelled-out plural, and an unresolved text
siuso("Three subject officials were designated.")$count
siuso("No officers are named here.")

# HTML or several strings are not text
try(siuso(c("a", "b")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
siutxt("<p>Number of SIU Investigators assigned: 3</p>")

# the bundled synthetic report, as text
f <- system.file(
  "extdata",
  "siu_synthetic_report.html",
  package = "rmoriebricklayer"
)
txt <- siutxt(paste(readLines(f), collapse = "\n"))
cat(substr(txt, 1, 200))

# more than one string is refused
try(siutxt(c("<p>a</p>", "<p>b</p>")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Nothing is fetched here: the cached copy if there is one, else the
# document bundled with the package.
s <- svcs(offline = TRUE)
s$llm$mode
attr(s, "source")

# where the curated-data service is, and whether it takes a key
s$data[c("mode", "base_url")]
s$issued

# arguments are checked
try(svcs(maxage = -1))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# ask the site now (network), and keep the answer for a day
svcs(refresh = TRUE)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Latin accents fold to their nearest ASCII letter.
toascii("Prof. \u00c1ngela Zorro Medina")  # "Prof. Angela Zorro Medina"

# Vectorised over the input.
toascii(c("Se\u00e1n", "Zo\u00eb", "na\u00efve"))

# Non-Latin scripts are romanised when stringi is available.
if (requireNamespace("stringi", quietly = TRUE))
  toascii("\u041c\u043e\u0441\u043a\u0432\u0430")  # "Moskva" (Cyrillic)

# Either way the result is guaranteed pure 7-bit ASCII (never "?").
all(charToRaw(toascii("caf\u00e9")) < 128)

# Missing values become empty strings; line breaks are removed.
toascii(c(NA, "two\nlines"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
tojs(list(a = 1:3, b = "x"), auto_unbox = TRUE)
tojs(data.frame(id = 1:2, v = c(1.5, NA)), pretty = TRUE)

# a data frame by columns, and a date-time in ISO 8601
df <- data.frame(id = 1:2, v = c(1.5, NA))
tojs(df, dataframe = "columns", na = "null")
tojs(as.POSIXct("2024-01-02 03:04:05", tz = "UTC"), POSIXt = "ISO8601")

# digits: decimal places by default, significant digits with I()
tojs(pi)
tojs(pi, digits = I(17))

# a choice that does not exist is refused
try(tojs(df, dataframe = "table"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
g <- trchlthgap()
g[g$group == "Inuit", c("indicator", "measure", "period", "disratio",
                        "lower",
                        "upper")]
plot(g)

# your own table: made-up life expectancies with their limits, in the
# layout of indiex("lifeexp"); the tables you do not have are NULL
le <- data.frame(
  period = "2017/2019",
  group = c("First Nations", "Inuit", "Non-Indigenous"),
  estimate = c(74.2, 70.9, 81.8),
  lower = c(73.6, 69.1, 81.6),
  upper = c(74.8, 72.7, 82.0),
  quality = "ok"
)
trchlthgap(health = NULL, lifeexp = le, infmort = NULL, suiide = NULL)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
ti <- trcind()
ti[ti$call == "19", c("indicator", "table", "measure", "better")]
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
df <- data.frame(id = c(1, 2, 2), age = c(30, -5, 40),
                 start = c(1, 5, 3), end = c(2, 4, 9))

rules <- list(
  rul("agenonnegative", function(v) v >= 0, col = "age"),
  rul("idunique", function(v) !anyDuplicated(v), col = "id",
       sev = "fatal"),
  rul("datesordered", function(d) all(d$start <= d$end))
)

issues <- valrules(df, rules)
names(issues)

# A row-wise failure reports how many rows and which.
issues$agenonnegative$n_failed
issues$agenonnegative$rows

# Clean data produces nothing.
clean <- data.frame(id = 1:3, age = c(30, 31, 40), start = 1:3, end = 4:6)
length(valrules(clean, rules))

# A rule for an absent column is skipped, not failed -- a missing
# column is valsch()'s finding to report, not this one's.
length(valrules(data.frame(id = 1:3), rules[1:2]))

# A rule that errors is a failure, not a silent pass.
broken <- list(rul("bad", function(v) stop("boom"), col = "age"))
valrules(clean, broken)$bad$message

# NA counts as a failure
valrules(data.frame(age = c(30, NA)), rules[1])$agenonnegative$message

# only rule() objects are accepted
try(valrules(df, list(function(v) v >= 0)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
prov <- list(schema = list(
  expected_columns      = c("id", "year"),
  structural_invariants = list(min_data_rows = 1),
  expected_value_sets   = list(year = 2020:2025)
))
df <- data.frame(id = 1:3, year = c(2020, 2021, 2030))
issues <- valsch(df, prov)
names(issues) # flags the out-of-set year value

# A column that silently changed type is caught.
typed <- list(schema = list(expected_types = c(id = "integer")))
valsch(data.frame(id = c("1", "2")), typed)[[1]]$message

# So is a value outside its pinned range, and excess missingness.
ranged <- list(schema = list(numeric_ranges = list(v = c(min = 0, max = 1))))
valsch(data.frame(v = c(0.5, 9)), ranged)[[1]]$message

gappy <- list(schema = list(max_missing_fraction = c(v = 0.1)))
valsch(data.frame(v = c(1, NA, NA, 4)), gappy)[[1]]$message

# A clean frame produces nothing.
length(valsch(data.frame(id = 1:3, year = 2021), prov))

# a misspelt schema field is fatal rather than silently ignored
valsch(df, list(schema = list(expcol = "id")))[[1]]

# a schema inferred from trusted data, checked against a new release
sch <- infsch(data.frame(id = 1:3, year = 2020:2022))
names(valsch(data.frame(id = 1:2), list(schema = sch)))

# the data must be a data frame
try(valsch(list(id = 1), prov))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c("White", "White", "Black", "Indigenous", "White", "Black")
vrfmrg(x, c(White = 3, Black = 2, Indigenous = 1))$ok

# swapped labels: the permutation that explains the counts is named
r <- vrfmrg(x, c(White = 2, Black = 3, Indigenous = 1),
                      strict = FALSE)
r$permutation

# a release that rounds counts to the nearest 5
vrfmrg(rep(c("A", "B"), c(48, 21)), c(A = 50, B = 20),
                 tol = 2)$ok

# the default is to stop
try(vrfmrg(x, c(White = 2, Black = 3, Indigenous = 1)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
before <- c("W", "B", "W", NA)
after <- c("White", "Black", "White", NA)
tab <- vrfrcd(before, after, c(W = "White", B = "Black"))
tab[tab$Freq > 0, ]

# a value not in the declared mapping must be unchanged
vrfrcd(c("W", "X"), c("White", "X"), c(W = "White"))

# swapped groups are caught
try(vrfrcd(c("W", "B"), c("Black", "White"), c(W = "White", B = "Black")))

# a value that became NA is caught
try(vrfrcd(c("W", "B"), c("White", NA), c(W = "White", B = "Black")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- tempfile()
writeLines("hello capsule", f)

# Matching digest -> match TRUE.
chk <- vrfsha256(f, sha256file(f))
chk$match # TRUE

# A wrong expected digest -> match FALSE, with both values reported.
bad <- vrfsha256(f, strrep("0", 64L))
bad$match # FALSE
bad$actual # the real digest

# case and a list wrapper (as from provenance JSON) do not matter
vrfsha256(f, list(toupper(sha256file(f))))$match

# a missing file, or more than one expected digest, is an error
try(vrfsha256(file.path(tempdir(), "missing.csv"), strrep("0", 64L)))
try(vrfsha256(f, c("a", "b")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Input is validated before any network call:
try(wbsnpnat(""))     # empty url -> error
try(wbsnpnat("http://localhost/report.csv"))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network; any network failure returns NULL rather than erroring.
# Closest archived snapshot of a live page (or NULL if none archived).
wbsnpnat("https://www.r-project.org/")

# A shorter timeout for a quick lookup.
wbsnpnat("https://cloud.r-project.org/", tmout = 10)

# A never-archived URL returns NULL rather than erroring.
wbsnpnat("https://example.invalid/never-archived")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# argument errors come before any request
try(wbsnpurl(NA))
try(wbsnpurl("https://www.r-project.org/", ts = "2020&x=1"))
try(wbsnpurl(c("https://a.org", "https://b.org")))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs the network
wbsnpurl("https://www.r-project.org/")
# the snapshot nearest to January 2020
wbsnpurl("https://www.r-project.org/", ts = "202001")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c("W", "B", "W")
y <- grdrcd(x, c(W = "White", B = "Black"))
m <- rcdmnf(x, y, c(W = "White", B = "Black"))
p <- wrrcdmnf(m, tempfile(fileext = ".json"))
vrfrcdmnf(p, x, y)$ok

# the data changed after the manifest was written
y2 <- y
y2[2] <- "White"
vrfrcdmnf(p, x, y2)$reasons

# only manifests can be written
try(wrrcdmnf(list(a = 1), tempfile()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- wrtxtfb(c("line one", "line two"),
                         tempfile(fileext = ".txt"))
readLines(p)

# Accented names are written as UTF-8 bytes, whatever the locale.
q <- wrtxtfb("Author: \u00c1ngela Zorro Medina", tempfile())
readLines(q, encoding = "UTF-8")
readBin(q, "raw", 20)

# The path must be one string.
try(wrtxtfb("x", c("a.txt", "b.txt")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- structure(
  c(1, 1, 2, 4, 1),
  labels = c(White = 1, Black = 2, Other = 3, Unknown = 4)
)
xfrvrf(x, c(White = 3, Black = 1, Unknown = 1))$ok

# counts that only match under swapped labels, reported without stopping
r <- xfrvrf(x, c(White = 1, Black = 3, Unknown = 1), strict = FALSE)
r$ok
r$marginals$permutation

# value labels that disagree with the source code book
try(xfrvrf(
  x,
  c(White = 3, Black = 1, Unknown = 1),
  codebook = c("1" = "White", "2" = "Other", "3" = "Black", "4" = "Unknown")
))
\dontshow{\}) # examplesIf}

}
