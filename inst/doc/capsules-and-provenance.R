## ----setup, include = FALSE---------------------------------------------------
# the vignette runs in full in GitHub CI and for the package tarball (NOT_CRAN), on r-universe
# (MY_UNIVERSE), on the package website (IN_PKGDOWN) and in an interactive session; when CRAN
# re-builds it in its check, none of these is set and only this chunk runs
if (!interactive() && !any(nzchar(Sys.getenv(c("NOT_CRAN", "MY_UNIVERSE", "IN_PKGDOWN"))))) {
  knitr::knit_exit()
}

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## -----------------------------------------------------------------------------
library(rmoriebricklayer)
otis <- read.csv(system.file("extdata", "otis_a01_individuals.csv",
                             package = "rmoriebricklayer"))
otis

## -----------------------------------------------------------------------------
a <- anltab(otis, value = "individuals", prd = "year",
                   by = c("table", "group"))
a

## -----------------------------------------------------------------------------
a$change[, c("table", "group", "year", "value", "previous",
             "pctchg", "pctlo", "pctup", "padj",
             "significant")]

## -----------------------------------------------------------------------------
b <- anltab(otis, value = "individuals", prd = "year",
                   by = c("table", "group"), rnd = 5)
b$change[!is.na(b$change$previous),
         c("group", "year", "pctchg", "pctlo", "pctup",
           "compctlo", "compctup")]

## -----------------------------------------------------------------------------
a$trend

## -----------------------------------------------------------------------------
drftcal(otis, n = 10)

## -----------------------------------------------------------------------------
sf <- stkflow(days = c(21900, 23725, 20440), people = c(300, 325, 280),
                 prd = c(2022, 2023, 2024), t = 365)
sf

## -----------------------------------------------------------------------------
sf <- stkflow(days = c(21900, 23725, 20440), people = c(300, 325, 280),
                 prd = c(2022, 2023, 2024), t = 365)
sf

## -----------------------------------------------------------------------------
d <- usecpstmpl(tempfile("capsule-"), ex = TRUE)
list.files(d)
cat(readLines(file.path(d, "analysis.R"))[1:12], sep = "\n")

## ----getting-started-getting-started-plots, fig.width = 7, fig.height = 4.5----
plot(a)
plot(sf)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----capsules-setup-----------------------------------------------------------
library(rmoriebricklayer)

## ----capsules-provenance------------------------------------------------------
provjson <- '{
  "dataset": {
    "title": "Demo library statistics",
    "ckan_api_endpoint": "https://data.ontario.ca/api/3/action/package_show?id=ontario-public-library-statistics"
  },
  "resource": { "name_match_pattern": "2014" },
  "schema": {
    "expected_columns": ["year", "visits", "alert"],
    "structural_invariants": { "min_data_rows": 5 },
    "expected_value_sets": { "year": [2024, 2025] },
    "synthetic_recipe": {
      "n_rows": 25,
      "seed": 42,
      "columns": {
        "year":   { "type": "sample",    "values": [2024, 2025] },
        "visits": { "type": "poisson",   "lambda": 3, "min": 1 },
        "alert":  { "type": "bernoulli", "p": 0.2 },
        "id":     { "type": "id_pattern", "pattern": "p-{seq:05d}" }
      }
    }
  }
}'

provpath <- file.path(tempdir(), "data_provenance.json")
writeLines(provjson, provpath)

prov <- loadprov(provpath)
prov$dataset$title

## ----capsules-resolve, eval = FALSE-------------------------------------------
# url <- rslvckan(prov)            # package_show + name match
# if (is.null(url))                        # slug-change fallback
#   url <- rslvckns(prov)
# 
# path <- file.path(tempdir(), "data.csv")
# fdl(url, path)             # plain-language failure diagnosis
#                                          # + automatic Wayback fallback

