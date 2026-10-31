\name{rmbl-seal}
\alias{admits}
\alias{adp}
\alias{adpcnts}
\alias{alos}
\alias{arccap}
\alias{arcfind}
\alias{arcget}
\alias{arcpush}
\alias{capdeps}
\alias{capenv}
\alias{cblake2b}
\alias{ccrc32}
\alias{certchnvrf}
\alias{certprs}
\alias{chn}
\alias{chnnew}
\alias{chnapp}
\alias{chnhead}
\alias{chnseal}
\alias{chnvrf}
\alias{chnkfile}
\alias{citecps}
\alias{cpsatst}
\alias{cpschkatst}
\alias{cpsbndl}
\alias{cpsbndlrd}
\alias{cpsbndlvrf}
\alias{cpschk}
\alias{format.rmbl_cpschk}
\alias{print.rmbl_cpschk}
\alias{cpsplant}
\alias{cpsseal}
\alias{cpssign}
\alias{cpsspec}
\alias{cpsvrf}
\alias{cpsxvrf}
\alias{csha512}
\alias{dgstobj}
\alias{drbggen}
\alias{drbgnew}
\alias{drbgrsd}
\alias{drvkey}
\alias{evlrr}
\alias{falsfam}
\alias{fetchvrf}
\alias{filedgst}
\alias{sha512file}
\alias{crc32file}
\alias{fipskey}
\alias{fipskg}
\alias{fipspubkey}
\alias{fipsmkg}
\alias{fipsmod}
\alias{fipsmu}
\alias{fipssignmu}
\alias{fipsvrfmu}
\alias{fipssz}
\alias{ghann}
\alias{ghcmt}
\alias{ghout}
\alias{hqccmpkey}
\alias{hqcdecap}
\alias{hqcencap}
\alias{hqckg}
\alias{hqcpubkey}
\alias{hqcsz}
\alias{idcrd}
\alias{idcrdrd}
\alias{idcrdvrf}
\alias{kemdecap}
\alias{kemencap}
\alias{kemkg}
\alias{kempubkey}
\alias{kemsz}
\alias{keyeddgst}
\alias{chmac}
\alias{cdgsteq}
\alias{ldgrread}
\alias{format.rmbl_ledger}
\alias{ldgrchk}
\alias{format.rmbl_ledger_check}
\alias{print.rmbl_ledger_check}
\alias{print.rmbl_ledger}
\alias{mkbndl}
\alias{mkbndlchk}
\alias{mkbndlproj}
\alias{mkmnf}
\alias{mkset}
\alias{mnfcanon}
\alias{mnfdgst}
\alias{mnfrcmp}
\alias{mnfrecseed}
\alias{mnfrstseed}
\alias{mrk}
\alias{mrkroot}
\alias{mrklvs}
\alias{mrkprf}
\alias{mrkvrf}
\alias{oqskg}
\alias{oqspubkey}
\alias{perdays}
\alias{pqcbknd}
\alias{pqckg}
\alias{print.bricklayer_attestation}
\alias{print.bricklayer_bundle}
\alias{print.bricklayer_attestation_check}
\alias{print.bricklayer_benford}
\alias{print.bricklayer_bundle_check}
\alias{print.bricklayer_certificate}
\alias{print.bricklayer_certpath_check}
\alias{print.bricklayer_chain}
\alias{print.bricklayer_drbg}
\alias{printmeth}
\alias{print.bricklayer_drift}
\alias{print.bricklayer_env_diff}
\alias{print.bricklayer_falsification}
\alias{print.bricklayer_falsify_family}
\alias{print.bricklayer_fips_key}
\alias{print.bricklayer_fips_public_key}
\alias{print.bricklayer_hqc_capsule}
\alias{print.bricklayer_hqc_key}
\alias{print.bricklayer_hqc_public_key}
\alias{print.bricklayer_kem_capsule}
\alias{print.bricklayer_kem_key}
\alias{print.bricklayer_kem_public_key}
\alias{print.bricklayer_mcar}
\alias{print.bricklayer_oqs_key}
\alias{print.bricklayer_oqs_public_key}
\alias{print.bricklayer_power}
\alias{print.bricklayer_prereg}
\alias{print.bricklayer_prereg_check}
\alias{print.bricklayer_public_key}
\alias{print.bricklayer_recode_manifest}
\alias{print.bricklayer_recompute}
\alias{print.bricklayer_report}
\alias{print.bricklayer_schema}
\alias{print.bricklayer_signature}
\alias{print.bricklayer_signing_key}
\alias{print.bricklayer_timestamp}
\alias{print.rmbl_bounds}
\alias{print.rmbl_fetch}
\alias{print.rmbl_margin_check}
\alias{print.rmbl_or_check}
\alias{print.rmbl_recode_manifest_check}
\alias{print.rmbl_transfer_check}
\alias{summary.bricklayer_drift}
\alias{summary.bricklayer_benford}
\alias{summary.bricklayer_report}
\alias{prrgdecl}
\alias{prrgchk}
\alias{ralloc}
\alias{plot.rmbl_alloc}
\alias{rallocvrf}
\alias{recevid}
\alias{recrd}
\alias{rndbytes}
\alias{rvkfetch}
\alias{signpubkey}
\alias{staysmry}
\alias{stkflow}
\alias{tsstmp}
\alias{tsvrf}
\alias{tsinfo}
\alias{usecpstmpl}
\alias{vrfcps}
\alias{wbrtry}
\alias{wbsave}
\alias{wrmnfjs}
\alias{wrsmrytxt}
\alias{xmssadv}
\alias{xmssregkey}
\alias{xmssfgt}
\alias{xmssidxseen}
\title{Seals, signatures, keys and archives}
\usage{

admits(adp, alos, t = 365)


adp(days, t = 365)


adpcnts(cnts, t = 365)


alos(days, n)


arccap(
  urls,
  dir,
  item = NULL,
  meta = list(),
  tsa = "https://freetsa.org/tsr",
  ak = NULL,
  sk = NULL,
  tmout = 600L,
  upload = NULL,
  reason = NULL,
  visibility = c("public", "private"),
  warc = TRUE
)


arcfind(url, from = NULL, to = NULL, limit = 1000L)


arcget(x, dest, sha256 = NULL, at = NULL, tmout = 600L)


arcpush(
  dir,
  item = NULL,
  meta = list(),
  ak = NULL,
  sk = NULL,
  upload = NULL,
  reason = NULL,
  visibility = c("public", "private"),
  tsa = "https://freetsa.org/tsr",
  tmout = 600L
)


capdeps(pkgs = loadedNamespaces())


capenv(pkgs = loadedNamespaces())


cblake2b(x, key = NULL, length = 32L)


ccrc32(x)


certchnvrf(
  leaf,
  trust,
  inter = list(),
  attm = Sys.time(),
  purp = NULL,
  crls = list(),
  pols = NULL,
  rvk = c("supplied", "fetch", "none")
)


certprs(cert)


chnnew()

chnapp(chain, entry, label = NA_character_)

chnhead(chain)

chnseal(chain)

chnvrf(chain)


chnkfile(path, chnkbytes = 1048576L)


citecps(prov)


cpsatst(man, key, ctx = NULL, prehash = "none", note = NULL)

cpschkatst(attest, man, keyexp = NULL, key = NULL)


cpsbndl(
  dir,
  man,
  key,
  files = NULL,
  ctx = NULL,
  prehash = "none",
  note = NULL,
  path = NULL
)

cpsbndlrd(path)

cpsbndlvrf(bundle, dir, man = NULL, keyexp = NULL, key = NULL, seen = NULL)


cpschk(
  path = ".",
  mode = c("verify", "drift", "refresh", "report"),
  key = "",
  pubkey = "",
  psiwarn = 0.1,
  psifail = 0.25,
  base = NULL,
  cache = NULL,
  allowfile = FALSE,
  snapshot = FALSE,
  wayback = FALSE,
  glob = "",
  fp = TRUE,
  seenlog = "",
  archive = FALSE
)

\method{format}{rmbl_cpschk}(x, fmt = c("md", "json", "text"), failon = NULL, ...)

\method{print}{rmbl_cpschk}(x, ...)


cpsplant(
  data,
  stat,
  y,
  trt,
  effects = c(0, 0.5, 1),
  n = 100L,
  tol = NULL,
  seed = NULL
)


cpsseal(path = ".", key, overwrite = FALSE, glob = "")


cpssign(
  msg,
  key,
  scheme = NULL,
  ctx = NULL,
  determ = FALSE,
  prehash = "none",
  masked = getOption("rmoriebricklayer.masked", TRUE)
)


cpsspec(data, specs)


cpsvrf(msg, sig, key, ctx = NULL, prehash = NULL)


cpsxvrf(msg, sig, key, ctx = NULL, openssl = Sys.which("openssl"))


csha512(x)


dgstobj(x, algo = c("sha256", "sha512", "blake2b", "crc32"), key = NULL)


drbggen(drbg, n, addl = NULL)


drbgnew(entropy = NULL, person = NULL)


drbgrsd(drbg, entropy = NULL, addl = NULL)


drvkey(pass, salt, iter = 100000L, length = 32L)


evlrr(rr, lo = NULL, hi = NULL, true = 1)


falsfam(x, meth = c("holm", "bh", "bonferroni", "none"), alpha = 0.05)


fetchvrf(
  url,
  dest,
  sha256 = NULL,
  mirrors = character(),
  tmout = 120L,
  arcs = "rmorie"
)


sha512file(path, blkbytes = 1048576L)

crc32file(path, blkbytes = 1048576L)


fipskey(scheme, public, secret = NULL)


fipskg(scheme = "SLH-DSA-SHA2-128s", seed = NULL)

fipspubkey(key)


fipsmkg(scheme = "SLH-DSA-SHA2-128s", mod = fipsmod())


fipsmod(
  openssl = getOption("rmbl.fips.openssl", Sys.which("openssl")),
  conf = getOption("rmbl.fips.conf", Sys.getenv("RMBL_FIPS_CONF"))
)


fipsmu(key, msg, ctx = NULL, prehash = "none")

fipssignmu(
  key,
  mu,
  determ = FALSE,
  masked = getOption("rmoriebricklayer.masked", TRUE)
)

fipsvrfmu(key, mu, sig)


fipssz(scheme)


ghann(x)

ghcmt(
  x,
  runurl = NULL,
  failon = NULL,
  marker = "<!-- rmbl-action -->",
  limit = 65000L
)

ghout(x, report = "", json = "", comment = "off")


hqccmpkey(key)


hqcdecap(key, ct)


hqcencap(key, m = NULL, salt = NULL)


hqckg(lvl = 3L, seed = NULL, ver = c("v5", "round4"))

hqcpubkey(key)


hqcsz(lvl, ver = c("v5", "round4"))


idcrd(
  key,
  name,
  orcid = NULL,
  email = NULL,
  url = NULL,
  affil = NULL,
  days = 730,
  file = NULL
)

idcrdrd(path)

idcrdvrf(card, fpr = NULL, at = Sys.time(), atst = NULL)


kemdecap(key, ct, masked = getOption("rmoriebricklayer.masked", TRUE))


kemencap(key, m = NULL)


kemkg(lvl = 768L, seed = NULL)

kempubkey(key)


kemsz(lvl)


chmac(key, msg)

cdgsteq(a, b)


ldgrread(path)

\method{format}{rmbl_ledger}(x, ...)

ldgrchk(ledger, pkgs = NULL)

\method{format}{rmbl_ledger_check}(x, ...)

\method{print}{rmbl_ledger_check}(x, ...)

\method{print}{rmbl_ledger}(x, ...)


mkbndl(
  project,
  dest,
  data = NULL,
  version = "1",
  overwrite = FALSE,
  secrets = FALSE
)


mkbndlchk(
  bundle,
  data = NULL,
  synthetic = FALSE,
  dir = NULL,
  keep = FALSE,
  container = NULL
)


mkbndlproj(
  dir,
  name = basename(dir),
  title = name,
  author = "",
  contact = "",
  overwrite = FALSE
)


mkmnf(meta, env = TRUE)


mkset(..., title = "Analysis results", file = NULL, plots = TRUE)


mnfcanon(man)

mnfdgst(man)


mnfrcmp(man, data, stats, tol = NULL)


mnfrecseed(man)

mnfrstseed(man)


mrkroot(chunks, scheme = 2L)

mrklvs(chunks, scheme = 2L)

mrkprf(chunks, index, scheme = 2L)

mrkvrf(leaf, proof, root, scheme = NULL)


oqskg(scheme = "SLH-DSA-SHA2-128s")

oqspubkey(key)


perdays(from, to)


pqcbknd()


pqckg(height = 10L, skseed = NULL, pubseed = NULL, skprf = NULL)


\method{print}{bricklayer_attestation}(x, ...)

\method{print}{bricklayer_bundle}(x, ...)

\method{print}{bricklayer_attestation_check}(x, ...)

\method{print}{bricklayer_benford}(x, ...)

\method{print}{bricklayer_bundle_check}(x, ...)

\method{print}{bricklayer_certificate}(x, ...)

\method{print}{bricklayer_certpath_check}(x, ...)

\method{print}{bricklayer_chain}(x, ...)

\method{print}{bricklayer_drbg}(x, ...)

\method{print}{bricklayer_drift}(x, ...)

\method{print}{bricklayer_env_diff}(x, ...)

\method{print}{bricklayer_falsification}(x, ...)

\method{print}{bricklayer_falsify_family}(x, ...)

\method{print}{bricklayer_fips_key}(x, ...)

\method{print}{bricklayer_fips_public_key}(x, ...)

\method{print}{bricklayer_hqc_capsule}(x, ...)

\method{print}{bricklayer_hqc_key}(x, ...)

\method{print}{bricklayer_hqc_public_key}(x, ...)

\method{print}{bricklayer_kem_capsule}(x, ...)

\method{print}{bricklayer_kem_key}(x, ...)

\method{print}{bricklayer_kem_public_key}(x, ...)

\method{print}{bricklayer_mcar}(x, ...)

\method{print}{bricklayer_oqs_key}(x, ...)

\method{print}{bricklayer_oqs_public_key}(x, ...)

\method{print}{bricklayer_power}(x, ...)

\method{print}{bricklayer_prereg}(x, ...)

\method{print}{bricklayer_prereg_check}(x, ...)

\method{print}{bricklayer_public_key}(x, ...)

\method{print}{bricklayer_recode_manifest}(x, ...)

\method{print}{bricklayer_recompute}(x, ...)

\method{print}{bricklayer_report}(x, ...)

\method{print}{bricklayer_schema}(x, ...)

\method{print}{bricklayer_signature}(x, ...)

\method{print}{bricklayer_signing_key}(x, ...)

\method{print}{bricklayer_timestamp}(x, ...)

\method{print}{rmbl_bounds}(x, ...)

\method{print}{rmbl_fetch}(x, ...)

\method{print}{rmbl_margin_check}(x, ...)

\method{print}{rmbl_or_check}(x, ...)

\method{print}{rmbl_recode_manifest_check}(x, ...)

\method{print}{rmbl_transfer_check}(x, ...)

\method{summary}{bricklayer_drift}(object, ...)

\method{summary}{bricklayer_benford}(object, ...)

\method{summary}{bricklayer_report}(object, ...)


prrgdecl(hyps, note = NULL)

prrgchk(prereg, rptd)


ralloc(
  n = NULL,
  arms = c("A", "B"),
  ratio = rep(1, length(arms)),
  block = 2 * sum(ratio) * c(1, 1.5),
  strata = NULL,
  seed = NULL,
  codes = FALSE,
  prefix = "P"
)

\method{plot}{rmbl_alloc}(x, ...)


rallocvrf(x, digest = NULL, seed = NULL)


recevid(man, x, grp = "evidence")


recrd(man, name, obs, expd, tol = 1e-04, grp = "general", syn = FALSE)


rndbytes(n)


rvkfetch(path, tmout = 10)


signpubkey(key)


staysmry(daysperper, conflvl = 0.95)


stkflow(
  days,
  people,
  prd = NULL,
  t = 365,
  expo = NULL,
  per = 1e+05,
  base = c("first", "previous")
)


tsstmp(
  data,
  tsa = "https://freetsa.org/tsr",
  file = NULL,
  timeout = 60,
  trust = NULL
)


tsvrf(
  token,
  data,
  cert = NULL,
  trust = NULL,
  crls = list(),
  attm = NULL,
  nonce = NULL
)

tsinfo(token)


usecpstmpl(path, name = basename(path), ex = FALSE)


vrfcps(
  cpsdir,
  provfile = "data_provenance.json",
  dfile = NULL,
  mnffile = NULL,
  scrfile = NULL
)


wbrtry(output, incgone = FALSE, lookup = TRUE, ...)


wbsave(
  urls,
  ak = NULL,
  sk = NULL,
  within = "30d",
  jobs = 4L,
  output = NULL,
  poll = 10,
  maxwait = 600,
  capall = FALSE,
  quiet = NULL,
  permin = 6,
  maxcap = 1000,
  fallback = NULL,
  reason = NULL
)


wrmnfjs(man, path, canon = FALSE)


wrsmrytxt(man, outdir, paths, whatwasdone = NULL, contact = NULL, lic = NULL)


xmssadv(key, sig, msg = NULL)

xmssregkey(keytoreg)

xmssfgt(keytofgt = NULL)


xmssidxseen(path = ".", seenlog = NULL)

}
\arguments{
\item{adp}{Numeric scalar, the average daily population (people held on
an average day); must be positive.}
\item{alos}{Numeric scalar, the average length of stay in days; must be
positive.}
\item{t}{For \code{admits}, \code{adpcnts}: Numeric scalar, the length of the period in days; must be
positive. Default \code{365}.

For \code{adp}: Numeric scalar, the length of the period in days; must be
positive. Default \code{365}. A vector of several values is refused.
\code{\link{perdays}} turns two dates into this.

For \code{stkflow}: Numeric, the length of each period in days: one value for all
periods, or one per period; positive. Default \code{365}.
\code{\link[=perdays]{perdays()}} turns dates into this.}
\item{days}{For \code{adp}: Numeric vector of person-days served during the period,
non-negative, no \code{NA} or \code{Inf}. The vector is summed, so one
element per person and a single pre-computed total give the same result.

For \code{alos}: Numeric vector of person-days served during the period,
non-negative, no \code{NA} or \code{Inf}; the vector is summed.

For \code{idcrd}: How many days the card is valid for, from
now. Default 730.

For \code{stkflow}: Numeric vector of person-days, one element per period;
non-negative, no \code{NA} or \code{Inf}.}
\item{cnts}{Numeric vector of headcounts, one per day on which a count
was taken; non-negative, no \code{NA} or \code{Inf}. The days need not
be consecutive.}
\item{n}{For \code{alos}: Numeric scalar, the number of people; must be positive. A vector of
several values is refused. For an unbiased average this should be the
people both admitted AND released within the period, because anyone still
held has an unfinished stay.

For \code{cpsplant}: Planted data sets per effect.

For \code{drbggen}: Integer scalar, the number of bytes, 1 to 65536 (the standard's
limit per request for AES: 2^19 bits).

For \code{ralloc}: How many participants, a positive whole number. With \code{strata},
it may be left out (it is their total).

For \code{rndbytes}: Whole number from 1 to 1048576: the number of bytes.}
\item{urls}{For \code{arccap}: URLs to capture, or a \code{\link{wbsave}} result (its refused
URLs are taken).

For \code{wbsave}: Character vector of \code{http} or \code{https}
URLs. Duplicates, \code{NA} and empty strings are dropped. An address
on your own network (a private or loopback IP, a \code{.local} or
one-label name) is refused: the archive cannot reach it, and the
request would tell it where your intranet is.}
\item{dir}{For \code{arccap}: A folder for the files and the manifest (created if needed).

For \code{arcpush}: The folder of an \code{\link[=arccap]{arccap()}} capture.

For \code{cpsbndl}: Character scalar, the directory the capsule lives in. For
\code{cpsbndlvrf()}, the directory to check the files in.

For \code{mkbndlchk}: A folder to unzip into, which must not exist yet. Default: a
new folder under \code{tempdir()}.

For \code{mkbndlproj}: Folder for the project, created if needed.}
\item{item}{For \code{arccap}: Optional archive.org item identifier (5 to 100 letters, digits,
dots, hyphens, underscores) to upload to; \code{NULL} (default) captures
without uploading.

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.}
\item{meta}{For \code{arccap}: Named metadata for a new item (\code{title}, \code{creator},
\code{licenseurl}, \code{description}, \code{subject}, ...);
\code{mediatype} defaults to \code{"data"}.

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.

For \code{mkmnf}: A list of run metadata, normally named (for example
\code{project}, \code{author}, \code{run_at}, \code{synthetic}). May be
\code{list()}.}
\item{tsa}{For \code{arccap}: The time-stamping authority. \code{"https://freetsa.org/tsr"} is
the default; \code{NULL} means no timestamp.

For \code{arcpush}: A time-stamping authority, asked only when the manifest has
no timestamp yet (default as for \code{\link[=arccap]{arccap()}}); \code{NULL} asks none.

For \code{tsstmp}: The time-stamping authority's URL.}
\item{ak}{For \code{arccap}: archive.org keys; default from the environment as
\code{\link{wbsave}} reads them.

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.

For \code{wbsave}: Your archive.org S3-like API
keys (archive.org/account/s3.php). By default
they are read from the environment variables
\code{IA_S3_ACCESS_KEY} and \code{IA_S3_SECRET_KEY}, or from
the files named by \code{IA_S3_ACCESS_KEY_FILE} and
\code{IA_S3_SECRET_KEY_FILE} (a key file other users can
read is warned about). They are sent to web.archive.org only
and never printed.}
\item{sk}{For \code{arccap}: archive.org keys; default from the environment as
\code{\link{wbsave}} reads them.

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.

For \code{wbsave}: Your archive.org S3-like API
keys (archive.org/account/s3.php). By default
they are read from the environment variables
\code{IA_S3_ACCESS_KEY} and \code{IA_S3_SECRET_KEY}, or from
the files named by \code{IA_S3_ACCESS_KEY_FILE} and
\code{IA_S3_SECRET_KEY_FILE} (a key file other users can
read is warned about). They are sent to web.archive.org only
and never printed.}
\item{tmout}{For \code{arccap}: Seconds allowed for each download and each upload (default 600).

For \code{arcget}: Seconds allowed for the download.

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.

For \code{fetchvrf}: Seconds allowed for each download (default 120).

For \code{rvkfetch}: Number, default 10: seconds to allow each request.}
\item{upload}{For \code{arccap}: Where else to keep the captures: \code{"rmorie"}
(archive.rmorie.com, from this connection, with your key; see
\code{\link{dlogin}}), \code{"wayback"} (ask the Wayback Machine to save
the same addresses, with archive.org keys as for \code{\link{wbsave}}),
both, or \code{NULL} (default: only the local folder and, with \code{item},
archive.org).

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.}
\item{reason}{For \code{arccap}: Why the files are kept, one sentence of 20 characters or more;
needed with \code{upload = "rmorie"}, and written into each WARC file.

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.

For \code{wbsave}: With \code{fallback = "rmorie"}: why the files are kept (20
characters or more).}
\item{visibility}{For \code{arccap}: \code{"public"} (default: listed in the archive's search;
anyone can download and check it) or \code{"private"} (only you, with your
key).

For \code{arcpush}: As for
\code{\link[=arccap]{arccap()}}.}
\item{warc}{Write each capture as a WARC/1.1 file with a CDXJ index
(\code{dir/archive/}, \code{dir/indexes/index.cdxj}), the layout pywb and
warcio read and \code{\link{fetchvrf}} falls back to (default \code{TRUE}).}
\item{url}{For \code{arcfind}: A web address, or the start of one followed by \code{*}.

For \code{fetchvrf}: The source URL (https).

For \code{idcrd}: Optional, one string
each: your ORCID iD (\code{"0000-0002-1825-0097"}, or its
\verb{https://orcid.org/} address), e-mail address, web
page (\verb{https://}) and affiliation.}
\item{from}{For \code{arcfind}: Optional limits on the capture time, as \code{"YYYY"},
\code{"YYYYMM"} ... up to \code{"YYYYMMDDhhmmss"} (UTC).

For \code{perdays}: Start of the period: a single \code{Date}, or a single value
\code{as.Date()} accepts (such as \code{"2024-01-01"}). Numbers are
refused.}
\item{to}{For \code{arcfind}: Optional limits on the capture time, as \code{"YYYY"},
\code{"YYYYMM"} ... up to \code{"YYYYMMDDhhmmss"} (UTC).

For \code{perdays}: End of the period, inclusive, in the same forms; must not be
before \code{from}.}
\item{limit}{For \code{arcfind}: The most captures to list (default 1000).

For \code{ghann}: Integer: the longest body; a longer one is cut and says so.}
\item{x}{For \code{arcget}: A capture id (\code{"20261021133005-1a2b3c4d"}, from
\code{\link{arcfind}} or a capture page) or a web address; for an address,
the capture closest to \code{at} (default: the latest) is taken.

For \code{cblake2b}: A character vector or a raw vector.

For \code{ccrc32}: A character vector (one checksum per element) or a raw vector
(one checksum of all its bytes).

For \code{cpschk}, \code{ghann}: An \code{rmbl_cpschk} result.

For \code{csha512}: A character vector (one digest per element) or a raw vector
(one digest of all its bytes).

For \code{dgstobj}: Any R object.

For \code{falsfam}: A named list of \code{bricklayer_falsification}
objects, or a named numeric vector of p-values.

For \code{ldgrread}: A \code{ldgrread()} or \code{ldgrchk()} result.

For \code{print.bricklayer_attestation}: The object to render.

For \code{ralloc}: A list from ralloc(), for \code{plot()}.

For \code{rallocvrf}: A list from \code{\link[=ralloc]{ralloc()}}
(kept with \code{\link[=saveRDS]{saveRDS()}}).

For \code{recevid}: A result of
\code{\link[=cpsplant]{cpsplant()}},
\code{\link[=cpsspec]{cpsspec()}} or
\code{\link[=cpsfals]{cpsfals()}}.}
\item{dest}{For \code{arcget}: The file the fetched bytes are written to.

For \code{fetchvrf}: Path the verified file is written to (by way of a \code{.part} file).

For \code{mkbndl}: An existing folder to write the zip into.}
\item{sha256}{For \code{arcget}: Optional SHA-256 the bytes must have.

For \code{fetchvrf}: The expected SHA-256, 64 hexadecimal characters, or
\code{NULL}.}
\item{at}{For \code{arcget}: For an address, the time to be closest to, \code{"YYYY..."} up to
14 digits (UTC).

For \code{idcrd}: The time to check the card's dates at: a
\code{POSIXct} or anything \code{as.POSIXct()} reads, taken as
UTC. Defaults to now.}
\item{pkgs}{For \code{capdeps}: Character vector of package names.
Defaults to the namespaces currently loaded.

For \code{capenv}: Character vector of package names to record. Defaults to
every currently loaded namespace (\code{loadedNamespaces()}).

For \code{ldgrread}: Character vector: check only the covered functions and checks of
these packages; \code{NULL} (the default) checks every package named.}
\item{key}{For \code{cblake2b}: Optional key: a single string or a raw vector of at most 64
bytes. \code{NULL} (default) gives the plain digest.

For \code{cpsatst}: For \code{cpsatst()}, a signing key from \code{\link[=fipskg]{fipskg()}}
(ML-DSA, SLH-DSA and the other standardised schemes) or \code{\link[=pqckg]{pqckg()}}
(XMSS), or a shared secret (a string or raw vector) for \code{"hmac"}. For
\code{cpschkatst()}, the shared secret that checks an \code{"hmac"}
attestation; it is not used for the other schemes, whose public key the
attestation carries.

For \code{cpsbndl}: For \code{cpsbndl()}, a signing key from \code{\link[=fipskg]{fipskg()}} or
\code{\link[=pqckg]{pqckg()}}, or a shared secret (a string or raw vector) for an
\code{"hmac"} bundle such as morie writes: the attestation then records
the key's id, never the secret (see \code{\link[=cpsatst]{cpsatst()}}). For
\code{cpsbndlvrf()}, the shared secret that checks an \code{"hmac"} bundle's
signature; not used for the other schemes.

For \code{cpschk}: Character scalar: the shared secret of HMAC bundles, or
\code{""}.

For \code{cpsseal}: The signing key, as \code{cpsbndl()} takes it: a shared
secret (a string or raw vector) for an \code{"hmac"} bundle, or a key
from \code{\link{fipskg}} or \code{\link{fipskey}}, or an XMSS key
from \code{\link{pqckg}}, which signs one capsule after another at
consecutive indices (each reserved as \code{\link{cpssign}} reserves it).

For \code{cpssign}: A shared secret (character/raw) for \code{"hmac"},
a \code{bricklayer_signing_key} from
\code{\link[=pqckg]{pqckg()}} for \code{"xmss"}, or a
\code{bricklayer_fips_key} from
\code{\link[=fipskg]{fipskg()}} for a standardised scheme (in
which case \code{scheme} is taken from the key and ignored), or a key from
\code{\link[=fipsmkg]{fipsmkg()}}, which signs inside the FIPS 140-3 module that made it.

For \code{cpsvrf}: The shared secret for \code{"hmac"}, a public key
(or full signing key) for XMSS, or a
\code{\link[=fipskg]{fipskg()}} key or its
\code{\link[=fipspubkey]{fipspubkey()}} for a standardised
scheme. A signature is not verified against a key of a different scheme.

For \code{cpsxvrf}: The signer's key from
\code{\link[=fipskg]{fipskg()}} or
\code{\link[=fipspubkey]{fipspubkey()}}; only its
public half is used.

For \code{dgstobj}: Optional key (a single string or raw vector), default \code{NULL}.
Only for \code{"sha256"} (HMAC-SHA-256) and \code{"blake2b"} (keyed BLAKE2b): gives
a keyed fingerprint that only a key holder can reproduce.

For \code{fipskg}: A key from \code{fipskg()}.

For \code{fipsmu}: A key from
\code{\link[=fipskg]{fipskg()}} or
\code{\link[=fipskey]{fipskey()}}. An ML-DSA scheme: SLH-DSA has no
external-mu interface, because its digest depends on per-signature
randomness that the signer chooses.

For \code{hqccmpkey}: A key from \code{\link[=hqckg]{hqckg()}}.

For \code{hqcdecap}: A key from \code{\link[=hqckg]{hqckg()}}, with its secret half
(full or
compressed).

For \code{hqcencap}: A key or public key from \code{\link[=hqckg]{hqckg()}} /
\code{\link[=hqcpubkey]{hqcpubkey()}}.

For \code{hqckg}: A key from \code{hqckg()} (\code{hqcpubkey()} only).

For \code{idcrd}: Your private signing key, from \code{\link[=fipskg]{fipskg()}}
or \code{\link[=pqckg]{pqckg()}}.

For \code{kemdecap}: A key from
\code{\link[=kemkg]{kemkg()}}, with its secret half.

For \code{kemencap}: A key or public key from
\code{\link[=kemkg]{kemkg()}} /
\code{\link[=kempubkey]{kempubkey()}}.

For \code{kemkg}: For \code{kempubkey()}: a key pair from \code{kemkg()}.

For \code{keyeddgst}: Secret key, as a length-1 character vector or a
raw vector. Keys longer than the 64-byte block are hashed down first,
per RFC 2104. Use at least 32 bytes of real entropy; against a quantum
adversary Grover halves the effective key strength, so a 256-bit key
retains a 128-bit margin.

For \code{oqskg}: A key from \code{oqskg()}.

For \code{signpubkey}: A \code{bricklayer_signing_key} from
\code{\link[=pqckg]{pqckg()}}.

For \code{xmssadv}: The \code{bricklayer_signing_key} that made \code{sig}.}
\item{length}{For \code{cblake2b}: Digest length in bytes, 1 to 64 (default 32,
matching SHA-256's width).

For \code{drvkey}: Whole number from 1 to 1024, default 32: the derived key
length in bytes.}
\item{leaf}{For \code{certchnvrf}: The certificate to validate, from
\code{\link[=certprs]{certprs()}} or anything
\code{\link[=certprs]{certprs()}} accepts.

For \code{mrk}: The chunk whose membership is being verified: one string or
one raw vector.}
\item{trust}{For \code{certchnvrf}: A list of trust anchors -- the certificates
you have decided to believe. A chain that does not reach one of these
fails.

For \code{tsstmp}: Trust anchors for the authority's certificate, passed to
\code{\link[=tsvrf]{tsvrf()}}: for the default authority, its root certificate from
\url{https://freetsa.org/files/cacert.pem}. Without one the token's
signature is still checked, but the result is not VERIFIED, because
nothing vouches for the certificate that made it.

For \code{tsvrf}: Trust anchors for validating that certificate
-- see \code{\link[=certchnvrf]{certchnvrf()}}. Without
them the signature is still checked, but nothing vouches for the key
that made it.}
\item{inter}{Optional further certificates
to build the path through. They are not trusted by being supplied; they
still have to verify.}
\item{attm}{For \code{certchnvrf}: The time to check validity windows at: a \code{POSIXct} or
anything \code{as.POSIXct()} reads, taken as UTC. Defaults to now.

For \code{tsvrf}: The time to check certificate validity at.
Defaults to the time the token asserts, which is usually what is wanted.}
\item{purp}{Optional extended key usage the leaf must
carry, as a name (\code{"timeStamping"}, \code{"codeSigning"}, ...) or
an OID. Default \code{NULL}: no purpose is required.}
\item{crls}{For \code{certchnvrf}: Optional list of CRLs, as raw DER or paths, to check
the chain against. Default \code{list()}.

For \code{tsvrf}: Optional CRLs to check the chain against, as raw
vectors or paths.}
\item{pols}{Optional character vector of acceptable certificate
policy OIDs; default \code{NULL}.
Supplied, the path must yield at least one of them after policy mapping
and the constraints in RFC 5280 section 6.1; omitted, policies are
processed but only reported as a failure when a certificate in the path
requires an explicit policy.}
\item{rvk}{\code{"supplied"} (the default)
checks only the CRLs given in \code{crls}. \code{"fetch"} additionally
retrieves CRLs from the distribution points in the certificates and
queries OCSP responders
-- which makes verification depend on the network and discloses to
the responder which certificates are being checked, so it is never the
default. \code{"none"} skips revocation entirely.}
\item{cert}{For \code{certprs}: The certificate, DER or PEM: a raw vector of DER bytes,
or the path of a \code{.der}, \code{.crt}, \code{.cer} or \code{.pem}
file.

For \code{tsvrf}: The authority's certificate, DER
or PEM, as raw or a path. Optional: when the token embeds a certificate,
that one is used and the fact is reported.}
\item{chain}{A chain from \code{chnnew()} or \code{chnapp()}.}
\item{entry}{Any object to record. It is digested through
its own deterministic serialization, so lists and data frames are
accepted as readily as strings.}
\item{label}{Optional short label for the entry (the first element of
\code{as.character(label)} is kept); \code{NA} by default. Covered by
the entry's digest.}
\item{path}{For \code{chnkfile}, \code{filedgst}: Path to an existing file, a single string.

For \code{cpsbndl}: Character scalar. For \code{cpsbndlrd()}, the bundle file to read.
For \code{cpsbndl()}, where to write the bundle (an existing file is
overwritten).

\code{capsule_bundle.json} inside \code{dir} is the default for \code{cpsbndl()}.

For \code{cpschk}: Character scalar, the folder searched recursively
(\code{.git} and \code{.rmbl-cache} folders skipped).

For \code{cpsseal}: Character scalar, the folder searched recursively.

For \code{idcrd}: The path of a card file written by
\code{idcrd()}.

For \code{ldgrread}: Character scalar, the ledger JSON file.

For \code{rvkfetch}: A certificate path, leaf first, as
\code{\link[=certchnvrf]{certchnvrf()}} builds it.

For \code{usecpstmpl}: Character string: the directory to create. It may exist only
if it is empty.

For \code{wrmnfjs}: Character scalar, the destination file path.

For \code{xmssidxseen}: A directory (every \code{capsule_bundle.json} under it) or one bundle
file.}
\item{chnkbytes}{Chunk size in bytes, a positive whole number (default
1048576, i.e. 1 MiB).}
\item{prov}{A provenance list as returned by
\code{\link[=loadprov]{loadprov()}},
or \code{NULL}.}
\item{man}{For \code{cpsatst}: A manifest, as from \code{\link[=mkmnf]{mkmnf()}}.

For \code{cpsbndl}: A manifest, as from \code{\link[=mkmnf]{mkmnf()}}. It is required by
\code{cpsbndl()} and optional for \code{cpsbndlvrf()}, where it adds a check
that the manifest
still has the bundled digest.

For \code{mnfcanon}: A manifest (a list), as from
\code{\link[=mkmnf]{mkmnf()}}; any list
is accepted.

For \code{mnfrcmp}: A manifest, as from \code{\link[=mkmnf]{mkmnf()}}
and \code{\link[=recrd]{recrd()}}.

For \code{mnfrecseed}: A manifest, as from \code{\link[=mkmnf]{mkmnf()}} (a
list).

For \code{recevid}: A manifest from \code{\link[=mkmnf]{mkmnf()}}.

For \code{recrd}: A manifest as returned by
\code{\link[=mkmnf]{mkmnf()}}.

For \code{wrmnfjs}: A manifest as returned by
\code{\link[=mkmnf]{mkmnf()}} and built up
with \code{\link[=recrd]{recrd()}}.

For \code{wrsmrytxt}: A manifest as returned by
\code{\link[=mkmnf]{mkmnf()}}; its
\code{meta} supplies the header and its \code{results} the counts.}
\item{ctx}{For \code{cpsatst}: Optional context string (or raw vector), bound into the
signature for the standardised schemes; see
\code{\link[=cpssign]{cpssign()}}.
\code{NULL} (the default) means none.

For \code{cpsbndl}: As in
\code{\link[=cpsatst]{cpsatst()}}.

For \code{cpssign}: Optional context string (character or raw,
at most 255 bytes) for the standardised schemes, and ignored by the
others. FIPS 204 and FIPS 205 both bind it into the message encoding, so
a signature made under one context does not verify under another --
which is how the same key is safely used for two purposes.

For \code{cpsvrf}: The context string the signature was made
under, for the standardised schemes. A signature made under a different
context, or under none, does not verify.

For \code{cpsxvrf}: The context string the signature was made with, or \code{NULL}.

For \code{fipsmu}: Optional context string, as in
\code{\link[=cpssign]{cpssign()}}.}
\item{prehash}{For \code{cpsatst}: Pre-hash, as in \code{\link[=cpssign]{cpssign()}}. It is \code{"none"}
(the default) or a hash name such as \code{"sha256"} or \code{"sha512"}.

For \code{cpsbndl}: As in
\code{\link[=cpsatst]{cpsatst()}}.

For \code{cpssign}: For the standardised schemes, sign a digest of the message
rather than the message itself -- HashML-DSA (FIPS 204 section 5.4) or
HashSLH-DSA (FIPS 205 section 10.2.2). One of \code{"none"} (the default, the pure
variants) or any hash function the two standards approve. The SHA-2 hashes
are \code{"sha224"}, \code{"sha256"}, \code{"sha384"}, \code{"sha512"},
\code{"sha512_224"} and \code{"sha512_256"}; the SHA-3 hashes are \code{"sha3_224"},
\code{"sha3_256"}, \code{"sha3_384"} and \code{"sha3_512"}; the SHAKE ones are
\code{"shake128"} (256-bit output) and \code{"shake256"} (512-bit output). The
identifier of the pre-hash is bound into the signature, so a pre-hashed
signature is never interchangeable with a pure one over the same digest.

For \code{cpsvrf}: The pre-hash the signature was made with.
Taken from the signature when not given, since
\code{\link[=cpssign]{cpssign()}} records it; supply it to
check a signature that arrived without that field.

For \code{fipsmu}: Pre-hash function, as in
\code{\link[=cpssign]{cpssign()}}.}
\item{note}{For \code{cpsatst}: Optional free text recorded in the attestation
-- what the signature is meant to assert, in the signer's own words. It
is covered by the signature, since it is part of the digest.

For \code{cpsbndl}: As in
\code{\link[=cpsatst]{cpsatst()}}.

For \code{prrgdecl}: Optional character string, default \code{NULL}: free text -- the
design, the data source, what would count as a refutation. Only the first
element is kept.}
\item{attest}{An attestation from \code{cpsatst()}.}
\item{keyexp}{For \code{cpsatst}: Optional public key the attestation must carry, as hex
or as a key object from \code{\link[=fipskg]{fipskg()}},
\code{\link[=fipspubkey]{fipspubkey()}} or
\code{\link[=signpubkey]{signpubkey()}}. Supply it when you know
which key should have
signed: without it the check confirms the attestation is internally
consistent, which any key's holder could arrange.

For \code{cpsbndl}: Optional public key hex (for \code{"hmac"}, the key id) the
bundle's attestation must carry. Supply it when you know which key
should have signed: without it the check confirms the bundle is
internally consistent, which any key's holder could arrange.}
\item{files}{Character vector of paths relative to \code{dir}. Defaults to
every regular file in \code{dir} (recursively, dot-files included), excluding
the bundle itself.}
\item{bundle}{For \code{cpsbndl}: A bundle read back with
\code{cpsbndlrd()}, or the path to one.

For \code{mkbndlchk}: Path to the bundle zip.}
\item{seen}{For \code{cpsbndlvrf()}, the XMSS signatures seen elsewhere, as
\code{\link[=xmssidxseen]{xmssidxseen()}} returns them,
or \code{NULL}. For an XMSS bundle it adds an \code{xmss_index} row, failed
(\code{"xmss index reused"}) when the same key signed
the bundle's index with another signature: the key's state was copied
or rolled back (RFC 10033, section 4).}
\item{mode}{\code{"verify"} (the default), \code{"drift"},
\code{"refresh"} or \code{"report"} (the verify checks).}
\item{pubkey}{Character scalar: the public key (hex) every bundle must be
signed with (for an HMAC bundle, its key id), or \code{""}. Given, a
capsule with no signed bundle fails: there is nothing the key checks.}
\item{psiwarn}{Non-negative numbers, \code{psiwarn} at most
\code{psifail}: the PSI bands, by default 0.1 and 0.25, the bands
\code{\link{drftpsi}} documents.}
\item{psifail}{Non-negative numbers, \code{psiwarn} at most
\code{psifail}: the PSI bands, by default 0.1 and 0.25, the bands
\code{\link{drftpsi}} documents.}
\item{base}{For \code{cpschk}: \code{NULL} (no comparison); the path of one manifest file
each manifest is compared with; a folder holding the base copy of the
tree under \code{path} (the same relative paths); or a function that
takes a manifest's path and returns the path of its base copy, or
\code{NULL} when the base has none (for a git ref, write what
\code{git show} prints to a file). Its \code{"label"} attribute names
it in the report.

For \code{stkflow}: Character scalar, what the change columns compare
against: \code{"first"} (the default) measures every period against the
first, which is what a report on a whole window wants;
\code{"previous"} measures each period against the one before it,
which is what a series wants (the first row's changes are then
\code{NA}).}
\item{cache}{\code{NULL} (the default: the user cache folder,
\code{tools::R_user_dir("rmoriebricklayer", "cache")}, in an
interactive session, none otherwise), \code{FALSE} (none) or a folder.}
\item{allowfile}{\code{FALSE} (the default), \code{TRUE} to accept
\code{file://} sources and local files anywhere under \code{path}, or an
existing folder whose files may be sources as well. Without it a local
source must be a file inside its own capsule; a fetched one is
\code{https://} only (see \code{\link{cpsrfrsh}}).}
\item{snapshot}{Logical: look up the latest Wayback snapshot of each
http(s) source, a \code{snapshot} row (a note).}
\item{wayback}{Logical: with \code{"refresh"}, capture each changed
http(s) source in the Wayback Machine first (archive.org keys, as
\code{wbsave()} reads them).}
\item{glob}{For \code{cpschk}: Character scalar: check only the capsule files whose path
matches this glob (\code{*} also matches \code{/}), or \code{""}.

For \code{cpsseal}: Character scalar: only the provenance files whose path
matches this glob (\code{*} also matches \code{/}), or \code{""}.}
\item{fp}{Logical: measure the footprint of the checks
(\code{\link{co2fp}}) for the last lines of the report.}
\item{seenlog}{For \code{cpschk}: Character scalar: an XMSS seen-log (\code{\link{xmssidxseen}};
\code{rmbl verify --seen-log}) read with the bundles under \code{path},
or \code{""}. Every XMSS bundle gets an \code{xmss_index} row, failed
when the same key signed its index with another signature in what was
seen.

For \code{xmssidxseen}: Seen-log files to read as well, or NULL. A file that does not
exist yet is an empty log; a directory, or a log with a malformed line, is
refused.}
\item{archive}{Logical: use archive.rmorie.com when a source cannot be
fetched. In \code{"drift"} and \code{"refresh"}, a source that neither
answers nor has its pinned Wayback snapshot is fetched from a copy kept
there with the pinned SHA-256 (public copies need no key); with
\code{wayback = TRUE}, a changed source the Wayback Machine refuses is
saved there instead (\code{wbsave(fallback = "rmorie")}, which needs a
key: \code{dlogin()} or \env{MORIE_HOSTED_KEY}).}
\item{fmt}{\code{"md"} (the Markdown report), \code{"json"} or
\code{"text"} (the console summary \code{print()} draws as a box).}
\item{failon}{Character scalar or \code{NULL}: the fail-on level, named
in the report's last line.}
\item{...}{For \code{cpschk}: Further arguments of \code{format()} and \code{print()}, ignored.

For \code{ldgrread}: Not used.

For \code{mkset}: The results. A name gives a result its heading
(\code{"Change by year" = anltab(...)}); an unnamed one is headed by its
box's own title. One unnamed plain list is read as the list of results.

For \code{print.bricklayer_attestation}: Ignored, present for S3 consistency.

For \code{ralloc}: Passed to the base plot.

For \code{wbrtry}: Passed to \code{wbsave()}: \code{jobs},
\code{within}, the keys, \code{quiet}, \code{permin},
\code{maxcap}.}
\item{data}{For \code{cpsplant}: A data frame with at least 4 rows.

For \code{cpsspec}: A data frame.

For \code{mkbndl}: Optional path to the data file, copied into the bundle
(under the file name the provenance pins) so it runs offline.
\code{NULL} (default) leaves it out: the runner asks for it, offers
to download it, or uses synthetic data.

For \code{mkbndlchk}: Optional path to the data file, passed to the run as
\code{--data}. \code{NULL} (default): the bundle finds the file,
downloads it or, with \code{synthetic = TRUE}, generates data.

For \code{mnfrcmp}: The data the statistics are computed from (usually a data
frame); passed unchanged to each function.

For \code{tsstmp}: What to timestamp: a raw vector, the path of an existing
file, or a list from \code{\link[=ralloc]{ralloc()}} (its commitment is stamped).

For \code{tsvrf}: The bytes the token should cover: a raw vector,
or a path to a file.}
\item{stat}{A function of one data frame returning one number: the
estimated effect of \code{trt} on \code{y}.}
\item{y}{The outcome column's name. It must be numeric.}
\item{trt}{The treatment column's name.}
\item{effects}{The effects to plant. Include 0, so a statistic that
finds an effect where there is none fails.}
\item{tol}{For \code{cpsplant}: How far an average estimate may sit from the planted effect.
The default is 10\% of the largest planted effect.

For \code{mnfrcmp}: Optional numeric tolerance (absolute) overriding each
result's own recorded \code{tol}. Supply it to check more strictly than
the original run did. \code{NULL} (the default) uses the recorded one.

For \code{recrd}: Numeric scalar, the absolute tolerance: a numeric pair at most
\code{tol} apart is \code{PASS}. Default \code{0.0001}.}
\item{seed}{For \code{cpsplant}: Optional seed, for a reproducible check. The session's own
random stream is left as it was.

For \code{fipskg}: Optional raw vector of key-generation seed
bytes, of the length \code{\link[=fipssz]{fipssz()}} reports for
the scheme. Supplying it makes the key reproducible, which is what the
standards' test vectors need; the default draws from the operating
system's CSPRNG.

For \code{hqckg}: Optional raw vector. For v5 it is the 32 bytes of \code{seed_KEM}.
For round 4 it is the
\code{\link[=hqcsz]{hqcsz()}}\verb{["seed"]} bytes its key generation
draws (\code{skseed}, \code{sigma}, \code{pk_seed}: 96, 104 or 112).
Supplying it makes the key reproducible, which is what the known-answer
tests need; the default draws from the operating system's CSPRNG.

For \code{kemkg}: Optional raw vector of 64 seed bytes (
\code{d || z}) . Supplying it makes the key reproducible, which is what
the standard's test vectors need; the default draws from the operating
system's CSPRNG.

For \code{ralloc}: \code{NULL} (default, 48 random bytes), 48 raw bytes, their 96
hexadecimal characters, or a number or word that is expanded to 48
bytes.

For \code{rallocvrf}: The seed revealed at unblinding, or \code{NULL} for the one in
\code{x}.}
\item{overwrite}{For \code{cpsseal}: Logical: sign a capsule that already has a bundle again.

For \code{mkbndl}: Replace a zip of the same name, default \code{FALSE}.

For \code{mkbndlproj}: Replace starter files that exist, default
\code{FALSE}.}
\item{msg}{For \code{cpssign}: Length-1 character vector (or raw vector)
to sign.

For \code{cpsvrf}: The message the signature is claimed to
cover.

For \code{cpsxvrf}: The signed message: a string or a raw vector, as given to
\code{\link[=cpssign]{cpssign()}}.

For \code{fipsmu}: Length-1 character vector or raw vector.

For \code{keyeddgst}: Message to authenticate, as a length-1
character vector (its bytes) or a raw vector.

For \code{xmssadv}: The message the signature was made over; when given, the signature
is verified against the key first, so an edited or foreign signature cannot
advance it. Without it, the signature's index is accepted only up to the
highest index the record shows this key has used here, so an edited index
cannot burn the key's remaining leaves; a signature made on another machine
needs \code{msg}.}
\item{scheme}{For \code{cpssign}: \code{"xmss"} (post-quantum, asymmetric) or
\code{"hmac"} (symmetric). Inferred from \code{key} when not given.

For \code{fipskey}, \code{fipssz}: Scheme name, as in
\code{\link[=fipskg]{fipskg()}}.

For \code{fipskg}: Scheme name, one of \code{\link[=pqcbknd]{pqcbknd()}} other than
\code{"xmss-sha256"}.
The default, \code{"SLH-DSA-SHA2-128s"}, is the FIPS 205 small-signature set
at the first security level, which rests on SHA-256 alone.

For \code{fipsmkg}: An ML-DSA or SLH-DSA parameter set (see \code{\link[=fipssz]{fipssz()}}),
such as \code{"ML-DSA-65"}; the default, \code{"SLH-DSA-SHA2-128s"}, is
\code{\link[=fipskg]{fipskg()}}'s.

For \code{mrk}: The hashing scheme: 2 (the default for building, with leaf
and node prefixes) or 1 (no prefixes, as 0.5.12 and earlier built
them). For \code{mrkvrf()}, \code{NULL} (the default) reads the
scheme from \code{proof}; a number requires that scheme, and a proof
that records a different one does not verify.

For \code{oqskg}: Scheme name; see
\code{\link[=fipskg]{fipskg()}}.}
\item{determ}{For \code{cpssign}: For the standardised schemes,
use the deterministic variant rather than drawing fresh randomness per
signature. The signature then depends only on the key, message and
context, which is what the standards' test vectors rely on.

For \code{fipsmu}: As in
\code{\link[=cpssign]{cpssign()}}.}
\item{masked}{For \code{cpssign}, \code{fipsmu}: \code{TRUE} (the default) for the first-order masked ML-DSA
signer, \code{FALSE} for the plain constant-time one; both give the same
signature for the same randomness. The option
\code{rmoriebricklayer.masked} sets the default for a session, so
chain- and bundle-heavy code that has no physical attacker in its threat
model can take the plain path everywhere with
\code{options(rmoriebricklayer.masked = FALSE)}. SLH-DSA and XMSS
signing are not masked and ignore it. Masking costs about 2.3 to 3.4 times
the plain time on ML-KEM decapsulation (4 ms for ML-KEM-768 on this
package's test machine) and 7 to 10 times on ML-DSA signing (26 ms for
ML-DSA-65), depending on the CPU.

For \code{kemdecap}: Logical, \code{TRUE} or \code{FALSE}.

\code{rmoriebricklayer.masked}, an option, gives the default when it is
set; otherwise the default is \code{TRUE}. \code{TRUE} runs the first-order
masked decapsulation, \code{FALSE} the plain one. Both return the same
secret.}
\item{specs}{A named list of functions, each taking the data frame and
returning one number: the estimate under that specification. The
first is the one the paper reports.}
\item{sig}{For \code{cpsvrf}: A \code{bricklayer_signature} from
\code{\link[=cpssign]{cpssign()}}.

For \code{cpsxvrf}: A signature from \code{\link[=cpssign]{cpssign()}}.

For \code{fipsmu}: A signature from \code{fipssignmu()}
or \code{\link[=cpssign]{cpssign()}}.

For \code{xmssadv}: The XMSS signature it made, from
\code{\link[=cpssign]{cpssign()}},
or the attestation, bundle or recode manifest that carries it.}
\item{openssl}{Path to the \code{openssl} program. The default is the option
\code{rmbl.fips.openssl}, else the \code{openssl} on the \code{PATH}.}
\item{algo}{\code{"sha256"} (default), \code{"sha512"},
\code{"blake2b"} or \code{"crc32"}.}
\item{drbg}{A generator from \code{\link[=drbgnew]{drbgnew()}}.}
\item{addl}{For \code{drbggen}: Optional additional input of up to 48 bytes, raw or hex,
mixed into the state before and after the output. Default \code{NULL}
(none).

For \code{drbgrsd}: Optional additional input of up to 48 bytes, raw or hex;
default \code{NULL} (none).}
\item{entropy}{For \code{drbgnew}: Entropy input: exactly 48 bytes, as a raw vector or one
string of 96 hexadecimal digits. \code{NULL} (the default) draws them from
the operating system's CSPRNG through \code{\link[=rndbytes]{rndbytes()}}.

For \code{drbgrsd}: Entropy input: exactly 48 bytes, raw or hex; \code{NULL} (the
default) draws them from the operating system's CSPRNG.}
\item{person}{Optional personalization string of up to 48 bytes,
raw or hex; \code{NULL} (the default) is the empty string. Different
personalization strings give independent streams from the same entropy.}
\item{pass}{Passphrase, as a length-1 character
or raw vector.}
\item{salt}{For \code{drvkey}: Unique, non-secret salt (length-1 character or
raw). Use \code{\link[=rndbytes]{rndbytes()}} to make one, and
store it beside the key.

For \code{hqcencap}: Optional raw vectors of encapsulation randomness, default
\code{NULL} (drawn fresh): \code{m} of
\code{\link[=hqcsz]{hqcsz()}}\verb{["message"]} bytes (16, 24 or
32) and \code{salt} of 16 bytes. Supplying them makes the operation
reproducible, which is what the known-answer tests need. Reusing them for
the same key repeats the shared secret, so supply them only deliberately.}
\item{iter}{Whole number, default 100000 (minimum 1): the PBKDF2
iteration count. Verification must use the same value.}
\item{rr}{Observed risk ratio, greater than 0. Protective
effects (below 1) are inverted first, as the measure is symmetric.}
\item{lo}{Optional confidence limits on the same scale.
The limit nearer the null is the one used.}
\item{hi}{Optional confidence limits on the same scale.
The limit nearer the null is the one used.}
\item{true}{Number, default 1 (the null): the value to move the estimate
to. A value other than 1 asks how much confounding would move the
estimate to \code{true} instead of to no effect.}
\item{meth}{\code{"holm"} (the default), \code{"bh"},
\code{"bonferroni"} or \code{"none"}.}
\item{alpha}{Number, default 0.05: the threshold applied to the adjusted
values.}
\item{mirrors}{Further URLs that serve the same file, tried in order after
the source.}
\item{arcs}{Archives tried after the source, its Wayback snapshot and the
mirrors: \code{"rmorie"} (archive.rmorie.com, by \code{\link{arcget}}) and
folders written by \code{\link{arccap}} (read from their WARC files), in
order. \code{character()} tries none.}
\item{blkbytes}{Read size in bytes, a positive whole number (default
1048576). Affects speed only, never the result.}
\item{public}{Public key, hex or raw.}
\item{secret}{Secret key, hex or raw. Omit for a
verification-only key.}
\item{mod}{The module, from \code{\link[=fipsmod]{fipsmod()}}.}
\item{conf}{Path to an OpenSSL configuration that loads the FIPS
provider, or \code{""} to let the package write one.}
\item{mu}{The 64 raw bytes from \code{fipsmu()}.}
\item{runurl}{Character scalar or \code{NULL}: the run's address, linked
at the end of the comment.}
\item{marker}{Character scalar, the comment's first line (an HTML
comment, invisible on GitHub).}
\item{report}{Character scalars: the paths of the report and the
JSON written, passed through as outputs.}
\item{json}{Character scalars: the paths of the report and the
JSON written, passed through as outputs.}
\item{comment}{Character scalar: what became of the comment
(\code{off}, \code{dry-run}, \code{skipped}, \code{created},
\code{updated} or \code{failed}), passed through.}
\item{ct}{For \code{hqcdecap}: Ciphertext from
\code{\link[=hqcencap]{hqcencap()}}, as a hex string or a raw vector.

For \code{kemdecap}: The \code{ct} element from
\code{\link[=kemencap]{kemencap()}},
as a hex string or a raw vector, of the length for the key's level.}
\item{m}{For \code{hqcencap}: Optional raw vectors of encapsulation randomness, default
\code{NULL} (drawn fresh): \code{m} of
\code{\link[=hqcsz]{hqcsz()}}\verb{["message"]} bytes (16, 24 or
32) and \code{salt} of 16 bytes. Supplying them makes the operation
reproducible, which is what the known-answer tests need. Reusing them for
the same key repeats the shared secret, so supply them only deliberately.

For \code{kemencap}: Optional raw vector of 32 bytes of encapsulation
randomness. Supplying it makes the operation reproducible, which is what
the standard's test vectors need; the default draws from the operating
system's CSPRNG. Reusing it across encapsulations to the same key reuses
the shared secret, so supply it only deliberately.}
\item{lvl}{For \code{hqckg}: Security level, as a NIST category: 1, 3 (the default) or 5
(HQC-1, HQC-3, HQC-5; 128, 192 and 256 are accepted for the same three).
Level 3 matches the category of ML-KEM-768,
\code{\link[=kemkg]{kemkg()}}'s default.

For \code{hqcsz}: Security level: 1, 3 or 5 (or 128, 192, 256 for the same
three). There is no default.

For \code{kemkg}: Security level, one whole number: 512 (ML-KEM-512, NIST
category 1), 768 (the default, category 3) or 1024 (category 5). 768 is
the level NIST and the IETF have settled on for general use.

For \code{kemsz}: Security level, one whole number: 512, 768 or 1024. There is
no default.}
\item{ver}{For \code{hqckg}: \code{"v5"} (the default: the specification of 2025-08-22, a
32-byte shared secret) or \code{"round4"} (the submission of 2023-04-30, a
64-byte shared secret). Keys remember it; encapsulation and decapsulation
follow the key.

For \code{hqcsz}: \code{"v5"} (the default) or \code{"round4"}, as in
\code{\link[=hqckg]{hqckg()}}.}
\item{name}{For \code{idcrd}: Your name as you want it shown, one
string.

For \code{mkbndlproj}: Short project name used in the zip's name, default the
folder's name.

For \code{recrd}: Character scalar, the name of this cross-check. It is the key
of the entry in \code{manifest$results}, so it should be unique.

For \code{usecpstmpl}: Character string: the capsule name written into the
provenance and README. Defaults to the last part of \code{path}.}
\item{orcid}{Optional, one string
each: your ORCID iD (\code{"0000-0002-1825-0097"}, or its
\verb{https://orcid.org/} address), e-mail address, web
page (\verb{https://}) and affiliation.}
\item{email}{Optional, one string
each: your ORCID iD (\code{"0000-0002-1825-0097"}, or its
\verb{https://orcid.org/} address), e-mail address, web
page (\verb{https://}) and affiliation.}
\item{affil}{Optional, one string
each: your ORCID iD (\code{"0000-0002-1825-0097"}, or its
\verb{https://orcid.org/} address), e-mail address, web
page (\verb{https://}) and affiliation.}
\item{file}{For \code{idcrd}: Optional path to write the card to, as
JSON.

For \code{mkset}: \code{NULL} (default) to print, or a file to write: the extension
picks the format (\code{.html} or \code{.htm},
\code{.md}, \code{.txt}). An existing file is replaced.

For \code{tsstmp}: Optional path to save the token to (a \code{.tsr} file). An
existing file is not overwritten.}
\item{card}{A card, from \code{idcrd()} or \code{idcrdrd()}, or
the path of one.}
\item{fpr}{Optional: the fingerprint you were given
for this person, with or without its spaces. Without
it the card is checked only against itself.}
\item{atst}{Optional: an attestation of \code{\link[=cpsatst]{cpsatst()}},
or a bundle of \code{\link[=cpsbndl]{cpsbndl()}} or
\code{\link[=cpsbndlrd]{cpsbndlrd()}},
to check
was signed by the card's key. Check the attestation
itself with \code{\link[=cpschkatst]{cpschkatst()}} or
\code{\link[=cpsbndlvrf]{cpsbndlvrf()}}.}
\item{a}{Digests to compare, each a length-1 character vector.}
\item{b}{Digests to compare, each a length-1 character vector.}
\item{ledger}{A \code{ldgrread()} result, or the path of a ledger file.}
\item{project}{A project folder, or the name of an example shipped
with the package (\code{"otis-mrp"}, the Ontario restrictive
confinement analysis).}
\item{version}{Version label in the zip's name, default \code{"1"}.}
\item{secrets}{Pack files whose names look like credentials (see
Details), default \code{FALSE}: they are left out with a warning.}
\item{synthetic}{Run on synthetic data (\code{--synthetic}), default
\code{FALSE}; needs no data file and no network.}
\item{keep}{Keep that folder after the check, default \code{FALSE}.}
\item{container}{Run the bundle in a container: \code{NULL} or
\code{FALSE} (default) do not, \code{TRUE} uses podman, else docker,
and \code{"podman"} or \code{"docker"} names the runtime. See Details.}
\item{title}{For \code{mkbndlproj}: Title shown in the bundle's pages, default \code{name}.

For \code{mkset}: The report's heading, default \code{"Analysis results"}.}
\item{author}{Who the reviewer contacts; default empty.}
\item{contact}{For \code{mkbndlproj}: Who the reviewer contacts; default empty.

For \code{wrsmrytxt}: Optional character scalar appended as a \code{Contact:}
line. Default \code{NULL}.}
\item{env}{Logical scalar; when \code{TRUE} (the default) the
manifest also records the analysis environment via
\code{\link[=capenv]{capenv()}}: R version, platform, OS,
UTC timestamp, random
number generator kind and whether it was seeded, and the version of
every loaded package. Any other value leaves it out.}
\item{plots}{In HTML, draw each result's plot, default \code{TRUE}.}
\item{stats}{Named list of functions of \code{data}, each returning
one value. Names must match the recorded result names.}
\item{chunks}{Chunk contents, in order: a character vector (one chunk per
element), a single raw vector (one chunk), or a list of raw vectors and
single strings, such as \code{\link[=chnkfile]{chnkfile()}} returns.}
\item{index}{The chunk to prove, one whole number from 1 to the number of
chunks.}
\item{proof}{The list returned by \code{mrkprf()}.}
\item{root}{The expected root digest, a 64-character hex string as
\code{mrkroot()} returns.}
\item{height}{Tree height, 1 to 16 (default 10, i.e. 1024
signatures).}
\item{skseed}{64-character hex seeds
(32 bytes each) -- the three secrets RFC 8391's private key carries.
\code{skseed} derives the WOTS+ chains, \code{pubseed} masks the
hashes, and \code{skprf} keys the per-signature randomiser. Omit them
and they are drawn from the operating system's CSPRNG via
\code{\link[=rndbytes]{rndbytes()}}, which fails rather than
falling back to R's reproducible generator. Supply them ONLY to
reproduce a key deterministically in a test -- a seed you can guess is a
key you can forge.}
\item{pubseed}{64-character hex seeds
(32 bytes each) -- the three secrets RFC 8391's private key carries.
\code{skseed} derives the WOTS+ chains, \code{pubseed} masks the
hashes, and \code{skprf} keys the per-signature randomiser. Omit them
and they are drawn from the operating system's CSPRNG via
\code{\link[=rndbytes]{rndbytes()}}, which fails rather than
falling back to R's reproducible generator. Supply them ONLY to
reproduce a key deterministically in a test -- a seed you can guess is a
key you can forge.}
\item{skprf}{64-character hex seeds
(32 bytes each) -- the three secrets RFC 8391's private key carries.
\code{skseed} derives the WOTS+ chains, \code{pubseed} masks the
hashes, and \code{skprf} keys the per-signature randomiser. Omit them
and they are drawn from the operating system's CSPRNG via
\code{\link[=rndbytes]{rndbytes()}}, which fails rather than
falling back to R's reproducible generator. Supply them ONLY to
reproduce a key deterministically in a test -- a seed you can guess is a
key you can forge.}
\item{object}{The object to summarise.}
\item{hyps}{Named character vector: one claim
per statistic, named by the statistic's name as it will be recorded.}
\item{prereg}{A declaration from \code{prrgdecl()}.}
\item{rptd}{Character vector of the statistic names
actually reported, or a manifest (any list with a named \code{results}
element, such as a capsule manifest), whose result names are used.}
\item{arms}{The arms' names, default \code{c("A", "B")}.}
\item{ratio}{Whole numbers, one per arm: the allocation ratio, default
equal.}
\item{block}{The block sizes to choose from at random, default
\code{2 * sum(ratio)} and \code{3 * sum(ratio)} (4 and 6 for two equal arms);
\code{NULL} for simple randomisation.}
\item{strata}{\code{NULL}, or the strata and their numbers of places: a named
vector of counts, or a data frame with the stratum columns and \code{n}.}
\item{codes}{Give every participant a kit code, default \code{FALSE}.}
\item{prefix}{The start of the participant ids, default \code{"P"}.}
\item{digest}{The commitment published before enrolment, or \code{NULL} to
check against the one in \code{x}.}
\item{grp}{For \code{recevid}: The records' group.

For \code{recrd}: Character scalar, a grouping label stored with the entry (for
example the table the number comes from). Default \code{"general"}.}
\item{obs}{The value the analysis produced: a numeric scalar for a
tolerance check, or any single value to be stored as information.}
\item{expd}{The value to compare against, of the same kind.}
\item{syn}{Logical scalar; \code{TRUE} marks this entry \code{INFO}
because a comparison on synthetic data is not meaningful. Default
\code{FALSE}.}
\item{daysperper}{Numeric vector of days served, one element per
person; non-negative, no \code{NA} or \code{Inf}, at least one value.}
\item{conflvl}{Numeric scalar strictly between 0 and 1, the
confidence level for the interval on the mean. Default \code{0.95}.}
\item{people}{Numeric vector of the number of people (admissions or
persons served), one element per period, the same length as
\code{days}; positive.}
\item{prd}{Optional labels for the periods (any vector, converted to
character), one per period. Default \code{NULL} labels them
\code{1, 2, ...}.}
\item{expo}{Optional numeric population to express rates against,
one value or one per period, positive; for example provincial
residents. Default \code{NULL} (no rate columns).}
\item{per}{Numeric scalar, the rate base when \code{expo} is given:
rates are per \code{per} residents. Default \code{100000}.}
\item{timeout}{Seconds to wait for the authority.}
\item{token}{The token: a raw vector, or a path to a
\code{.tsr} / \code{.tst} file. A full \code{TimeStampResp} or a bare
\code{TimeStampToken} are both accepted.}
\item{nonce}{The raw nonce the request sent, or \code{NULL} (the default)
when it is not known. Given, the token must carry it: a token answering
another request is refused.}
\item{ex}{Logical, default \code{FALSE}. \code{TRUE} uses the
shipped OTIS table as the source so the skeleton runs immediately;
\code{FALSE} leaves a \code{TODO} URL.}
\item{cpsdir}{Directory containing the capsule, a single string.}
\item{provfile}{Provenance JSON filename, relative to \code{cpsdir}.
\code{"data_provenance.json"} is the default.}
\item{dfile}{Data filename relative to \code{cpsdir}. \code{NULL}
(the default) uses the provenance's \code{resource$filename}.}
\item{mnffile}{Optional results-manifest JSON (as written by
\code{\link[=wrmnfjs]{wrmnfjs()}}), relative to
\code{cpsdir}. \code{NULL}
(the default) uses \code{manifest.json} when the capsule has one.}
\item{scrfile}{Optional analysis-script filename relative to
\code{cpsdir}; compared against the pinned script digest.
\code{NULL} (the default) uses the script named in the provenance or
the manifest, if any.}
\item{output}{For \code{wbrtry}: The JSON Lines results file of an earlier
\code{wbsave()} run (or of \code{rmbl wayback});
results of the retry are appended to it.

For \code{wbsave}: Optional path of a JSON Lines file: one line
per URL, written as each finishes, and read at the start so a
run can be resumed. Its folder must exist; this is checked
before anything is sent.}
\item{incgone}{Logical, default \code{FALSE}. Also capture again
the pages whose failure says the page is gone.}
\item{lookup}{Logical, default \code{TRUE}. Look each failure up in the
Wayback Machine (one lookup a second) before capturing again.}
\item{within}{Keep a capture made within this long instead of
making a new one: a number followed by \code{s}, \code{m},
\code{h} or \code{d} (default \code{"30d"}); \code{"0"}
always captures.}
\item{jobs}{Captures in flight at once, 1 to 12. Default 4.}
\item{poll}{Seconds between status checks of a capture.
Default 10.}
\item{maxwait}{Seconds a capture may take before it is given
up as failed. Default 600.}
\item{capall}{Also capture error pages (4xx and 5xx);
default \code{FALSE}.}
\item{quiet}{\code{TRUE} for no progress output; the default
shows it while a person is watching.}
\item{permin}{Captures started per minute, at most; default
6 (archive.org allows an account 7).}
\item{maxcap}{The most captures this run starts; default
1000. The rest are left for the next run (with the same
\code{output}, it carries on from them).}
\item{fallback}{\code{"rmorie"} saves what the Wayback Machine refused (a
server that refuses its crawler, Statistics Canada among them) from this
connection to archive.rmorie.com, with \code{\link{arccap}}; the result is
attribute \code{archive}. \code{NULL} (default) does not.}
\item{canon}{Logical scalar, default \code{FALSE}. \code{TRUE} writes
the canonical form instead of the pretty-printed one: one line, keys
sorted, which is what \code{\link[=mnfdgst]{mnfdgst()}} hashes. Use
it when the file
itself has to be byte-stable rather than read by a person.}
\item{outdir}{Character scalar, an existing folder to write
\code{SUMMARY.txt} into and to list the files of.}
\item{paths}{A named list (or named character vector) of paths to report,
one line each, labelled by the capitalised name. Names such as
\code{capsule}, \code{input}, \code{results}, \code{analysis_script} and
\code{provenance} are typical. \code{list()} reports none.}
\item{whatwasdone}{Optional character vector, one line each, describing
what the run did. Default \code{NULL} (no section).}
\item{lic}{Optional character scalar appended as a \code{Licence:}
line. Default \code{NULL}.}
\item{keytoreg}{For \code{\link[=xmssregkey]{xmssregkey()}}: a signing key generated on
another machine, regenerated from given seeds, or whose record was deleted,
that has never signed; it is added to the record so that it may sign from
\code{next_index}. A key the record shows has signed is refused.}
\item{keytofgt}{For \code{\link[=xmssfgt]{xmssfgt()}}: a signing key (the record is
keyed by its secret seed) whose entry alone is reset to \dQuote{nothing
used} (it may sign from index 0 again); \code{NULL} removes the whole
record (every key, and the record of the releases before 0.5.12), after
which only keys generated afterwards, or vouched for by
\code{\link[=xmssregkey]{xmssregkey()}}, may sign.}
}
\description{Seals, signatures, keys and archives. Each function has its own section below; \code{?name} opens this page for any of them.}
\value{
\subsection{Admissions implied by a population and a length of stay (\code{admits})}{
A numeric scalar: the implied number of admissions over the
period, \eqn{\mathrm{adp} \times t / \mathrm{alos}}. It is not rounded.
It has class \code{c("rmbl_admits", "rmbl_measure", "numeric")} and an
attribute \code{"lakner"} (\code{adp}, \code{alos} and \code{t}), so it
prints as a box with its inputs, formula and caveats; arithmetic,
\code{round()}, \code{sum()}, \code{mean()}, \code{[}, \code{c()} and
\code{as.numeric()} give a plain number.
}
\subsection{Average daily population (\code{adp})}{
A numeric scalar: person-days per day, that is the average number
of people held on any one day of the period. It has class
\code{c("rmbl_adp", "rmbl_measure", "numeric")} and an attribute
\code{"lakner"} (the total days and \code{t}), so it prints as a box
with its inputs, formula and caveats; arithmetic, \code{round()},
\code{sum()}, \code{mean()}, \code{[}, \code{c()} and
\code{as.numeric()} give a plain number.
}
\subsection{Person-days estimated from periodic headcounts (\code{adpcnts})}{
A numeric scalar: the estimated person-days over the period,
\code{mean(counts) * t}. Despite the function's name this is a total of
person-days, not an average daily population; divide by \code{t} (or
pass it to \code{\link[=adp]{adp()}}) for the population held on an average day. It has
class \code{c("rmbl_adpcnts", "rmbl_measure", "numeric")} and an
attribute \code{"lakner"} (the number of counts, their mean and
\code{t}), so it prints as a box with its inputs, formula and caveats;
arithmetic, \code{round()}, \code{sum()}, \code{mean()}, \code{[},
\code{c()} and \code{as.numeric()} give a plain number, and
\code{\link[=adp]{adp()}} takes it as \code{days}.
}
\subsection{Average length of stay (\code{alos})}{
A numeric scalar: days per person, \eqn{\sum X_i / n}. It has
class \code{c("rmbl_alos", "rmbl_measure", "numeric")} and an attribute
\code{"lakner"} (the total days and \code{n}), so it prints as a box
with its inputs, formula and caveats; arithmetic, \code{round()},
\code{sum()}, \code{mean()}, \code{[}, \code{c()} and
\code{as.numeric()} give a plain number.
}
\subsection{Capture files the Internet Archive cannot reach, and publish them as an archive.org item (\code{arccap})}{
A data frame of class \code{rmbl_archive_capture}, one row per URL:
\code{url}, \code{file}, \code{sha256}, \code{bytes}, \code{fetched_utc},
\code{status} (\code{"captured"}, \code{"uploaded"}, \code{"archived"} or
\code{"failed: ..."}), \code{mirror} (the archive.org download address, for
\code{\link{fetchvrf}}), \code{warc} (the local WARC file),
\code{capture_id} and \code{archive} (its page at archive.rmorie.com) and
\code{wayback} (the Wayback Machine's answer); attributes \code{manifest},
\code{timestamp} (a \code{\link{tsvrf}} result, or \code{NULL}) and
\code{item}.
}
\subsection{Find saved copies of an address in archive.rmorie.com (\code{arcfind})}{
A data frame of class \code{rmbl_archive_find}: \code{capture_id},
\code{captured} (UTC time), \code{url}, \code{status}, \code{mime},
\code{bytes}, \code{sha256}, \code{mode} (\code{"client"}: saved from the
capturer's connection; \code{"worker"}: saved by the archive),
\code{visibility}, \code{capture} (its page) and \code{replay} (its exact
bytes).
}
\subsection{Fetch the exact bytes of a saved copy from archive.rmorie.com (\code{arcget})}{
\code{dest}, invisibly, with attributes \code{capture_id},
\code{url}, \code{captured} and \code{sha256}.
}
\subsection{Send a capture kept on this computer to the archives later (\code{arcpush})}{
An object of class \code{rmbl_archive_capture}, as \code{\link[=arccap]{arccap()}}
returns: one row per file of the capture, with what each archive
answered, this time or an earlier one. A file that is missing, or whose
bytes no longer match the manifest, is \code{"failed: ..."} and is not
sent. What each archive took is also kept in \file{push.json} in
\code{dir}, which the next run reads.
}
\subsection{Where each loaded package came from (\code{capdeps})}{
A data frame with one row per package and character columns
\code{package}, \code{version}, \code{library} (the library directory),
\code{repository}, \code{remote_url}, \code{remote_sha} and \code{built} (R
version, platform and time of the build). Unavailable fields are \code{NA}
rather than omitted, so a reader can see that the information was absent
rather than forgotten; for a package that is not installed, every field
except \code{package} is \code{NA}, and a warning names it. An empty
\code{pkgs} gives a data frame with no rows and the same columns.
}
\subsection{Capture the Analysis Environment for a Manifest (\code{capenv})}{
A list of seven elements: \describe{
\item{\code{r_version}}{character, e.g. \code{"4.5.1"}.}
\item{\code{platform}}{character, \code{R.version$platform}.}
\item{\code{os}}{character, the system name and release.}
\item{\code{captured_utc}}{character, ISO 8601 time
\code{YYYY-MM-DDThh:mm:ssZ}.} \item{\code{rng_kind}}{character, the three
\code{RNGkind()} values joined by commas.}
\item{\code{rng_seeded}}{logical, whether \code{.Random.seed} exists.}
\item{\code{packages}}{named list of version strings, sorted by name
(\code{NA} for a package that is not installed). A list, not a vector, so
the names survive the manifest's JSON: a named vector is written as a bare
array.} }
The list has class \code{c("rmbl_capenv", "list")}, which only changes
how it prints (a box); its elements, and the JSON written from it, are
those of a plain list.
}
\subsection{BLAKE2b digest, optionally keyed (\code{cblake2b})}{
A character vector of lowercase hex digests -- one per element
for character input, length-1 for raw input.
}
\subsection{CRC-32 checksum (C backend) (\code{ccrc32})}{
A numeric vector of unsigned 32-bit checksums (one per element
for character input, \code{NA} for \code{NA}; length 1 for raw input).
Returned as \code{double} rather than \code{integer} because values
above \code{2^31 - 1} are not representable as an R integer.
}
\subsection{Verify a certificate chain (\code{certchnvrf})}{
A list of class \code{bricklayer_certpath_check}: \code{ok}
(logical, the verdict), \code{path} (the list of certificates from the
leaf to the anchor, as built), \code{checks} (a data frame with
\code{check}, logical \code{ok} and \code{detail}, one row per check),
\code{attm} (the time used) and \code{policies} (the outcome of policy
processing). \code{print()} shows the verdict and the checks.
}
\subsection{Parse an X.509 certificate (\code{certprs})}{
A list of class \code{bricklayer_certificate} with these elements:
\itemize{ \item \code{version} (integer) and \code{serial} (hex); \item
\code{issuer} and \code{subject} (distinguished names as text); \item
\code{not_before} and \code{not_after} (\code{POSIXct}, UTC); \item
\code{signature_algorithm} (a name such as \code{"ECDSA-SHA256"}) and
\code{signature_oid}; \item \code{signature} and \code{tbs} (raw; the
signed part); \item \code{key} (a list: \code{type} \code{"RSA"} or
\code{"EC"}, \code{bits}, and the key values, with \code{curve} for EC);
\item \code{is_ca} and \code{path_len}; \item \code{key_usage} and
\code{extended_key_usage} (character; EKU as OIDs); \item
\code{subject_rdns}, \code{issuer_rdns}, \code{san} and
\code{name_constraints}; \item the policy fields \code{policies},
\code{policy_mappings} and \code{require_explicit_policy}; \item the policy
fields \code{inhibit_policy_mapping} and \code{inhibit_any_policy}; \item
\code{self_signed} (logical: issuer equals subject); \item \code{der} (the
bytes). } \code{print()} shows a summary.
}
\subsection{Tamper-evident chain of capsule manifests (\code{chn})}{
\code{chnnew()} and \code{chnapp()} return an object of
class \code{c("bricklayer_chain", "list")} with \code{entries} (a list of
entries, each with \code{label}, \code{payload}, \code{prev},
\code{scheme} and \code{digest}) and \code{genesis} (64 zeros).
\code{chnvrf()} returns a
list of class \code{bricklayer_chain_check} with \code{valid} (logical),
\code{n} (integer, entries), \code{broken_at} (integer index of the first
bad entry, \code{NA} when intact) and \code{head}. \code{chnhead()}
returns the head digest (64 hex characters; the genesis value for an
empty chain). \code{chnseal()} returns a single digest over the verified
chain's length and links, or \code{NA} if the chain does not verify.
}
\subsection{Split a file into fixed-size chunks (\code{chnkfile})}{
A list of raw vectors, in file order. A zero-length file gives
an empty list. Chunks are returned as bytes rather than strings because
a file is bytes: an R string cannot hold a zero byte, so a character
chunk could not represent an arbitrary binary file at all.
}
\subsection{Generate a Data Citation From Provenance (\code{citecps})}{
A list with \code{text} and \code{bibtex}, each a length-1
character string (the BibTeX entry has embedded newlines), or \code{NULL}
if \code{provenance} is \code{NULL}.
The list has class \code{c("rmbl_citation", "list")}, which only changes
how it prints (a box); its elements, and the JSON written from it, are
those of a plain list.
}
\subsection{Attest a capsule, binding a signature to what it covers (\code{cpsatst})}{
\code{cpsatst()} a list of class \code{bricklayer_attestation} with
the character fields \code{digest}, \code{scheme}, \code{public} (hex),
\code{context}, \code{prehash}, \code{note} and \code{signed_utc} (ISO 8601
UTC time), and \code{signature} (a \code{bricklayer_signature} from
\code{\link[=cpssign]{cpssign()}}).

\code{cpschkatst()} a list of class \code{bricklayer_attestation_check}
with \code{ok} (logical)
and \code{checks}, a data frame with columns \code{check}, \code{ok} and
\code{detail}, one row per check.
}
\subsection{Bundle a capsule into one signed artifact (\code{cpsbndl})}{
\code{cpsbndl()}: the bundle, invisibly, a list of class
\code{bricklayer_bundle} with \code{files} (a list of \code{path}, \code{sha256},
\code{size_bytes}), \code{manifest_digest}, \code{bundled_utc} and \code{attestation}
(from
\code{\link[=cpsatst]{cpsatst()}}), and the path it was written to as
attribute
\code{"path"}.

\code{cpsbndlrd()}: the same structure read from the file.

\code{cpsbndlvrf()}: a list of class \code{bricklayer_bundle_check} with
\code{ok} (logical) and \code{checks} (a data frame of \code{check}, logical \code{ok}
and
\code{detail}: one \code{file:PATH} row per listed file, \code{no_unlisted_files}, the
\verb{attestation:} rows, with a manifest \code{manifest_digest}, and with \code{seen}
\code{xmss_index}). For an XMSS bundle the \code{attestation:signature} row's
detail names the signature's index and the key fingerprint.
}
\subsection{Check every capsule under a folder (\code{cpschk})}{
A list of class \code{rmbl_cpschk}: \code{status},
\code{mode}, \code{path}, \code{glob}, \code{rows} (a data frame of
every check: \code{capsule}, \code{part}, \code{file}, \code{check},
\code{ok}, \code{detail}, \code{severity} and \code{line}, the line
of the file where known), \code{capsules} (a list per capsule:
\code{capsule}, \code{source}, \code{pinned_sha256},
\code{fetched_sha256}, \code{changed}, \code{result},
\code{checks_passed}, \code{checks_total} and \code{notes}, and where
made \code{drift} with its \code{columns} table,
\code{drift_summary}, \code{snapshot}, \code{snapshot_utc} and
\code{manifests}), \code{base} (its label), \code{psiwarn},
\code{psifail} and \code{footprint} (the \code{co2fp()} result
without its value, or \code{NULL}). The \code{cpsdrft()} result
of each capsule whose columns were compared, with its provenance and
manifest diff, is in the attribute \code{drifts} (named by capsule),
for \code{\link{drfthtml}} and \code{\link{drftapp}}.
\code{format()} returns one string (\code{"md"}, \code{"json"}) or
the lines of the console summary (\code{"text"}); \code{print()}
draws that summary as a box.
}
\subsection{Does the Analysis Recover a Known Effect? (\code{cpsplant})}{
A list of class \code{rmbl_plant}: \code{ok} (every effect recovered),
\code{table} (one row per effect: \code{effect}, \code{recovered} (the average
estimate), \code{bias}, \code{se}, \code{passed}), \code{observed} (the statistic
on the real data), \code{n}, \code{tol}, \code{y}, \code{trt} and \code{seed}.
It prints as a box and
goes into a manifest with \code{\link[=recevid]{recevid()}}.
}
\subsection{Pin and sign every capsule under a folder (\code{cpsseal})}{
A data frame, one row per capsule: \code{capsule},
\code{pinned} (whether the provenance was pinned now), \code{files}
(the number signed) and \code{public} (the HMAC key id or the public
key; never the secret).
}
\subsection{Sign a capsule manifest (\code{cpssign})}{
A list of class \code{bricklayer_signature}: \code{scheme},
\code{signature}, and for XMSS also \code{auth}, \code{index},
\code{root}, \code{height}, \code{randomizer} (the
per-signature \code{R} of RFC 8391, which a verifier needs and which
therefore travels with the signature) and \code{wire} -- the signature
in the RFC's own byte order, \code{index || R || WOTS || auth},
hex-encoded. \code{wire} is byte-identical to what the XMSS reference
implementation produces from the same key material, so it can be handed
to another implementation as bytes.
}
\subsection{Do Reasonable Alternative Analyses Agree? (\code{cpsspec})}{
A list of class \code{rmbl_spec}: \code{ok} (every estimate has the sign
of the reported one), \code{table} (\code{spec}, \code{estimate}, \code{same_sign}),
\code{reported}, \code{range} and \code{share} (the share agreeing in sign). It
prints as a box and goes into a manifest with \code{\link[=recevid]{recevid()}}.
}
\subsection{Verify a capsule manifest signature (\code{cpsvrf})}{
\code{TRUE} or \code{FALSE} (a length-1 logical, never \code{NA}).
}
\subsection{Verify a Signature Here and Again With OpenSSL (\code{cpsxvrf})}{
A list of class \code{rmbl_xvrf}: \code{ok} (\code{TRUE} only when both
implementations accept the signature), \code{ours} and \code{openssl} (each
verdict; \code{openssl} is \code{NA} when it could not be asked), \code{agree},
\code{version} (OpenSSL's, or \code{NA}), \code{reason} (why OpenSSL gave no
verdict, or \code{NA}) and \code{scheme}. It prints as a box that opens with
the verdict.
}
\subsection{SHA-512 hex digest (C backend) (\code{csha512})}{
A character vector of 128-character lowercase hex digests: one
per element for character input (\code{NA} for \code{NA}), length 1 for
raw input.
}
\subsection{Digest an arbitrary R object (\code{dgstobj})}{
A length-1 character vector of lowercase hex (64 characters for
\code{"sha256"} and \code{"blake2b"}, 128 for \code{"sha512"}), or a length-1 numeric
for \code{"crc32"}.
}
\subsection{Draw bytes from a DRBG (\code{drbggen})}{
A raw vector of \code{n} bytes.
}
\subsection{A deterministic random bit generator: AES-256 CTR_DRBG (NIST SP 800-90A) (\code{drbgnew})}{
An object of class \code{bricklayer_drbg} (an environment holding
the 32-byte Key, the 16-byte V, the request count and the process id). Its
state (Key, V) is not printed.
}
\subsection{Reseed a DRBG (\code{drbgrsd})}{
\code{drbg}, invisibly, reseeded in place.
}
\subsection{Derive a key from a passphrase (\code{drvkey})}{
A length-1 character vector: the key as lowercase hex
(\code{2 * length} characters).
}
\subsection{How strong would an unmeasured confounder have to be (\code{evlrr})}{
A named numeric vector: \code{evlpoint} and, when limits are
given, \code{evllimit}.
}
\subsection{Correct a family of falsification results for multiple testing (\code{falsfam})}{
A list of class \code{bricklayer_falsify_family} with \code{results} (a data
frame of \code{name}, \code{p}, \code{adjusted} and logical \code{survives}, sorted by
\code{p}),
\code{method}, \code{famsz} (integer), \code{alpha}, and \code{atflr} (the
names
whose p-value equals the smallest their permutation count could produce;
empty for a numeric vector). The print method shows the table.
}
\subsection{Fetch a file from its source or a mirror, verified by its SHA-256 (\code{fetchvrf})}{
Invisibly, a list of class \code{rmbl_fetch} (it prints as a
box): \code{source} (\code{"live"}, \code{"wayback"},
\code{"mirror"}, \code{"rmorie"} or \code{"local"}), \code{url} (the URL
that served the kept copy), \code{sha256}, \code{bytes}, and \code{tried}
(a data frame of every attempt: \code{url}, \code{outcome}).
}
\subsection{SHA-512 and CRC-32 of a file (\code{filedgst})}{
\code{sha512file()}: a length-1 character vector, 128 lowercase hex
characters. \code{crc32file()}: a length-1 numeric (double) checksum
between 0 and \code{2^32 - 1}.
}
\subsection{Assemble a standardised key from raw key material (\code{fipskey})}{
When \code{secret} is given, a \code{bricklayer_fips_key} with \code{public},
\code{secret} and \code{scheme}. Otherwise a key of class
\code{bricklayer_fips_public_key} with \code{public} and \code{scheme}.
Keys are held as lowercase hex, as
\code{\link[=fipskg]{fipskg()}} returns
them.
}
\subsection{Generate a standardised post-quantum signing key (\code{fipskg})}{
\code{fipskg()}: a list of class \code{bricklayer_fips_key} (also
\code{bricklayer_oqs_key}) with \code{public} and \code{secret} (the encoded keys as
lowercase hex strings, in the standards' byte layouts) and \code{scheme}.
Printing it never shows the secret. \code{fipspubkey()}: a list of
class \code{bricklayer_fips_public_key} (also \code{bricklayer_oqs_public_key})
with \code{public} and \code{scheme}.
}
\subsection{Make a Signing Key Inside a FIPS 140-3 Module (\code{fipsmkg})}{
A key of class \code{rmbl_fipsmod_key} (also a
\code{bricklayer_fips_public_key}, so every verifier accepts it): \code{public}
(hex), \code{scheme}, \code{module} (name, build, status and certificate) and
the private key in \code{pem}.
}
\subsection{Sign Inside a FIPS 140-3 Module (\code{fipsmod})}{
A list of class \code{rmbl_fipsmod}: \code{name}, \code{version} and \code{build}
(the module as it reports itself), \code{status} (\code{"validated"},
\code{"validated without PQC"} or \code{"not listed"}), \code{cmvp} (the certificate,
such as \code{"#5523"}, or \code{NA}), \code{pqc} (whether that certificate covers
ML-DSA and SLH-DSA), \code{openssl}, \code{openssl_version} and \code{conf}. It prints
as a box. The result is remembered for the session.
}
\subsection{Sign an ML-DSA message digest computed elsewhere (\code{fipsmu})}{
\code{fipsmu()}: a raw vector of 64 bytes. \code{fipssignmu()}: a
list of class \code{bricklayer_signature} with \code{scheme} and \code{signature}
(hex). \code{fipsvrfmu()}: \code{TRUE} or \code{FALSE}.
}
\subsection{Byte lengths of a standardised signature scheme (\code{fipssz})}{
A named integer vector of five byte counts: \code{public_key},
\code{secret_key}, \code{signature}, \code{seed} and \code{rnd} (the
per-signature
randomness the scheme consumes).
}
\subsection{GitHub workflow annotations, sticky comment and outputs of a capsule check (\code{ghann})}{
\code{ghann()}: a character vector, one line per annotation.
\code{ghcmt()}: one string. \code{ghout()}: a named list with
\code{status}, \code{report}, \code{json}, \code{changed} (the
capsules whose source bytes changed, comma-separated),
\code{verified} (capsules without an error), \code{failed},
\code{manifest-changed} (\code{"true"} or \code{"false"}) and
\code{comment}. Error: \code{x} is not a \code{cpschk()} result.
}
\subsection{The compressed HQC decapsulation key (\code{hqccmpkey})}{
The key (class \code{bricklayer_hqc_key}) with \code{secret} replaced by
the hex of its seed: 32 bytes for v5, 96, 104 or 112 for round 4. The
other elements are unchanged.
}
\subsection{Recover a shared secret from an HQC ciphertext (\code{hqcdecap})}{
The shared secret as a lowercase hex string: 64 characters (32
bytes), or 128 for a round-4 key.
}
\subsection{Encapsulate a shared secret under an HQC key (\code{hqcencap})}{
A list of class \code{bricklayer_hqc_capsule} with \code{ciphertext} and
\code{shared} (character, lowercase hex; see \code{\link[=hqcsz]{hqcsz()}} for
the byte
lengths: the shared secret is 32 bytes, 64 for a round-4 key), \code{level}
(integer) and \code{version} (character). The print method withholds the
shared secret.
}
\subsection{Generate an HQC key pair (\code{hqckg})}{
\code{hqckg()} returns a list of class \code{bricklayer_hqc_key} with
\code{public} and \code{secret} (character, lowercase hex of the encapsulation and
decapsulation keys; see \code{\link[=hqcsz]{hqcsz()}} for their byte lengths),
\code{level}
(integer 1, 3 or 5) and \code{version} (\code{"v5"} or \code{"round4"}). Its print
method shows the level and the start of the public key and withholds the
secret. \code{hqcpubkey()} returns a list of class
\code{bricklayer_hqc_public_key} with \code{public}, \code{level} and \code{version}
only. The v5 secret key is the specification's
\code{ek || seed_dk || sigma || seed_KEM}; the round-4 one is
\code{skseed || sigma || ek}.
}
\subsection{Byte lengths of an HQC parameter set (\code{hqcsz})}{
A named integer vector of byte lengths: \code{public} (the encapsulation
key), \code{secret} (the decapsulation key), \code{ciphertext}, \code{seed} (key
generation), \code{message} and \code{salt} (encapsulation randomness) and \code{shared}
(the shared secret), named as \code{\link[=hqckg]{hqckg()}} and
\code{\link[=hqcencap]{hqcencap()}} name their results.
}
\subsection{Make, read and verify an identity card for your signing key (\code{idcrd})}{
\code{idcrd()} and \code{idcrdrd()}: a list of class
\code{rmbl_id_card} with the card's fields (\code{type},
\code{version}, \code{name}, \code{orcid}, \code{email}, \code{url}, \code{affil},
\code{scheme}, \code{public}, \code{context}, \code{prehash},
\code{issued_utc}, \code{expires_utc}, \code{signature}) and its
\code{fingerprint}; \code{idcrd()} returns it invisibly when it
writes \code{file}. \code{idcrdvrf()}: a list of class
\code{rmbl_id_check} with \code{ok}, \code{checks} (a data frame with
\code{check}, \code{ok} and \code{detail}), \code{fingerprint} and \code{card}.
\code{print()} shows a summary.
}
\subsection{Recover a shared secret from an ML-KEM ciphertext (\code{kemdecap})}{
A length-1 character vector of 64 lower-case hex characters: the
32-byte shared secret.
}
\subsection{Encapsulate a shared secret under an ML-KEM key (\code{kemencap})}{
A list of class \code{bricklayer_kem_capsule} with
\code{ciphertext} (character, hex, of the length in bytes that
\code{\link[=kemsz]{kemsz()}}\code{[["ciphertext"]]} gives: send this), \code{shared}
(character, 64 hex characters, the
32-byte shared secret: keep this) and \code{level} (integer). Printing
it never shows the shared secret.
}
\subsection{Generate an ML-KEM key pair (\code{kemkg})}{
\code{kemkg()}: a list of class
\code{c("bricklayer_kem_key", "list")} with \code{public} (character,
the encapsulation key as lower-case hex, 800, 1184 or 1568 bytes),
\code{secret} (character, the decapsulation key as hex, 1632, 2400 or
3168 bytes) and \code{level} (integer). Printing it never shows the
secret. \code{kempubkey()}: a list of class
\code{c("bricklayer_kem_public_key", "list")} with \code{public} and
\code{level} only.
}
\subsection{Byte lengths of an ML-KEM parameter set (\code{kemsz})}{
A named integer vector of five elements, all in bytes:
\code{public} (the encapsulation key), \code{secret} (the
decapsulation key), \code{ciphertext}, \code{seed} and \code{shared}
(the shared secret), named as \code{\link[=kemkg]{kemkg()}} and
\code{\link[=kemencap]{kemencap()}} name their
results.
}
\subsection{Keyed digest and constant-time comparison (C backend) (\code{keyeddgst})}{
\code{chmac()} a length-1 character vector: 64
lowercase hex characters. \code{cdgsteq()} a length-1 logical;
\code{FALSE} when the two differ in length.
}
\subsection{Read and check a proof ledger (\code{ldgrread})}{
\code{ldgrread()}: the ledger, a list of class \code{rmbl_ledger},
with the normalised path as the attribute \code{path}.
\code{ldgrchk()}: a data frame (class \code{rmbl_ledger_check}, which
prints as a box) with the columns \code{capsule}, \code{part}
(\code{ledger}, or the capsule parts), \code{file}, \code{check},
\code{ok}, \code{detail}, \code{severity} (\code{error}, \code{warn} or
\code{note}) and \code{line}.
}
\subsection{Build a Reproducibility Bundle (\code{mkbndl})}{
An object of class \code{rmbl_bundle}: a list with \code{path}
(the zip), \code{sha256}, \code{bytes}, \code{files} (the paths
inside the zip), \code{project} (the project name) and \code{data}
(whether the data file is inside). It prints as a box.
}
\subsection{Check a reproducibility bundle before shipping it (\code{mkbndlchk})}{
An object of class \code{rmbl_bundle_audit}: a list with
\code{ok}, \code{checks} (a data frame of \code{check}, \code{ok},
\code{detail} and \code{severity}), \code{mode} (the input the run
used, from its manifest: \code{synthetic} when it is marked
synthetic, else its \code{meta$input_mode} when it records one, such
as \code{csv}, else \code{real}), \code{counts} (\code{total}, \code{pass},
\code{differ}, \code{info}), \code{log} (the last 30 lines the run
printed), \code{isolation} (how the run was contained: see Details),
\code{bundle} and \code{dir} (the unzipped bundle, or for a container
run the folder it wrote into; \code{NA} once removed). It prints as a
box.
}
\subsection{Start a Reproducibility Bundle Project (\code{mkbndlproj})}{
An object of class \code{rmbl_bundle_project}: a list with
\code{dir} and \code{files} (the files written). It prints as a box.
}
\subsection{Construct a Reproducibility Manifest (\code{mkmnf})}{
A list with elements \code{meta} (the list given, plus
\code{synthetic = TRUE} when flagged), \code{results} (an empty list,
filled by \code{\link[=recrd]{recrd()}}) and, when \code{environment = TRUE},
\code{environment} (the list from
\code{\link[=capenv]{capenv()}}).
The list has class \code{c("rmbl_manifest", "list")}, which only changes
how it prints (a box); its elements, and the JSON written from it, are
those of a plain list.
}
\subsection{Combine Results into One Report (\code{mkset})}{
An object of class \code{rmbl_set}: a list with \code{title} and \code{items}
(the results, named by their headings). It prints as the report. With
\code{file}, it is returned invisibly with the written file's path in
attribute \code{"path"}.
}
\subsection{The canonical serialisation of a manifest, and its digest (\code{mnfcanon})}{
\code{mnfcanon()}: a character scalar, the one-line
JSON. \code{mnfdgst()}: a character scalar of 64 lower-case
hexadecimal characters, the SHA-256 of the canonical bytes.
}
\subsection{Recompute a manifest's recorded statistics against the data (\code{mnfrcmp})}{
A list of class \code{c("bricklayer_recompute", "list")}: \describe{
\item{\code{ok}}{logical, every statistic matched and none was left
unchecked.} \item{\code{results}}{data frame, one row per recomputed
statistic, with the columns \code{name} (character), \code{recorded} and
\code{recomputed} (numeric, \code{NA} for non-numeric values), \code{delta}
(numeric absolute difference), \code{tol} (numeric), \code{status}
(\code{"MATCH"}, \code{"DIFFER"}, \code{"NOT_RECORDED"} or \code{"ERROR"})
and \code{detail} (character explanation).}
\item{\code{unchecked}}{character, the names recorded but not recomputed.}
}
}
\subsection{Record and restore the random number generator state (\code{mnfrecseed})}{
\code{mnfrecseed()}: the manifest with an \code{rng}
element, a list of \code{kind} (character, the three \code{RNGkind()}
values), \code{state} (integer, the \code{.Random.seed} vector) and
\code{was_initialised} (logical, whether a state existed before the
call). \code{mnfrstseed()}: the manifest, invisibly, having
set the generator.
}
\subsection{Merkle tree over capsule chunks (C backend) (\code{mrk})}{
\code{mrkroot()} a length-1 character vector (64 lowercase hex
characters), or \code{NA} for no chunks. \code{mrklvs()} a
character vector of per-chunk digests, one per chunk
(\code{character(0)} for none). \code{mrkprf()} a list with
\code{sibling} (character, the sibling digests from the leaf upward),
\code{side} (character, \code{"left"} or \code{"right"}: the side the
sibling is on) and \code{scheme} (integer). \code{mrkvrf()} a
length-1 logical.
}
\subsection{Generate a standardised post-quantum signing key (deprecated name) (\code{oqskg})}{
As \code{\link[=fipskg]{fipskg()}} (a \code{bricklayer_fips_key})
and
\code{\link[=fipspubkey]{fipspubkey()}} (a
\code{bricklayer_fips_public_key}).
}
\subsection{Period length in days, from dates (\code{perdays})}{
A numeric scalar: the number of days in the period,
\code{to - from + 1}, for use as \code{t}. It has class
\code{c("rmbl_perdays", "rmbl_measure", "numeric")} and an attribute
\code{"lakner"} (\code{from} and \code{to} as dates), so it prints as a
box; arithmetic, \code{round()}, \code{sum()}, \code{mean()},
\code{[}, \code{c()} and \code{as.numeric()} give a plain number, and
every \code{t} argument takes it as it is.
}
\subsection{Available post-quantum signature schemes (\code{pqcbknd})}{
A character vector of 16 scheme names: \code{"xmss-sha256"} first,
then the three ML-DSA sets, the six SLH-DSA SHA-2 sets and the six
SLH-DSA SHAKE sets.
}
\subsection{Generate a post-quantum signing key for capsule provenance (\code{pqckg})}{
A list of class \code{bricklayer_signing_key}: \code{root} (the
public verification value, 64 hex characters), \code{pubseed}, \code{skseed}
(SECRET) and \code{skprf} (SECRET), each 64 hex characters, \code{height} (an
integer), \code{next_index} (the next unused leaf, 0 for a new key),
\code{capacity} (\code{2^height}, the number of signatures), and \code{scheme}
(\code{"xmss-sha256"}).
}
\subsection{Printed reports for bricklayer objects (\code{print.bricklayer_attestation})}{
\code{format()} methods return a character vector;
\code{print()} methods return \code{x} invisibly.
}
\subsection{Declare an analysis before running it (\code{prrgdecl})}{
\code{prrgdecl()} returns a list of class \code{bricklayer_prereg}
with \code{statistics} (the names), \code{hypotheses} (the claims), \code{note} and
\code{decutc} (ISO 8601 time).

\code{prrgchk()} returns a list of class \code{bricklayer_prereg_check} with \code{ok}
(logical: no departures), the character vectors \code{decnotrep} and
\code{repnotdec}, \code{hypotheses} (a data frame of \code{statistic},
\code{hypothesis} and
logical \code{reported}) and \code{decutc}. Both print a short summary.
}
\subsection{Make a Randomisation List with a Sealed Commitment (\code{ralloc})}{
An object of class \code{rmbl_alloc}: a data frame with \code{id},
\code{stratum} (with \code{strata}), \code{block} (the block's number in its stratum;
\code{NA} for simple randomisation), \code{arm} and, with \code{codes}, \code{kit}, in
enrolment order. Attribute \code{"alloc"} holds the settings, the seed (as
hexadecimal) and \code{digest}, the commitment. It prints as a box of
counts.
}
\subsection{Check a Randomisation List at Unblinding (\code{rallocvrf})}{
An object of class \code{rmbl_alloc_check}: a list with \code{ok} (all
checks passed) and \code{checks} (a data frame of \code{check}, \code{ok} and
\code{detail}). It prints as a box that opens with VERIFIED or NOT
VERIFIED.
}
\subsection{Record Correctness Evidence in a Manifest (\code{recevid})}{
The manifest, with the new records.
}
\subsection{Record a Cross-Check Result in a Manifest (\code{recrd})}{
The manifest with \code{results[[name]]} set to a list with
\code{group}, \code{observed}, \code{expected}, \code{diff} (the
absolute difference, \code{NA} when the pair is not numeric),
\code{status} (\code{"PASS"}, \code{"DIFFER"} or \code{"INFO"}),
\code{tol} and \code{note} (a sentence for synthetic entries, else
\code{NULL}).
}
\subsection{Cryptographically strong random bytes (\code{rndbytes})}{
A raw vector of length \code{n}. Print it as hex with
\code{paste(format(x), collapse = "")}.
}
\subsection{Fetch revocation data for a certificate path (\code{rvkfetch})}{
A list with \code{crls} (a list of raw DER vectors fetched), \code{ok} (a
logical vector, one element per CRL fetch or OCSP query, \code{TRUE} for a
success) and \code{notes} (a named list of character details, named like
\code{"crl fetch [1]"} or \code{"ocsp [1]"} by the certificate's position in
the
path; a later attempt for the same certificate overwrites an earlier
note of the same name).
}
\subsection{Public half of a signing key (\code{signpubkey})}{
A list of class \code{bricklayer_public_key}: \code{root} and \code{pubseed}
(64 hex characters each), \code{height} and \code{scheme}.
}
\subsection{Length of stay with its distribution and interval (\code{staysmry})}{
A one-row data frame of class
\code{c("rmbl_stay_summary", "data.frame")} (its print method shows it as
a box) with numeric columns \code{n} (people),
\code{totaldays}, \code{mean}, \code{sd} (sample standard
deviation), \code{median}, \code{iqr} (interquartile range, quantile
type 7), \code{max}, \code{se} (standard error of the mean),
\code{lower} and \code{upper} (the t interval on the mean). With a
single person \code{sd}, \code{se}, \code{lower} and \code{upper}
are \code{NA}.
}
\subsection{Stock and flow side by side, with the decomposition (\code{stkflow})}{
A data frame of class \code{c("rmbl_stock_flow", "data.frame")},
one row per period, with columns \code{period} (character),
\code{people}, \code{days}, \code{alos} (days per person),
\code{adp} (days divided by \code{t}); when \code{exposure} is given
also \code{exposure}, \code{flowrate} (people per \code{per}
residents) and \code{stkrate} (\code{adp} per \code{per}
residents). Then the percentage changes against the baseline:
\code{peochg}, \code{aloschg}, \code{dayschg},
\code{adpchg}, and with \code{exposure} also
\code{flowratechg} and \code{stkratechg}. Attribute
\code{"stkflow"} is a list with \code{t} (the period lengths),
\code{baseline} and \code{per} (\code{NA} without \code{exposure}).
The print method shows the levels and a footer with the change from the
baseline to the last period, flagging rates with opposite signs.
}
\subsection{Get a Public Timestamp for a Commitment (\code{tsstmp})}{
The \code{\link[=tsvrf]{tsvrf()}} result for the new token (class
\code{bricklayer_timestamp}, printed as a box with the time it asserts),
with three more elements: \code{token} (the raw token), \code{tsa} and \code{file}
(the path it was saved to, or \code{NA}). An authority that does not answer
is an error.
}
\subsection{Verify an RFC 3161 timestamp token (\code{tsvrf})}{
\code{tsvrf()} returns a list of class
\code{bricklayer_timestamp}: \code{ok} (logical), \code{time} (a \code{POSIXct} in
UTC, or
\code{NA} when the token could not be read), \code{serial} and \code{policy}
(character), \code{hash_algorithm} (for example \code{"sha256"}),
\code{signature_algorithm} (an OID string), and a \code{checks} data frame with
columns \code{check}, \code{ok} and \code{detail}. The print method lists the checks.
\code{tsinfo()} returns a plain list with \code{time}, \code{serial},
\code{policy},
\code{hash_algorithm}, \code{imprint} (hex), \code{signature_algorithm} and
\code{has_certificate} (logical).
}
\subsection{Start a capsule from a template (\code{usecpstmpl})}{
The directory path, invisibly.
}
\subsection{Re-Verify an Entire Reproducible Data Capsule (\code{vrfcps})}{
An object of class \code{c("bricklayer_capsule_check", "list")},
printed as one line per check: \describe{ \item{\code{ok}}{logical scalar,
the overall verdict described in Details.} \item{\code{checks}}{data.frame
with columns \code{check} (character, the check name), \code{ok} (logical)
and \code{detail} (character: the path checked, the digest found, or why it
failed).} \item{\code{required}}{character, the checks that had to be
made.} \item{\code{missing}}{character, required checks that were never
made (\code{character(0)} when none).} }
}
\subsection{Retry the failures of a bulk Wayback run (\code{wbrtry})}{
The whole run as it now stands, one row per URL (a
data frame of class \code{rmbl_wayback_save}), with the
attribute \code{retry}: how many failures there were, how
many a lookup found, how many were captured again, how many
were left as gone, and how many were left for tomorrow (a
daily limit hit today), as a one-row data frame with integer columns
\code{failed}, \code{found_by_lookup}, \code{captured_again},
\code{left_as_gone} and \code{left_for_tomorrow}.
}
\subsection{Archive many pages in the Wayback Machine (\code{wbsave})}{
A data frame of class \code{rmbl_wayback_save}, one
row per URL with a result: \code{url}, \code{status}
(\code{"saved"}, a new capture; \code{"existing"}, a capture
already there; \code{"failed"}; or \code{"submitted"}, a
capture started when the run was stopped, polled again by the
next run), \code{timestamp} (\code{YYYYMMDDhhmmss}),
\code{snapshot} (the archived copy's address) and
\code{message} (archive.org's reason, for a failure). The
attribute \code{not_sent} lists the URLs this run did not
start (\code{maxcap}, or archive.org's daily cap for the
account).
}
\subsection{Write a Manifest to JSON (\code{wrmnfjs})}{
\code{path} (character scalar), invisibly.
}
\subsection{Write a Plain-Language Run Summary (\code{wrsmrytxt})}{
The path to the written \code{SUMMARY.txt} (character scalar),
invisibly.
}
\subsection{Advance an XMSS key past a signature it made (\code{xmssadv})}{
The key with \code{next_index} advanced past the signature's index
and past every index the record knows this key has used.
}
\subsection{Find XMSS signature indices used twice (\code{xmssidxseen})}{
A data frame, one row per signature seen: \code{key} (the key
fingerprint, the first 16 hex characters of SHA-256 over the public
key), \code{index}, \code{sig} (a digest of the signature), \code{where} (the file)
and \code{reused} (\code{TRUE} when this key signed this index with another
signature too).
}
}
\section{Admissions implied by a population and a length of stay (\code{admits})}{

Works out how many admissions a given average daily population and
average length of stay imply over a period. Published statistics often
give the population held and the average stay but not the number
admitted (or the other way round); this recovers the missing quantity
from the identity that links all three.


Rearranging the identity \eqn{\bar{X}_{hc} = N_a \bar{X}_t / t}
(Lakner 1976, p.18-20) for \eqn{N_a}. Useful when two of the three
quantities are published and the third is not. The identity holds
exactly only in a steady state (admissions and stays roughly constant
across the period); with a population that is growing or shrinking
quickly the result is an approximation.

Errors when any argument is not numeric, is \code{NA} or \code{Inf}, is
not positive, or has more than one value.

}
\section{Average daily population (\code{adp})}{

The mean number of person-days served per day over a period: a
STOCK, answering how many people are held at one time. Use it to report
how much confinement (or bed occupancy, shelter use, open caseload) a
system used over a year or any other window, from the days each person
spent in it. It is the measure capacity planning needs, because it counts
beds in use rather than people who passed through.


This is Lakner's \eqn{\bar{X}_{hc} = \sum X_i / t} (1976, p.15), where
\eqn{X_i} is the days served by person \eqn{i} inside the period. The
denominator is TIME, which is what makes it a stock. Compare
\code{\link[=alos]{alos()}}, whose denominator is people: the two are linked by
\eqn{\mathrm{ADP} = N \times \mathrm{ALOS} / t} (Little's law), so
\code{\link[=admits]{admits()}} and \code{\link[=stkflow]{stkflow()}}
can move between them.

Only days served inside the period should be counted: a stay that began
before the period or ends after it contributes its days within the window.

Errors when \code{days} is not numeric (text and factors are refused),
is empty, has \code{NA}, \code{Inf} or a negative value, or when
\code{t} is not a single positive number.

}
\section{Person-days estimated from periodic headcounts (\code{adpcnts})}{

When only a count of people present on certain days is available --
not a record per person -- the person-days over the period are the
mean of those counts scaled to the period's length.
Use it with \code{\link[=adp]{adp()}} or \code{\link[=alos]{alos()}} when the source
is a daily or weekly
count sheet rather than admission and release dates.


Lakner's \eqn{X_t = (\frac{1}{C}\sum N_i) t} (1976, p.21). The counts
need not cover every day: counting on weekdays only is the usual case,
and the mean of the days counted stands in for the days not counted.
That substitution is an assumption, and it fails if the days counted
differ systematically from the days missed -- weekday-only counting
where weekend admissions are released before Monday, for instance.

}
\section{Average length of stay (\code{alos})}{

The mean number of person-days served per person: the FLOW side of
the same person-days. Use it to say how long a typical admission lasts,
and together with \code{\link[=adp]{adp()}} to tell whether a change in the population
held
came from more people or from longer stays. For the full distribution of
stays (median, spread, interval) use \code{\link[=staysmry]{staysmry()}}.


Lakner's \eqn{\bar{X}_t = \sum X_i / N'} (1976, p.16), with a caveat
worth repeating (p.16-17): the period must be longer than the longest
stay people actually serve, or the average is biased DOWNWARD, since
the longest stays are the ones that fail to finish inside the window.
For short-stay facilities a year is comfortable; for long sentences it
is not, and the period has to be set from the records.

Errors when \code{days} is not numeric, is empty, or has \code{NA},
\code{Inf} or negative values, and when \code{n} is not a single positive
number.

}
\section{Capture files the Internet Archive cannot reach, and publish them as an archive.org item (\code{arccap})}{

Downloads each URL from here, records its SHA-256, size and time in a
manifest, timestamps the manifest with an RFC 3161 time-stamping authority,
and, with archive.org keys, uploads the files, the manifest and its timestamp
as one public archive.org item. The item is the mirror that
\code{\link{fetchvrf}} falls back to, and the timestamp shows that these were
the bytes on that date.


Some servers refuse the Internet Archive's crawler while serving
everyone else: Save Page Now then reports that the target \dQuote{cannot
find} the page, or \dQuote{blocks access} to it, although the page is there.
Those URLs cannot be put in the Wayback Machine, but they can be captured by
anyone who can reach them, and the capture can be published. Pass a
\code{\link{wbsave}} result as \code{urls} to capture just the URLs it failed
on with such a refusal.

The manifest (\code{manifest.json}) lists, for each URL, the file, its
SHA-256, its size and the time it was fetched. The timestamp
(\code{manifest.tsr}) is the authority's signed statement that the manifest's
SHA-256 existed at its time; \code{\link{tsvrf}} checks it, as does
\code{openssl ts -verify}. Each file's digest in the manifest ties the file
to that time.

The upload uses the Internet Archive's S3-like API: each file is sent
with a PUT, streamed from disk, to\cr
\code{https://s3.us.archive.org/<item>/<file>}.\cr The first
request creates the item with the metadata given. The keys are the same as
for \code{\link{wbsave}}, so they are read from \code{IA_S3_ACCESS_KEY} and
\code{IA_S3_SECRET_KEY}, or their \code{_FILE} twins. They travel only in the
\code{authorization} header and
are never written or printed. Publish only what the source's licence lets you
redistribute.

}
\section{Find saved copies of an address in archive.rmorie.com (\code{arcfind})}{

Lists the captures the archive holds of a web address, oldest first: when
each was taken, its HTTP status, media type, size and SHA-256, and the
addresses to open or download it. An address ending in \code{*} lists every
address that starts with it. Public captures are listed for anyone; with your
key (see \code{\link{dlogin}}) your private ones are listed too.


The archive answers the same CDX query as the Wayback Machine
(\code{/cdx/search/cdx?url=...&output=json}), so tools written for it can
read it as well. Set \code{MORIE_ARCHIVE_URL} to query another archive that
speaks the same protocol, with its key in \code{MORIE_ARCHIVE_KEY}.

}
\section{Fetch the exact bytes of a saved copy from archive.rmorie.com (\code{arcget})}{

Downloads a capture's bytes and checks their SHA-256: against the archive's
record, and against \code{sha256} when you give one (the pin from your
analysis). A file that does not match is deleted.

}
\section{Send a capture kept on this computer to the archives later (\code{arcpush})}{

\code{\link[=arccap]{arccap()}} keeps every capture on this computer first: the files,
their SHA-256, a manifest and, by default, a WARC copy. When the Wayback
Machine, archive.rmorie.com or archive.org is down, or there is no
network but the source's, the capture is still complete there.
\code{arcpush()} sends that same capture on later: the very files that
were fetched, each checked first against the SHA-256 the manifest
recorded, so an archive keeps what you captured, not a new download. Run
it again to retry what failed; what an archive already took is not sent
twice.

The Wayback Machine takes no uploads: with \code{upload = "wayback"} it
is asked to capture each address itself, as the page is then. If the
page has changed since, its copy differs from yours, and your copy, with
the manifest's timestamp, remains the record of what you had.

A manifest with no timestamp yet (the authority was unreachable, or
\code{tsa = NULL} at capture) is stamped now when \code{tsa} is given;
that timestamp shows the files existed by now, not by the time they were
fetched.

Errors: \code{dir} without the \file{manifest.json} that \code{\link[=arccap]{arccap()}}
writes, or a manifest that lists no files; nowhere to send (neither
\code{item} nor \code{upload}); as for \code{\link[=arccap]{arccap()}} for \code{item},
\code{meta}, \code{upload}, \code{reason}, \code{tmout} and the keys.

}
\section{Where each loaded package came from (\code{capdeps})}{

Records, for every package named, its version and enough about its
provenance to find the same one again: the library it was loaded from,
the repository it was installed from, and -- for a package installed
from a remote -- the remote's URL and commit. Store it in a manifest next
to \code{\link[=capenv]{capenv()}} when an analysis depends
on packages installed
from GitHub or a local build.


Why versions alone are not enough. Two installations can report the same
version and differ: one built from CRAN, one from a fork, one from a
local \code{R CMD INSTALL} of a working tree with uncommitted changes. A
version number identifies an intention; the repository and commit
identify what was actually loaded.

The fields are read with \code{utils::packageDescription()} from each
package's installed DESCRIPTION: \code{Repository} (for example
\code{"CRAN"}), \code{RemoteUrl} and \code{RemoteSha} (written by
remotes, pak and devtools for packages installed from a Git host) and
\code{Built}. Packages are sorted and de-duplicated. A progress bar is
drawn on stderr for many packages unless \code{options(morie.quiet =
TRUE)}. Nothing is written. Error: \code{pkgs} that is not a character
vector.

}
\section{Capture the Analysis Environment for a Manifest (\code{capenv})}{

Records the facts a replicator needs to rebuild the session in which a
result was produced: the R version, platform and operating system, a UTC
timestamp, the random number generator in use and whether it was seeded,
and the versions of the packages involved. Store the result in a results
manifest (for example with \code{\link[=wrmnfjs]{wrmnfjs()}})
next to the numbers
it produced, and compare two captures with
\code{\link[=envdiff]{envdiff()}}.


Package versions come from \code{utils::packageVersion()}; a package that
is not installed gets \code{NA} rather than an error. The packages are
sorted and de-duplicated. The generator kinds come from \code{RNGkind()}
(R has changed its default \code{sample()} algorithm before, so a
recorded seed means nothing without the kind it was fed to), and
\code{rng_seeded} says whether \code{.Random.seed} exists in the global
environment. Nothing is written and the random state is not touched.

}
\section{BLAKE2b digest, optionally keyed (\code{cblake2b})}{

Computes the BLAKE2b hash of text or bytes as lowercase hex, with any
digest length from 1 to 64 bytes. With a key it becomes a message
authentication code: only someone holding the key can produce or check
the digest. Use it for fingerprints and keyed checks inside your own
workflow; use \code{\link[=csha256]{csha256()}} or
\code{\link[=chmac]{chmac()}} where other tools
must reproduce the value.


BLAKE2b (RFC 7693): a modern cryptographic hash, faster than SHA-256 in
software, that takes a key natively and produces any digest length from
1 to 64 bytes.

The native key is the interesting part. A keyed BLAKE2b IS a message
authentication code, with no HMAC wrapper and so no doubled hashing --
\code{cblake2b(msg, key = k)} does the job of
\code{\link[=chmac]{chmac()}} at lower cost. Use
SHA-256 or HMAC where interoperability with other tools matters; use
this where it does not and speed does.

Character input is hashed element by element, as the bytes of each
string; \code{NA} elements give \code{NA}. A raw vector is one message.
The digest length is a parameter of BLAKE2b, so a 32-byte digest is not
the first half of the 64-byte digest of the same input. Errors: \code{length}
outside 1 to 64; a key that is not a single string or raw vector, or is
longer than 64 bytes.

}
\section{CRC-32 checksum (C backend) (\code{ccrc32})}{

Computes the CRC-32 checksum of character or raw input: the CRC of ITU
V.42, zip and PNG (reflected polynomial \code{0xEDB88320}, initial value
and final XOR \code{0xFFFFFFFF}). Use it as a fast first check that a
large file or capsule member arrived intact, or to compare with the CRC
a zip archive records for its members.


A CRC is NOT a cryptographic digest: it detects accidental corruption
-- a truncated download, a flipped bit on disk -- but anyone can
construct a different input with the same value, so it must never be
used where \code{\link[=csha256]{csha256()}} is meant. It is
here because it is far cheaper than SHA-256 over gigabyte-scale capsule
members, which makes it the right first pass when the question is only
\dQuote{did this file arrive intact}.

Character input is checked element by element, as its bytes, with
\code{NA} giving \code{NA}; other atomic input is converted with
\code{as.character()}. A raw vector gives one checksum. For files use
\code{\link[=crc32file]{crc32file()}}.

}
\section{Verify a certificate chain (\code{certchnvrf})}{

Builds the path from a leaf certificate to a trust anchor you supply,
verifying each signature, each validity window, and the constraints that
stop a certificate being used for something it was not issued for.


\code{attm} is the point the validity windows are checked against,
and it matters which one you pass. For a timestamp token the right
answer is the time the token asserts: a token signed in 2020 by a
certificate that expired in 2021 was validly signed, and checking it
against today would reject it for no good reason. For a signature you
are being asked to rely on now, pass now.

The path is built by following issuer names from the leaf through the
intermediates until a certificate in \code{trust} is reached, at most ten
steps (a cycle among supplied certificates cannot loop). Then every link is
checked: the validity window at \code{attm}, the signature under the
issuer's key (RSA PKCS#1 v1.5 with SHA-1, SHA-256, SHA-384 or SHA-512;
ECDSA with SHA-256, SHA-384 or SHA-512 on P-256, P-384 and P-521), that
every issuer is a CA with a path length that allows the chain, name
constraints, the policy rules of RFC 5280 section 6.1, the requested
\code{purp} (extended key usage of the leaf), that the anchor is
self-signed, and revocation as \code{rvk} says. Each
check is one row of \code{checks}; \code{ok} is \code{TRUE} only when every
row passed. A failed check is a row, not an error.

Errors: \code{trust} empty; a certificate that \code{\link[=certprs]{certprs()}}
cannot read;
an unknown \code{rvk}. With \code{revocation = "fetch"} the network
is used (distribution points and OCSP responders named in the
certificates); otherwise nothing is fetched.

}
\section{Parse an X.509 certificate (\code{certprs})}{

Reads the fields a verifier needs: who issued it, who it is for, when it
is valid, what key it carries, and what that key is allowed to do. Use it
to inspect the certificate of a timestamping authority or a signer before
you decide to trust it, or as the first step of
\code{\link[=certchnvrf]{certchnvrf()}}. The
DER decoder is the package's own; no system library or network is used.


The certificate is decoded as DER (RFC 5280 section 4.1); a file whose
text contains a \code{-----BEGIN} line is read as PEM and its base64 body
decoded first (only the first certificate in the file is used). Version
1 certificates, without the explicit version field, are accepted.
Extensions read: basic constraints, key usage, extended key usage, subject
alternative name, name constraints, certificate policies, policy mappings
and policy constraints, and inhibit any-policy. The signature is not
checked here: that needs the issuer's key, which
\code{\link[=certchnvrf]{certchnvrf()}}
supplies.

Errors: \code{cert} neither a raw vector nor the path of an
existing file (a directory is refused); bytes that are not well-formed DER
or carry trailing bytes; a DER structure that is not a certificate or has
no signature.

}
\section{Tamper-evident chain of capsule manifests (\code{chn})}{

Keeps a history of runs (one manifest per run) as a hash chain: each
entry records the digest of the entry before it, so the chain's
integrity covers the ORDER and COMPLETENESS of the history, not merely
the contents of each manifest. Deleting an entry, inserting one, or
editing one breaks the links from that point onward, and
\code{\link[=chnvrf]{chnvrf()}} reports the first index where the break
occurs. Use it
when the record of which analyses were run, and in what order, has to be
auditable.


\code{chnnew()} starts an empty chain, \code{chnapp()} adds an
entry, \code{chnhead()} returns the last link, \code{chnvrf()}
checks every link and \code{chnseal()} returns one digest to sign.

This is the structure behind an append-only audit log, and it is what a
per-manifest digest alone cannot give you: individually valid manifests
say nothing about whether any were removed.

Each entry stores \code{payload}, the SHA-256 of the entry (of its UTF-8
bytes for a single string, otherwise of \code{serialize(entry, version =
2, xdr = TRUE)} with the four bytes that name the writer's R version set
to zero), \code{prev}, the previous link (64 zeros for the first),
\code{scheme} (2) and \code{digest} = SHA-256 of
\code{"v2|<prev>|<payload>|<label>"}, where \code{<label>} is \code{"0"}
for a missing label and \code{"1"} followed by the label otherwise. The
entry itself is not kept, only its digest; the label is covered, so
editing it breaks the link. Zeroing the writer-version bytes makes the
payload the same on every R version, for any R object (a canonical JSON
encoding would cover only the objects JSON can hold); the rest of a
version-2 stream depends only on the object.

Entries written by 0.5.12 and earlier carry no \code{scheme}. Their digest is
the SHA-256 of the string \code{"<prev>:<payload>"} (the label not covered,
and the payload of a non-string entry taken over serialized bytes that
include the writer's R version). \code{chnvrf()} and \code{chnseal()} still
accept them under those rules, with a warning that they were sealed with the
weaker scheme. Appending to such a chain adds scheme-2 entries.

\code{chnvrf()} walks the chain from the start: an entry fails when
its \code{prev} is not the previous link, its \code{scheme} is neither 2
nor absent, or its \code{digest} does not recompute (compared in constant
time with \code{\link[=cdgsteq]{cdgsteq()}}).
\subsection{What the head covers, and what it does not}{

\code{chnhead()} is the STORED digest of the last entry. Deleting an
entry from the MIDDLE leaves that value untouched -- the stored digests
do not change, only the links between them stop agreeing -- so the head
alone will not notice. \code{\link[=chnvrf]{chnvrf()}} will,
and names the index.

Conversely, truncating from the END leaves a perfectly valid prefix that
\code{\link[=chnvrf]{chnvrf()}} accepts, while the head
changes.

The two failures are complementary, which is why \code{chnseal()}
exists: it verifies the links AND folds the entry count and every link
digest into one value (SHA-256 of the count and the links joined by
\code{"|"}), so a single signature over the seal detects an edit, a
deletion, a reordering, an insertion and a truncation alike. Sign the
seal, not the head.

Signing is what turns tamper-EVIDENT into tamper-PROOF: without a
signature an attacker who rewrites the whole chain leaves it internally
consistent, because recomputing every link is cheap.

Error: a \code{chain} that does not come from \code{chnnew()} (for
\code{chnapp()}, \code{chnhead()} and \code{chnvrf()}).
}

}
\section{Split a file into fixed-size chunks (\code{chnkfile})}{

Reads a file as bytes and returns it as consecutive chunks of a fixed
size, ready for \code{\link[=mrkroot]{mrkroot()}},
\code{\link[=mrklvs]{mrklvs()}} and
\code{\link[=mrkprf]{mrkprf()}}. Use it to pin a large data file as a
Merkle root, so
that a later change can be traced to the chunk that moved.


The file is read sequentially with \code{readBin()} in pieces of
\code{chnkbytes}; every chunk has exactly that many bytes except the
last, which holds the remainder. All chunks are held in memory at once,
so the memory used is about the size of the file. The default 1 MiB
chunk is a compromise: smaller chunks localise a change more precisely
but make the tree and its proofs larger. An edit that changes the file's
length shifts every later chunk boundary, so only edits that keep the
length localise to one chunk.

Errors: \code{path} that does not name an existing file (or names a
directory); \code{chnkbytes} that is not a positive whole number.

}
\section{Generate a Data Citation From Provenance (\code{citecps})}{

Builds a ready-to-paste data citation, as plain text and as a BibTeX
\code{@misc} entry, from the \code{dataset} and \code{resource} blocks of a
provenance record. Use it so that every report and paper built from a
capsule cites the data set in the same words, with the retrieval date and
licence that were actually pinned.


The fields used, with their fallbacks: \itemize{ \item author:
\code{dataset$publisher}, else \code{"Unknown publisher"}; \item title:
\code{resource$name}, else \code{dataset$package_slug}, else \code{"Untitled
dataset"}; \item year: the first four characters of \code{captured_at_utc},
else the current year; retrieval date: its first ten characters (omitted if
absent); \item link: \code{https://doi.org/<dataset$doi>} if a DOI is
recorded, else \code{resource$direct_url}, else
\code{dataset$catalogue_page}; \item licence: \code{dataset$licence_short},
else \code{dataset$licence_name}. } The text form is \code{Publisher (year).
Title [Data set]. link Retrieved date. Licence: x.} The BibTeX key is the
package slug with non-alphanumeric characters removed, followed by the year.
In the BibTeX entry the licence is written in the \code{note} field only when
a retrieval date is present. No character in the fields is escaped for LaTeX.
Error: \code{prov} that is not a list.

}
\section{Attest a capsule, binding a signature to what it covers (\code{cpsatst})}{

\code{cpsatst()} signs a manifest's canonical digest and records
everything a verifier needs alongside it: the scheme, the public key, the
context string, the pre-hash, a note and the time of signing.
\code{cpschkatst()} checks the result against a manifest
without being told anything further. Use them to publish a capsule
together with proof that its manifest has not changed since you signed it.


What this adds over \code{\link[=cpssign]{cpssign()}}. A bare
signature leaves three things implicit -- which key, which scheme, and
which bytes. A verifier who has to be told those out of band cannot
check anything they were not already given, which makes the signature a
formality. An attestation states them, so the check is
\code{cpschkatst(attestation, manifest)} and nothing
else.

What is signed: the payload \code{digest}
(\code{\link[=mnfdgst]{mnfdgst()}} of the
manifest), \code{scheme}, \code{public}, \code{ctx} (hex for a raw
context), \code{prehash}, \code{note} and \code{signed_utc} is put in
canonical form (\code{\link[=mnfcanon]{mnfcanon()}}) and its
SHA-256 is signed with
\code{\link[=cpssign]{cpssign()}}. Every field, the note and the time
included, is
therefore covered: editing any of them breaks the signature. With an XMSS
key from \code{\link[=pqckg]{pqckg()}} the scheme is \code{"xmss-sha256"}
and the context
and pre-hash are not used by the signature; signing uses up one of the
key's one-time indices, as every XMSS signature does.

With a shared secret (a string or raw vector) as \code{key} the scheme
is \code{"hmac"}: HMAC-SHA-256 under that secret, as
\code{cpssign(scheme = "hmac")}. \code{public} is then a key id, the hex
of HMAC-SHA-256 of the string \code{"public"} under the secret: it names
the key, so \code{keyexp} can pin it, without revealing it. The secret
itself is never recorded, so checking needs it again (\code{key} in
\code{cpschkatst()}). \code{context} is \code{""} and \code{prehash}
\code{"none"}, the bytes morie's capsule signer writes. HMAC is
symmetric: anyone who can check the signature can also make one. It is
not one of the post-quantum signature schemes and carries none of their
guarantees.

The check, one row each: \code{attestation_complete} (every field is
present), \code{manifest_digest} (the manifest's digest equals the attested
one), \code{key_as_expected} (only when \code{keyexp} is given) and
\code{signature} (the signature verifies under the attested public key;
for \code{"hmac"}, under \code{key}, whose key id must equal
\code{public}).
\code{ok} is \code{TRUE} when every row passes.

What it does NOT establish. That the public key belongs to whoever you
think it does: an attestation is only as good as the channel the key
arrived on, which is why \code{keyexp} exists. And that the
manifest is true -- only that it has not changed since it was signed.
\code{\link[=cpsfals]{cpsfals()}} is for the other question. No chain
seal is recorded;
to attest a run history, sign \code{\link[=chnseal]{chnseal()}} directly.

Errors: \code{man} not a list; \code{key} not from
\code{\link[=fipskg]{fipskg()}}
or \code{\link[=pqckg]{pqckg()}} and not a non-empty string or raw vector; an invalid
\code{prehash} or
\code{ctx} (from \code{\link[=cpssign]{cpssign()}}), or either given with an HMAC key;
\code{attestation} not from \code{cpsatst()}. A signature that fails to
verify is a failed row, not an error.

}
\section{Bundle a capsule into one signed artifact (\code{cpsbndl})}{

Records a digest of every file named, the manifest's canonical digest,
and an attestation covering both, as a single JSON file.
\code{\link[=cpsbndlvrf]{cpsbndlvrf()}} re-hashes
the files on disk and checks everything against it.


The file digests are inside the signed payload, not alongside it. That
is the whole point: a list of hashes that is not itself signed can be
rewritten to match whatever the files now say, and a recipient who
re-hashes the files and compares them to that list learns only that the
list is consistent with itself.

What it establishes: the named files have not changed since signing, the
manifest has not changed, and both were signed together by the holder of
that key. What it does not: that the key belongs to anyone in
particular, or that the manifest's claims are true.

How it is built. Each file is hashed with SHA-256
(\code{\link[=sha256file]{sha256file()}}); the
payload is the list of \code{path}, \code{sha256} and \code{size_bytes}, the
manifest's
\code{\link[=mnfdgst]{mnfdgst()}} and the UTC time;
\code{\link[=cpsatst]{cpsatst()}} signs a manifest
whose \code{meta} is that payload, and the bundle (payload plus attestation) is
written as pretty JSON with doubles at 17 digits. With \code{files = NULL} every
regular file under \code{dir} is hashed, recursively and including dot-files
(a \code{.Rprofile} dropped into a capsule runs code), except the bundle file
itself. A progress bar is shown when \code{options(morie.progress)} allows it.

How it is checked. \code{cpsbndlvrf()} re-hashes every listed file
(a path that is absolute or climbs out of \code{dir} fails its row), reports
every file on disk the bundle does not list (the bundle's own file
excepted), checks the attestation with
\code{\link[=cpschkatst]{cpschkatst()}}
(signature, digest, and \code{keyexp} when given; an \code{"hmac"}
signature needs the shared secret as \code{key}), and, when \code{man}
is given, compares its digest with the bundled one. Every check is a row of
\code{checks}; \code{ok} is \code{TRUE} only when all pass. A failed check is a row,
not
an error.

Errors: \code{dir} missing or not a directory; no files to bundle, or a named
file not in \code{dir}; a key \code{\link[=cpsatst]{cpsatst()}} cannot
sign with;
\code{cpsbndlrd()} given a file that is not a bundle;
\code{cpsbndlvrf()} given something other than a bundle or a path.
Reading a bundle whose signature records a stateful key's state warns (see
\code{\link[=cpsatst]{cpsatst()}}).

}
\section{Check every capsule under a folder (\code{cpschk})}{

Runs the checks of the rmbl GitHub Action on every capsule (a folder
holding \code{data_provenance.json} or \code{capsule_bundle.json}) under
\code{path}: each capsule file against its JSON Schema
(\code{\link{schemapath}}), then \code{\link{vrfcps}} and
\code{\link{cpsbndlvrf}}. With \code{mode = "drift"} or
\code{"refresh"} each source is fetched again and compared with the pin,
column by column (\code{\link{cpsdrft}} and \code{\link{benfordtst}});
\code{"refresh"} then writes and pins new bytes. \code{rmbl verify},
\code{drift} and \code{report} call it. \code{format()} renders the
Markdown report or the JSON, and \code{\link{ghann}},
\code{\link{ghcmt}} and \code{\link{ghout}} the GitHub pieces.


Each check is one row with a severity: \code{error}, \code{drift},
\code{warn} or \code{note} (a note never changes a result). A capsule's
result is the worst severity among its failed rows, and \code{status} the
worst over all capsules: \code{ok}, \code{warn}, \code{drift} or
\code{error}. Each failed row adds a note, and one more from
\code{\link{explerr}} where it finds what the row means or where its
message is raised.

Drift: when the fetched source's SHA-256 differs from the pin and the
pinned data file is a CSV, \code{cpsdrft()} runs with
\code{psithr = psifail}. A column is \code{drift} when \code{cpsdrft()}
flags it and its PSI is above \code{psifail}, and \code{warn} when it is
flagged below that or its PSI is above \code{psiwarn}; an added or
removed column is drift. New bytes whose columns all stay within the
bands are a note; new bytes that cannot be compared are a warning.

Refresh: the new bytes are written as the data file and pinned in the
provenance as \code{\link{cpsrfrsh}} does (refused when they fail the
schema the provenance pins, \code{\link{valsch}}); with
\code{wayback = TRUE} an http(s) source is first captured with
\code{\link{wbsave}}. The capsule is then verified again.

Manifests: with \code{base}, each capsule's \code{manifest.json} and
\code{results/manifest.json} is compared with its base copy: the base's
recorded results against this copy's observed values, each within the
base's tolerance (\code{\link{mnfrcmp}}), and the resources of the two
(\code{\link{mnfdiff}}). A manifest only one side has is added or
removed.

Cache: a fetched source is kept in the cache folder under
\code{source-} and the first 16 hex digits of the SHA-256 of its URL, one
file per source overwritten by each fetch, and is read only when the live
fetch fails.

Side effects: \code{"drift"} and \code{"refresh"} fetch each source
(the network for http(s) ones), as \code{snapshot = TRUE} asks the
Wayback Machine once per capsule (\code{\link{wbsnpurl}});
\code{"refresh"} writes the capsules; a cache folder is written to.
Errors: \code{path} is not a directory; a bad argument. A capsule whose
checks stop is one failed row, not an error.

}
\section{Does the Analysis Recover a Known Effect? (\code{cpsplant})}{

Plants effects of known size into the real data and checks that the
statistic gets them back. Each planted data set keeps every column as
it is, except the outcome: it is shuffled, which removes whatever real
association it had with the treatment, and then the planted effect is
added, \code{effect * treatment}. A statistic that estimates the treatment's
effect on the outcome should return about \code{effect} on every one.


This is evidence about the statistic as it is applied to this data
(its missing values, its skew, its group sizes), which a simulation on
made-up data cannot give. A statistic that recovers 0, 0.5 and 1
correctly is very unlikely to be computing the wrong thing.

The treatment column must be numeric, logical or a factor with two
levels (the second is coded 1). Effects are on the outcome's own scale
per unit of treatment, so the statistic must estimate an additive
effect: a difference in means, a regression slope, an average treatment
effect. An effect is recovered when the average estimate is within
\code{tol} of it, after allowing one Monte Carlo standard error, and that
standard error is itself no larger than half of \code{tol}: a statistic too
noisy for the check to mean anything is not recovered (raise \code{n}). The
allowance is so at most 1.5 times \code{tol}. Without the second condition the
allowance grew with the noise, and a statistic that returned pure noise
passed; with up to four times \code{tol} allowed, an estimator that
returned 0.7 of the effect with some noise passed.

}
\section{Pin and sign every capsule under a folder (\code{cpsseal})}{

Seals each capsule (a folder holding \code{data_provenance.json}) under
\code{path}, so that a program in any language only has to write the
data file and a plain provenance naming it
(\code{{"resource": {"filename": "data.csv"}}}): on its first run the
provenance is pinned to the data file's bytes as \code{\link{cpsrfrsh}}
pins it (\code{resource$sha256}, \code{size_bytes},
\code{retrieved_utc}, the row count when one is recorded), then
\code{\link{cpsbndl}} signs every file of the capsule into
\code{capsule_bundle.json}, over its \code{manifest.json} when it has
one. \code{rmbl sign} calls it and then verifies (\code{\link{cpschk}}).


A provenance already pinned (one with \code{resource$sha256}) is left as
it is. Side effects: writes \code{data_provenance.json} (first run) and
\code{capsule_bundle.json} in each capsule. Errors, before anything is
written: no provenance under \code{path}; a capsule that already has a
bundle, unless \code{overwrite}; then, per capsule, a
\code{resource$filename} that is not a plain relative path to a file in
the capsule, and the refusals of \code{cpsbndl()} (a key it cannot sign
with).

}
\section{Sign a capsule manifest (\code{cpssign})}{

Authenticates \code{msg} -- normally a manifest digest, or the whole
manifest text -- so a verifier can tell that it came from the holder of
the key and has not been altered since. A digest alone shows that data
were not corrupted; a signature also shows who vouched for them, because
only the key holder can make it. Verify with
\code{\link[=cpsvrf]{cpsvrf()}}.


Three kinds of key are accepted: a shared secret (HMAC), an XMSS key from
\code{\link[=pqckg]{pqckg()}}, or a standardised ML-DSA or SLH-DSA key from
\code{\link[=fipskg]{fipskg()}}. For new work the standardised keys are the
simplest:
they sign any number of messages with no state to keep.

With a standardised key the signature is FIPS 204 \code{ML-DSA.Sign} or
FIPS 205 \code{slh_sign} over the message with its context (hedged by
default, deterministic on request). ML-DSA signs in milliseconds;
SLH-DSA from a few hundred milliseconds (the \code{f} sets) to several
seconds (the \code{s} sets at 192 and 256 bits); an XMSS signature rebuilds
the key's tree, about 3 s at the default height 10. Slow signatures show
a spinner on stderr after 0.75 s when a person is watching (an
interactive session or \code{options(morie.progress = TRUE)};
\code{options(morie.quiet = TRUE)} silences it), and Ctrl-C stops them.

Refusals: a message that is not one string or a raw vector; a key of the
wrong kind for the scheme; a context over 255 bytes; an unknown pre-hash;
an exhausted XMSS key, an index the used-index record shows as used, a
key whose record cannot be read or written, or an XMSS key the record
does not know (see \code{\link[=xmssadv]{xmssadv()}} and
\code{\link[=xmssregkey]{xmssregkey()}}).

With \code{scheme = "hmac"} the \code{key} is a shared secret string and
the result is an HMAC-SHA-256 tag. Symmetric, so anyone who can verify
can also sign.

With \code{scheme = "xmss"} the \code{key} is a
\code{\link[=pqckg]{pqckg()}} object and the result is a
post-quantum one-time signature under the key's Merkle root. Asymmetric:
a verifier holding only the public root cannot forge.

\subsection{The key must be advanced after every signature}{
An XMSS signature consumes a leaf, and \strong{subsequent signing must use the
advanced key} -- reusing an index breaks the scheme. The signature object
carries no key material (it is what verifiers are handed); the advanced
key is \code{xmssadv(key, signature)}, and that is what to save. The key is
an R value, so \code{cpssign()} cannot advance the caller's copy; instead it
records, in the session and in the index file described under
\code{\link[=xmssadv]{xmssadv()}},
the highest index each key has signed with, and
refuses that index or an earlier one. Passing an exhausted key is an error,
not a silent wrap-around.
}
\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}), power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}), and ML-KEM
decapsulation and ML-DSA signing are first-order masked by default. These
are checks of this code on those compilers and under those leakage
models; the README's security section lists what each check does and
does not cover.
}
}
\section{Do Reasonable Alternative Analyses Agree? (\code{cpsspec})}{

Runs several specifications of the same estimate (other covariates,
another model, another handling of outliers or missing values) and
reports how far they spread and whether they agree in sign. A finding
that holds under one specification only is fragile; one that survives
the reasonable alternatives is robust.

}
\section{Verify a capsule manifest signature (\code{cpsvrf})}{

Checks \code{sig} against \code{msg}. For \code{"hmac"} the
comparison is constant-time (verified under valgrind memcheck in CI:
\code{inst/ctcheck}, cases \code{digest-equal} and \code{hmac-sha256}). For XMSS the
Winternitz chains are walked
to their ends and the authentication path replayed to the Merkle root;
the digest is bound to both the leaf index and the root, so a signature
cannot be replayed at another index or under another key.


Returns \code{FALSE} rather than erroring on a malformed or truncated
signature: a verifier must treat unparseable input as \dQuote{not verified},
never as an exception to be caught and ignored.

\code{TRUE} means the signature is valid for \code{msg} under \code{key} (and, for
the standardised schemes, \code{ctx} and the pre-hash). Verification
needs only public material, except for HMAC, where the verifier holds
the same secret as the signer and could therefore also sign. HMAC tags
are compared in constant time.

Only two inputs are errors rather than \code{FALSE}: a \code{sig} that is not a
\code{bricklayer_signature} at all, and, for an XMSS signature, a key that is not
a key object (a string, say) or a \code{msg} that is not one string or a raw
vector. A key or signature whose class, scheme or fields were edited returns
\code{FALSE}. An XMSS signature object written by 0.5.9 to 0.5.12 (one that
carries a \code{key_state} field) still verifies, with a warning that it exposed
the signer's private key.

}
\section{Verify a Signature Here and Again With OpenSSL (\code{cpsxvrf})}{

Checks an ML-DSA or SLH-DSA signature twice: with this package's own
implementation
(\code{\link[=cpsvrf]{cpsvrf()}})
and with the \code{openssl} program (version 3.5
or later), which implements FIPS 204 and 205 independently. The
signature counts as cross-verified only when both accept it.


OpenSSL is never required. When it is missing, older than 3.5, or the
signature is one OpenSSL cannot check (XMSS, an HMAC tag, or a
pre-hashed signature), its verdict is \code{NA} with the reason, and the
result says the signature was verified here only.

The public key is written as a standard SubjectPublicKeyInfo (the
NIST object identifiers for each parameter set), the message and the
signature as raw bytes, and \verb{openssl pkeyutl -verify -rawin} checks
them, with the context string passed as \code{hexcontext-string}. Nothing
is sent anywhere: the files live in a temporary folder that is removed
afterwards.

}
\section{SHA-512 hex digest (C backend) (\code{csha512})}{

Hashes character or raw input with the self-contained SHA-512 (FIPS
180-4) in the compiled core and returns the digest as hex. A digest is a
fingerprint: any change to the input gives a different value, so it pins
a data file, a code string or a manifest. Use it over
\code{\link[=csha256]{csha256()}}
when a pin has to outlive the capsule by decades: the wider digest leaves
more margin, including against a quantum adversary, for whom Grover's
algorithm halves the effective preimage exponent.


Character input is hashed element by element, each string as its bytes
(UTF-8 text gives the UTF-8 bytes; no newline is added). \code{NA}
elements give \code{NA}. Other atomic input (numbers, logicals) is first
converted with \code{as.character()}, so \code{csha512(1)} is the
digest of the text \code{"1"}. A raw vector is hashed as one byte string.
For files use \code{\link[=sha512file]{sha512file()}}. Pure computation; no side
effects.

}
\section{Digest an arbitrary R object (\code{dgstobj})}{

Fingerprints any R object by hashing its serialization, so a list, a
data frame, a function or a fitted model all get a stable digest. The
counterpart of \code{digest::digest()}, computed with this package's own
hashes.

Serialization is pinned to version 2 with XDR byte order, so the digest
is the same on a big-endian machine as on a little-endian one. Two
objects that are \code{identical()} produce the same digest; two that
merely print the same need not, because attributes are part of the
serialization.


The object is serialized with \code{serialize(x, NULL, version = 2,
xdr = TRUE)} and the bytes are hashed with \code{\link[=csha256]{csha256()}},
\code{\link[=csha512]{csha512()}}, \code{\link[=cblake2b]{cblake2b()}}
(32 bytes) or \code{\link[=ccrc32]{ccrc32()}}. CRC-32 is
a checksum for accidental corruption, not a cryptographic hash. With a
\code{key} the digest is HMAC-SHA-256 for \code{"sha256"} and keyed BLAKE2b for
\code{"blake2b"}; a key with \code{"sha512"} or \code{"crc32"} is an error rather than
a
silently unkeyed digest. Objects that contain environments (functions,
many fitted models) serialize their enclosing environments too, so
their digest can change between sessions even when the code does not.

}
\section{Draw bytes from a DRBG (\code{drbggen})}{

Generates \code{n} bytes (SP 800-90A's Generate function) and advances the
generator. Use it to draw reproducible random bytes from a generator made
by \code{\link[=drbgnew]{drbgnew()}}: the same seed and the same sequence of calls
give the same
bytes on every platform, which is what known-answer tests and reproducible
key generation need.


Each call encrypts the counter V under Key with AES-256 to produce the
output, then updates (Key, V) with the additional input, so the next call
gives different bytes and earlier outputs cannot be recovered from the new
state. The generator is changed in place. When the generator was created or
last reseeded in another process (a fork, or a copy restored from a file),
it first reseeds itself from the operating system. After \eqn{2^{48}}
requests since seeding the standard requires a reseed, and the call errors
until \code{\link[=drbgrsd]{drbgrsd()}} is called.

Errors: \code{drbg} not made by \code{\link[=drbgnew]{drbgnew()}}; \code{n} not a
single whole
number from 1 to 65536; \code{addl} longer than 48 bytes or neither raw
nor hex.

}
\section{A deterministic random bit generator: AES-256 CTR_DRBG (NIST SP 800-90A) (\code{drbgnew})}{

Creates the counter-mode DRBG of NIST SP 800-90A Rev. 1, section 10.2.1,
with AES-256 and no derivation function, implemented in this package (no
system library). From the same entropy, personalization and additional
inputs it returns the same bytes, which is what reproducible key generation
and known-answer tests need; for keys meant to stay secret, seed it from
\code{\link[=rndbytes]{rndbytes()}} (the default) or use
\code{\link[=rndbytes]{rndbytes()}} directly.


It reproduces all 720 AES-256 no-df vectors of NIST's DRBG validation suite
(without reseeding, with reseeding, and with prediction resistance; the
package's tests check a sample of them), and it is the \code{randombytes()} of
NIST's \code{rng.c}, with which most post-quantum submissions wrote their
known-answer files: \code{drbgnew(as.raw(0:47))} followed by
\code{drbggen(d, 48)} gives the \code{seed} of their vector 0. AES runs in
constant time: the S-box is computed (an inversion in GF(2^8) and the affine
map) rather than looked up, and on x86-64 processors with AES-NI the rounds
use those instructions. Both paths are checked under valgrind memcheck with
the entropy input marked secret (\code{inst/ctcheck}, case \code{drbg-portable} and
\code{drbg-aesni}).

The generator is an object that changes as it is used: every
\code{\link[=drbggen]{drbggen()}} and
\code{\link[=drbgrsd]{drbgrsd()}} advances it in place.

The generator is an environment, so copies share one state. It is not
meant to be saved: a generator restored from \code{saveRDS()} or inherited
by a forked process reseeds itself from the operating system on its next
use, so two processes never replay the same stream (and such a stream is
then no longer reproducible). Errors when \code{entropy} is not exactly 48
bytes or \code{person} is longer than 48 bytes, or either is
neither a raw vector nor one hexadecimal string.

\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}) and power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}) for the masked ML-KEM
and ML-DSA kernels; this scheme is not masked. These are checks of this
code on those compilers; the README's security section lists what each
check does and does not cover.
}
}
\section{Reseed a DRBG (\code{drbgrsd})}{

Mixes fresh entropy into the generator (SP 800-90A's Reseed function) and
resets its request count. Use it after many requests (the standard requires
a reseed after \eqn{2^{48}}), to add prediction resistance before a sensitive
draw, or to replay a known-answer test that reseeds with given entropy.


The new (Key, V) is derived from the old state, the 48 entropy bytes and the
additional input, so the stream after the reseed depends on everything that
went before. The request count is reset to 1 and the generator is marked as
belonging to the current process. Errors: \code{drbg} not made by
\code{\link[=drbgnew]{drbgnew()}}; \code{entropy} not exactly 48 bytes;
\code{addl} longer
than 48 bytes; either not raw or hex.

}
\section{Derive a key from a passphrase (\code{drvkey})}{

Turns a passphrase that a person can remember into a fixed-length key
(32 bytes by default) for signing or encryption, in a way that makes
guessing the passphrase slow. The same passphrase, salt and iteration
count always give the same key, so the key need not be stored: it can be
derived again when needed.


PBKDF2-HMAC-SHA256 (RFC 8018): stretches a passphrase into a key of full
width by iterating a keyed hash, so guessing the passphrase costs
\code{iter} times more than a single hash would.

The \code{salt} must be UNIQUE per key and need not be secret. Its job
is to make precomputation useless: without one, a single table of common
passphrases attacks every key at once.

\code{iter} is the cost knob. The default 100,000 is a reasonable
2020s floor for an interactive use; raise it for anything valuable, and
record the value you used, since verification must repeat it exactly.

PBKDF2 resists brute force by ITERATION only, not by memory. Where a
memory-hard function is available ( \code{argon2} in \pkg{sodium},
\code{bcrypt_pbkdf} in \pkg{openssl}) prefer it for passwords a human
chose. PBKDF2 is here because it needs nothing beyond the bundled
SHA-256, so it works wherever this package works.

The derivation runs in compiled code; at the default 100,000 iterations
it takes a fraction of a second, and a busy indicator is shown in an
interactive session. Errors: a passphrase or salt that is not a single
non-missing string or a raw vector; \code{iter} below 1; \code{length}
outside 1 to 1024.

}
\section{How strong would an unmeasured confounder have to be (\code{evlrr})}{

The E-value of VanderWeele and Ding (2017): the minimum strength of
association, on the risk-ratio scale, that an unmeasured confounder
would need with BOTH the exposure and the outcome to explain away an
observed risk ratio.

It answers the question a covariate list cannot: not whether the
analysis adjusted for the right things, but how much unmeasured
confounding it would take to move the result to nothing. An E-value of
1.2 says very little would be needed; an E-value of 5 says a confounder
five times more common in the exposed group AND five times more
associated with the outcome would have to have gone unnoticed.

The E-value for the confidence limit is the one to report alongside it:
a large point-estimate E-value with a limit E-value of 1 means the
interval already includes no effect, and no confounding is needed at
all.


For a risk ratio \eqn{RR \ge 1} (after dividing by \code{true}, and
inverting a ratio below 1),
\deqn{E = RR + \sqrt{RR (RR - 1)}.}
For the interval, the limit nearer the null is used: the lower limit when
it is above 1, else the reciprocal of the upper limit when it is below 1;
when the interval contains 1 the limit E-value is 1. The formula is for
risk ratios; VanderWeele and Ding (2017) give approximate conversions for
odds ratios with a common outcome and for hazard ratios, which this
function does not apply. Only the first element of each argument is
used. Errors: a ratio or limit that is not finite and positive.

}
\section{Correct a family of falsification results for multiple testing (\code{falsfam})}{

Takes the p-values from several
\code{\link[=cpsfals]{cpsfals()}} runs -- or a plain
numeric vector -- and reports which survive once the size of the family
is accounted for.

Running the permutation control over twenty statistics and reporting the
one that came in under 0.05 is not a finding: at that family size
roughly one spurious result is what chance produces. Which correction to
use depends on the claim. Holm controls the probability of ANY false
positive, which is what a claim about a specific statistic needs.
Benjamini-Hochberg controls the expected PROPORTION of false positives
among those declared, which is what a screening exercise needs; it is
less conservative and says something weaker.

A permutation p-value cannot fall below \code{1 / (n + 1)}, so with a
small number of permutations a whole family can be uncorrectable --
every p sits at the floor. That is reported rather than hidden, because
the alternative is a table of adjusted values that look like evidence of
nothing in particular.


With the \eqn{m} p-values sorted, \eqn{p_{(1)} \le \dots \le p_{(m)}}, the
adjusted values are: Holm, \eqn{\max_{j \le i} (m - j + 1) p_{(j)}};
Benjamini-Hochberg, \eqn{\min_{j \ge i} (m / j) p_{(j)}}; Bonferroni,
\eqn{m p_{(i)}}; all capped at 1. They agree with
\code{stats::p.adjust()} with methods \code{"holm"}, \code{"BH"} and
\code{"bonferroni"}. A member survives when its adjusted value is at
most \code{alpha}.

For a list of \code{\link[=cpsfals]{cpsfals()}} results the p-value
used is that of
each result's permutation control, and the floor is \eqn{1/(n + 1)} for
its \code{n} permutations. For a numeric vector there is no floor to check and
unnamed values are named \code{p1}, \code{p2}, ....

Errors: a list whose members are not all falsification results, or that
is unnamed; a member without a permutation p-value; a missing p-value; a
p-value outside \eqn{[0, 1]}.

}
\section{Fetch a file from its source or a mirror, verified by its SHA-256 (\code{fetchvrf})}{

Downloads \code{url} to \code{dest}, trying the source first (with its
Wayback Machine snapshot as the source's own fallback, as
\code{\link{blfetch}} does) and then each mirror in turn, and keeps the first
copy whose SHA-256 is \code{sha256}. A copy with another digest is never
used: a changed or truncated file is a different file.


Some servers refuse the Internet Archive's crawler while serving
everyone else (Statistics Canada does), so a Wayback snapshot of their files
may not exist. The remedy is a capture made from elsewhere, published as a
mirror and pinned by its digest. It can be an Internet Archive item, at
\code{https://archive.org/download/} followed by \code{<item>/<file>}; the
data service; or an institutional repository. Because the digest is checked,
a mirror does not have to be trusted: a copy that matches is the same bytes
the analysis used, wherever it came from.

Without \code{sha256} the first copy that downloads is kept and its digest is
returned, to be pinned for the next run.

}
\section{SHA-512 and CRC-32 of a file (\code{filedgst})}{

\code{sha512file()} returns the SHA-512 digest of a file's bytes and
\code{crc32file()} its CRC-32 checksum. Use the first to pin a data file
for the long term and the second as a fast check that a large file
arrived intact (it is the checksum zip archives record). The SHA-256
counterpart is \code{\link[=sha256file]{sha256file()}}.


The file is read in blocks of \code{blkbytes} with \code{readBin()},
the blocks are joined into one raw vector, and the digest of that vector
is computed with \code{\link[=csha512]{csha512()}} or
\code{\link[=ccrc32]{ccrc32()}}. The whole file is
therefore held in memory once: memory use grows with the file size.
\code{blkbytes} affects only the reading, never the result. An empty
file gives the digest of no bytes (\code{cf83e135...} for SHA-512, 0 for
CRC-32).

Errors: \code{path} that does not name an existing file (or names a
directory); \code{blkbytes} that is not a positive whole number.

}
\section{Assemble a standardised key from raw key material (\code{fipskey})}{

Wraps key bytes that came from somewhere else -- another implementation,
a key store, a file written by an earlier session -- in the object
\code{\link[=cpssign]{cpssign()}} and
\code{\link[=cpsvrf]{cpsvrf()}} expect. The lengths are
checked against the parameter set, so material for the wrong scheme is
refused here rather than producing a signature nothing can verify.


The byte layouts are the standards' own, which is what makes this
interoperable: an ML-DSA secret key is
\code{rho || K || tr || s1 || s2 || t0} and an SLH-DSA one is
\code{SK.seed || SK.prf || PK.seed || PK.root}, exactly as FIPS 204 and
FIPS 205 encode them.

Hex input may be upper or lower case and is stored lower case; raw
input is converted to hex. Only the lengths are checked (against
\code{\link[=fipssz]{fipssz()}}): a secret key that does not belong to the
public key is
not detected here, and gives signatures that do not verify under that
public key. Refusals: an unknown scheme, and material that is not hex of
an even length or not exactly the scheme's length
(\code{"must be N bytes of key material"}).

}
\section{Generate a standardised post-quantum signing key (\code{fipskg})}{

Generates a key for one of the NIST-standardised signature schemes:
ML-DSA (FIPS 204) or SLH-DSA (FIPS 205). Both are implemented in this
package, natively, with no system dependency;
\code{\link[=pqcbknd]{pqcbknd()}} lists the parameter sets. The key signs
capsule
manifests, attestations and bundles with \code{\link[=cpssign]{cpssign()}},
and its
public half, from \code{fipspubkey()}, is what you give to anyone who
should be able to check those signatures with
\code{\link[=cpsvrf]{cpsvrf()}}.


Unlike \code{\link[=pqckg]{pqckg()}} 's hash-based key, these
are STATELESS: one key signs any number of messages, with no index to
track and nothing to persist between signatures.

Which to pick. ML-DSA is small and fast and rests on a lattice
assumption. SLH-DSA rests on nothing but the hash function, at the cost
of a signature one to two orders of magnitude larger; its \code{s}
parameter sets have small signatures and slow signing, its \code{f} sets
the reverse, and its SHAKE and SHA-2 families are equally strong: pick
SHA-2 where a validated SHA-2 implementation is what an auditor will ask
about. The default, \code{"SLH-DSA-SHA2-128s"}, is the conservative choice for
a record meant to be checked decades from now: its security rests on the
hash function alone, and its signature (7,856 bytes) is the smallest
SLH-DSA has. Signing takes about a second; verifying, milliseconds. Pick
\code{"ML-DSA-65"} for many signatures a second or small signatures.

Key generation expands a random seed (the length
\code{\link[=fipssz]{fipssz()}} reports
as \code{seed}: 32 bytes for ML-DSA, three times the security level in bytes
for SLH-DSA) into the key pair exactly as FIPS 204 \code{ML-DSA.KeyGen} and
FIPS 205 \code{slh_keygen} do, so the same seed gives the same key as any
other conforming implementation. ML-DSA keys take milliseconds; SLH-DSA
keys take from milliseconds (the \code{f} sets) to about a second (the \code{s}
sets, which build a larger top tree), with a spinner on stderr after
0.75 s when a person is watching (see
\code{\link[=blprog]{blprog()}}) and
Ctrl-C honoured. Nothing is written to disk: saving the key, and keeping
its \code{secret} private, is up to you. \code{fipspubkey()} drops the secret
half, leaving what a verifier needs.

Refusals: an unknown scheme (the message lists the known ones, and
points to \code{\link[=pqckg]{pqckg()}} for XMSS), a \code{seed} that is not
a raw vector of
the right length, and for \code{fipspubkey()} a key that did not come
from \code{fipskg()} or \code{\link[=fipskey]{fipskey()}}.

\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}), power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}), and ML-KEM
decapsulation and ML-DSA signing are first-order masked by default. These
are checks of this code on those compilers and under those leakage
models; the README's security section lists what each check does and
does not cover.
}
}
\section{Make a Signing Key Inside a FIPS 140-3 Module (\code{fipsmkg})}{

Generates an ML-DSA or SLH-DSA key pair inside the module that
\code{\link[=fipsmod]{fipsmod()}}
found. The private key stays in the module's own format (PEM) and never
passes through this package's code; \code{\link[=cpssign]{cpssign()}} hands it back to the
module to sign. The public key is the standard one, so the signatures
verify with \code{\link[=cpsvrf]{cpsvrf()}} (this package's implementation), with
\code{\link[=cpsxvrf]{cpsxvrf()}} (OpenSSL's), and anywhere else FIPS 204 and 205 are
implemented.


The key prints without its private part. It is an ordinary R object:
anything that saves it (\code{saveRDS()}, a workspace) saves the private key
too, so keep it as carefully as any other private key. Signing checks
that the module loaded now is the one that made the key and refuses
otherwise. XMSS and HQC have no FIPS module and are refused.

}
\section{Sign Inside a FIPS 140-3 Module (\code{fipsmod})}{

Finds the OpenSSL FIPS provider (a FIPS 140-3 cryptographic module),
loads it on its own, and reports which module it is and whether that
module is on the package's list of validated ones. Keys from
\code{\link[=fipsmkg]{fipsmkg()}}
are then made, and
\code{\link[=cpssign]{cpssign()}}
signs with them, inside that module rather than in this package's own
code.


The package's own ML-DSA and SLH-DSA are not a validated module, and
FIPS mode does not change that. What it gives is a way to sign with a
module that is: a module listed as validated, run as this function runs
it, is used in its approved mode. Whether a given module is validated
is NIST's to say; the package only recognises the exact module names and
builds that a certificate names (the file \code{modules.csv} in the
package's \code{fips} folder), and says "not on the list" for every
other one, including a FIPS provider that may well be validated under a
certificate the list does not have yet.

The \code{openssl} program must be 3.5 or later (the first with ML-DSA and
SLH-DSA). Unless \code{conf} names a configuration, the package writes its
own to a private temporary folder: it loads only the FIPS provider and
the base provider, sets \code{default_properties = fips=yes}, and makes a
configuration error fatal, so nothing can quietly fall back to the
default provider. A distribution's own FIPS provider (Red Hat, Fedora,
Chainguard) loads as it is; an upstream build is first installed with
\verb{openssl fipsinstall}, which runs the module's self-tests. Give \code{conf}
(or set the option \code{rmbl.fips.conf} or the environment variable
\code{RMBL_FIPS_CONF}) to use the configuration your organisation's FIPS
deployment prescribes instead.

The status is the module's own report, matched against the list: it is
as true as the \code{openssl} program run, which is why a key never chooses
that program. \code{\link[=cpssign]{cpssign()}} loads the module set up now (the options
\code{rmbl.fips.openssl} and \code{rmbl.fips.conf}) and refuses a key made in
another. Every run of the program is stopped after \code{rmbl.fips.timeout}
seconds (default 300). The private key reaches the program through a
file in a folder only you can read, removed when the operation ends; a
process killed meanwhile leaves it in R's session folder.

Refusals: no \code{openssl} program, one older than 3.5, a FIPS provider that
is missing or does not load, or a \code{conf} file that does not exist.

}
\section{Sign an ML-DSA message digest computed elsewhere (\code{fipsmu})}{

The external-mu interface. \code{fipsmu()} reduces a message to the
64-byte value mu that is the only thing ML-DSA signing actually
consumes; \code{fipssignmu()} signs that value and
\code{fipsvrfmu()} checks it. Use it when the message and the signing
key are in different places: the machine with the data computes mu from
the public key, and only those 64 bytes travel to the signer.


The point is that the message need never reach the key. A large file can
be reduced to mu on the machine that holds it and only mu handed to
whatever holds the signing key -- a smartcard, a remote signer, another
process. mu is not a bare digest: it binds the public key (through
\code{tr = H(pk)}) and the context string, so a mu computed under one
key cannot be signed under another to any useful effect.

The resulting signature is an ordinary ML-DSA signature.
\code{\link[=cpsvrf]{cpsvrf()}} accepts it, given the
same message and context.

mu is FIPS 204's
\eqn{\mu = \mathrm{SHAKE256}(tr \| M', 64)} with
\eqn{tr = \mathrm{SHAKE256}(pk, 64)} and \eqn{M'} the message prefixed by
the domain byte, the context length and the context (or, with a
\code{prehash}, the pre-hash's identifier and digest), as in FIPS 204
Algorithm 7. Signing from mu is Algorithm 7 from that point on, and
\code{fipsvrfmu()} is Algorithm 8 from mu.

Refusals: a key that is not an ML-DSA key from
\code{\link[=fipskg]{fipskg()}} or
\code{\link[=fipskey]{fipskey()}} (SLH-DSA keys are refused with
\code{"external mu is an ML-DSA interface"}), \code{fipssignmu()} with a public
key only (\code{"signing needs a key with its secret half"}) or a \code{mu} that
is not 64 raw bytes. \code{fipsvrfmu()} returns \code{FALSE}, not an error,
for a mismatched scheme, a wrong-length mu or a malformed signature; it
errors only when \code{signature} is not a \code{bricklayer_signature} or \code{key}
is not a list.

}
\section{Byte lengths of a standardised signature scheme (\code{fipssz})}{

Reports the sizes fixed by a FIPS 204 or FIPS 205 parameter set, so a
caller never has to hard-code them. Use it to check key material before
\code{\link[=fipskey]{fipskey()}}, to size storage for signatures, or to compare
parameter
sets: an SLH-DSA signature is 7,856 to 49,856 bytes where an ML-DSA one
is 2,420 to 4,627.


The sizes are the standards' tables (FIPS 204 Table 2, FIPS 205 Table 2)
as the compiled code uses them. \code{seed} is the key-generation input of
\code{\link[=fipskg]{fipskg()}}; \code{rnd} is the per-signature
randomness (32 bytes
for ML-DSA's \code{rnd}, \eqn{n} bytes for SLH-DSA's \code{opt_rand}), which the
deterministic variants replace with a fixed value. XMSS is not covered:
its sizes follow from the tree height of \code{\link[=pqckg]{pqckg()}}. An
unknown
scheme, or anything but one string, is refused.

}
\section{GitHub workflow annotations, sticky comment and outputs of a capsule check (\code{ghann})}{

Plain text for a GitHub Actions step, from a \code{\link{cpschk}}
result: nothing here talks to GitHub, the caller prints or posts it.
\code{ghann()} gives one workflow command per failed check, an
\code{::error} for an error row and a \code{::warning} for a warn or
drift row (notes give none), naming the file and, where the row has
one, the line, with the data and properties escaped as GitHub requires.
\code{ghcmt()} gives the body of a sticky pull-request comment: the
marker line that finds it again, the Markdown report and a link to the
run, cut to fit GitHub's 65,536-character limit. \code{ghout()} gives
the step outputs of the rmbl action as a named list (print each as
\code{name=value} to \code{$GITHUB_OUTPUT}).

}
\section{The compressed HQC decapsulation key (\code{hqccmpkey})}{

Shrinks an HQC key pair for storage by replacing its secret half with the
seed it was generated from (32 bytes for v5, instead of several
kilobytes). The full key is derived again from the seed whenever
\code{\link[=hqcdecap]{hqcdecap()}} needs it, so a compressed key works
everywhere a full
one does in this package.


The HQC specification of 2025-08-22 allows the decapsulation key to be
stored as its 32-byte \code{seed_KEM} alone (the compressed format
\code{dk_KEM = (seed_KEM)}), from which the whole key pair is derived again.
\code{hqccmpkey()} keeps only that seed;
\code{\link[=hqcdecap]{hqcdecap()}} takes such a
key and expands it, and refuses one whose seed does not derive the key's
public half.

The round-4 revision (64-byte shared secret) defines no compressed format,
but its key pair is derived from the randomness its key generation draws,
\code{skseed || sigma || pk_seed} (96, 104 or 112 bytes: the \code{seed} of
\code{\link[=hqckg]{hqckg()}} and
\code{\link[=hqcsz]{hqcsz()}}), all of which its secret key
\code{skseed || sigma || pk_seed || s} carries. For a round-4 key the compressed
form is that seed: this package's convention, not a format of the
submission, so software built on round 4 (liboqs, PQClean) expects the
full secret key.

A key that is already compressed is returned unchanged. Errors: \code{key} not
from \code{\link[=hqckg]{hqckg()}}; a secret of neither the full nor the
seed length.
The public half is kept, and anyone with the seed can rebuild the whole
secret key, so the compressed key must be protected exactly like the full
one.

}
\section{Recover a shared secret from an HQC ciphertext (\code{hqcdecap})}{

The recipient's half of an HQC key exchange. Given the key pair from
\code{\link[=hqckg]{hqckg()}} (with its secret half) and a ciphertext from
\code{\link[=hqcencap]{hqcencap()}}, it returns the shared secret the
ciphertext carries,
as hex (32 bytes; 64 for a round-4 key). The sender and recipient then
hold the same secret without it ever having been sent.


A ciphertext that was not produced by a correct encapsulation under this
key does not raise an error: it yields the key \code{J(H(ek) || sigma || c)}
(round 4: \code{K(sigma || u || v)}), derived from a value only the
decapsulation key holds (the
Fujisaki-Okamoto transform's implicit rejection), so whoever sent it
learns nothing from the outcome. A mismatch between the two sides' secrets
is the signal that something was wrong. A decapsulation key whose stored
seeds no longer derive from each other (corrupted or spliced; for round 4,
whose public half is not the one its secret seed makes) IS refused.

A compressed key from \code{\link[=hqccmpkey]{hqccmpkey()}} is accepted:
the full key pair
is derived again from the seed, and the call errors if that does not give
the key's own public half. The level and version are taken from the key,
so the ciphertext must come from a key of the same level and version.

Errors: \code{key} not an HQC key; a public key (no secret half); a secret of
the wrong length; a ciphertext of the wrong length or not valid hex.

}
\section{Encapsulate a shared secret under an HQC key (\code{hqcencap})}{

The sender's half of an HQC key exchange. Given the recipient's public
key, it draws fresh randomness and produces a ciphertext together with the
shared secret that the ciphertext carries. The sender keeps the shared
secret (for example as the key of a symmetric cipher) and sends the
ciphertext; the recipient recovers the same secret with
\code{\link[=hqcdecap]{hqcdecap()}}. Only the public key is needed, and
a full key from
\code{\link[=hqckg]{hqckg()}} is accepted too (its public half is used).


The level and version are taken from the key. The randomness is a message
\code{m} and a 16-byte \code{salt}. The length of \code{m} in bytes is
\code{hqcsz(level)[["message"]]}. They are
both
drawn with \code{\link[=rndbytes]{rndbytes()}} from the operating system's
generator unless
supplied. With the same key, \code{m} and \code{salt}, the ciphertext and secret
are the same; that is what the known-answer tests need, and it is why
fixed values must never be used for real traffic.

Errors: \code{key} not from \code{\link[=hqckg]{hqckg()}} or
\code{\link[=hqcpubkey]{hqcpubkey()}}; a public key
of the wrong length for its level; \code{m} or \code{salt} of the wrong type or
length.

}
\section{Generate an HQC key pair (\code{hqckg})}{

Generates a key for HQC (Hamming Quasi-Cyclic), the code-based key
encapsulation mechanism NIST selected for standardisation in March 2025
(NIST IR 8545) as a second KEM next to ML-KEM. It is implemented in this
package, with no system dependency.
A key encapsulation mechanism (KEM) lets two parties agree on a secret
key: the recipient publishes the public half of this key pair, a sender
uses it with \code{\link[=hqcencap]{hqcencap()}} to make a ciphertext
and a shared
secret, and only the holder of the secret half can recover that secret
from the ciphertext with \code{\link[=hqcdecap]{hqcdecap()}}. The shared
secret is then
used as the key of a symmetric cipher. \code{hqcpubkey()} strips the
secret half so the public key can be handed out.


The implementation follows the HQC specification of 2025-08-22 and is byte
for byte the scheme of the authors' reference implementation v5.0.0: all
300 official known-answer vectors are reproduced (the package's tests check
them). It runs in constant time with respect to secrets -- no secret
reaches a branch, a memory index or a variable shift, checked under
valgrind memcheck in CI (\code{inst/ctcheck}: the \code{hqc1}, \code{hqc3},
\code{hqc5}
and \code{hqc1-round4} cases) -- wipes its secret intermediates (the same
harness scans the dead stack for them), and gives the same bytes on
little- and big-endian machines. On x86-64 processors with PCLMULQDQ and on
ARMv8 with the crypto extension the polynomial products use the carry-less
multiply instruction; elsewhere a portable constant-time product.

NIST will publish HQC-KEM as FIPS 207 but has not yet released it, or a
draft of it (checked 2026-10-05). The specification of 2025-08-22 followed
here already makes the changes NIST listed for FIPS 207 (the salted FO
transform, SHA3-512 seed expansion, the 32-byte shared secret, the new
sampler, the seed in the decapsulation key, the seed-only compressed key
that \code{\link[=hqccmpkey]{hqccmpkey()}} writes); the published
standard
may still differ
in detail. Keep keys and ciphertexts tagged with the scheme, version and
level they belong to.

\code{version = "round4"} gives the earlier revision instead: the fourth-round
submission of 2023-04-30 (HQC-128/192/256), the HQC of liboqs up to 0.12
and of PQClean, with a 64-byte shared secret. It uses the same codes and
parameters under a different key encapsulation (40-byte seeds, SHAKE256
with domain bytes in place of SHA3, another sampler), so its keys and
ciphertexts are not interchangeable with v5's. It reproduces that
revision's 300 official known-answer vectors (the package's tests check
them); use it to exchange keys with software built on it, and v5 otherwise.

Errors: a \code{lvl} other than 1, 3, 5, 128, 192 or 256 (a typo is never
mapped to a default, because the level is not recorded in the
ciphertext); a \code{seed} that is not a raw vector of exactly
\code{hqcsz(level, version)[["seed"]]} bytes; a \code{ver} other than
\code{"v5"} or \code{"round4"}. \code{hqcpubkey()} errors on anything that is not
a
\code{bricklayer_hqc_key}. Key generation takes a few tens of milliseconds even
at level 5.

\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}) and power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}) for the masked ML-KEM
and ML-DSA kernels; this scheme is not masked. These are checks of this
code on those compilers; the README's security section lists what each
check does and does not cover.
}
}
\section{Byte lengths of an HQC parameter set (\code{hqcsz})}{

Reports the byte lengths that the HQC specification fixes for a security
level: the encapsulation (public) key, the decapsulation (secret) key, the
ciphertext, the key-generation seed, the encapsulation randomness and the
shared secret. Use it to validate stored keys and ciphertexts, or to size
storage, without hard-coding numbers.


The values come from the compiled implementation, so they are the sizes
it actually uses. For \code{version = "v5"} (specification of 2025-08-22):

\tabular{lrrr}{
\tab HQC-1 \tab HQC-3 \tab HQC-5 \cr
encapsulation key \tab 2241 \tab 4514 \tab 7237 \cr
decapsulation key \tab 2321 \tab 4602 \tab 7333 \cr
ciphertext \tab 4433 \tab 8978 \tab 14421 \cr
seed \tab 32 \tab 32 \tab 32 \cr
message \tab 16 \tab 24 \tab 32 \cr
salt \tab 16 \tab 16 \tab 16 \cr
shared secret \tab 32 \tab 32 \tab 32
}
For \code{version = "round4"} the codes are the same but the key encoding
differs: the seed is 96, 104 or 112 bytes and the shared secret 64 bytes.
A level other than 1, 3, 5 (or 128, 192, 256) is an error.

}
\section{Make, read and verify an identity card for your signing key (\code{idcrd})}{

An identity card ties your public signing key to who
you are: your name and, if you give them, your ORCID
iD, e-mail address, web page and affiliation, all
signed with the key itself. Publish the card (on your
web page, in a repository, beside a paper) and give
its fingerprint somewhere people already know you by
(the paper, your ORCID record, a talk). Anyone can
then check with \code{idcrdvrf()} that the card is intact
and in date, that its fingerprint is the one you gave,
and that an attestation or a bundle was signed by the
key it carries.

\code{idcrd()} makes a card from a key of \code{\link[=fipskg]{fipskg()}}
(ML-DSA or SLH-DSA) or \code{\link[=pqckg]{pqckg()}} (XMSS; making the
card uses one of the key's signatures). \code{idcrdrd()}
reads a card written with \code{file}. \code{idcrdvrf()} checks
one.


A card is self-signed. Its signature proves that the
card was made by whoever holds the private key and
that nothing in it has changed since; it cannot prove
that the name on it is true. That is what the
fingerprint is for: a card whose fingerprint matches
the one you published where people know you is the key
you meant. The card's signature is made under its own
context string (or, for XMSS, over a payload naming
the card type), so it can never be passed off as an
attestation, nor an attestation as a card.

The fingerprint is the SHA-256 digest of the scheme
and the public key, written as 16 groups of four
hexadecimal digits; compare all of it. An ORCID iD is
checked against its check digit (ISO 7064 MOD 11-2),
an e-mail address for its shape and a web page for an
\verb{https://} address.

\code{idcrdvrf()} records every step as a row of \code{checks}:
\code{card_complete}, \code{card_type}, \code{signature}, \code{in_date}
(at \code{at}), and \code{orcid} when the card has one,
\code{fingerprint} when \code{fpr} is given, \code{signed_by_card}
when \code{atst} is given. \code{ok} is \code{TRUE} only when every
row passed; a failed check is a row, not an error.

Errors: \code{key} not a private key of \code{\link[=fipskg]{fipskg()}} or
\code{\link[=pqckg]{pqckg()}}; \code{name} not one non-empty string; an
optional field that is not one string, an ORCID iD
with a wrong check digit, an e-mail address or a web
page of the wrong shape; \code{days} not a positive whole
number; \code{path} not a card file.

}
\section{Recover a shared secret from an ML-KEM ciphertext (\code{kemdecap})}{

Returns the 32-byte shared secret that a ciphertext from
\code{\link[=kemencap]{kemencap()}} carries, as hex. This is the
recipient's side of the
exchange: with the secret half of the key pair, the recipient recovers
the same secret the sender kept, and the two can then use it as a common
key.


This is ML-KEM.Decaps of FIPS 203 (Algorithm 21). For a ciphertext
of the right length there is no failure path, and that is deliberate. A
ciphertext that was not produced by a correct encapsulation under this key
yields a shared secret derived from a value held only inside the
decapsulation key -- so it is a real secret, just not the sender's. Whoever
sent it learns nothing about whether it was accepted, which is what closes
off a chosen-ciphertext attack. The consequence for a caller: a mismatch
between the two sides' secrets is the signal that something was wrong, not an
error from this function.

Masked by default. With \code{masked = TRUE} every value that depends on the
secret key is held as two random shares from the moment the key is read
(first-order masking): decryption, the decoding of the message, the
hashing, the re-encryption with its noise sampling, the comparison with
the ciphertext and the choice between the real and the rejection secret.
No single intermediate value then depends on the key, which is what defeats
first-order power and electromagnetic analysis; \code{inst/tvla} checks the
masked gadgets against that leakage model. The result is identical to the
unmasked computation for every ciphertext; it costs about 2.3 to 3.4 times
the plain time depending on the CPU (4 ms for ML-KEM-768 on this
package's test machine against 1.2 ms plain). \code{masked = FALSE} runs the
plain constant-time decapsulation, and the option
\code{rmoriebricklayer.masked} sets the default for a session.

Errors (checked before any decapsulation): \code{key} not from
\code{\link[=kemkg]{kemkg()}}, or a public key only (\dQuote{decapsulation needs a
key with its
secret half}); a ciphertext that is not hex or raw of the exact length
for the key's level, which is
\code{\link[=kemsz]{kemsz()}}\code{[["ciphertext"]]} bytes (768,
1088 or 1568); \code{masked} not \code{TRUE} or \code{FALSE}.

}
\section{Encapsulate a shared secret under an ML-KEM key (\code{kemencap})}{

Produces a ciphertext and the 32-byte shared secret it carries. Only the
public key is needed, which is the point: the sender never holds
anything the recipient has to trust them with. The sender keeps the
shared secret (to derive an encryption key, for example) and sends the
ciphertext; the recipient gets the same secret back with
\code{\link[=kemdecap]{kemdecap()}}.


This is ML-KEM.Encaps of FIPS 203 (Algorithm 20) on the 32-byte message
\code{m}. Without \code{m}, fresh randomness is drawn with
\code{\link[=rndbytes]{rndbytes()}}, so two encapsulations to one key give
different
ciphertexts and secrets. A full key pair works as well as a public key;
only its public half is read.

Errors: \code{key} not from \code{\link[=kemkg]{kemkg()}} or
\code{\link[=kempubkey]{kempubkey()}}; a key
whose public half is not valid hex (\dQuote{key has no usable public key});
\code{m} that is not a raw vector of 32 bytes.

}
\section{Generate an ML-KEM key pair (\code{kemkg})}{

Generates a key pair for ML-KEM (FIPS 203), the standardised post-quantum
key encapsulation mechanism, and \code{kempubkey()} strips a key pair
down to the half that can be shared. Use them when a capsule, a data file
or a credential has to reach one recipient without being readable on the
way: the recipient makes the key pair and publishes the public half, and
the sender uses it with \code{\link[=kemencap]{kemencap()}}. It is
implemented in this
package, with no system dependency.


A KEM is not a signature scheme and not a cipher. Encapsulation produces
two things: a ciphertext to send, and a 32-byte shared secret to keep.
The holder of the decapsulation key recovers the same secret from the
ciphertext. What either side then does with that secret -- feed it to a
KDF, key an AEAD -- is outside the mechanism.

Key generation is ML-KEM.KeyGen of FIPS 203 (Algorithm 19) from the
64-byte seed \eqn{d \| z}: \eqn{d} seeds the K-PKE key and \eqn{z} is the
implicit-rejection value kept inside the decapsulation key. With a seed
the result is deterministic (the same seed gives the same key, which is
how the NIST test vectors are reproduced); without one the seed is drawn
with \code{\link[=rndbytes]{rndbytes()}} from the operating system. The key
sizes per level
are given by \code{\link[=kemsz]{kemsz()}}; the level is not recorded in a
ciphertext, so
both sides must agree on it.

Errors: \code{lvl} other than one whole number 512, 768 or 1024;
\code{seed} that is not a raw vector of 64 bytes; \code{key} passed to
\code{kempubkey()} that is not from \code{kemkg()}.

\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}), power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}), and ML-KEM
decapsulation and ML-DSA signing are first-order masked by default. These
are checks of this code on those compilers and under those leakage
models; the README's security section lists what each check does and
does not cover.
}
}
\section{Byte lengths of an ML-KEM parameter set (\code{kemsz})}{

Reports the byte sizes that FIPS 203 fixes for one ML-KEM parameter set:
the public (encapsulation) key, the secret (decapsulation) key, the
ciphertext, the key-generation seed and the shared secret. Use it to
check a key or ciphertext before storing or sending it, or to size a
buffer or a database column, so a caller never has to hard-code the
numbers.


The values come from the native core and are those of FIPS 203, Table 3:
\tabular{lrrr}{
\tab 512 \tab 768 \tab 1024 \cr
encapsulation key \tab 800 \tab 1184 \tab 1568 \cr
decapsulation key \tab 1632 \tab 2400 \tab 3168 \cr
ciphertext \tab 768 \tab 1088 \tab 1568 \cr
seed \tab 64 \tab 64 \tab 64 \cr
shared secret \tab 32 \tab 32 \tab 32
}
Hex strings from \code{\link[=kemkg]{kemkg()}} and
\code{\link[=kemencap]{kemencap()}} are twice these
lengths in characters. Error: \code{lvl} other than one whole number
512, 768 or 1024.

}
\section{Keyed digest and constant-time comparison (C backend) (\code{keyeddgst})}{

\code{chmac()} computes HMAC-SHA-256 (RFC 2104), a digest of a
message under a secret key, and \code{cdgsteq()} compares two
digests without leaking through timing how much of them matched. Use the
pair to sign a manifest or a capsule with a shared secret and to check a
signature someone hands you.


The difference from a plain \code{\link[=csha256]{csha256()}} is
AUTHENTICATION -- anyone
can recompute a SHA-256 and so anyone can forge one after editing a
manifest, but only a holder of the key can produce a matching HMAC. This
is what makes \code{\link[=cpssign]{cpssign()}}'s \code{"hmac"} scheme
meaningful. The
construction is
\deqn{\mathrm{HMAC}(K, m) = H((K' \oplus opad) \| H((K' \oplus ipad) \| m))}
with \eqn{H} = SHA-256, \eqn{K'} the key padded to the 64-byte block (or
hashed first when longer), \eqn{ipad} = \code{0x36} and \eqn{opad} =
\code{0x5c} repeated. The results match the RFC 4231 test vectors.

\code{cdgsteq()} compares two digests in constant time (verified
under valgrind memcheck in CI with both inputs marked secret:
\code{inst/ctcheck}, case \code{digest-equal}). Use it
instead of \code{==} whenever the comparison is against a value an
attacker supplied: a short-circuiting comparison leaks, through its own
timing, how many leading characters were correct, which is enough to
recover a tag byte by byte. It compares the strings exactly, so case
matters (\code{"ABC"} is not \code{"abc"}): lower-case both first if the
digests may come in either case.

Errors: \code{key} or \code{msg} that is neither one non-NA string nor
a raw vector; \code{a} or \code{b} that is not one non-NA string.

}
\section{Read and check a proof ledger (\code{ldgrread})}{

A proof ledger records the theorems of a formal-proof build (Lean and
Mathlib): each theorem's statement, file and line, its status (\code{proved},
\code{sorry} or \code{axiom}) and number of \code{sorry} placeholders, the package
functions whose behaviour it states, and optionally a numeric check of one of
them in R. The format is \code{schemapath("ledger")}, in the style of the capsule
schemas; nothing in it is specific to this package, so any package can ship a
ledger in \verb{inst/ledger/} and any formal-proof project can write one.


\code{ldgrread()} parses the file and validates it against the schema; a
file that does not validate, or that repeats a theorem id, is refused with
the first problems found.

\code{ldgrchk()} returns check rows in the shape of \verb{rmbl verify} (the \code{rows}
of \code{\link[=cpschk]{cpschk()}}): \describe{ \item{\code{proved: ID}}{the theorem is
\code{proved} with \code{sorry_count} 0. A \code{sorry} fails as an error; an
\code{axiom} fails as a warning (it is assumed, not proved).}
\item{\verb{covered: ID PKG::FN}}{the covered function is exported by the
installed package; a package that is not installed here is a note, not a
failure (it cannot be checked).} \item{\code{check: ID}}{the theorem's
\code{check$expr} evaluates within \code{check$tol} (default 1e-8) of
\code{check$expect}. The expression is evaluated in a sandbox: an environment
holding only the exported functions of the first R package the theorem covers
and a short list of base arithmetic and constructors (\code{c}, \code{list}, \code{seq},
\code{rep}, \code{sum}, \code{+}, \code{$}, ...). Anything else is refused before
evaluation: a call to any other function (\code{system()}, \code{file()}, \code{eval()},
another package), a free variable, or an expression whose outer call is not a
call to that package (or an extraction from one). Evaluation is limited to 10
seconds.} \item{\code{ledger_commit_pinned}, \code{ledger_build_pinned}}{when the
ledger is the data file of a capsule whose provenance says \code{kind: "ledger"}:
the provenance's \code{source$commit} and \code{source$build_digest} equal the
ledger's. The capsule's own rows (\code{\link[=vrfcps]{vrfcps()}}, the bundle and
attestation through \code{\link[=cpsbndlvrf]{cpsbndlvrf()}}, the schemas) come with
them, as \verb{rmbl verify} reports them; \verb{rmbl verify} adds the ledger rows to
such a capsule too.} }

}
\section{Build a Reproducibility Bundle (\code{mkbndl})}{

Packs a project folder into one zip that anyone can unzip and run with
a double-click: \file{START_HERE.command} on macOS, \file{START_HERE.bat}
on Windows, \file{start_here.sh} on Linux. The launchers find R, the
runner (\file{setup_and_run.R}) checks the packages the project lists,
finds or downloads the data (checking it against the pinned SHA-256), or
generates synthetic data from the project's recipe, runs the project's
analysis script and summarises its \file{manifest.json} in plain
language.


A project is a folder holding at least \file{config.json} and the
analysis script it names (default \file{analysis.R});
\code{\link[=mkbndlproj]{mkbndlproj()}}
writes a working starter. \file{data_provenance.json} pins the data
file (name, URL, SHA-256, licence) and may carry a
\code{schema$synthetic_recipe} for the offline synthetic route. Every
other file in the folder is copied into the bundle too, except hidden
files, \file{results_*} folders and zip files.

Symbolic links are not followed: a link to a file inside the project is
packed as that file, and a link to a folder, or to anything outside the
project, is left out with a warning that names it. Files whose names
look like credentials are left out too, with a warning that lists them,
unless \code{secrets = TRUE}: \file{llm.json}, \file{credentials.json},
\file{secrets.yaml}, \file{token.txt}, \file{api_key*},
\file{id_rsa} and the other SSH private keys, \file{.env} and
\file{*.env}, \file{.netrc}, \file{.Renviron}, \file{.pgpass},
\file{kubeconfig} and \file{kube.config}, key stores (\file{.p12},
\file{.pfx}, \file{.jks}, \file{.ppk}), \file{.pem} or \file{.key}
files holding a private key, and any other file (not a data table such
as \file{.csv} or \file{.rds}, nor a document such as \file{.md},
\file{.html}, \file{.Rmd} or \file{.qmd}) whose name, split into words at
\samp{-}, \samp{_}, \samp{.} and spaces, has the word \code{key},
\code{keys}, \code{apikey}, \code{token}, \code{tokens}, \code{secret},
\code{secrets}, \code{credential}, \code{credentials}, \code{creds},
\code{password}, \code{passwords}, \code{passwd}, \code{pat} or
\code{adc} (\file{openai_key.txt},
\file{github_pat.txt}, \file{access_token}, \file{aws_credentials},
\file{gcloud_adc.json}, \file{keys.R}; not \file{keyboard.csv}).
Public keys (\file{.pub}) are packed.

The runner calls the analysis script as
\code{Rscript analysis.R <data file> <results folder>}, with
\code{BRICKLAYER_SYNTHETIC=1} set on synthetic data. The script writes
\file{manifest.json} into the results folder:
\code{\link[=mkmnf]{mkmnf()}},
\code{\link[=recrd]{recrd()}} and
\code{\link[=wrmnfjs]{wrmnfjs()}} build it, and they are in the bundle (the script sources
them from its own folder, as the starter does), so the reviewer needs
only R and the packages listed in \code{r_packages}. To call other
functions of this package from the analysis, list
\code{"rmoriebricklayer"} in \code{r_packages}.

Optional keys of \file{config.json}: \code{project} (\code{name},
\code{title}, \code{paper_title}, \code{work_type}, \code{author},
\code{contact}, \code{orcid}, \code{affiliation}, \code{supervisor},
\code{licence}), \code{analysis$r_script}, \code{r_packages},
\code{env_packages} (packages needed only when an environment variable
is set), \code{optional_stages} (opt-in stages with their own
packages), \code{synthetic_env} (another variable that turns on the
synthetic route), \code{data$default_candidates}, \code{network$endpoints},
\code{summary$what_was_done} and \code{expected} (\code{total_checks},
\code{pass_real}).

Before zipping, every internal name the bundled R files call is checked
to be defined by a bundled file, and by one the runner itself sources
when the runner calls it: a bundle that would stop with
\dQuote{could not find function} on the reviewer's machine is refused
here instead.

Nothing is written except the zip in \code{dest}; the staging folder is
a temporary directory removed on exit. The zip is written under a
temporary name in \code{dest} and renamed when it is complete, so an
interrupted build leaves no partial zip (and keeps the one it was to
replace). Send the SHA-256 that is printed to recipients separately, so
they can check the zip was not altered.

Errors: \code{project} that is neither a folder nor a bundled example;
a project without \file{config.json} or without its analysis script; a
project file whose name a bundle file already uses; \code{dest} that is
not an existing folder; a zip that exists when \code{overwrite} is
\code{FALSE}; \code{data} that is not an existing file; a
\code{version}, or a \code{project$name} in \file{config.json}, that is
not a plain name (letters, digits, dot, dash and underscore, not
starting with a dot, no \code{..}, at most 64 characters); a bundle of
more than 65535 files and folders or over 4 GB (more than a plain zip
holds).

}
\section{Check a reproducibility bundle before shipping it (\code{mkbndlchk})}{

Unzips a bundle built by \code{\link[=mkbndl]{mkbndl()}} into a new
folder, runs it the way a recipient would
(\code{Rscript setup_and_run.R --quick}) and reads the
\file{manifest.json} the run writes. The bundle passes when the run
finishes, writes its manifest, no cross-check is DIFFER and, on real
data, the number of checks and of passes is the one the \code{expected}
block of its \file{config.json} gives (\code{pass_csv} for a CSV input,
\code{pass_real} for the \file{.RData}). A run on synthetic data marks
every check INFO, so it is not compared with \code{expected}. A launcher
(\file{start_here.sh}, \file{START_HERE.command}) the zip does not mark
executable is reported as a warning: it still runs as
\code{bash start_here.sh}.


\strong{Warning: this runs the bundle's code on your machine}, with your
user's rights: its \file{setup_and_run.R}, its analysis script and
anything they start. Check only bundles you built or whose author you
trust. To limit what a hostile bundle can reach, the run gets a minimal
environment: \env{PATH}, the locale variables (\env{LANG},
\env{LANGUAGE}, \env{LC_ALL} and the \env{LC_} categories such as
\env{LC_CTYPE}, no other \env{LC_} name; \env{TZ}), the library paths
of this session (\env{R_LIBS}), the proxy variables
(\env{http_proxy}, \env{https_proxy}, \env{no_proxy}) when they hold
no user name or password, a fresh temporary \env{HOME} and
\env{TMPDIR}, and no other variable, so API keys, tokens and passwords
in the environment (or in \file{~/.Renviron}) do not reach it. On
Windows the variables that look like credentials are removed instead (a
best effort): names holding \code{KEY}, \code{TOKEN}, \code{SECRET},
\code{PASS}, \code{CREDENTIAL}, \code{AUTH}, \code{COOKIE} or
\code{SESSION}, a service's prefix (\env{GITHUB_}, \env{AWS_}, ...),
connection strings (\env{DATABASE_URL}, \env{*_DATABASE_URL},
\env{*_WEBHOOK_URL}, \env{SENTRY_DSN}, \env{*_DSN}), \env{*_PWD},
\env{*_SK}, other
\env{LC_} names, and any value that is a URL with a password in it.
This is not a sandbox: the files your user can read stay readable.

The run is stopped after \code{getOption("rmbl.bundle.timeout")}
seconds (default 1800, 30 minutes; the exit status is then 124). How
the processes it starts are contained (the \code{isolation} of the
result, and a row of the checks):
\describe{
\item{container}{with \code{container = TRUE} (podman, else docker) or
a runtime named: the run in a container, removed afterwards, with the
unzipped bundle mounted read-only and copied into a writable folder,
no network unless the real data is to be downloaded (no \code{data},
not synthetic), 4 GB of memory, 2 CPUs, 512 processes, a read-only
root file system, no capabilities and your user id. The image is
\code{getOption("rmbl.bundle.image")}, default R 4.6.1 from the
Rocker project pinned by digest; it holds base R only, so a bundle
that lists packages in \code{r_packages} (or downloads its data, which
needs rmoriebricklayer) needs an image that has them. Without the
runtime the check falls back to the next mode and says so.}
\item{pid namespace}{Linux, when \command{unshare} can make an
unprivileged user and PID namespace: every process the run started,
also one that started its own session or forked twice, is killed when
the run ends or times out.}
\item{job object}{Windows: the run is started inside a job object that
kills every process in it when the run ends or times out.}
\item{process group}{Linux without user namespaces, and macOS: the
run leads a process group, killed when it ends, times out or is
interrupted. A process can leave the group (setsid, a double fork) and
clear its environment. On Linux this R session is made the run's child
subreaper, so such a process is re-parented to it rather than to
init: every process the run left behind is found by the process tree,
killed by its PID and fails the check (the isolation row is an error).
Where that cannot be done (macOS, or a Linux kernel older than 3.4)
escaped processes cannot be detected, and the isolation row fails:
use \code{container = TRUE} there.}
}

Only a \file{results_*} folder the run itself created counts: one the
zip already carries (which \code{\link[=mkbndl]{mkbndl()}} never packs) is not read, and
fails the check. A run that writes no manifest, or whose runner reports
\dQuote{NOT completed}, fails.

Errors: \code{bundle} that is not an existing \file{.zip} file, or not
a zip this function reads (more than 65535 entries, an entry name with a
NUL byte, one too long, absolute or leaving the folder, or an entry
given twice); a zip without \file{setup_and_run.R}; \code{data} that is
not an existing file; \code{dir} that already exists.

}
\section{Start a Reproducibility Bundle Project (\code{mkbndlproj})}{

Writes a starter project that \code{\link[=mkbndl]{mkbndl()}} packs as it is: a
\file{config.json} with the project's details, a
\file{data_provenance.json} to pin the data file and describe
synthetic data, and an \file{analysis.R} that reads the data, records
its checks with \code{\link[=recrd]{recrd()}} and writes \file{manifest.json}. Edit the
three files for the real project; the starter runs from the first
build, on synthetic data, so every step can be tried before the
analysis is written.


The starter's data is a CSV with columns \code{group} and
\code{value}; its one check is the row count, so the first run on
synthetic data shows one INFO. Set \code{resource$filename},
\code{resource$direct_url} and \code{resource$sha256} in
\file{data_provenance.json} (see
\code{\link[=sha256file]{sha256file()}}) and the runner finds,
downloads and checks the real file.

Errors: \code{dir} holding any of the three files when
\code{overwrite} is \code{FALSE}; a \code{name} with characters other
than letters, digits, dot, dash and underscore, one that starts with a
dot or holds \code{..}, or one longer than 64 characters.

}
\section{Construct a Reproducibility Manifest (\code{mkmnf})}{

Creates an empty manifest: the record of one analysis run that collects
the run's metadata, the cross-checks of its results against expected
values (added with \code{\link[=recrd]{recrd()}}), and optionally a snapshot of the
R
environment it ran in. Write it out with
\code{\link[=wrmnfjs]{wrmnfjs()}} and
\code{\link[=wrsmrytxt]{wrsmrytxt()}}, or hash and sign it with
\code{\link[=mnfdgst]{mnfdgst()}} and
\code{\link[=cpsatst]{cpsatst()}}, so a reader can later see what was
run, where, and
whether the numbers matched.


The manifest is a plain list, so you can add your own elements to
\code{meta} before writing it. The package owns the synthetic-data flag:
\code{meta$synthetic} is set to \code{TRUE} when you pass it, when the
environment variable \code{BRICKLAYER_SYNTHETIC} is set to a value other
than \code{0}, \code{false}, \code{no} or \code{off}, or when the package
generated synthetic data earlier in the session. It is written only when
\code{TRUE}, so a manifest of real data keeps the digest it had before the
flag existed. On a synthetic manifest every \code{\link[=recrd]{recrd()}} entry is
\code{INFO}.

The fields of \code{meta} that \code{\link[=wrsmrytxt]{wrsmrytxt()}} reads are
\code{project},
\code{author}, \code{run_at}, \code{os}, \code{r_version} and, as a named
list or vector of versions, \code{r_package_versions}.

Errors when \code{meta} is not a list. Nothing is written.

}
\section{Combine Results into One Report (\code{mkset})}{

Puts several results together: printed, a box of contents and then every
result's own box, all at the console's width; written to a file, one
self-contained HTML page (each result's box and, when it has one, its
plot), Markdown ready for a GitHub comment or a paper, or plain text.


Any object this package returns can go in, and any other R object that
prints (a model, a data frame): each is shown as it prints. A
year-over-year table from \code{\link[=yoy]{yoy()}} becomes a real table in HTML and
Markdown.

In a file the boxes are drawn 80 characters wide and without colour, so
the report looks the same whatever console made it. HTML draws each
result's \code{plot()} under its box (\code{plots = FALSE} leaves them out); a plot
that fails is left out and the box is kept. The page needs no network and
nothing installed to open.

Errors: no results; a \code{file} that does not end in \code{.html}, \code{.htm},
\code{.md} or \code{.txt}; a \code{title} that is not one string; \code{plots} that is not
\code{TRUE} or \code{FALSE}.

}
\section{The canonical serialisation of a manifest, and its digest (\code{mnfcanon})}{

\code{mnfcanon()} renders a manifest as one line of JSON with
every object's keys in sorted order and every number at full double
precision. \code{mnfdgst()} is the SHA-256 of those bytes.


Why this is needed. Two manifests that record the same thing can easily
differ as bytes: R lists keep insertion order, so building \code{meta}
before \code{results} or the other way round gives different JSON, and a
signature over the JSON would then depend on the order a script happened
to assemble the list. Sorting the keys removes that. The precision
matters for a different reason: the default JSON writer emits four
significant digits, which is right for a human-readable report and wrong
for a record something will later be checked against, because \code{1/3}
comes back as \code{0.3333} and no recomputation can match it.

Sign \code{\link[=mnfdgst]{mnfdgst()}}, not the pretty
JSON. The digest is stable across the assembly order, across
\code{pretty}, and across a round trip through a file.

Full precision means full precision on every platform, which took more
than writing enough digits. Seventeen significant digits recover any
double exactly, but only through a reader that converts decimal to
binary with correct rounding, and not every C library does -- macOS
arm64 reads the correct decimal for the largest double as infinity. So
this package converts decimals itself rather than asking the platform,
in integer arithmetic with a remainder that decides the rounding. A
manifest written on one machine reads back bit-identically on another,
and a caller does nothing to get that.

Errors when \code{man} is not a list.

}
\section{Recompute a manifest's recorded statistics against the data (\code{mnfrcmp})}{

Re-evaluates named statistics against \code{data} and compares each to
what the manifest recorded. This is the check
\code{\link[=vrfcps]{vrfcps()}} cannot
make: that one confirms the record is internally consistent, which an
edited-at-the-time manifest also is. Use it when receiving a capsule, or
after a data refresh, to confirm that the numbers in the record still
come out of the data.


Every recorded result that was NOT recomputed is reported too, as
\code{unchecked}. An analysis that recorded twenty statistics and
re-derives three has seventeen it has not re-derived, and a report that
quietly omitted them would read as a clean bill of health.

For each function in \code{stats}, its value on \code{data} is
compared with the \code{observed} value recorded under the same name.
Numeric results match when they are identical (so the same \code{NA},
\code{NaN} or infinite value on both sides matches) or when
\eqn{|recorded - recomputed| \le tol}, with
\code{tol} the argument if given, else the result's recorded \code{tol},
else 0 (exact); any other pair with a missing or non-finite value is
\code{"DIFFER"}. A non-numeric result (a label, a verdict) is compared as
text and must be identical. A function that errors gives the status
\code{"ERROR"} with the message; a name the manifest does not have gives
\code{"NOT_RECORDED"}. \code{ok} is \code{TRUE} only when every row is
\code{"MATCH"} and nothing recorded was left unchecked. The functions are
run as given, so they can read files or draw random numbers; nothing else
is changed.

Errors: \code{man} not a list with \code{results}; \code{stats}
not a non-empty fully named list, or with an element that is not a
function.

}
\section{Record and restore the random number generator state (\code{mnfrecseed})}{

\code{mnfrecseed()} stores the generator's kind and its full
state in the manifest; \code{mnfrstseed()} puts both back.
Together they let a run that used randomness (a bootstrap, a permutation
test, a simulation, a random split) be repeated exactly, even without
knowing what seed was set or how many draws came before.


Why the state and not just a seed. \code{set.seed(1)} is reproducible
only if everything before it is too: a single extra draw anywhere
upstream shifts every subsequent value. Recording \code{.Random.seed} as
it stood pins the actual position in the stream, and recording
\code{RNGkind()} alongside it pins what that position means -- R has
changed its default \code{sample()} algorithm before, and a seed
replayed under a different kind gives different numbers with no warning.

This is opt-in because the state is 626 integers for R's default
Mersenne-Twister generator, which is a lot of manifest for an analysis
with no randomness in it.

Side effects: if no generator state exists yet (\code{.Random.seed} is
absent from the global environment), \code{mnfrecseed()} draws
one uniform number to create it, and records \code{was_initialised =
FALSE}. \code{mnfrstseed()} calls \code{RNGkind()} with the
recorded kinds and assigns \code{.Random.seed} in the global environment,
replacing the current state.

Errors: \code{man} that is not a list (or is a data frame); for
\code{mnfrstseed()}, a manifest without a recorded state or with
an empty kind.

}
\section{Merkle tree over capsule chunks (C backend) (\code{mrk})}{

A single SHA-256 over a whole file tells you it changed. A Merkle tree
over its chunks tells you WHICH chunk changed, and proves that one chunk
belongs to the pinned file without re-reading the rest of it. Use these
functions to pin a large data file as a root digest, to find the part of
a re-released file that differs, or to hand someone one chunk with a
short proof that it is part of the pinned file.


\code{mrkroot()} reduces the chunks to one root digest.
\code{mrklvs()} returns the per-chunk digests the root is built
from, so two capsules can be diffed chunk by chunk.
\code{mrkprf()} returns the sibling digests on the path from one
leaf to the root, and \code{mrkvrf()} replays that path.

Each leaf is the SHA-256 of the byte 0x00 followed by a chunk's bytes.
Each parent is the SHA-256 of the byte 0x01 followed by the 64 bytes of
its left and right child digests (the bytes, not their hex spelling).
Levels are paired left to right. This is \code{scheme = 2}, the default
from 0.5.13 on.

An unpaired node at an odd level is PROMOTED unchanged rather than
hashed against a duplicate of itself. Duplicating it would let two
different chunk lists produce the same root -- the weakness behind
CVE-2012-2459 -- so promotion is a correctness requirement, not a
preference. A promoted node adds no step to a proof, so a proof can be
shorter than \eqn{\lceil \log_2 n \rceil}.

The two prefix bytes are the leaf and node domain separation of RFC
6962: without them an interior node, given as the 64 bytes of its two
child digests, verifies as a \code{"leaf"} with the shorter proof from its
parent. Roots and proofs made by 0.5.12 and earlier have no prefixes
(\code{scheme = 1}, the weaker scheme). Pass \code{scheme = 1} to
\code{mrkroot()}, \code{mrklvs()} or \code{mrkprf()} to
recompute such a root. \code{mrkprf()} records its scheme in the
proof, and \code{mrkvrf()} reads it from there unless
\code{scheme} is given. A proof with no recorded scheme was made by
0.5.12 or earlier: it is verified under scheme 1, with a warning. Pass
\code{scheme = 2} to \code{mrkvrf()} to refuse such a proof,
since a scheme-1 check still accepts an interior node as a leaf.

Character chunks are taken as their bytes, so a root computed from
character input equals the root of the same bytes as raw vectors. The
comparison in \code{mrkvrf()} is
\code{\link[=cdgsteq]{cdgsteq()}}
(constant time, case-sensitive).

Errors: \code{chunks} that is not character, raw or a list of raw vectors and
single strings, or that contains \code{NA}; \code{index} outside
\code{1..length(chunks)}; a \code{scheme} other than 1 or 2; a \code{leaf}
that is more than one chunk; a \code{proof} without \code{sibling} and
\code{side}, or with the two of different lengths.

}
\section{Generate a standardised post-quantum signing key (deprecated name) (\code{oqskg})}{

Kept so code written against the liboqs-backed version keeps working.
The schemes are no longer reached through liboqs -- they are implemented
in this package -- and the name no longer describes anything, so use
\code{\link[=fipskg]{fipskg()}} instead. New code should not call these
functions.


\code{oqskg()} calls \code{\link[=fipskg]{fipskg()}} (with a fresh
random seed) and
\code{oqspubkey()} calls \code{\link[=fipspubkey]{fipspubkey()}}, each
after a deprecation
warning from \code{\link[=.Deprecated]{.Deprecated()}}. The keys are the same objects
\code{\link[=fipskg]{fipskg()}} returns, with the same classes.

\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}), power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}), and ML-KEM
decapsulation and ML-DSA signing are first-order masked by default. These
are checks of this code on those compilers and under those leakage
models; the README's security section lists what each check does and
does not cover.
}
}
\section{Period length in days, from dates (\code{perdays})}{

Counts the days from one date to another, both ends included, so the
result can be passed as the period length \code{t} to \code{\link[=adp]{adp()}},
\code{\link[=admits]{admits()}},
\code{\link[=adpcnts]{adpcnts()}} and
\code{\link[=stkflow]{stkflow()}}. It saves getting
a fiscal year, a quarter or a leap year wrong by a day.


Inclusive of both ends, because a period running from the 1st to the
31st is thirty-one days of exposure, not thirty. Leap years need no
special handling: the arithmetic is on dates, so 2024 comes out at
366 and 2023 at 365 without anyone choosing.

Errors when either argument is numeric, has a length other than one, is
\code{NA}, or when \code{to} precedes \code{from}. Text that is not a
date fails inside \code{as.Date()} with base R's own message.

}
\section{Available post-quantum signature schemes (\code{pqcbknd})}{

Reports the signature schemes this package implements. The list is
fixed, not probed: all of them are implemented in the package's own C++
and none depends on a system library, so a scheme available on one
machine is available on every machine.


\code{"xmss-sha256"} is the stateful hash-based scheme of
\code{\link[=pqckg]{pqckg()}}. The rest are the NIST
standards, taken with \code{\link[=fipskg]{fipskg()}}: ML-DSA
(FIPS 204) at all three parameter sets, and SLH-DSA (FIPS 205) at all
twelve -- six over SHAKE and six over SHA-2, which are different schemes
and not merely different code paths. Use it to see which names
\code{\link[=fipskg]{fipskg()}}, \code{\link[=fipssz]{fipssz()}} and
\code{\link[=fipskey]{fipskey()}} accept, or to choose a
parameter set.

The names follow the standards: \code{"ML-DSA-44"}, \code{"ML-DSA-65"} and
\code{"ML-DSA-87"} (NIST security categories 2, 3 and 5), then
\code{"SLH-DSA-SHA2-"} and \code{"SLH-DSA-SHAKE-"} followed by \code{128}, \code{192}
or
\code{256} (the security level in bits) and \code{s} (small signatures, slow
signing) or \code{f} (fast signing, larger signatures). The function takes
no arguments, has no side effects and returns the same 16 names in the
same order on every platform.

}
\section{Generate a post-quantum signing key for capsule provenance (\code{pqckg})}{

Builds an XMSS key pair: a Merkle tree over \code{2^height} Winternitz
one-time keys, all derived from two 32-byte seeds. Security rests on
SHA-256 alone -- no lattice assumption, no elliptic curve, nothing
Shor's algorithm breaks. The key signs a fixed number of messages,
\code{2^height}, and must be carried forward after each signature (see
\code{\link[=xmssadv]{xmssadv()}}); for a key with no such state use
\code{\link[=fipskg]{fipskg()}}.


Key generation walks all \code{2^height} leaves, so cost doubles with
each unit of height. The default 10 gives 1024 signatures and takes a
few seconds; heights above about 14 are slow enough to be worth avoiding
unless the key really must last that long. A spinner on stderr shows the
work after 0.75 s when a person is watching (see
\code{\link[=blprog]{blprog()}}), and Ctrl-C stops it.

The construction is single-tree XMSS with SHA-256, n = 32 and
Winternitz parameter 16 (RFC 8391; at heights 10 and 16 these are its
\code{XMSS-SHA2_10_256} and \code{XMSS-SHA2_16_256} parameter sets, and the other
heights use the same construction with a smaller or larger tree). Its
signatures are byte-identical to the XMSS reference implementation's
for the same key material.

Side effect: a key generated from fresh randomness is entered in the
package's used-index record (the file described under
\code{\link[=xmssadv]{xmssadv()}}), so that a stale copy of it can never
sign an index
twice on this machine. A key built from given seeds is NOT entered, and
signs only after \code{\link[=xmssregkey]{xmssregkey()}} vouches that it
never has.

Refusals: a \code{height} that is not a whole number from 1 to 16, and a
seed that is not 64 hex characters.

\subsection{A height-\code{h} key signs exactly \code{2^h} messages}{
Each signature consumes one leaf, and \strong{signing two different messages
with the same leaf index breaks the scheme outright} -- between two
signatures at one index an adversary can forge a third message.
\code{\link[=cpssign]{cpssign()}} therefore tracks
\code{next_index} and refuses to reuse one. Do not hand-edit that field,
and do not copy a key to two machines that sign independently.
}
\subsection{The key and its state}{
RFC 10033 (Hash-Based Signatures: State and Backup Management) splits
an XMSS key into the private key, which never changes, and the state,
which records the indices used and must be updated, durably, before
each signature is released (its sections 2 and 4). In an R session the
state is \code{next_index} plus the used-index record described under
\code{\link[=xmssadv]{xmssadv()}}. From the command line,
\verb{rmbl sign --scheme xmss-sha256 --key-file key.json}
makes the key file itself the state: it rewrites
the file atomically, with \code{next_index} advanced and a \code{used} field,
before anything is signed, and signs from the indices it reserved.
\code{--state-file} keeps the state in a file of its own, \code{--sectors} and
\code{--sector-index} give each signer its own disjoint range of indices
(section 5.3), \code{--reserve} reserves a block in one write (section
5.9), and a key file older than a signature it is seen to have made is
refused as a stale copy. See the section XMSS keys of \code{\link[=blcli]{blcli()}}.

A key saved as a CI secret is a fixed copy that every job starts
from, so every job signs the same indices: in CI use ML-DSA
(\code{\link[=fipskg]{fipskg()}}) unless the XMSS state is kept in a file that persists
between jobs. NIST SP 800-208 approves XMSS only inside a hardware
cryptographic module that never exports the key; this software key
is not such a deployment.
}
\subsection{Key format}{
 A key made before the RFC 8391 conformance work
carries no \code{skprf} and cannot sign;
\code{\link[=cpssign]{cpssign()}} raises rather than producing
a signature no other implementation could read. Generate a new one.
}
\subsection{Security}{

The implementation is hand-written. Its standardised schemes are checked
byte for byte against OpenSSL 3.5 and NIST known-answer vectors in the test
suite. Side channels are checked, not assumed: \code{inst/ctcheck} runs every
operation that touches a secret under valgrind memcheck with the secret
marked undefined (the ctgrind method), so a branch or a memory address
that depends on it is a reported error, and afterwards scans the dead
stack for copies of the secret. Both checks run in CI on every change,
with GCC and with Clang. Timing is also measured on x86-64 and arm64
hardware (\code{inst/dudect}) and power leakage is assessed in simulation under
the value and the transition models (\code{inst/tvla}) for the masked ML-KEM
and ML-DSA kernels; this scheme is not masked. These are checks of this
code on those compilers; the README's security section lists what each
check does and does not cover.
}
}
\section{Printed reports for bricklayer objects (\code{print.bricklayer_attestation})}{

Human-readable renderings of the objects the package returns. Each leads
with the verdict, then the evidence. \code{format()} returns the lines
as a character vector so they can be logged or written to a file;
\code{print()} sends them to the console and returns its argument
invisibly.


Box-drawing characters are used only when the session's encoding can
render them; otherwise the same layout is drawn in plain ASCII. Set the
environment variable \code{RMBL_ASCII_ONLY} to force the ASCII form,
which is what to do when capturing output into a fixed-width log.

}
\section{Declare an analysis before running it (\code{prrgdecl})}{

\code{prrgdecl()} records, before the analysis is run, the statistics
it intends to report and the claim each one is meant to test, with a UTC
timestamp. \code{prrgchk()} compares that declaration with what was
actually reported and lists the departures in both directions. Seal the
declaration with \code{\link[=cpsatst]{cpsatst()}} and it acquires a
date it cannot be
moved off. Use the pair to make a pre-analysis plan checkable.


The comparison \code{\link[=prrgchk]{prrgchk()}} makes is
asymmetric on purpose, because the two ways of departing from a plan are
different failures:
\itemize{
\item a declared statistic that was NOT reported is outcome switching --
the analysis was run and its result dropped;
\item a reported statistic that was NOT declared is an addition, and
twenty of them is why a nominal p of 0.05 means nothing.
}

Neither is misconduct on its own and both are invisible without a
declaration made in advance.

Statistics are matched by exact name. The timestamp is the computer's
clock at the time of the call, so on its own it proves nothing; the
attestation is what fixes the date. Nothing is written to disk.

Errors: \code{hyps} not a non-empty character vector with non-empty,
unique names; \code{prereg} not from \code{prrgdecl()}.

}
\section{Make a Randomisation List with a Sealed Commitment (\code{ralloc})}{

Allocates participants to arms by simple, permuted-block or stratified
block randomisation, from a seed through the package's NIST SP 800-90A
generator (\code{\link[=drbgnew]{drbgnew()}}), so the list can be regenerated exactly. It
returns the list and one SHA-256 commitment to it: sign and timestamp
the commitment before the first participant is enrolled, keep the list
and the seed with the unblinded statistician, and at unblinding
\code{\link[=rallocvrf]{rallocvrf()}} shows that the allocation used is the one committed
to.


Every draw is exact: an arm or a block size is chosen with rejection
sampling on 32-bit draws (no modulo bias), and a block is shuffled by
Fisher-Yates. With \code{block = NULL} each participant is allocated on
their own (simple randomisation), with probabilities in the ratio
\code{ratio}. Otherwise blocks are drawn one after another, each of a size
chosen at random from \code{block} (every size a multiple of \code{sum(ratio)}),
each holding the arms in the ratio; random block sizes keep the next
allocation hard to guess at a site. The list stops at \code{n} participants,
so its last block may be incomplete; the print-out says how far the
arms then differ.

With \code{strata}, each stratum has its own sequence of blocks: name the
strata and how many places each needs, as a named vector
(\code{c(site1 = 40, site2 = 40)}) or a data frame with the stratum
columns and a column \code{n} (one row per combination, such as site by
sex).

The commitment is the SHA-256 of the settings, every row of the list and
the SHA-256 of the seed, so it binds both the list and the seed: a list
edited afterwards, or a seed chosen afterwards to give a wanted list,
does not match it. Each field enters it with its length, so settings
that differ (a stratum named \code{"x,y"} against strata \code{"x"} and \code{"y"})
never share a commitment; lists made by 1.0.3's first release keep
their commitment and still verify. The print-out shows how many
participants each arm has, never who is in which arm, and not the seed.

Keep \code{seed = NULL} for a trial: the seed is then 48 bytes from the
operating system's generator (\code{\link[=rndbytes]{rndbytes()}}), which nobody can guess
before the list is opened. A number or a word as \code{seed} gives a list
anyone can recompute, which suits teaching and testing, not
concealment.

With \code{codes = TRUE} every participant also gets a kit code (six
characters, no look-alike letters or digits): sites and pharmacies are
given \code{id} and \code{kit} only, and the arm stays with the statistician.

Errors: fewer than two arms, repeated or empty arm names; a \code{ratio}
that is not one positive whole number per arm; a block size that is
not a positive multiple of \code{sum(ratio)} up to 1000000; \code{n} that is not
a whole number from 1 to 10000000, or that disagrees with the strata's
total; a \code{seed} that is not one value, or a raw \code{seed} that is not 48
bytes.

}
\section{Check a Randomisation List at Unblinding (\code{rallocvrf})}{

Checks that a list from \code{\link[=ralloc]{ralloc()}} is the one committed to before
enrolment, and that the stated procedure and seed produce exactly it.


Three checks: the list's own commitment, recomputed from its rows,
settings and seed, equals \code{digest} (the value signed and timestamped
before enrolment; without it, the commitment stored in the list); the
list regenerates row for row from the seed and the settings; and every
participant id is there once. A list edited after the commitment fails
the first; a list that does not come from its seed (one chosen among
many, or written by hand) fails the second.

Errors: \code{x} that does not come from \code{\link[=ralloc]{ralloc()}}.

}
\section{Record Correctness Evidence in a Manifest (\code{recevid})}{

Adds the outcome of a correctness check to a manifest, so the capsule
carries not only the reported numbers but the checks they passed. Each
planted effect from
\code{\link[=cpsplant]{cpsplant()}}
becomes a record (recovered against planted, within the tolerance); a
\code{\link[=cpsspec]{cpsspec()}}
check records the share of specifications agreeing in sign (which
should be 1); a
\code{\link[=cpsfals]{cpsfals()}}
result records each control that ran (1 for passed).

}
\section{Record a Cross-Check Result in a Manifest (\code{recrd})}{

Appends one named cross-check to a manifest: a number your analysis
produced (\code{obs}) next to the number it should reproduce
(\code{expd}, for example a published table value). Each entry is
classified \code{PASS}, \code{DIFFER} or \code{INFO}, a one-line report
is shown as a message, and the updated manifest is returned so calls can
be chained. The tallies appear in
\code{\link[=wrsmrytxt]{wrsmrytxt()}} and the entries in
\code{\link[=wrmnfjs]{wrmnfjs()}}.


The status is decided in this order: \code{INFO} when \code{synthetic =
TRUE} or the manifest's \code{meta$synthetic} is \code{TRUE} (a comparison
on generated data is not meaningful); \code{PASS} when both values are
numeric and \eqn{|observed - expected| \le tol}; \code{DIFFER} when both are
numeric and further apart; \code{INFO} otherwise (for example a text or
logical value, or an \code{NA}). The tolerance is absolute, not relative:
scale it to the size of the quantity.

\code{obs} and \code{expd} must be single values: a vector of
another length (including an empty one) is an error naming the argument;
record a vector's elements under separate names, or a summary of it.
Recording under an existing \code{name} replaces that
entry. The message line is a side effect; wrap the call in
\code{suppressMessages()} to silence it.

}
\section{Cryptographically strong random bytes (\code{rndbytes})}{

Returns \code{n} random bytes that are suitable for keys, salts and
nonces. Use it whenever a value must be unguessable; use
\code{set.seed()} and \code{runif()} for simulations, where
reproducibility is the point.


Reads the operating system's own random source rather than R's
Mersenne Twister: \verb{/dev/urandom} on Unix and macOS, \code{RtlGenRandom} on
Windows.

This distinction matters for anything that becomes a key.
\code{\link[=set.seed]{set.seed()}} makes R's generator reproducible BY
DESIGN, and its state can be recovered from its output; a key drawn from
it is guessable. Reading the OS source also leaves R's own random stream
untouched, so generating a key does not perturb a reproducible analysis.

If no OS source can be read the function FAILS rather than falling back
to a weaker generator, because a silent downgrade in a key is worse than
an error.

Errors: \code{n} not a single whole number from 1 to 1,048,576 (1 MiB);
no readable operating-system source.

}
\section{Fetch revocation data for a certificate path (\code{rvkfetch})}{

Checks over the network whether any certificate in a chain has been
revoked by its issuer. It downloads the certificate revocation lists
(CRLs) that the certificates point to, and asks each OCSP responder they
name about the certificate. It is called by
\code{\link[=certchnvrf]{certchnvrf()}} when
\code{revocation = "fetch"}; you would call it directly only to inspect the
raw revocation data. Nothing in the package does this unless asked,
because a verifier that goes online stops working offline, can give
different answers on different days, and tells the responder which
certificates are being checked.


For each certificate, every http(s) URL in its CRL distribution points
extension (2.5.29.31) is fetched; a PEM CRL is converted to DER. For each
certificate except the last (which has no issuer in the path), every OCSP
URL in its authority information access extension is asked about it. The
OCSP request is sent by POST first, which RFC 6960 requires responders to
accept, and if that gets no answer, by GET with the DER request
base64-encoded into the URL, as RFC 6960 appendix A.1.1 allows. A
responder that answers neither is reported as unreachable rather than
treated as a pass.

A responder's answer is only believed when its signature verifies under
a certificate in the path or one it carries that the path issued. An
unsigned or unverifiable answer is reported as such -- treating it as
\code{"good"} would make revocation checking worse than skipping it, since it
would look like it had happened.

The fetched CRLs are returned, not checked:
\code{\link[=certchnvrf]{certchnvrf()}} checks
the certificates against them. Network: plain http is allowed here,
because CRLs and OCSP answers are signed and RFC 5280 and RFC 6960
distribute them over http, but URLs that point at local or private
addresses are refused (and reported as not retrieved). A certificate with
no CRL or OCSP URL produces no request at all.

Errors: \code{path} not a non-empty list of parsed certificates (each a list
with a raw \code{der} element); \code{tmout} not positive. Network failures are
not errors; they are reported in \code{ok} and \code{notes}.

}
\section{Public half of a signing key (\code{signpubkey})}{

Strips the secret seeds from an XMSS signing key, leaving only what a
verifier needs. Publish this, or hand it to whoever must check your
signatures; never the object returned by \code{\link[=pqckg]{pqckg()}},
which lets its
holder sign in your name. The public key does not change as the signing
key is used, so it is made once.


The public key is the Merkle root and the public seed that masks the
hashes (RFC 8391's \code{root || SEED}), with the tree height and scheme
name. \code{skseed}, \code{skprf} and \code{next_index} are dropped. For a
standardised key from \code{\link[=fipskg]{fipskg()}} use
\code{\link[=fipspubkey]{fipspubkey()}} instead:
this function refuses any key that is not a \code{bricklayer_signing_key}
(\code{"key must come from pqckg()"}).

}
\section{Length of stay with its distribution and interval (\code{staysmry})}{

Where \code{\link[=alos]{alos()}} takes the total days and returns a mean, this takes
one value per person and reports the spread as well, because a mean
stay is a poor summary of a distribution that is usually skewed.


The interval is the ordinary t interval on a mean,
\eqn{\bar{x} \pm t_{n-1, 1-\alpha/2}\, s / \sqrt{n}}. It describes
uncertainty about the AVERAGE stay, not the spread of stays, and on a
skewed distribution the median and the interquartile range say more
about a typical stay than the mean does -- which is why they are
returned beside it rather than left to be asked for.

Lakner's caveat on \code{\link[=alos]{alos()}} applies here too (1976, p.16-17): a
person still held has an unfinished stay, so a window shorter than
the longest stay biases the mean DOWNWARD.

Errors when \code{daysperper} is not numeric, is empty, or has
\code{NA}, \code{Inf} or negative values, and when \code{conflvl}
is not strictly inside (0, 1).

}
\section{Stock and flow side by side, with the decomposition (\code{stkflow})}{

Reports the same person-days as a stock and as a flow, and says how
much of any change in the stock came from the number of people and
how much from how long they stayed.
Use it whenever a report compares periods: the count of people (a flow)
and the population held (a stock) can move in opposite directions when the
length of stay changes, and a table with only one of them implies the wrong
direction for the other.


The decomposition is exact, because days are people times length of
stay: a change in days is \eqn{(1+p)(1+l) - 1} for proportional
changes \eqn{p} in people and \eqn{l} in stay. The two rates can
therefore carry OPPOSITE signs, and the point of putting them in one
table is that neither can then be quoted alone.

Changes are percentages: \eqn{100 (v_i / v_b - 1)} with \eqn{b} the
baseline row. Errors when \code{days} and \code{people} differ in length,
when \code{expo} has a length other than 1 or the number of periods,
when \code{t} has a length other than 1 or the number of periods, when
\code{prd} has a length other than the number of periods, when
\code{per} has more than one value, when any input has \code{NA},
\code{Inf}, text, or a value that is negative (\code{days}) or not
positive (the others), and when \code{base} is not one of the two
choices.

}
\section{Get a Public Timestamp for a Commitment (\code{tsstmp})}{

Asks an RFC 3161 time-stamping authority to sign the SHA-256 of \code{data}
together with the current time, then checks the token it returns with
\code{\link[=tsvrf]{tsvrf()}}.
Anyone holding the same bytes, the token and the authority's
certificate can later prove the bytes existed at that time, without
trusting the person who asked.


Use it on anything that has to be fixed before the data are seen: the
commitment of a randomisation list from \code{\link[=ralloc]{ralloc()}} (pass the list
itself), the file of declared outcomes, a manifest or a capsule. Only
the 32-byte SHA-256 leaves the machine; the data never do.

The request carries a random 8-byte nonce from the operating system's
generator and asks for the authority's certificate in the reply, so the
token can be checked offline later. The default authority,
\code{"https://freetsa.org/tsr"}, is free and needs no account; any RFC 3161
service can be named instead, and an institution's own is better where
there is one. Pass \code{cert} and \code{trust} to
\code{\link[=tsvrf]{tsvrf()}}
when re-checking a
saved token to tie it to a certificate you trust.

}
\section{Verify an RFC 3161 timestamp token (\code{tsvrf})}{

A timestamp token is a small file, signed by an independent timestamping
authority, saying that a given set of bytes (for example a manifest of
results) existed at a given time. \code{tsvrf()} checks that a
token covers the bytes given, reports the time it asserts, and verifies
the timestamping authority's signature under a certificate you supply or
the one the token carries. \code{tsinfo()} reads the token's fields
without verifying anything. Use them to prove that an analysis output
existed by a certain date.


Every step is recorded as a row of \code{checks}:
\itemize{
\item \code{token_parses};
\item \code{token_structure};
\item \code{message_imprint} (the hash of \code{data} equals the token's imprint);
\item \code{certificate_source};
\item \code{signature};
\item \code{attribute_digest} (the signed attributes commit to the token's contents);
\item \code{certificate_trust};
\item with \code{trust}, the \verb{chain:} checks of
\code{\link[=certchnvrf]{certchnvrf()}}.
}

\code{ok} is \code{TRUE} only
when every row passes. A token
that cannot be parsed is not an error: it gives \code{ok = FALSE} and the
rows up to the failure.

Pass \code{trust} and the certificate is validated too: the chain is
built to an anchor you name, every signature in it is verified, every
validity window is checked, an issuer must be a CA, and the leaf must
carry the timeStamping extended key usage. Omit \code{trust} and the
signature is still checked but \code{certificate_trust} is reported as
failed, because without an anchor a passing signature says only that the
key in the certificate signed the token -- not that anyone should
believe that certificate.

Validity windows are checked at the time the TOKEN asserts, unless
\code{attm} says otherwise. A token signed in 2020 under a
certificate that expired in 2021 was validly signed, and judging it by
today's date would reject it for a reason unconnected to its validity.

RSA and ECDSA over the NIST prime curves P-256, P-384 and P-521 are
verified. Anything else -- a post-quantum signature, a compressed EC
point, an Edwards curve -- is reported as unverifiable rather than
treated as valid, which is the safe direction for a verifier.

Revocation data are not fetched: a CRL has to be handed in through
\code{crls}, and nothing is retrieved over the network (chain checks such as
name constraints and certificate policies are done by
\code{\link[=certchnvrf]{certchnvrf()}}). Nothing is written to disk.

Errors: \code{token}, \code{data} or \code{cert} neither a raw vector nor the
path of an existing file. \code{tsinfo()} errors on a token it cannot
parse.

}
\section{Start a capsule from a template (\code{usecpstmpl})}{

Creates a new folder with the three files a reproducible analysis
\code{"capsule"} needs, ready to be filled in: a \code{data_provenance.json}
that says where the data come from, an \code{analysis.R} script that
fetches, checks, analyses and records, and a \code{README.md} that says
how to run it. Use it to start a new project in the package's
fetch-verify-analyse-record pattern instead of writing that scaffolding
by hand.


The files: \describe{ \item{\code{data_provenance.json}}{the fields
\code{\link{loadprov}} and \code{\link{vrfcps}} expect: \code{name},
\code{source} (\code{url}, \code{publisher}, \code{licence},
\code{retrieved}, \code{sha256}) and \code{table} (\code{value},
\code{period}, \code{by}, \code{rounding}, \code{suplim}). Every field that
must be filled in is marked \code{TODO}.} \item{\code{analysis.R}}{reads the
provenance, downloads the source with \code{\link{fdl}} (a local path is read
directly), computes its SHA-256 with \code{\link{sha256file}} and stops if it
no longer matches the pinned value, runs \code{\link{anltab}}, and writes
\code{manifest.json}, \code{report.html} and \code{report.md} in
\code{results/}.} \item{\code{README.md}}{the three steps to fill in and run
the capsule.} } With \code{example = TRUE} the source is the OTIS table
\code{otis_a01_individuals.csv} shipped in the package's \code{extdata}
folder, so \code{Rscript analysis.R} runs as written. The table settings in
the template (\code{value = "individuals"}, \code{period = "year"}, \code{by
= c("table", "group")}) fit that example and must be edited for other data.

Side effects: creates \code{path} (and its parents) and writes the three
files. Errors: \code{path} exists and is not empty; \code{name} is not a
single non-empty string. The \code{name} and source are written as escaped
JSON strings, so quotes and backslashes are safe.

}
\section{Re-Verify an Entire Reproducible Data Capsule (\code{vrfcps})}{

Runs the full custody chain over a capsule directory in one call and
reports, check by check, whether the capsule is still the one the
analysis was run on: the provenance record is readable, the pinned data
file is present and has its recorded SHA-256, the schema still validates,
a recorded analysis script still has its pinned hash, every numeric
cross-check in a results manifest still reproduces its recorded verdict,
and the data are real rather than synthetic. Use it before re-running or
publishing an analysis, or when receiving a capsule from someone else.


The checks, in the order they appear in \code{checks}: \describe{
\item{\code{provenance_readable}}{\code{provfile} is a plain relative path
inside the capsule (no \code{..}, no absolute path, no symlink out) and
parses as JSON.} \item{\code{data_present}}{the data file (\code{dfile}, else
the provenance's \code{resource$filename}) is inside the capsule and is a
file.} \item{\code{data_sha256}}{\code{\link[=vrfsha256]{vrfsha256()}} finds that its
SHA-256 equals \code{resource$sha256} (64 hex characters).}
\item{\code{data_size_bytes}}{when \code{resource$size_bytes} is recorded:
the size on disk matches.} \item{\code{data_readable}}{a \code{.csv} file is
read with \code{utils::read.csv()}; a non-CSV file fails this row when a row
count or schema is recorded (they cannot be checked).}
\item{\code{data_row_count}}{when \code{resource$row_count_data_rows} is
recorded: the CSV has that many rows.} \item{\code{schema_valid}}{when a
\code{schema} is recorded: \code{\link[=valsch]{valsch()}} finds no fatal issue
(warnings are listed in \code{detail} but pass).}
\item{\code{manifest_consistent}}{when \code{mnffile} is given, or the
capsule holds \code{manifest.json}: every result with numeric \code{observed}
and \code{expected}, a \code{tol} and a status of \code{PASS} or
\code{DIFFER} still gets that status from \eqn{|observed - expected| \le
tol}.} \item{\code{script_sha256}}{when a script is named (by \code{scrfile},
by \code{script$filename} in the provenance or by \code{meta$scrfile} in the
manifest) or a script digest is pinned (\code{meta$script_sha256} or
\code{script$sha256}): the script's SHA-256 matches the pin.}
\item{\code{data_not_synthetic}}{no \code{<data>.synthetic} sidecar (written
by \code{\link[=mksyncsv]{mksyncsv()}}), and neither the manifest nor the provenance
records \code{synthetic = true}.} } A check that cannot be made because the
provenance lacks a field is a FAILED row, never skipped: a provenance of
\code{{}} verifies nothing. \code{ok} is \code{TRUE} only when every row
passed and every required check was made. The required checks are
\code{provenance_readable}, \code{data_present}, \code{data_sha256} and
\code{data_not_synthetic}, plus \code{manifest_consistent} and
\code{script_sha256} when a manifest or a script is in play.

Entirely offline: nothing is downloaded and nothing is written. Error:
\code{cpsdir} that is not one existing directory. Every other problem
is a failed row, not an error.

}
\section{Retry the failures of a bulk Wayback run (\code{wbrtry})}{

Picks up where a \code{\link{wbsave}} run left off: it re-tries
only the URLs whose captures failed or were still running, after first
checking whether the Wayback Machine already holds a copy of each. Use it
after a run that hit archive.org's limits, typically the next day.


Reads the results file a \code{\link{wbsave}} run wrote and tries
again every URL whose latest result is \code{"failed"} (or
\code{"submitted"}: a capture a stopped run had started, which is polled
rather than submitted again), so nobody has to dig the failures out by hand.
Each failed URL is first looked up in the Wayback Machine, one lookup a
second: a capture made at any time (an earlier one of a page that has since
gone, or one made today by another run when the daily limit refused this one)
is recorded as \code{"existing"} without capturing again. What is left is
captured again with \code{wbsave()}, appending to the same file. A page its
source no longer has is not sent again unless \code{incgone = TRUE}: a new
capture would only archive the error. \code{"Gone"} means the recorded
message contains archive.org's report of the target server's reply
(\dQuote{target server cannot find}, \dQuote{returned 404}, \dQuote{returned
410}, \code{"error:not-found"} or \code{"error:gone"}); an HTTP 404 from
archive.org's own API does not count. A failure for a daily limit recorded
today (UTC) is not sent again until tomorrow.

Network: the lookups use the Wayback availability API and the new
captures use \code{wbsave()}, which needs the archive.org keys.
When there is nothing left to send, no keys and no network are needed.
Each lookup that finds a capture is appended to \code{output} as an
\code{"existing"} line.

Errors: \code{output} not a single path to an existing file;
\code{incgone} or \code{lookup} not \code{TRUE} or \code{FALSE};
any error from \code{wbsave()}.

}
\section{Archive many pages in the Wayback Machine (\code{wbsave})}{

Asks the Internet Archive to take a dated copy of each web page or file
in a list, so that the exact source an analysis used (a statistics page,
a data download, a policy document) can be cited and checked later even
if the original changes or disappears. It needs a free archive.org
account and its API keys.

Saves every URL in the Internet Archive's Wayback Machine
with Save Page Now 2, the API archive.org offers to account
holders, keeping several captures in flight at once while
keeping to archive.org's rate limits. A page archived
recently is kept as it is (\code{within}); a page archive.org
has already captured today (its daily limit) is recorded with
that capture. Each result is written to \code{output} as it
arrives, so an interrupted run started again with the same
\code{output} carries on where it stopped. A live progress
bar shows the run while a person is watching.


Captures start no faster than \code{permin}. When
archive.org asks the run to slow down (HTTP 429, or a reply
saying the account has too many captures running, inside an
HTTP 200 as SPN2 sends it), nothing more is submitted until
the wait is over: as long as its \code{Retry-After} says, or
15 seconds doubling to 10 minutes; eight such replies in a row
stop the run. A reply saying the account's daily cap is
reached stops submitting for the day. A server error or a lost
connection is retried with back-off, up to six times per URL;
status checks that fail back off the same way. A refused key
(HTTP 401 or 403) stops the run.

A run of many URLs is slow by design: at the default 6 captures a
minute, 1,000 URLs take close to three hours. URLs already finished in
\code{output} are skipped, so a run can be stopped and restarted.

Network: every request goes to web.archive.org; the
keys travel in the \code{Authorization} header and are never written
to \code{output} or printed.

Errors, all raised before anything is sent: no usable URL; a URL with
an invisible or control character, or not starting with
\code{http://} or \code{https://}; missing keys, or keys that are not
letters and digits; \code{within} not of the form \code{"30d"};
\code{jobs} outside 1 to 12; \code{poll} below 1; \code{maxwait}
below \code{poll}; \code{permin} outside (0, 60];
\code{maxcap} below 1; \code{capall} not \code{TRUE} or
\code{FALSE}; an \code{output} whose folder does not exist or that
cannot be written.

}
\section{Write a Manifest to JSON (\code{wrmnfjs})}{

Writes a manifest to a JSON file, so the record of a run (its metadata,
cross-checks and environment) can be kept next to the outputs, shared,
and read back by any JSON reader. By default the file is pretty-printed
for people; \code{canonical = TRUE} writes the byte-stable form that
\code{\link[=mnfdgst]{mnfdgst()}} hashes. The package's own JSON codec
(\code{\link[=tojs]{tojs()}}) is used; jsonlite
is not needed.


Numbers are written with 17 significant digits, so every double reads
back exactly; \code{NA} and \code{NULL} are written as \code{null}, and
length-one vectors as scalars. When the manifest's \code{meta$synthetic}
is \code{TRUE}, or the session is flagged synthetic (see
\code{\link[=mkmnf]{mkmnf()}}), \code{meta$synthetic = true} is
written whatever the
list says, so a file written from generated data always says so. An
existing file at \code{path} is overwritten; the folder must exist.

Errors when \code{path} is not a single non-empty string, and (from base
R) when the file cannot be opened for writing.

}
\section{Write a Plain-Language Run Summary (\code{wrsmrytxt})}{

Writes \code{SUMMARY.txt} into an output folder: a plain-text page a
person can read without any software, giving the project, author, time,
operating system and R version of the run, whether it ran on real or
synthetic data, the paths it used, the tally of cross-check results, the
files in the folder, and optional notes, contact and licence lines. It is
the human-readable companion of
\code{\link[=wrmnfjs]{wrmnfjs()}}.


Header fields come from \code{manifest$meta}: \code{project} (default
\code{"(unnamed)"}), \code{author} (\code{"(unknown)"}), \code{run_at}
(default the current time), \code{os} (default \code{Sys.info()}),
\code{r_version} (default \code{R.version.string}) and \code{synthetic}.
When \code{meta$r_package_versions} is present a section lists those
versions. Result counts are tallied from the \code{status} of each entry
of \code{manifest$results} (PASS, DIFFER, WARN, INFO).

The file list is \code{list.files(outdir)} at the time of the call,
sorted, so write the summary last. The paths are printed as given (they
are not made absolute). An existing \code{SUMMARY.txt} is overwritten.

Errors when \code{man} is not a list, and (from base R) when
\code{outdir} does not exist or cannot be written.

}
\section{Advance an XMSS key past a signature it made (\code{xmssadv})}{

An XMSS signature consumes one leaf, so the key that made it must not sign at
that index again. This returns the key with \code{next_index} set to one past
the signature's index (refusing a signature that was not made by this key),
which is the key to save and to use for the next signature. The signature
object itself carries no key material.


The package records the highest index each key has signed with and refuses
that index again, within the session and across sessions on this machine. The
record is the file \code{xmss_used_indices.txt} under
\code{tools::R_user_dir("rmoriebricklayer", "config")}, which is where CRAN
policy lets a package keep its own configuration. A key is entered under a
fingerprint of its secret seed (\code{skseed}), not under the \code{root} it
carries, so editing a stale copy's \code{root} does not make it a new key,
and a signature whose \code{root} does not match the seeds is withheld.
\code{\link[=pqckg]{pqckg()}} registers a key it generates from fresh randomness. A key
built from given seeds is not registered, because it may be one that has
signed elsewhere: it signs from index 0 only after
\code{\link[=xmssregkey]{xmssregkey()}} vouches for it, and the same holds for any key
the record does not know (from another machine, or whose record was deleted).
Every reservation runs under an operating-system file lock (\code{flock} on
Unix, \code{LockFileEx} on Windows) on \code{xmss_used_indices.txt.flock},
which the system releases when the process ends, so a crashed session leaves
no lock for another process to take over. A record that cannot be read, or
that cannot be written in full (a full disk), stops the signature. The record
of the releases before 0.5.12 (\code{xmss_index.json} in the same directory)
is read and merged, and kept as \code{xmss_index.json.migrated} once the new
record has been written. Another path can be set with the option
\code{rmoriebricklayer.xmssidxfile} or the environment variable
\code{RMBL_XMSS_INDEX_FILE}: an absolute path to a regular file, or to one
that does not exist yet (a device such as \code{/dev/null}, a directory or a
relative path is refused). The option \code{FALSE} (or, except on Windows,
where an empty environment variable is an unset one, the value \code{""})
turns the file off: then only the session remembers, every signature warns,
and a stale copy of the key reloaded elsewhere signs a used index again. The
record does not travel with the key and is lost if the file is deleted, so a
key copied to another machine is protected only by the \code{next_index} you
saved: save the advanced key after every signature. In CI or a container with
a fresh home directory, a key that was not generated in that run is unknown
to the record: register it once with \code{\link[=xmssregkey]{xmssregkey()}}, or point
the record at a file that persists. Examples and vignettes point the record
at a temporary file so that checks and builds leave the configuration
directory alone. The record keeps one line per key for good (an exhausted
key's line is what stops a stale copy of it), and is read and rewritten whole
at every signature: a whole signature took 0.5 s with a hundred thousand keys
in the record (measured on an x86-64 laptop; a slower machine takes longer),
and longer when several processes sign at once (each waits its turn for the
lock, up to 10 s).

\code{\link[=xmssfgt]{xmssfgt()}}
resets one key's entry, or removes the whole record, and with it
the protection against re-signing: use it for test keys only.

}
\section{Find XMSS signature indices used twice (\code{xmssidxseen})}{

Lists every XMSS signature in the capsule bundles under a directory, and in
seen-logs, and marks an index that one key signed with two different
signatures. An XMSS index must sign once: two signatures at one index let
anyone forge a third message, so a reused index means the key's state was
copied or rolled back (RFC 10033, section 4: a verifier that sees all of a
signer's signatures can detect reuse, since each carries its index).


A seen-log is the text file \verb{rmbl sign --seen-log FILE} appends to: one line
per signature it made, with the key fingerprint, the index, a digest of the
signature and the bundle it went into, tab-separated; lines starting with \verb{#}
are comments. The same signature found twice (one bundle copied to two
places, or a bundle and its log line) is not a reuse.

}
\references{

Lakner, E. (1976) \emph{A Manual of Statistical Sampling Methods for
Corrections Planners}. University of Illinois at Urbana-Champaign.


Adams C, Cain P, Pinkas D, Zuccherato R (2001). Internet X.509
Public Key Infrastructure Time-Stamp Protocol (TSP). RFC 3161.
DOI 10.17487/RFC3161

Internet Archive. ias3: the Internet Archive's S3-like API.
archive.org/developers/ias3.html


Saarinen MJ, Aumasson JP (2015). The BLAKE2 Cryptographic
Hash and Message Authentication Code (MAC). RFC 7693.
DOI 10.17487/RFC7693


NIST SP 800-90A Rev. 1 (2015). Recommendation for Random Number
Generation Using Deterministic Random Bit Generators, section 10.2.1.
DOI 10.6028/NIST.SP.800-90Ar1

NIST FIPS 197 (2001, updated 2023). Advanced Encryption Standard (AES).\cr
DOI 10.6028/NIST.FIPS.197-upd1


Moriarty K, Kaliski B, Rusch A (2017). PKCS #5:
Password-Based Cryptography Specification Version 2.1. RFC 8018.
DOI 10.17487/RFC8018


VanderWeele, T. J., and Ding, P. (2017). Sensitivity
Analysis in Observational Research: Introducing the E-Value.
\emph{Annals of Internal Medicine} 167(4), 268-274.
DOI 10.7326/M16-2607


National Institute of Standards and Technology (2024).
Module-Lattice-Based Digital Signature Standard. FIPS 204.
DOI 10.6028/NIST.FIPS.204

National Institute of Standards and Technology (2024). Stateless
Hash-Based Digital Signature Standard. FIPS 205.
DOI 10.6028/NIST.FIPS.205


National Institute of Standards and Technology (2024).
Module-Lattice-Based Digital Signature Standard. FIPS 204.
DOI 10.6028/NIST.FIPS.204


Gaborit, P. et al. (2025). Hamming Quasi-Cyclic (HQC),
specification of 2025-08-22, section 3 (HQC-KEM key pair formats).
pqc-hqc.org


Gaborit, P., Aguilar-Melchor, C., Aragon, N., Bettaieb, S.,
Bidoux, L., Blazy, O., Deneuville, J.-C., Persichetti, E., Zemor, G.,
et al. (2025). Hamming Quasi-Cyclic (HQC), specification of 2025-08-22;
reference implementation v5.0.0. pqc-hqc.org

Alagic, G. et al. (2025). Status Report on the Fourth Round of the NIST
Post-Quantum Cryptography Standardization Process. NIST IR 8545.
DOI 10.6028/NIST.IR.8545


National Institute of Standards and Technology (2024).
Module-Lattice-Based Key-Encapsulation Mechanism Standard. FIPS 203.
DOI 10.6028/NIST.FIPS.203


Krawczyk H, Bellare M, Canetti R (1997). HMAC: Keyed-Hashing
for Message Authentication. RFC 2104.
DOI 10.17487/RFC2104


Adams, C., Cain, P., Pinkas, D., and Zuccherato, R. (2001).
Internet X.509 Public Key Infrastructure Time-Stamp Protocol (TSP).
RFC 3161.


Adams, C., Cain, P., Pinkas, D., and Zuccherato, R. (2001).
Internet X.509 Public Key Infrastructure Time-Stamp Protocol (TSP). RFC
3161.


Internet Archive. Save Page Now 2 (SPN2) public API.\cr
archive.org/details/spn-2-public-api-page-docs

}
\seealso{

\code{\link[=adp]{adp()}},
\code{\link[=alos]{alos()}},
\code{\link[=stkflow]{stkflow()}}


\code{\link[=alos]{alos()}},
\code{\link[=stkflow]{stkflow()}},
\code{\link[=adpcnts]{adpcnts()}}


\code{\link[=adp]{adp()}}


\code{\link[=adp]{adp()}}, \code{\link[=stkflow]{stkflow()}}


\code{\link{fetchvrf}}, \code{\link{wbsave}},
\code{\link{tsvrf}}.


\code{\link{arcget}}, \code{\link{arccap}}, \code{\link{fetchvrf}}.


\code{\link{arcfind}}, \code{\link{fetchvrf}} (which falls back to
the archive on its own).


\code{\link[=arccap]{arccap()}} makes the capture;
\code{\link[=wbsave]{wbsave()}} and
\code{\link[=wbrtry]{wbrtry()}} for the Wayback Machine alone;
\code{\link[=fetchvrf]{fetchvrf()}} falls back to the copies.


\code{\link[=capenv]{capenv()}},
\code{\link[=envdiff]{envdiff()}}.


\code{\link[=csha256]{csha256()}},
\code{\link[=csha512]{csha512()}},
\code{\link[=chmac]{chmac()}}


\code{\link[=csha256]{csha256()}} for integrity against
tampering rather than accident.


\code{\link[=certprs]{certprs()}},
\code{\link[=tsvrf]{tsvrf()}}.


\code{\link[=certchnvrf]{certchnvrf()}},
\code{\link[=tsvrf]{tsvrf()}}.


\code{\link[=cpssign]{cpssign()}} to sign the seal,
\code{\link[=mrkroot]{mrkroot()}} for pinning the contents of
one capsule rather than a history.


\code{\link[=mrkroot]{mrkroot()}},
\code{\link[=sha512file]{sha512file()}}


\code{\link[=cpssign]{cpssign()}},
\code{\link[=mnfdgst]{mnfdgst()}},
\code{\link[=cpsfals]{cpsfals()}},
\code{\link[=chnseal]{chnseal()}}.


\code{\link[=cpsatst]{cpsatst()}},
\code{\link[=vrfcps]{vrfcps()}},
\code{\link[=mnfdgst]{mnfdgst()}}.


\code{\link{blcli}} (the verbs), \code{\link{ghann}},
\code{\link{cpsrfrsh}}, \code{\link{explerr}}.


\code{\link[=cpsspec]{cpsspec()}} for agreement across specifications,
\code{\link[=cpsfals]{cpsfals()}}
for falsification controls, \code{\link[=recevid]{recevid()}} to record them all.


\code{\link{cpsbndl}}, \code{\link{cpschk}},
\code{\link{blcli}} (\code{rmbl sign}).


\code{\link[=cpsvrf]{cpsvrf()}},
\code{\link[=chmac]{chmac()}}


\code{\link[=cpsplant]{cpsplant()}},
\code{\link[=recevid]{recevid()}}.


\code{\link[=cpssign]{cpssign()}},
\code{\link[=signpubkey]{signpubkey()}},
\code{\link[=fipspubkey]{fipspubkey()}}.


\code{\link[=cpsvrf]{cpsvrf()}} for this package's verdict alone,
\code{\link[=fipskg]{fipskg()}}.


\code{\link[=csha256]{csha256()}},
\code{\link[=ccrc32]{ccrc32()}},
\code{\link[=sha512file]{sha512file()}}


\code{\link[=csha256]{csha256()}} for hashing text or bytes
directly,
\code{\link[=jsser]{jsser()}}
for a readable form that keeps types and attributes.


\code{\link[=drbgnew]{drbgnew()}},
\code{\link[=drbgrsd]{drbgrsd()}}.


\code{\link[=drbggen]{drbggen()}},
\code{\link[=drbgrsd]{drbgrsd()}},
\code{\link[=rndbytes]{rndbytes()}}.


\code{\link[=drbgnew]{drbgnew()}},
\code{\link[=drbggen]{drbggen()}}.


\code{\link[=rndbytes]{rndbytes()}},
\code{\link[=chmac]{chmac()}},
\code{\link[=cpssign]{cpssign()}}


\code{\link[=cpsfals]{cpsfals()}} for controls that use
the data, where this uses none.


\code{\link[=cpsfals]{cpsfals()}},
\code{\link[=prrgdecl]{prrgdecl()}}.


\code{\link{blfetch}}, \code{\link{sha256file}},
\code{\link{wbsave}}.


\code{\link[=fipskg]{fipskg()}},
\code{\link[=fipssz]{fipssz()}}.


\code{\link[=pqckg]{pqckg()}} for the stateful hash-based key,
\code{\link[=cpssign]{cpssign()}} which accepts either,
\code{\link[=fipssz]{fipssz()}} for the byte lengths.


\code{\link[=fipsmod]{fipsmod()}},
\code{\link[=cpssign]{cpssign()}},
\code{\link[=fipskg]{fipskg()}} for keys made by this package's own code.


\code{\link[=fipsmkg]{fipsmkg()}},
\code{\link[=cpssign]{cpssign()}},
\code{\link[=cpsxvrf]{cpsxvrf()}}.


\code{\link[=cpssign]{cpssign()}},
\code{\link[=fipskg]{fipskg()}}.


\code{\link[=fipskg]{fipskg()}},
\code{\link[=pqcbknd]{pqcbknd()}}.


\code{\link{cpschk}}.


\code{\link[=hqckg]{hqckg()}},
\code{\link[=hqcdecap]{hqcdecap()}}


\code{\link[=hqcencap]{hqcencap()}},
\code{\link[=hqccmpkey]{hqccmpkey()}}.


\code{\link[=hqcdecap]{hqcdecap()}},
\code{\link[=hqckg]{hqckg()}}.


\code{\link[=hqcencap]{hqcencap()}},
\code{\link[=hqcdecap]{hqcdecap()}},
\code{\link[=hqcsz]{hqcsz()}},
\code{\link[=kemkg]{kemkg()}} for ML-KEM.


\code{\link[=hqckg]{hqckg()}},
\code{\link[=kemsz]{kemsz()}} for ML-KEM.


\code{\link[=fipskg]{fipskg()}},
\code{\link[=pqckg]{pqckg()}},
\code{\link[=cpsatst]{cpsatst()}},
\code{\link[=cpschkatst]{cpschkatst()}},
\code{\link[=cpsbndlvrf]{cpsbndlvrf()}}.


\code{\link[=kemencap]{kemencap()}}.


\code{\link[=kemdecap]{kemdecap()}},
\code{\link[=kemkg]{kemkg()}}.


\code{\link[=kemencap]{kemencap()}},
\code{\link[=kemdecap]{kemdecap()}},
\code{\link[=kemsz]{kemsz()}},
\code{\link[=fipskg]{fipskg()}} for the signature schemes.


\code{\link[=kemkg]{kemkg()}}.


\code{\link[=schemapath]{schemapath()}}, \code{\link[=cpschk]{cpschk()}},
\code{\link[=cpsbndlvrf]{cpsbndlvrf()}}.


\code{\link[=mkbndlproj]{mkbndlproj()}} for a starter project;
\code{\link[=mkmnf]{mkmnf()}} and
\code{\link[=recrd]{recrd()}}
for the manifest the analysis writes.


\code{\link[=mkbndl]{mkbndl()}} builds the bundle;
\code{\link[=mkbndlproj]{mkbndlproj()}} starts a project.


\code{\link[=mkbndl]{mkbndl()}} to build the bundle.


\code{\link[=recrd]{recrd()}},
\code{\link[=wrmnfjs]{wrmnfjs()}},
\code{\link[=wrsmrytxt]{wrsmrytxt()}},
\code{\link[=mnfdgst]{mnfdgst()}}.


\code{\link[=rptanl]{rptanl()}} for the report of one
\code{\link[=anltab]{anltab()}} analysis;
\code{\link[=rmblapp]{rmblapp()}}, whose dashboard gathers results the same way.


\code{\link[=mkmnf]{mkmnf()}},
\code{\link[=wrmnfjs]{wrmnfjs()}},
\code{\link[=cpsatst]{cpsatst()}}.


\code{\link[=vrfcps]{vrfcps()}},
\code{\link[=cpsfals]{cpsfals()}},
\code{\link[=recrd]{recrd()}}.


\code{\link[=capenv]{capenv()}},
\code{\link[=cpsfals]{cpsfals()}}.


\code{\link[=fipskg]{fipskg()}}.


\code{\link[=fipskg]{fipskg()}} for the standardised schemes,
\code{\link[=pqckg]{pqckg()}} for the stateful one.


\code{\link[=cpssign]{cpssign()}},
\code{\link[=cpsvrf]{cpsvrf()}},
\code{\link[=signpubkey]{signpubkey()}}


\code{\link[=cpsatst]{cpsatst()}} to seal a declaration,
\code{\link[=cpsfals]{cpsfals()}} for the controls
themselves, \code{\link[=falsfam]{falsfam()}} for the
correction that additions make necessary.


\code{\link[=rallocvrf]{rallocvrf()}} at unblinding;
\code{\link[=cpssign]{cpssign()}} and
\code{\link[=idcrd]{idcrd()}} to sign the commitment;
\code{\link[=tsstmp]{tsstmp()}} to timestamp it and
\code{\link[=tsvrf]{tsvrf()}} to check the timestamp;
\code{\link[=prrgdecl]{prrgdecl()}} to declare the outcomes in the same signed record.


\code{\link[=ralloc]{ralloc()}}


\code{\link[=recrd]{recrd()}},
\code{\link[=cpsbndl]{cpsbndl()}}.


\code{\link[=mkmnf]{mkmnf()}},
\code{\link[=wrsmrytxt]{wrsmrytxt()}}.


\code{\link[=drvkey]{drvkey()}} to stretch a passphrase instead,
\code{\link[=pqckg]{pqckg()}} which uses this for its seeds.


\code{\link[=cpsvrf]{cpsvrf()}}, which takes it.


\code{\link[=alos]{alos()}},
\code{\link[=adp]{adp()}},
\code{\link[=stkflow]{stkflow()}}


\code{\link[=adp]{adp()}}, \code{\link[=alos]{alos()}}


\code{\link[=tsvrf]{tsvrf()}} to check a saved token,
\code{\link[=ralloc]{ralloc()}},
\code{\link[=prrgdecl]{prrgdecl()}}.


\code{\link[=chnseal]{chnseal()}} for the ordering a timestamp
cannot give, \code{\link[=cpsatst]{cpsatst()}} for
authorship.


\code{\link{loadprov}}, \code{\link{vrfcps}},
\code{\link{anltab}}.


\code{\link{wbsave}}; \code{rmbl wayback
  --retry FILE.jsonl} from the command line.


\code{\link{wbsnpnat}} to look up an existing capture;
\code{\link{wbrtry}}; \code{\link{arccap}} for URLs whose server refuses
the Internet Archive (\code{"cannot find"} although the page is there);
\code{rmbl wayback FILE} runs this from the command line.


\code{\link[=mnfcanon]{mnfcanon()}},
\code{\link[=wrsmrytxt]{wrsmrytxt()}}.


\code{\link[=mkmnf]{mkmnf()}},
\code{\link[=recrd]{recrd()}},
\code{\link[=wrmnfjs]{wrmnfjs()}}.


\code{\link[=cpssign]{cpssign()}},
\code{\link[=xmssfgt]{xmssfgt()}}


\code{\link[=cpsbndlvrf]{cpsbndlvrf()}} (its \code{seen} argument),
\code{\link[=blcli]{blcli()}} (\verb{rmbl sign --seen-log}),
\code{\link[=pqckg]{pqckg()}}.

}
\examples{

\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Lakner (p.20) runs this the other way: t = 365, an average daily
# population of 25 and 1,750 admissions imply a stay of 5.2 days.
alosimplied <- 25 * 365 / 1750
round(alosimplied, 1)

# and back again
admits(25, alosimplied)

# a 90-day quarter with 40 held on average and a 12-day average stay
admits(40, 12, t = 90)

# an average stay of zero is refused
try(admits(25, 0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Lakner's own worked example (p.15): 3,000 inmates served 13,500
# detention days in a year.
adp(13500)

# per-person days give the same total
adp(c(10, 20, 30), t = 30)

# a leap year, with the period length taken from the dates
adp(13500, t = perdays("2024-01-01", "2024-12-31"))

# negative days are refused
try(adp(c(10, -2)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Lakner (p.21): counts on 255 days summing to 34,935 imply just over
# fifty thousand detention days across the year.
adpcnts(rep(34935 / 255, 255))

# weekly counts over a 31-day month, then the average daily population
pd <- adpcnts(c(120, 130, 125, 128), t = 31)
pd
adp(pd, t = 31)

# a missing count must be dropped or filled first
try(adpcnts(c(120, NA, 125)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Lakner (p.17): 2,700 inmates admitted and released served 12,150
# detention days between them.
alos(12150, 2700)

# from one value per released person
stays <- c(2, 5, 1, 30, 4, 7)
alos(stays, length(stays))

# zero people cannot have an average stay
try(alos(12150, 0))
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# save from your own connection to archive.rmorie.com and the Wayback Machine
# at once
src <- "https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip"
cap <- arccap(
  src,
  file.path(tempdir(), "cap"),
  upload = c("rmorie", "wayback"),
  reason = "Custody table cited in chapter 3"
)
cap$archive
w <- wbsave(urls)
lic <- "https://www.statcan.gc.ca/en/terms-conditions/open-licence"
meta <- list(
  title = "Statistics Canada tables (captures)",
  creator = "Statistics Canada",
  licenseurl = lic
)
cap <- arccap(
  w,
  file.path(tempdir(), "capture"),
  item = "my-statcan-tables-2026",
  meta = meta
)
fetchvrf(
  cap$url[1],
  tempfile(),
  sha256 = cap$sha256[1],
  mirrors = cap$mirror[1]
)
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
caps <- arcfind("https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip")
caps
arcfind("www150.statcan.gc.ca/n1/tbl/*")
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
src <- "https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip"
f <- arcget(src, tempfile(fileext = ".zip"))
attr(f, "sha256")
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# capture now, on this computer only
src <- "https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip"
d <- file.path(tempdir(), "cap")
arccap(src, d, tsa = NULL)
# later, when the archives answer: the same bytes, sent on
arcpush(
  d,
  upload = c("rmorie", "wayback"),
  reason = "Custody table cited in chapter 3"
)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
deps <- capdeps(c("stats", "utils"))
deps[, c("package", "version")]

# a package with no repository field records that fact
is.na(capdeps("stats")$repository)

# a package that is not installed is a row of NAs, not an error
capdeps("notapackage123")[, c("package", "version")]

# names must be character
try(capdeps(1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Record specific packages' versions alongside the session facts.
env <- capenv(c("stats", "utils"))
env$r_version
env$os
env$packages          # named list of versions

# Default captures every currently loaded namespace.
names(capenv())

# the generator and whether it was seeded
set.seed(42)
capenv("stats")[c("rng_kind", "rng_seeded")]

# a package that is not installed is recorded as NA, not an error
capenv(c("stats", "notapackage123"))$packages
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The RFC 7693 test vector for BLAKE2b-512 of "abc".
cblake2b("abc", length = 64)

# 32 bytes by default, the same width as SHA-256.
cblake2b("abc")
nchar(cblake2b("abc"))

# Any digest length, which SHA-2 cannot do.
cblake2b("abc", length = 8)

# Keyed, so it authenticates without an HMAC construction.
cblake2b("manifest", key = "secret")
cblake2b("manifest", key = "secret") ==
  cblake2b("manifest", key = "other")

# Vectorised, and raw input hashes the same bytes.
cblake2b(c("a", "b"))
identical(cblake2b("abc"), cblake2b(charToRaw("abc")))

try(cblake2b("abc", length = 65))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The standard check value: CRC-32("123456789") is 0xCBF43926.
ccrc32("123456789")
ccrc32("123456789") == 0xCBF43926

# The empty input has checksum zero.
ccrc32("")

# Vectorised, and sensitive to a single changed byte.
ccrc32(c("brick", "brack"))

# Raw bytes work the same way.
ccrc32(charToRaw("123456789"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The test chain shipped with the package: a self-signed P-256 root and a
# leaf it issued (a throwaway test authority; trust it for nothing). With
# your own certificates, pass their files (or certprs() results).
x509 <- function(f) {
  system.file("extdata", "x509", f, package = "rmoriebricklayer")
}
root <- certprs(x509("test-root.der"))
leaf <- certprs(x509("test-leaf.der"))

# the leaf chains to the root, checked a day after it was issued
res <- certchnvrf(leaf, trust = root, attm = leaf$not_before + 86400)
res$ok
res$checks[, c("check", "ok")]

# after the leaf expired, the same chain fails on validity
certchnvrf(leaf, trust = root, attm = leaf$not_after + 86400)$ok

# a purpose the leaf was not issued for
r <- certchnvrf(
  leaf,
  trust = root,
  attm = leaf$not_before + 86400,
  purp = "timeStamping"
)
r$checks[!r$checks$ok, ]

# a chain must end at something you trust
try(certchnvrf(leaf, trust = list()))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# with revocation looked up on the network
certchnvrf("tsa.crt", trust = "ca.crt", purp = "timeStamping",
                  rvk = "fetch")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Pass the certificate file you were given (.der, .crt, .cer or .pem), for
# example the one a timestamping authority publishes, or raw DER bytes.
# Here: a small test chain shipped with the package, a self-signed P-256
# root and a leaf it issued (a throwaway test authority; trust it for
# nothing).
x509 <- function(f) {
  system.file("extdata", "x509", f, package = "rmoriebricklayer")
}
root <- certprs(x509("test-root.der"))
root
leaf <- certprs(x509("test-leaf.der"))
leaf$subject
leaf$key$curve
c(leaf$not_before, leaf$not_after)

# the same root as PEM, the text form most authorities hand out
certprs(x509("test-root.pem"))$self_signed

# raw DER bytes work too
f <- x509("test-leaf.der")
der <- readBin(f, "raw", file.size(f))
identical(certprs(der)$serial, leaf$serial)

# bytes that are not a certificate
try(certprs(charToRaw("not a certificate")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use
ch <- chnnew()
ch <- chnapp(ch, "manifest for run 1", label = "run-1")
ch <- chnapp(ch, "manifest for run 2", label = "run-2")
ch <- chnapp(ch, "manifest for run 3", label = "run-3")
ch

# An intact chain verifies.
chnvrf(ch)$valid

# Editing an entry breaks it, and names where.
edited <- ch
edited$entries[[2]]$digest <- csha256("something else")
chnvrf(edited)$valid
chnvrf(edited)$broken_at

# So does deleting one, which a per-manifest digest would not catch.
dropped <- ch
dropped$entries[[2]] <- NULL
chnvrf(dropped)$valid

# Sign the SEAL, which covers the links and the length together.
key <- pqckg(height = 2)
sig <- cpssign(chnseal(ch), key)
cpsvrf(chnseal(ch), sig, signpubkey(key))

# Truncating the chain still seals, but to a different value, so the
# signature no longer verifies.
truncated <- ch
truncated$entries[[3]] <- NULL
cpsvrf(chnseal(truncated), sig, signpubkey(key))

# A chain whose links disagree has no seal to present at all.
chnseal(dropped)

# any object can be an entry, such as a whole manifest list
ch2 <- chnapp(chnnew(), list(run = 1, mean = 2.5), label = "list entry")
chnhead(ch2)

# only chains are accepted
try(chnvrf(list(entries = list())))
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- tempfile()
writeLines(rep("some capsule content", 50), p)

# One small chunk size to show the splitting.
ch <- chnkfile(p, chnkbytes = 128)
length(ch)
lengths(ch)

# The chunks pin the file as a Merkle root.
mrkroot(ch)

# They are the file's bytes, so they concatenate back to it exactly.
identical(unlist(ch), readBin(p, "raw", file.size(p)))

# Overwriting bytes in place changes exactly one leaf.
b <- readBin(p, "raw", file.size(p))
b[300] <- as.raw(0x58)
q <- tempfile()
writeBin(b, q)
which(mrklvs(ch) != mrklvs(chnkfile(q, chnkbytes = 128)))

# a chunk size must be positive
try(chnkfile(p, chnkbytes = 0))
unlink(c(p, q))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
prov <- list(
  captured_at_utc = "2026-06-23T04:41:40Z",
  dataset = list(publisher = "Ontario Ministry of the Solicitor General",
                 licence_short = "OGL-Ontario",
                 package_slug = "data-on-inmates-in-ontario"),
  resource = list(name = "Restrictive Confinement - Detailed Dataset",
                  direct_url = "https://data.ontario.ca/example.csv")
)
cit <- citecps(prov)

# Plain-text citation ready to paste.
cat(cit$text)

# BibTeX @misc entry for LaTeX bibliographies.
cat(cit$bibtex)

# a recorded DOI replaces the URL
prov$dataset$doi <- "10.5683/SP3/EXAMPLE"
cat(citecps(prov)$text)

# NULL provenance returns NULL (composes safely).
citecps(NULL)

# anything else that is not a list is an error
try(citecps("data-on-inmates-in-ontario"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
m <- mkmnf(list(dataset = "otis", rows = 1200L), env = FALSE)
key <- fipskg("ML-DSA-65")
att <- cpsatst(m, key, note = "counts as published")
att

# a verifier needs the attestation and the manifest, nothing else
res <- cpschkatst(att, m)
res$ok
res$checks

# any change to the manifest breaks it
m2 <- m
m2$meta$rows <- 1201L
cpschkatst(att, m2)$ok

# and so does presenting a different key
cpschkatst(att, m, keyexp = fipskg("ML-DSA-65")$public)$ok

# the note is signed too: editing it breaks the signature row
forged <- att
forged$note <- "counts corrected"
cpschkatst(forged, m)$checks[, c("check", "ok")]

# a context string and a pre-hash
att2 <- cpsatst(m, key, ctx = "release 2026-10", prehash = "sha512")
cpschkatst(att2, m, keyexp = key)$ok

# a shared secret signs with HMAC; `public` is its key id, not the secret
att3 <- cpsatst(m, "shared-secret")
att3$public
cpschkatst(att3, m, key = "shared-secret", keyexp = att3$public)$ok
cpschkatst(att3, m, key = "another-secret")$checks[, c(
  "check",
  "ok",
  "detail"
)]

# a key that is not a signing key is refused
try(cpsatst(m, 42))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
dir <- tempfile()
dir.create(dir)
write.csv(data.frame(x = 1:3), file.path(dir, "data.csv"),
          row.names = FALSE)
m <- mkmnf(list(dataset = "demo"), env = FALSE)
key <- fipskg("ML-DSA-44")

b <- cpsbndl(dir, m, key, note = "as published")
cpsbndlvrf(attr(b, "path"), dir, man = m)$ok

# touch a byte of the data and the bundle no longer holds
write.csv(data.frame(x = 1:4), file.path(dir, "data.csv"),
          row.names = FALSE)
res <- cpsbndlvrf(attr(b, "path"), dir, man = m)
res$ok
res$checks[!res$checks$ok, c("check", "detail")]

# read back, and checked against the key you expected to have signed
b2 <- cpsbndlrd(attr(b, "path"))
b2
cpsbndlvrf(b2, dir, keyexp = "00ff")$ok

# a file added beside the bundle is reported too
writeLines("x", file.path(dir, "extra.txt"))
cpsbndlvrf(b2, dir)$checks[, c("check", "ok")]

# a bundle signed with a shared secret (HMAC), as morie signs
dir2 <- tempfile()
dir.create(dir2)
writeLines("x,y", file.path(dir2, "d.csv"))
h <- cpsbndl(dir2, m, "shared-secret")
h$attestation$public  # the key id, not the secret
cpsbndlvrf(attr(h, "path"), dir2, key = "shared-secret",
           keyexp = h$attestation$public)$ok
# without the secret the signature row cannot pass
cpsbndlvrf(attr(h, "path"), dir2)$ok
unlink(dir2, recursive = TRUE)

# a directory that does not exist
try(cpsbndl(file.path(tempdir(), "no-such-capsule"), m, key))
unlink(dir, recursive = TRUE)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
root <- tempfile("capsules-")
d <- usecpstmpl(file.path(root, "one"), ex = TRUE)
invisible(cpsrfrsh(d))
x <- cpschk(root, fp = FALSE)
x$status
x$rows[, c("check", "ok")]
x

# the data changed: the digest row fails, and the notes say what it means
p <- loadprov(file.path(d, "data_provenance.json"))
cat("1,2\n", file = file.path(d, p$resource$filename), append = TRUE)
x <- cpschk(root, fp = FALSE)
x$status
x$capsules[[1]]$notes
substr(format(x, fmt = "json"), 1, 120)

# drift: fetch the source again (here a local file) and compare
cpschk(root, "drift", psiwarn = 0.05, fp = FALSE)$status

try(cpschk(tempfile()))
try(cpschk(root, psiwarn = 1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(x = rbinom(200, 1, 0.5), z = rnorm(200))
d$y <- 2 * d$x + d$z + rnorm(200)

# A difference in means recovers what is planted.
dm <- function(df) mean(df$y[df$x == 1]) - mean(df$y[df$x == 0])
cpsplant(d, dm, y = "y", trt = "x", n = 30, seed = 1)

# A statistic with a bug (it doubles the effect) does not.
bad <- function(df) 2 * dm(df)
cpsplant(d, bad, y = "y", trt = "x", n = 30, seed = 1)$ok
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
root <- tempfile("capsules-")
d <- file.path(root, "one")
dir.create(d, recursive = TRUE)
utils::write.csv(data.frame(x = 1:3), file.path(d, "data.csv"),
                 row.names = FALSE)
writeLines('{"resource": {"filename": "data.csv"}}',
           file.path(d, "data_provenance.json"))
s <- cpsseal(root, "a shared secret")
s
cpschk(root, key = "a shared secret", fp = FALSE)$status

# a second run needs overwrite, and a post-quantum key signs too
try(cpsseal(root, "a shared secret"))
cpsseal(root, fipskg("ML-DSA-44"), overwrite = TRUE)$pinned
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use Symmetric: one shared secret.
sig <- cpssign("sha256:abc123", key = "shared-secret", scheme = "hmac")
cpsvrf("sha256:abc123", sig, "shared-secret")
cpsvrf("sha256:TAMPERED", sig, "shared-secret")

# Post-quantum: the verifier needs only the public root.
key <- pqckg(height = 2)
s1 <- cpssign("manifest-1", key)
cpsvrf("manifest-1", s1, signpubkey(key))

# Advance the key past the signature before signing again.
key <- xmssadv(key, s1)
key$next_index
s2 <- cpssign("manifest-2", key)
cpsvrf("manifest-2", s2, signpubkey(key))

# A signature does not transfer to another message.
cpsvrf("manifest-1", s2, signpubkey(key))

# A standardised key: no state, any number of signatures.
fk <- fipskg("ML-DSA-44")
s3 <- cpssign("manifest-3", fk, ctx = "release", determ = TRUE)
cpsvrf("manifest-3", s3, fipspubkey(fk), ctx = "release")

# An XMSS signature needs an XMSS key.
try(cpssign("manifest-4", "shared-secret", scheme = "xmss"))
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(2)
d <- data.frame(x = rnorm(300), z = rnorm(300))
d$y <- 0.5 * d$x + 0.3 * d$z + rnorm(300)
cpsspec(d, list(
  adjusted = function(df) coef(lm(y ~ x + z, df))[["x"]],
  simple = function(df) coef(lm(y ~ x, df))[["x"]],
  trimmed = function(df) {
    keep <- abs(df$y - mean(df$y)) < 3 * sd(df$y)
    coef(lm(y ~ x + z, df[keep, ]))[["x"]]
  }
))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use
key <- pqckg(height = 2)
sig <- cpssign("pinned-manifest", key)
pub <- signpubkey(key)

cpsvrf("pinned-manifest", sig, pub)

# Every way of being wrong returns FALSE.
cpsvrf("edited-manifest", sig, pub) # message changed
bad <- sig
bad$signature <- paste0("ff", substring(bad$signature, 3))
cpsvrf("pinned-manifest", bad, pub) # signature edited
cpsvrf("pinned-manifest", sig, signpubkey(pqckg(height = 2))) # foreign key

# A truncated signature is not verified, and does not error.
trunc <- sig
trunc$signature <- substring(sig$signature, 1, 64)
cpsvrf("pinned-manifest", trunc, pub)

# HMAC: the verifier holds the same secret.
tag <- cpssign("pinned-manifest", "shared-secret", scheme = "hmac")
cpsvrf("pinned-manifest", tag, "shared-secret")

# Something that is not a signature at all is an error, not FALSE.
try(cpsvrf("pinned-manifest", list(signature = "00"), pub))
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- fipskg("ML-DSA-44")
sig <- cpssign("a manifest digest", key, ctx = "release")

# Both implementations accept it (or OpenSSL is reported as absent).
cpsxvrf("a manifest digest", sig, fipspubkey(key), ctx = "release")

# A changed message fails in both.
cpsxvrf("a manifest digest!", sig, key, ctx = "release")$ok
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# FIPS 180-4 test vector for "abc".
csha512("abc")

# Vectorised over character input; NA stays NA.
csha512(c("abc", "def", NA))

# Raw input hashes the bytes directly, and agrees with the character
# form for the same bytes.
identical(csha512("abc"), csha512(charToRaw("abc")))

# Twice the digest width of SHA-256.
c(sha256 = nchar(csha256("abc")), sha512 = nchar(csha512("abc")))

# numbers are hashed as their text
identical(csha512(1), csha512("1"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
dgstobj(list(a = 1L, b = "x"))

# Stable across calls, and sensitive to any change.
identical(dgstobj(1:10), dgstobj(1:10))
dgstobj(1:10) == dgstobj(1:11)

# Attributes are part of the object, so they are part of the digest.
dgstobj(matrix(1:6, nrow = 2)) == dgstobj(1:6)

# Any of the hashes, and a keyed fingerprint.
dgstobj(mtcars, algo = "sha512")
dgstobj(mtcars, algo = "crc32")
dgstobj(mtcars, algo = "blake2b", key = "secret")

# A data frame's digest pins the data, so it can go in a manifest.
dgstobj(data.frame(x = 1:3))

# a key with an algorithm that has no keyed form is refused
try(dgstobj(1:3, algo = "crc32", key = "secret"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- drbgnew(as.raw(0:47))
x <- drbggen(d, 16)
y <- drbggen(d, 16)
identical(x, y)  # the state moved on

# additional input changes the output and the state
e <- drbgnew(as.raw(0:47))
identical(drbggen(e, 16, addl = "00ff"), x)

# random integers in 1..6 from the bytes (rejection keeps them uniform)
r <- as.integer(drbggen(drbgnew(as.raw(0:47)), 64))
head(r[r < 252] \%\% 6 + 1, 10)

# one request is at most 65536 bytes
try(drbggen(d, 70000))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# NIST's rng.c, as the post-quantum known-answer files use it: vector 0's
# seed
d <- drbgnew(as.raw(0:47))
drbggen(d, 48)

# the same inputs give the same bytes; a personalization string separates
# streams
a <- drbgnew(as.raw(1:48), person = charToRaw("session 1"))
b <- drbgnew(as.raw(1:48), person = charToRaw("session 2"))
identical(drbggen(a, 16), drbggen(b, 16))

# seeded from the operating system
d <- drbgnew()
length(drbggen(d, 32))

# the entropy must be exactly 48 bytes
try(drbgnew(as.raw(1:16)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- drbgnew(as.raw(0:47))
drbgrsd(d, as.raw(48:95))
drbggen(d, 8)

# a reseed with given entropy is reproducible
d2 <- drbgnew(as.raw(0:47))
drbgrsd(d2, as.raw(48:95))
identical(drbggen(d2, 8),
          drbggen(drbgrsd(drbgnew(as.raw(0:47)), as.raw(48:95)), 8))

# fresh entropy from the operating system, with additional input
drbgrsd(d, addl = charToRaw("before key generation"))

# the entropy must be exactly 48 bytes
try(drbgrsd(d, as.raw(1:10)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The published PBKDF2-HMAC-SHA256 vector: "password", "salt", 1 round.
drvkey("password", "salt", iter = 1)

# Deterministic, so verification can repeat it.
identical(drvkey("pw", "s", 1000), drvkey("pw", "s", 1000))

# The salt, the passphrase and the iteration count all change the key.
drvkey("pw", "salt-a", 1000) == drvkey("pw", "salt-b", 1000)
drvkey("pw", "s", 1000) == drvkey("pw", "s", 2000)

# Use it to sign a manifest from a passphrase rather than raw bytes.
salt <- paste(format(rndbytes(16)), collapse = "")
key <- drvkey("purple otter lantern", salt)
sig <- cpssign("manifest-digest", key, scheme = "hmac")
cpsvrf("manifest-digest", sig, key)

# A longer key is a prefix-consistent extension of a shorter one.
identical(
  substring(drvkey("pw", "s", 10, length = 64), 1, 64),
  drvkey("pw", "s", 10, length = 32)
)

# a vector of passphrases is refused
try(drvkey(c("a", "b"), "salt"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# a risk ratio of 2 needs a confounder associated by 3.41 with both
evlrr(2)

# a protective effect is inverted, so 0.5 gives the same answer
evlrr(0.5)

# an interval that already includes the null needs nothing
evlrr(2, lo = 0.9, hi = 4.4)

# and a strong result with a limit well above the null is harder to
# explain away
evlrr(3, lo = 2.1, hi = 4.3)

# how much confounding would bring a risk ratio of 3 down to 1.5
evlrr(3, true = 1.5)

try(evlrr(-2))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# four statistics, one of which is real
set.seed(1)
d <- data.frame(x = rnorm(150))
d$y <- 0.6 * d$x + rnorm(150)
d$a <- rnorm(150)
d$b <- rnorm(150)
fam <- list(
  real = cpsfals(d, function(z) cor(z$x, z$y),
                         trt = "x", n = 199, seed = 1),
  noisea = cpsfals(d, function(z) cor(z$a, z$y),
                            trt = "a", n = 199, seed = 2),
  noiseb = cpsfals(d, function(z) cor(z$b, z$y),
                            trt = "b", n = 199, seed = 3))
falsfam(fam)

# the correction is what stops the smallest of several from being
# read as the finding
falsfam(c(a = 0.01, b = 0.04, c = 0.2, d = 0.5))$results

# the false-discovery rate is less strict than Holm
falsfam(c(a = 0.01, b = 0.04, c = 0.2, d = 0.5), meth = "bh")$results

try(falsfam(c(a = 0.01, b = 1.2)))
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# a Statistics Canada table the Wayback Machine cannot capture, with the
# archive.org copy made from elsewhere as a mirror
item <- paste0(
  "https://archive.org/download/rmorie-statc",
  "an-indigenous-tables-2026-10"
)
fetchvrf(
  "https://www150.statcan.gc.ca/n1/tbl/csv/41100063-eng.zip",
  file.path(tempdir(), "41100063-eng.zip"),
  mirrors = paste0(item, "/41100063-eng.zip")
)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- tempfile()
writeLines("capsule payload", p)

sha512file(p)
crc32file(p)

# The block size is a speed knob and cannot change the digest.
identical(sha512file(p, 16), sha512file(p, 1048576))

# the same as hashing the bytes directly
identical(sha512file(p), csha512(readBin(p, "raw", file.size(p))))

# a missing file is an error
try(crc32file(file.path(tempdir(), "no-such-file")))
unlink(p)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- fipskg("ML-DSA-44")
# the round trip through raw material changes nothing
again <- fipskey("ML-DSA-44", key$public, key$secret)
identical(again$secret, key$secret)

sig <- cpssign("m", again)
cpsvrf("m", sig, fipskey("ML-DSA-44", key$public))

# material of the wrong length is refused
try(fipskey("ML-DSA-65", key$public, key$secret))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- fipskg("ML-DSA-65")
key$scheme

sig <- cpssign("a manifest digest", key)
cpsvrf("a manifest digest", sig, fipspubkey(key))

# A context string binds the signature to its purpose: the same
# message signed for one context does not verify under another.
sig2 <- cpssign("a manifest digest", key, ctx = "release")
cpsvrf("a manifest digest", sig2, key, ctx = "release")
cpsvrf("a manifest digest", sig2, key, ctx = "staging")

# A fixed seed reproduces the key (for test vectors only: a guessable
# seed is a guessable key).
seed <- as.raw(1:32)
identical(fipskg("ML-DSA-44", seed)$public, fipskg("ML-DSA-44", seed)$public)

# The public half carries no secret.
names(fipspubkey(key))

# An unknown parameter set is refused.
try(fipskg("ML-DSA-99"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
mod <- try(fipsmod(), silent = TRUE)
if (inherits(mod, "rmbl_fipsmod")) {
  key <- fipsmkg("SLH-DSA-SHA2-128s", mod)
  key
}
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Only where an OpenSSL 3.5 FIPS provider is installed:
mod <- try(fipsmod(), silent = TRUE)
if (inherits(mod, "rmbl_fipsmod")) {
  print(mod)
  key <- fipsmkg("ML-DSA-44", mod)
  sig <- cpssign("a manifest digest", key)
  cpsvrf("a manifest digest", sig, key)
}
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- fipskg("ML-DSA-65")
mu <- fipsmu(key, "a manifest digest", ctx = "release")
length(mu)

sig <- fipssignmu(key, mu)
fipsvrfmu(key, mu, sig)

# the same signature verifies the ordinary way, from the message
cpsvrf("a manifest digest", sig, key, ctx = "release")

# mu is computable from the PUBLIC key alone, which is what lets the
# message stay on the machine that has it
identical(fipsmu(fipspubkey(key), "a manifest digest",
                  ctx = "release"), mu)

# A different context gives a different mu.
identical(fipsmu(key, "a manifest digest", ctx = "staging"), mu)

# SLH-DSA has no external-mu interface.
try(fipsmu(fipskg("SLH-DSA-SHA2-128f"), "m"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
fipssz("ML-DSA-65")
fipssz("SLH-DSA-SHAKE-128s")

# An SLH-DSA signature is far larger than an ML-DSA one at the same
# security level, which is the price of dropping the lattice
# assumption.
fipssz("SLH-DSA-SHAKE-128s")[["signature"]] >
  fipssz("ML-DSA-44")[["signature"]]

# Every standardised set at once.
sapply(setdiff(pqcbknd(), "xmss-sha256"), fipssz)["signature", ]

# XMSS has no fixed sizes here.
try(fipssz("xmss-sha256"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
root <- tempfile("capsules-")
d <- usecpstmpl(file.path(root, "one"), ex = TRUE)
invisible(cpsrfrsh(d))
p <- loadprov(file.path(d, "data_provenance.json"))
cat("1,2\n", file = file.path(d, p$resource$filename), append = TRUE)
x <- cpschk(root, fp = FALSE)
ghann(x)
substr(ghcmt(x, runurl = "https://github.com/o/r/actions/runs/1"), 1, 80)
str(ghout(x, report = "rmbl-report.md", json = "rmbl-results.json"))

# one output per line, as $GITHUB_OUTPUT takes them
o <- ghout(x)
cat(sprintf("\%s=\%s\n", names(o), unlist(o)), sep = "")

try(ghann(list()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- hqckg(1)
small <- hqccmpkey(key)
nchar(small$secret) / 2
sent <- hqcencap(hqcpubkey(key))
identical(hqcdecap(small, sent$ciphertext), sent$shared)

# compressing twice changes nothing
identical(hqccmpkey(small), small)

# a seed paired with someone else's public key is refused on use
spliced <- small
spliced$public <- hqckg(1)$public
try(hqcdecap(spliced, sent$ciphertext))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- hqckg(1)
sent <- hqcencap(hqcpubkey(key))
identical(hqcdecap(key, sent$ciphertext), sent$shared)

# a tampered ciphertext returns a secret, and it is the wrong one
bad <- sent$ciphertext
substring(bad, 3L, 4L) <- if (substring(bad, 3L, 4L) == "ff") "fe" else "ff"
other <- hqcdecap(key, bad)
nchar(other) == 64L
identical(other, sent$shared)

# the public key alone cannot decapsulate, and a truncated ciphertext
# is refused
try(hqcdecap(hqcpubkey(key), sent$ciphertext))
try(hqcdecap(key, substring(sent$ciphertext, 1L, 100L)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- hqckg(1)
a <- hqcencap(key)
nchar(a$ciphertext) / 2 == hqcsz(1)[["ciphertext"]]

# two encapsulations to one key give different secrets
b <- hqcencap(key)
identical(a$shared, b$shared)

# both decapsulate correctly
identical(hqcdecap(key, a$ciphertext), a$shared)
identical(hqcdecap(key, b$ciphertext), b$shared)

# fixed randomness repeats the result (for tests only)
r1 <- hqcencap(key, m = as.raw(1:16), salt = as.raw(1:16))
r2 <- hqcencap(key, m = as.raw(1:16), salt = as.raw(1:16))
identical(r1$ciphertext, r2$ciphertext)

# randomness of the wrong length is refused
try(hqcencap(key, m = as.raw(1:3)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- hqckg(1)
pub <- hqcpubkey(key)

# the sender holds only the public key
sent <- hqcencap(pub)
# the recipient recovers the same secret from the ciphertext
got <- hqcdecap(key, sent$ciphertext)
identical(sent$shared, got)

# a corrupted ciphertext yields a DIFFERENT secret, not an error
bad <- sent$ciphertext
substring(bad, 1L, 2L) <- if (substring(bad, 1L, 2L) == "00") "01" else "00"
identical(hqcdecap(key, bad), got)

# a reproducible key from a fixed seed
identical(hqckg(1, seed = as.raw(1:32))$public,
          hqckg(1, seed = as.raw(1:32))$public)

# the round-4 revision: the same exchange, a 64-byte shared secret
old <- hqckg(1, ver = "round4")
cap <- hqcencap(hqcpubkey(old))
nchar(cap$shared) / 2
identical(hqcdecap(old, cap$ciphertext), cap$shared)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
hqcsz(1)

# code-based keys and ciphertexts are larger than ML-KEM's at the same
# category; the shared secret is 32 bytes at every level (64 in round 4)
rbind(HQC = hqcsz(3)[c("public", "ciphertext")],
      MLKEM = kemsz(768)[c("public", "ciphertext")])
rbind(v5 = hqcsz(1), round4 = hqcsz(1, "round4"))

# check a stored public key's length
key <- hqckg(1)
nchar(key$public) / 2 == hqcsz(1)[["public"]]

# an unknown level is refused rather than mapped to a default
try(hqcsz(2))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# once: make a key and a card, publish the card, give out the fingerprint
key <- fipskg("ML-DSA-44")
f <- tempfile(fileext = ".json")
idcrd(
  key,
  "Ada Lovelace",
  orcid = "0000-0002-1825-0097",
  url = "https://example.org/ada",
  file = f
)
card <- idcrdrd(f)
card
card$fingerprint

# anyone, later: is this the card I was told about, and did it sign this?
man <- mkmnf(list(project = "demo"), env = FALSE)
a <- cpsatst(man, key)
res <- idcrdvrf(f, fpr = card$fingerprint, atst = a)
res$ok
res$checks

# a card edited after signing fails
bad <- card
bad$name <- "Someone Else"
idcrdvrf(bad)$ok

# an attestation made with another key is not the card's
other <- cpsatst(man, fipskg("ML-DSA-44"))
idcrdvrf(card, atst = other)$ok

# an ORCID iD with a wrong check digit is refused
try(idcrd(key, "Ada Lovelace", orcid = "0000-0002-1825-0098"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- kemkg(512)
sent <- kemencap(kempubkey(key))
identical(kemdecap(key, sent$ciphertext), sent$shared)

# a tampered ciphertext returns a secret, and it is the wrong one
bad <- sent$ciphertext
substring(bad, 3L, 4L) <- "ff"
other <- kemdecap(key, bad)
nchar(other) == 64L
identical(other, sent$shared)

# the masked and the plain decapsulation agree
identical(kemdecap(key, bad, masked = FALSE), other)

# a public key alone cannot decapsulate, and a short ciphertext is refused
try(kemdecap(kempubkey(key), sent$ciphertext))
try(kemdecap(key, "abcd"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- kemkg(512)
a <- kemencap(key)
nchar(a$ciphertext) / 2 == kemsz(512)[["ciphertext"]]

# two encapsulations to one key give different secrets
b <- kemencap(key)
identical(a$shared, b$shared)

# both decapsulate correctly
identical(kemdecap(key, a$ciphertext), a$shared)
identical(kemdecap(key, b$ciphertext), b$shared)

# fixed randomness makes the result reproducible (test vectors only)
m <- as.raw(1:32)
identical(kemencap(key, m = m)$shared, kemencap(key, m = m)$shared)

# the randomness must be exactly 32 bytes
try(kemencap(key, m = as.raw(1:8)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
key <- kemkg(768)
pub <- kempubkey(key)

# the sender holds only the public key
sent <- kemencap(pub)
# the recipient recovers the same secret from the ciphertext
got <- kemdecap(key, sent$ciphertext)
identical(sent$shared, got)

# a corrupted ciphertext yields a DIFFERENT secret, not an error
bad <- sent$ciphertext
substring(bad, 1L, 2L) <- "00"
identical(kemdecap(key, bad), got)

# a fixed seed gives the same key every time (for test vectors only)
k1 <- kemkg(512, seed = as.raw(0:63))
k2 <- kemkg(512, seed = as.raw(0:63))
identical(k1$public, k2$public)
k1

# levels other than the three FIPS 203 defines are refused
try(kemkg(256))
try(kemkg(768, seed = as.raw(1:10)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
kemsz(768)

# the shared secret is 32 bytes at every level: the level buys
# security margin, not a longer secret
vapply(c(512, 768, 1024),
       function(l) kemsz(l)[["shared"]], integer(1))

# check a ciphertext's length before sending it
key <- kemkg(768)
ct <- kemencap(key)$ciphertext
nchar(ct) / 2 == kemsz(768)[["ciphertext"]]

# an unknown level is an error, not a default
try(kemsz(2048))
\dontshow{\}) # examplesIf}


# RFC 4231 test case 2.
chmac("Jefe", "what do ya want for nothing?")

# The key changes the digest, so a manifest cannot be re-signed
# without it.
chmac("key-a", "manifest")
chmac("key-b", "manifest")

# Raw keys and messages are accepted.
chmac(as.raw(rep(0x0b, 20)), "Hi There")

# Compare tags in constant time, never with ==.
tag <- chmac("k", "m")
cdgsteq(tag, chmac("k", "m"))
cdgsteq(tag, chmac("k", "tampered"))
cdgsteq(tag, "too-short")

# one message at a time
try(chmac("k", c("m1", "m2")))


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- system.file(
  "extdata",
  "ledger_sample.json",
  package = "rmoriebricklayer"
)
l <- ldgrread(f)
l
r <- ldgrchk(l)
r[, c("check", "ok", "severity", "detail")]

# a file that is not a ledger
bad <- tempfile(fileext = ".json")
writeLines('{"name": "x"}', bad)
try(ldgrread(bad))
unlink(bad)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# a starter project, bundled
proj <- file.path(tempdir(), "demo-project")
mkbndlproj(proj, title = "Demo analysis", author = "A. Researcher")
b <- mkbndl(proj, dest = tempdir(), overwrite = TRUE)
b
head(b$files)

# the example shipped with the package
otis <- mkbndl("otis-mrp", dest = tempdir(), overwrite = TRUE)
otis$sha256

# an existing zip is kept unless overwrite = TRUE
try(mkbndl(proj, dest = tempdir()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
proj <- file.path(tempdir(), "audit-demo")
mkbndlproj(proj, title = "Demo analysis")
b <- mkbndl(proj, dest = tempdir(), overwrite = TRUE)
a <- mkbndlchk(b$path, synthetic = TRUE)
a
a$counts
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- mkbndlproj(file.path(tempdir(), "my-study"), title = "My study")
p
readLines(file.path(p$dir, "analysis.R"), n = 5)

# files are kept unless overwrite = TRUE
try(mkbndlproj(p$dir))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Minimal manifest, no environment capture.
man <- mkmnf(list(project = "demo-study", author = "A. Author"),
  env = FALSE
)
names(man) # "meta" "results"
man$meta$project

# With environment = TRUE it also records R version / platform / packages.
full <- mkmnf(list(project = "demo"), env = TRUE)
names(full) # adds "environment"
full$environment$r_version

# a run on generated data is flagged, and its checks become INFO
syn <- mkmnf(list(project = "demo", synthetic = TRUE), env = FALSE)
syn$meta$synthetic

# meta must be a list
try(mkmnf("demo"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
x <- c(3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5)
d <- data.frame(year = rep(2020:2023, 2), grp = rep(c("a", "b"), each = 4),
                n = c(5, 7, 9, 11, 4, 6, 8, 7), pop = 1000)
s <- mkset(
  "How unequal" = ginicoef(x),
  "Rates by group" = rtcalc(d, "n", "pop", by = "grp"),
  title = "My study"
)
s

# one page, one Markdown file, one text file
mkset(s$items, title = "My study", file = file.path(tempdir(), "r.html"))
mkset(s$items, title = "My study", file = file.path(tempdir(), "r.md"))
mkset(s$items, title = "My study", file = file.path(tempdir(), "r.txt"))

# the extension picks the format
try(mkset(ginicoef(x), file = file.path(tempdir(), "r.pdf")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
a <- mkmnf(list(b = 2, a = 1), env = FALSE)
b <- mkmnf(list(a = 1, b = 2), env = FALSE)
# the same content in a different order has the same digest
identical(mnfdgst(a), mnfdgst(b))

# full precision, so a recorded number can be checked later
m <- mkmnf(list(x = 1 / 3), env = FALSE)
grepl("0.33333333333333331", mnfcanon(m), fixed = TRUE)

# any change to a recorded value changes the digest
m2 <- recrd(m, "check", obs = 1, expd = 1)
mnfdgst(m) == mnfdgst(m2)

# only lists can be serialised this way
try(mnfdgst("not a manifest"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(x = 1:10)
m <- mkmnf(list(dataset = "demo"), env = FALSE)
m <- recrd(m, "mean_x", obs = mean(d$x), expd = 5.5)
m <- recrd(m, "n", obs = nrow(d), expd = 10)

# recomputing both reproduces them
res <- mnfrcmp(m, d, list(mean_x = function(z) mean(z$x),
                                     n = function(z) nrow(z)))
res$ok
res$results[, c("name", "recorded", "recomputed", "status")]

# recomputing one leaves the other reported as unchecked
mnfrcmp(m, d, list(n = function(z) nrow(z)))$unchecked

# and data that no longer matches the record is caught
mnfrcmp(m, data.frame(x = 1:11),
                   list(n = function(z) nrow(z)))$ok

# a stricter tolerance than the recorded one
mnfrcmp(m, d, list(mean_x = function(z) mean(z$x) + 1e-9,
                              n = nrow), tol = 0)$results$status

# a function that fails is reported, not thrown
mnfrcmp(m, d, list(mean_x = function(z) stop("column y is gone"),
                              n = nrow))$results[, c("name", "status")]

# statistics must be named
try(mnfrcmp(m, d, list(function(z) nrow(z))))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(42)
m <- mnfrecseed(mkmnf(list(a = 1),
                                        env = FALSE))
first <- runif(3)

# any amount of other work can happen in between
invisible(runif(1000))

mnfrstseed(m)
identical(runif(3), first)

# what is stored
m$rng$kind
length(m$rng$state)

# a manifest without a recorded state cannot restore one
try(mnfrstseed(mkmnf(list(a = 1), env = FALSE)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
chunks <- c("row1,row2", "row3,row4", "row5,row6", "row7,row8")

root <- mrkroot(chunks)
root

# A single chunk's root is just its own leaf digest.
mrkroot("only") == csha256(c(as.raw(0), charToRaw("only")))

# The leaves are the per-chunk digests, so a diff names the culprit.
before <- mrklvs(chunks)
after <- mrklvs(c(chunks[1:2], "row5,row6-EDITED", chunks[4]))
which(before != after)

# Prove chunk 3 belongs, without holding chunks 1, 2 or 4.
pr <- mrkprf(chunks, 3)
pr
mrkvrf(chunks[3], pr, root)

# The proof fails for a chunk that was not in the tree.
mrkvrf("row5,row6-EDITED", pr, root)

# Any change to any chunk changes the root.
mrkroot(chunks) == mrkroot(c(chunks[1:3], "row7,row8 "))

# an odd count: the last node is promoted, so its proof has one step
mrkprf(c("a", "b", "c"), 3)

# an index past the end is refused
try(mrkprf(chunks, 5))

# a root pinned by 0.5.12 or earlier recomputes with scheme = 1, and its
# proofs (which record no scheme) verify with a warning
old <- mrkprf(chunks, 3, scheme = 1)
old$scheme <- NULL
withCallingHandlers(
  mrkvrf(chunks[3], old, mrkroot(chunks, scheme = 1)),
  warning = function(w) invokeRestart("muffleWarning"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Deprecated: use fipskg().
key <- suppressWarnings(oqskg("ML-DSA-65"))
key$scheme

# The same as the current name, after a warning.
pub <- suppressWarnings(oqspubkey(key))
identical(pub, fipspubkey(key))

# The warning names the replacement.
tryCatch(oqskg(), warning = function(w) conditionMessage(w))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
perdays("2024-01-01", "2024-12-31") # a leap year
perdays("2023-01-01", "2023-12-31")
perdays("2025-04-01", "2026-03-31") # a fiscal year

# a quarter as the period of an average daily population
adp(4200, t = perdays(as.Date("2025-01-01"), as.Date("2025-03-31")))

# numbers are not dates, and the end cannot come first
try(perdays(1, 31))
try(perdays("2024-12-31", "2024-01-01"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
pqcbknd()

# Every scheme is present in every build.
all(c("xmss-sha256", "ML-DSA-65", "SLH-DSA-SHAKE-128s") \%in\%
    pqcbknd())

# The SLH-DSA sets with fast signing, and their signature sizes in bytes.
fast <- grep("^SLH-DSA-.*f$", pqcbknd(), value = TRUE)
vapply(fast, function(s) fipssz(s)[["signature"]], integer(1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use A small key, to keep the example quick.
key <- pqckg(height = 3)
key$capacity # 8 signatures
key$next_index # none used yet

# The public half is what a verifier needs; it carries no secret.
pub <- signpubkey(key)
names(pub)

# Deterministic seeds reproduce the same key -- for tests only. A key built
# from given seeds is not entered in the used-index record (it may have
# signed elsewhere): it signs only after xmssregkey() vouches that it never
# has.
s1 <- paste(rep("11", 32), collapse = "")
s2 <- paste(rep("22", 32), collapse = "")
identical(pqckg(3, s1, s2)$root, pqckg(3, s1, s2)$root)

# The height is limited to 16 (65,536 signatures).
try(pqckg(height = 20))
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use
set.seed(7)
ref <- data.frame(v = stats::rnorm(200), g = sample(c("a", "b"), 200, TRUE))
cur <- data.frame(
  v = stats::rnorm(200, mean = 1),
  g = sample(c("a", "b"), 200, TRUE)
)

# The drift report leads with its verdict.
cpsdrft(ref, cur)

# format() gives the same lines for a log file.
head(format(cpsdrft(ref, cur)), 3)

# A Benford screen.
benfordtst(10^stats::runif(500, 0, 5))

# Keys and signatures print without ever showing the secret seed.
key <- pqckg(height = 2)
key
cpssign("a-manifest", key)
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
plan <- prrgdecl(c(
  ate = "use of force is higher in the exposed division",
  nrows = "the extract has the row count the source publishes"),
  note = "OTIS 2019-2024, division-level, pre-specified")

# afterwards, against what was reported
prrgchk(plan, c("ate", "nrows"))$ok

# dropping a declared outcome is outcome switching
prrgchk(plan, "nrows")$decnotrep

# and adding undeclared ones is what makes a nominal p meaningless
prrgchk(plan, c("ate", "nrows", "atebyyear",
                     "atebyprecinct"))$repnotdec

# the full check prints the departures
prrgchk(plan, c("ate", "atebyyear"))

try(prrgdecl(c("an unnamed claim")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# 1:1 in blocks of 4 or 6, for 40 participants
a <- ralloc(40, seed = "teaching example")
a
attr(a, "alloc")$digest            # sign and timestamp this first
head(as.data.frame(a))

# 2:1, stratified by site, with kit codes for the pharmacy
s <- ralloc(arms = c("drug", "placebo"), ratio = c(2, 1),
            strata = c(Toronto = 30, Ottawa = 24), codes = TRUE,
            seed = 7)
s
head(as.data.frame(s)[c("id", "kit")])  # what the sites are given

# simple randomisation: how many each arm has, against the ratio
plot(ralloc(60, block = NULL, seed = 1))

# at unblinding: the list is the one committed to
rallocvrf(a, digest = attr(a, "alloc")$digest)

# a block size the ratio does not divide
try(ralloc(30, block = 5))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
a <- ralloc(20, seed = "teaching example")
commitment <- attr(a, "alloc")$digest
rallocvrf(a, digest = commitment)

# one allocation changed after the commitment
b <- a
b$arm[3] <- if (b$arm[3] == "A") "B" else "A"
rallocvrf(b, digest = commitment)

# a different seed revealed at unblinding
rallocvrf(a, digest = commitment, seed = "another seed")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
d <- data.frame(x = rbinom(100, 1, 0.5))
d$y <- d$x + rnorm(100)
dm <- function(df) mean(df$y[df$x == 1]) - mean(df$y[df$x == 0])
man <- mkmnf(list(project = "demo"), env = FALSE)
man <- recevid(man, cpsplant(d, dm, "y", "x", n = 50, seed = 1))
man
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
man <- mkmnf(list(project = "demo"), env = FALSE)

# Within tolerance -> PASS. (Every status below is INFO instead in a
# session that has already generated synthetic data, because mkmnf()
# then marks the manifest synthetic; see mkmnf().)
man <- recrd(man, "meanmatches",
  obs = 1.0001, expd = 1,
  tol = 0.001
)
man$results$meanmatches$status # "PASS"

# Outside tolerance -> DIFFER.
man <- recrd(man, "sdmatches", obs = 2.5, expd = 2.0, tol = 0.01)
man$results$sdmatches$status # "DIFFER"

# Synthetic data -> INFO (comparison not meaningful).
man <- recrd(man, "syntheticrow",
  obs = 5, expd = 5,
  syn = TRUE
)
man$results$syntheticrow$status # "INFO"

# a non-numeric value is stored as information, silently
man <- suppressMessages(recrd(man, "country", obs = "CA", expd = "CA",
                               grp = "metadata"))
man$results$country$status # "INFO"

# Calls chain: record() returns the mutated manifest.
length(man$results) # 4
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
rndbytes(8)

# Independent between calls, unlike a seeded generator.
identical(rndbytes(16), rndbytes(16))

# R's own stream is not consumed, so a seeded analysis is unaffected.
set.seed(1)
a <- stats::runif(1)
set.seed(1)
invisible(rndbytes(32))
identical(stats::runif(1), a)

# As hex, for a seed argument.
paste(format(rndbytes(4)), collapse = "")

try(rndbytes(0))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Offline: a path entry that names no CRL or OCSP URL (here, bytes that
# are not a certificate at all) makes no request and returns empty results.
str(rvkfetch(list(list(der = as.raw(1:3)))))

# the input checks
try(rvkfetch(list()))
try(rvkfetch(list(list(der = as.raw(1:3))), tmout = 0))

# Reaches the network, so it is not run here.
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
res <- certchnvrf("leaf.crt", trust = "ca.crt",
                         rvk = "fetch")
res$checks
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use
key <- pqckg(height = 2)
pub <- signpubkey(key)

# The secret seed is gone.
is.null(pub$skseed)

# And verification works from the public half alone.
sig <- cpssign("manifest-digest", key)
cpsvrf("manifest-digest", sig, pub)

# A standardised key has its own function.
try(signpubkey(fipskg("ML-DSA-44")))
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# a skewed distribution: most stays short, a few long
stays <- c(rep(1, 40), rep(3, 30), rep(10, 20), 60, 90, 120)
staysmry(stays)

# the mean is pulled well above the median by the long tail
staysmry(stays)[, c("mean", "median", "max")]

# a 90\% interval instead of 95\%
staysmry(stays, conflvl = 0.90)[, c("mean", "lower", "upper")]

# a confidence level of 1 is refused
try(staysmry(stays, conflvl = 1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Fewer people, held longer: the flow falls while the stock rises.
stkflow(
  days = c(115674, 126121), people = c(12647, 9608),
  prd = c("2023", "2025"),
  expo = c(15495050, 16256538)
)

# a series of three years against the previous year, with leap-year lengths
sf <- stkflow(
  days = c(100200, 104000, 99000), people = c(9800, 9500, 9900),
  prd = 2023:2025, t = c(365, 366, 365), base = "previous"
)
as.data.frame(sf)[, c("period", "alos", "adp", "peochg", "adpchg")]

# days and people must line up period by period
try(stkflow(days = c(100, 120), people = c(10, 12, 14)))
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# Fix a trial's allocation before enrolment, then stamp its commitment.
a <- ralloc(40, seed = "a demonstration only")
ts <- tsstmp(a, file = file.path(tempdir(), "allocation.tsr"))
ts$time

# Years later, anyone re-checks the saved token against the commitment.
tsvrf(ts$file, charToRaw(attr(a, "alloc")$digest))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Offline: bytes that are not a timestamp token are reported, not
# thrown, so a batch check can carry on.
bad <- tsvrf(as.raw(c(0x30, 0x03, 0x02, 0x01, 0x05)),
                        data = charToRaw("manifest"))
bad$ok
bad$checks

# tsinfo() does refuse an unreadable token
try(tsinfo(as.raw(1:10)))

# Real tokens come from a timestamping authority; this is the shape of
# the call.
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
res <- tsvrf("response.tsr", data = "manifest.json")
res$ok
res$time
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- usecpstmpl(tempfile("capsule-"), ex = TRUE)
list.files(d)

# the provenance file to fill in
cat(readLines(file.path(d, "data_provenance.json")), sep = "\n")

# a blank template with a chosen name
d2 <- usecpstmpl(tempfile("capsule-"), name = "segregation-2024")
grep("TODO", readLines(file.path(d2, "data_provenance.json")), value = TRUE)

# an existing, non-empty folder is never overwritten
try(usecpstmpl(d))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
dir <- file.path(tempdir(), "capsule-example")
dir.create(dir, showWarnings = FALSE)
write.csv(data.frame(id = 1:3), file.path(dir, "d.csv"), row.names = FALSE)
prov <- list(resource = list(filename = "d.csv",
                             sha256 = sha256file(file.path(dir, "d.csv")),
                             row_count_data_rows = 3),
             schema = list(expected_columns = "id"))
writeLines(tojs(prov, auto_unbox = TRUE),
           file.path(dir, "data_provenance.json"))
vrfcps(dir)$ok
vrfcps(dir)

# an edited data file fails its digest and its row count
write.csv(data.frame(id = 1:4), file.path(dir, "d.csv"), row.names = FALSE)
chk <- vrfcps(dir)
chk$ok
chk$checks[!chk$checks$ok, c("check", "detail")]

# a path out of the capsule is a failed check, not a read
vrfcps(dir, provfile = "../elsewhere.json")$ok

# a missing directory is an error
try(vrfcps(file.path(tempdir(), "no-such-capsule")))
unlink(dir, recursive = TRUE)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Offline: a results file whose only failure is a page that is gone
# has nothing to send again, so no keys or network are used.
f <- tempfile(fileext = ".jsonl")
writeLines(
  c(
    paste0(
      '{"url":"https://example.org/","status":"saved",',
      '"timestamp":"20260101120000",',
      '"snapshot":"https://web.archive.org/web/20260101120000/https://',
      'example.org/",',
      '"message":"","at":"2026-01-01T12:00:00Z"}'
    ),
    paste0(
      '{"url":"https://example.org/old","status":"failed",',
      '"message":"target server cannot find the ',
      'page","at":"2026-01-01T12:00:00Z"}'
    )
  ),
  f
)
res <- wbrtry(f, lookup = FALSE)
res
attr(res, "retry")

try(wbrtry(tempfile(fileext = ".jsonl")))

# With failures to resend, keys and the network are needed.
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
res <- wbsave(urls, output = "snapshots.jsonl")
# later, or the next day once the daily capture limits have reset:
res <- wbrtry("snapshots.jsonl")
attr(res, "retry")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# The checks run before any request, so these need no network or keys:
try(wbsave("ftp://example.org/report.pdf"))
try(wbsave("https://example.org/", ak = "abc", sk = "def", jobs = 20))
try(wbsave(
  "https://example.org/",
  ak = "abc",
  sk = "def",
  output = file.path(tempdir(), "no-such-folder", "runs.jsonl")
))

# A real run needs archive.org keys and the network.
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
Sys.setenv(
  IA_S3_ACCESS_KEY_FILE = "~/.config/ia/s3_access_key.txt",
  IA_S3_SECRET_KEY_FILE = "~/.config/ia/s3_secret_key.txt"
)
res <- wbsave(
  c(
    "https://www.ontariocourts.ca/ocj/statistics/",
    "https://www150.statcan.gc.ca/n1/tbl/csv/35100177-eng.zip"
  ),
  output = "snapshots.jsonl"
)
res
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
man <- mkmnf(list(project = "demo"), env = FALSE)
man <- recrd(man, "rowcount", obs = 20, expd = 20)
path <- wrmnfjs(man, tempfile(fileext = ".json"))
file.exists(path)

# Round-trips back through the package's own codec.
back <- fromjs(path, simplifyVector = FALSE)
# "PASS" ("INFO" after synthetic data, see mkmnf())
back$results$rowcount$status

# the canonical form: one line whose SHA-256 is the manifest digest
cpath <- wrmnfjs(man, tempfile(fileext = ".json"), canon = TRUE)
identical(readLines(cpath), as.character(mnfcanon(man)))

# the path must be one string
try(wrmnfjs(man, c("a.json", "b.json")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
man <- mkmnf(list(project = "demo", author = "A. Author"),
  env = FALSE
)
man <- recrd(man, "rowcount", obs = 20, expd = 20)
out <- file.path(tempdir(), "demo-run")
dir.create(out, showWarnings = FALSE)
s <- wrsmrytxt(man, out, paths = list(results = out))
readLines(s)[7:8]

# with notes, contact and licence lines
s <- wrsmrytxt(man, out, paths = list(results = out),
  whatwasdone = c("- read the extract", "- recomputed table 2"),
  contact = "analyst at example.org", lic = "CC BY 4.0")
tail(readLines(s), 6)

# the manifest has to be a list
try(wrsmrytxt("demo", out, paths = list()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory; leave the
# default in use
key <- pqckg(height = 2)
s1 <- cpssign("manifest-1", key)
key <- xmssadv(key, s1)
key$next_index
s2 <- cpssign("manifest-2", key)
cpsvrf("manifest-2", s2, signpubkey(key))

# With the message, the signature is verified before the key advances.
key <- xmssadv(key, s2, msg = "manifest-2")
key$next_index

# A key regenerated from seeds is unknown to the record until registered.
s <- paste(rep("ab", 32), collapse = "")
k2 <- pqckg(height = 1, skseed = s, pubseed = s, skprf = s)
try(cpssign("m", k2))
invisible(xmssregkey(k2))
cpsvrf("m", cpssign("m", k2), signpubkey(k2))

# Reset a test key's entry so it may sign from index 0 again.
xmssfgt(k2)

# A signature that is not an XMSS signature cannot advance a key.
try(xmssadv(key, list()))
options(op)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep this example's
op <- options(rmoriebricklayer.xmssidxfile = tempfile())
# one-time index record out of your configuration directory
root <- tempfile("capsules-")
d <- file.path(root, "one")
dir.create(d, recursive = TRUE)
writeLines("x\n1", file.path(d, "data.csv"))
key <- pqckg(height = 2)
b <- cpsbndl(d, mkmnf(list(), env = FALSE), key)
xmssidxseen(root)

# the same index signed again from a stale copy of the key: reused
e <- file.path(root, "two")
dir.create(e)
writeLines("x\n2", file.path(e, "data.csv"))
# forget the record, as a copy on another machine would
invisible(xmssfgt(key))
b2 <- cpsbndl(e, mkmnf(list(), env = FALSE), key)
xmssidxseen(root)[, c("index", "reused")]

try(xmssidxseen(tempfile()))
options(op)
\dontshow{\}) # examplesIf}

}