## ----capsules-synthetic-------------------------------------------------------
datapath <- file.path(tempdir(), "data.csv")
gen <- mksyncsv(prov$schema$synthetic_recipe, datapath)
gen$rows

df <- read.csv(datapath)
head(df, 3)

## ----capsules-validate--------------------------------------------------------
digest <- sha256file(datapath)
substr(digest, 1, 16)

chk <- vrfsha256(datapath, digest)
chk$match

issues <- valsch(df, prov)
length(issues)   # 0 = clean against the pinned schema

## ----capsules-manifest--------------------------------------------------------
man <- mkmnf(
  list(project = "demo-study", author = "A. Author", synthetic = TRUE),
  env = FALSE  # TRUE also snapshots R/OS/package versions
)

man <- recrd(man, "rowsgenerated", obs = gen$rows, expd = 25)
man <- recrd(man, "meanvisits",
              obs = mean(df$visits), expd = 3,
              tol = 1, syn = TRUE)

outdir <- file.path(tempdir(), "capsule-demo")
dir.create(outdir, showWarnings = FALSE)

wrmnfjs(man, file.path(outdir, "manifest.json"))
summarypath <- wrsmrytxt(
  man, outdir,
  paths = list(input = datapath, results = outdir),
  whatwasdone = c("* generated synthetic stand-in (real source offline)",
                    "* validated schema and recorded cross-checks")
)

cat(readLines(summarypath)[7:12], sep = "\n")

## ----capsules-indigenous-capsule----------------------------------------------
d <- indiex("wellbeing")
f <- file.path(tempdir(), "indigenous_wellbeing.csv")
utils::write.csv(d, f, row.names = FALSE)
h <- sha256file(f)
m <- mkmnf(list(dataset = "indigenouswellbeing", rows = nrow(d), sha256 = h,
                        source = "Statistics Canada, Indigenous Peoples Survey 2022",
                        licence = "Statistics Canada Open Licence"),
                   env = FALSE)
vrfsha256(f, h)

## ----capsules-capsule-plots, fig.width = 7, fig.height = 4.5------------------
ci_plot <- function(t, lab, main) {
  o <- order(t$estimate)
  t <- t[o, ]
  y <- seq_len(nrow(t))
  op <- par(mar = c(4, 10, 3, 1))
  on.exit(par(op))
  plot(t$estimate, y, xlim = range(t$lower, t$upper, na.rm = TRUE), yaxt = "n", pch = 19,
       col = blpal()[1], xlab = "estimate and 95% interval", ylab = "", main = main)
  segments(t$lower, y, t$upper, y, col = blpal()[1])
  axis(2, y, lab[o], las = 1, cex.axis = 0.7)
}
t1 <- d[d$indicator == d$indicator[1], ]
ci_plot(t1, t1$group, t1$indicator[1])
v <- tapply(df$visits, df$year, sum)
barplot(v, col = blpal()[2], main = "Visits by year", xlab = "year", ylab = "visits")

## ----provenance-setup, include = FALSE----------------------------------------
# the one-time index record of this vignette stays out of the reader's configuration directory
options(rmoriebricklayer.xmssidxfile = tempfile())
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)
set.seed(1)

## -----------------------------------------------------------------------------
manifest <- paste0(
  "source=https://example.org/extract.csv\n",
  "sha256=", csha256("id,value\n1,2\n"), "\n",
  "fetched=2026-09-12"
)

sig <- cpssign(csha256(manifest), key = "team-secret",
                    scheme = "hmac")
cpsvrf(csha256(manifest), sig, "team-secret")

## -----------------------------------------------------------------------------
edited <- sub("fetched=2026-09-12", "fetched=2026-01-01", manifest)
cpsvrf(csha256(edited), sig, "team-secret")

## -----------------------------------------------------------------------------
# Fixed here so the vignette is reproducible. For a real key the salt
# comes from rndbytes(16), which reads the operating system's
# CSPRNG rather than R's generator.
salt <- "9f2c41a7d8e05b36"
key <- drvkey("correct horse battery staple", salt)
nchar(key)

## -----------------------------------------------------------------------------
# Small for the vignette; the default height 10 gives 1024 signatures.
signingkey <- pqckg(height = 3)
signingkey

## -----------------------------------------------------------------------------
pub <- signpubkey(signingkey)
pub

## -----------------------------------------------------------------------------
s1 <- cpssign(csha256(manifest), signingkey)
cpsvrf(csha256(manifest), s1, pub)

# A verifier holding only `pub` cannot forge one.
cpsvrf(csha256(edited), s1, pub)

## -----------------------------------------------------------------------------
signingkey <- xmssadv(signingkey, s1)
signingkey$next_index

s2 <- cpssign(csha256("a second manifest"), signingkey)
cpsvrf(csha256("a second manifest"), s2, pub)

# and forward again, for the next signature
signingkey <- xmssadv(signingkey, s2)

## ----error = TRUE-------------------------------------------------------------
try({
k <- pqckg(height = 1)          # signs exactly 2 messages
k <- xmssadv(k, cpssign("one", k))
k <- xmssadv(k, cpssign("two", k))
cpssign("three", k)
})

## -----------------------------------------------------------------------------
pqcbknd()

## -----------------------------------------------------------------------------
m <- mkmnf(list(dataset = "otis", rows = 1200L),
                   env = FALSE)
key <- fipskg("ML-DSA-65")
att <- cpsatst(m, key, note = "counts as published")
cpschkatst(att, m)

## -----------------------------------------------------------------------------
m2 <- m
m2$meta$rows <- 1201L
cpschkatst(att, m2)$ok

## -----------------------------------------------------------------------------
onethird <- mkmnf(list(x = 1 / 3), env = FALSE)
back <- fromjs(mnfcanon(onethird))
identical(back$meta$x, 1 / 3)

## -----------------------------------------------------------------------------
identical(
  mnfdgst(mkmnf(list(a = 1, b = 2), env = FALSE)),
  mnfdgst(mkmnf(list(b = 2, a = 1), env = FALSE)))

## -----------------------------------------------------------------------------
set.seed(1)
d <- data.frame(x = rnorm(200))
d$y <- 0.8 * d$x + rnorm(200)
cpsfals(d, function(z) cor(z$x, z$y), trt = "x",
                n = 199, seed = 42)

## -----------------------------------------------------------------------------
cpsfals(d, function(z) 0.5, trt = "x", n = 199,
                seed = 42)$controls[, c("control", "passed")]

## -----------------------------------------------------------------------------
d <- data.frame(x = 1:10)
man <- mkmnf(list(dataset = "demo"), env = FALSE)
man <- recrd(man, "mean_x", obs = mean(d$x), expd = 5.5)
man <- recrd(man, "n", obs = nrow(d), expd = 10)

mnfrcmp(man, d, list(mean_x = function(z) mean(z$x),
                                n = function(z) nrow(z)))

## -----------------------------------------------------------------------------
mnfrcmp(man, d, list(n = function(z) nrow(z)))

## -----------------------------------------------------------------------------
set.seed(1)
m2 <- mnfrecseed(mkmnf(list(a = 1),
                                         env = FALSE))
first <- runif(3)
invisible(runif(1000))          # any amount of other work
mnfrstseed(m2)
identical(runif(3), first)

## -----------------------------------------------------------------------------
plan <- prrgdecl(c(
  ate = "use of force is higher in the exposed division",
  n_rows = "the extract has the row count the source publishes"))

# a declared outcome that was not reported
prrgchk(plan, "n_rows")

# statistics reported that were never declared
prrgchk(plan, c("ate", "n_rows", "byyear", "byprecinct"))

## -----------------------------------------------------------------------------
falsfam(c(ate = 0.02, byyear = 0.3, byprecinct = 0.4,
                 byshift = 0.6, bymonth = 0.7), meth = "holm")

## -----------------------------------------------------------------------------
evlrr(2, lo = 1.4, hi = 2.9)

## ----eval = FALSE-------------------------------------------------------------
# cap <- arccap("https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip", "captures",
#               upload = c("rmorie", "wayback"), reason = "Custody table cited in chapter 3")
# cap$archive                     # its page at archive.rmorie.com
# arcfind("https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip")
# arcget(cap$capture_id, "table.zip", sha256 = cap$sha256)

## ----eval = FALSE-------------------------------------------------------------
# fetchvrf("https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip", "table.zip",
#          sha256 = cap$sha256, arcs = c("rmorie", "captures"))

## -----------------------------------------------------------------------------
dir <- tempfile()
dir.create(dir)
write.csv(data.frame(x = 1:3), file.path(dir, "data.csv"),
          row.names = FALSE)
b <- cpsbndl(dir, man, key, note = "as published")
cpsbndlvrf(attr(b, "path"), dir, man = man)

## -----------------------------------------------------------------------------
unlink(dir, recursive = TRUE)

## ----eval=FALSE---------------------------------------------------------------
# res <- tsvrf("response.tsr", data = "manifest.json")
# res$time
# res$checks

## -----------------------------------------------------------------------------
chunks <- c("id,value", "1,2", "3,4", "5,6")
root <- mrkroot(chunks)
root

## -----------------------------------------------------------------------------
# Editing one chunk moves exactly one leaf.
editedchunks <- chunks
editedchunks[3] <- "3,5"
which(mrklvs(chunks) != mrklvs(editedchunks))

## -----------------------------------------------------------------------------
# Prove chunk 3 belongs, holding only it and log2(n) sibling digests.
proof <- mrkprf(chunks, 3)
proof
mrkvrf(chunks[3], proof, root)
mrkvrf("3,5", proof, root)

## -----------------------------------------------------------------------------
mrkroot(c("a", "b", "c")) == mrkroot(c("a", "b", "c", "c"))

## -----------------------------------------------------------------------------
chain <- chnnew()
chain <- chnapp(chain, "manifest for run 1", label = "run-1")
chain <- chnapp(chain, "manifest for run 2", label = "run-2")
chain <- chnapp(chain, "manifest for run 3", label = "run-3")
chain

## -----------------------------------------------------------------------------
# Deleting an entry from the middle breaks the links, and names where.
tampered <- chain
tampered$entries[[2]] <- NULL
chnvrf(tampered)

## -----------------------------------------------------------------------------
truncated <- chain
truncated$entries[[3]] <- NULL

c(headuncbymiddel =
    chnhead(tampered) == chnhead(chain),
  linksacctru = chnvrf(truncated)$valid)

## -----------------------------------------------------------------------------
sealsig <- cpssign(chnseal(chain), signingkey)
cpsvrf(chnseal(chain), sealsig, pub)

# The truncated chain seals to a different value.
cpsvrf(chnseal(truncated), sealsig, pub)

# A chain whose links disagree has no seal to offer at all.
chnseal(tampered)

## ----provenance-indigenous-provenance-----------------------------------------
cr <- readLines(system.file("COPYRIGHTS", package = "rmoriebricklayer"))
cat(cr[grep("indigenouslifeexpectancy", cr) + 0:4], sep = "\n")

## ----provenance-indigenous-tables, eval = FALSE-------------------------------
# head(indtabs()[, c("key", "rows")])

## ----provenance-provenance-plot, fig.width = 6, fig.height = 4----------------
barplot(d$x, names.arg = seq_len(nrow(d)), col = blpal()[1], xlab = "row", ylab = "x",
        main = "The values the manifest pins")

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----validation-rules-and-synthetic-data-rules--------------------------------
df <- data.frame(id = c(1, 2, 2), age = c(30, -5, 40),
                 start = c(1, 5, 3), end = c(2, 4, 9))

rules <- list(
  rul("agenonnegative", function(v) v >= 0, col = "age"),
  rul("idunique", function(v) !anyDuplicated(v), col = "id", sev = "fatal"),
  rul("datesordered", function(d) all(d$start <= d$end))
)

issues <- valrules(df, rules)
names(issues)
issues$agenonnegative$n_failed
issues$agenonnegative$rows

## ----validation-rules-and-synthetic-data-rules-clean--------------------------
clean <- data.frame(id = 1:3, age = c(30, 31, 40), start = 1:3, end = 4:6)
length(valrules(clean, rules))

## ----validation-rules-and-synthetic-data-rules-edge---------------------------
length(valrules(data.frame(id = 1:3), rules[1:2]))
broken <- list(rul("bad", function(v) stop("boom"), col = "age"))
valrules(clean, broken)$bad$message

## ----validation-rules-and-synthetic-data-ready--------------------------------
rules2 <- list(
  rulenull("id"),
  ruleuniq("id", sev = "fatal"),
  rulebtw("age", 0, 120),
  ruleinset("grade", c("a", "b", "c")),
  rulerx("code", "^[A-Z]{2}-[0-9]{4}$"),
  rulemad("score", n = 3),
  rulecolcnt(6, sev = "fatal")
)
length(rules2)

## ----validation-rules-and-synthetic-data-infer--------------------------------
set.seed(1)
df <- data.frame(
  id = 1:100,
  score = stats::runif(100, 0, 10),
  grade = sample(c("a", "b", "c"), 100, TRUE),
  note = paste0("free text ", 1:100),
  stringsAsFactors = FALSE
)
sch <- infsch(df)
sch$expected_value_sets

## ----validation-rules-and-synthetic-data-infer-check--------------------------
length(valsch(df, list(schema = sch)))
length(valsch(df[, -3], list(schema = sch))) > 0
bad <- df
bad$grade[1] <- "z"
length(valsch(bad, list(schema = sch))) > 0

## ----validation-rules-and-synthetic-data-synthetic----------------------------
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
res$rows
res$seed

df <- utils::read.csv(out)
dim(df)
names(df)
head(df, 3)

## ----validation-rules-and-synthetic-data-synthetic-mark-----------------------
mksyncsv(recipe, tempfile(fileext = ".csv"), nrows = 5)$rows

## ----validation-rules-and-synthetic-data-indigenous-rules---------------------
d <- indiex("health")
rules <- list(
  ruleinset("quality", c("ok", "E", "F", "x", "..")),
  ruleinset("group", c("First Nations", "M\u00e9tis", "Inuit", "Non-Indigenous")),
  rul("estimate inside its interval",
       function(x) is.na(x$estimate) | (x$lower <= x$estimate & x$estimate <= x$upper))
)
valrules(d, rules)

## ----validation-rules-and-synthetic-data-synthetic-plot, fig.width = 8, fig.height = 4----
op <- par(mfrow = c(1, 2))
barplot(table(df$visits), col = blpal()[1], xlab = "visits", ylab = "rows",
        main = "Synthetic visits")
al <- tapply(df$alert == "Yes", df$year, mean)
barplot(100 * al, col = blpal()[2], ylim = c(0, 100), xlab = "year", ylab = "rows with an alert (%)",
        main = "Synthetic alert flag")
abline(h = 20, lty = 2)
par(op)

## ----drift-setup, include = FALSE---------------------------------------------
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
dgstobj(reference) == dgstobj(current)

## -----------------------------------------------------------------------------
cpsdrft(reference, current)

## -----------------------------------------------------------------------------
moved <- current
moved$size <- moved$size * 3
moved$grade[1:200] <- "z"

cpsdrft(reference, moved)

## ----drift-drift-plot, fig.width = 6, fig.height = 3.5------------------------
d <- cpsdrft(reference, moved)
plot(d)

## ----drift-drift-columns, fig.width = 7, fig.height = 3.5---------------------
plot(d, what = "columns", cols = c("size", "grade"))

## ----drift-drift-fingerprint, fig.width = 5, fig.height = 4.5-----------------
plot(d, what = "fingerprint")

## ----drift-drift-html---------------------------------------------------------
f <- file.path(tempdir(), "drift.html")
drfthtml(d, f, title = "Pinned against fetched")
file.exists(f)

## -----------------------------------------------------------------------------
a <- data.frame(v = rnorm(80))
b <- data.frame(v = rnorm(80))

# Two draws from the SAME distribution.
cpsdrft(a, b)$columns[, c("p_value", "psi")]

## -----------------------------------------------------------------------------
x <- sample(c("p", "q", "r"), 300, TRUE)
y <- sample(c("p", "q", "r"), 300, TRUE)

# The homogeneity test is the more conservative, and the correct one here.
c(homogeneity = drfthomog(x, y)[["p_value"]],
  goooffit = drftchisq(y, x)[["p_value"]])

## -----------------------------------------------------------------------------
# A quantity spanning several orders of magnitude.
benfordtst(10^runif(2000, 0, 6))

## -----------------------------------------------------------------------------
# Leading digits drawn uniformly -- not what measurement looks like.
benfordtst(as.numeric(paste0(sample(1:9, 2000, TRUE), "000")))

## -----------------------------------------------------------------------------
schema <- infsch(reference)
schema

## -----------------------------------------------------------------------------
# It accepts the data it learned from.
length(valsch(reference, list(schema = schema)))

# And catches the rescaled column, which is now outside its pinned range.
issues <- valsch(moved, list(schema = schema))
issues[["rangesize"]]$message

## ----drift-indigenous-drift---------------------------------------------------
hi <- indiex("health")
a <- hi$estimate[hi$period == "2015/2018"]
b <- hi$estimate[hi$period == "2019/2022"]
drftks(a[is.finite(a)], b[is.finite(b)])

## ----dashboard-setup, include = FALSE-----------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 6, fig.height = 4, dpi = 72)
library(rmoriebricklayer)

## -----------------------------------------------------------------------------
rmbldemo()

## -----------------------------------------------------------------------------
court <- rmbldemo("court")
plndid(court, unit = "court", time = "month", y = "delay", trtd = "reformed")

## -----------------------------------------------------------------------------
wait <- rmbldemo("waits")$days
fit <- dstfit(wait, nboot = 50)
fit$table[, c("rank", "family", "aic", "ks")]
plot(fit, which = "qq", fams = c("gamma", "weibull"))

## -----------------------------------------------------------------------------
led <- ldgrread(system.file("extdata", "ledger_sample.json", package = "rmoriebricklayer"))
led
ldgrchk(led)[, c("check", "ok", "severity")]

## ----include = FALSE----------------------------------------------------------
# the one-time index record of this vignette stays out of the reader's configuration directory
options(rmoriebricklayer.xmssidxfile = tempfile())
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----language-model-routes-providers------------------------------------------
llmprvd()[, c("id", "label", "key_env")]

## ----language-model-routes-status---------------------------------------------
old <- Sys.getenv("OLLAMA_HOST", unset = NA)
Sys.setenv(OLLAMA_HOST = "off")
llmstat()
if (is.na(old)) Sys.unsetenv("OLLAMA_HOST") else Sys.setenv(OLLAMA_HOST = old)

## ----language-model-routes-ask, eval = FALSE----------------------------------
# llmask("How do I estimate a weighted proportion with bootstrap replicate weights?")
# llmask(paste(c("Summarise this table:", capture.output(print(head(mtcars)))),
#                          collapse = "\n"),
#                    syspro = "Answer in two sentences.", docs = FALSE)

## ----language-model-routes-services-------------------------------------------
s <- svcs(offline = TRUE)
s$data$mode
attr(s, "source")

## ----language-model-routes-login, eval = FALSE--------------------------------
# dlogin(token = "<key issued at https://www.rmorie.com/access/>")
# dlogin()          # or: GitHub device flow / emailed code
# dlogout()         # forget the key

## ----language-model-routes-indigenous-llm, eval = FALSE-----------------------
# llmask(paste("How do I compare perceived mental health of First Nations,",
#                          "Metis and Inuit adults with non-Indigenous adults, using",
#                          "indiex('health_indicators')?"))

## ----language-model-routes-providers-plot, fig.width = 6, fig.height = 4------
pv <- llmprvd()
barplot(table(pv$api), col = blpal()[1], ylab = "providers", main = "Providers by request shape")

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----json-and-serialisation-encode--------------------------------------------
tojs(list(a = 1:3, b = "x"), auto_unbox = TRUE)
tojs(data.frame(id = 1:2, v = c(1.5, NA)), pretty = TRUE)

## ----json-and-serialisation-parse---------------------------------------------
txt <- '{"id":[1,2,3],"name":["a","b","c"],"ok":true}'
str(fromjs(txt))
str(fromjs(txt, simplifyVector = FALSE))

## ----json-and-serialisation-dup-----------------------------------------------
try(fromjs('{"a":1,"a":2}'))
fromjs('{"a":1,"a":2}', duplicate_keys = "keep")

## ----json-and-serialisation-bigint--------------------------------------------
fromjs('{"id": 9007199254740993}', bigint_as_char = TRUE)

## ----json-and-serialisation-serialize-----------------------------------------
f <- factor(c("b", "a", "b"), levels = c("a", "b", "c"))
back <- jsunser(jsser(f))
identical(back, f)

m <- matrix(1:6, nrow = 2)
identical(jsunser(jsser(m)), m)

x <- list(a = 1:3, b = list(c = "x", d = NULL), e = TRUE)
identical(jsunser(jsser(x)), x)

## ----json-and-serialisation-serialize-vs--------------------------------------
tojs(f)

## ----json-and-serialisation-digits--------------------------------------------
jsser(1 / 3)
exact <- jsser(1 / 3, digits = I(17))
identical(jsunser(exact), 1 / 3)

## ----json-and-serialisation-pin-----------------------------------------------
csha256(jsser(m))

## ----json-and-serialisation-gzip----------------------------------------------
x <- list(rows = data.frame(id = 1:50, value = round(stats::runif(50), 3)))
enc <- jsgzenc(x)
substring(enc, 1, 40)
c(json = nchar(tojs(x)), gzipb64 = nchar(enc))
identical(jsgzdec(enc)$rows$id, 1:50)

## ----json-and-serialisation-b64-----------------------------------------------
jsb64enc(charToRaw("manifest"))
rawToChar(jsb64dec("bWFuaWZlc3Q="))

## ----json-and-serialisation-indigenous-json-----------------------------------
d <- indiex("infantmort")
js <- tojs(d[d$period == "2014/2016", ], auto_unbox = TRUE)
substring(js, 1, 200)
back <- fromjs(js)
all.equal(back$estimate, d$estimate[d$period == "2014/2016"])

## ----json-and-serialisation-json-roundtrip-plot, fig.width = 7, fig.height = 4.5----
o <- order(back$estimate)
t1 <- back[o, ]
yy <- seq_len(nrow(t1))
op <- par(mar = c(4, 16, 3, 1))
plot(t1$estimate, yy, xlim = range(t1$lower, t1$upper), yaxt = "n", pch = 19, col = blpal()[1],
     xlab = "estimate and 95% interval", ylab = "", main = t1$measure[1])
segments(t1$lower, yy, t1$upper, yy, col = blpal()[1])
axis(2, yy, t1$group, las = 1, cex.axis = 0.7)
par(op)

