\name{rmbl-output}
\alias{agentbndl}
\alias{blcli}
\alias{blpal}
\alias{plotopt}
\alias{blprog}
\alias{cohtrnd}
\alias{cpsrfrsh}
\alias{cpsrpt}
\alias{dlogin}
\alias{dlogout}
\alias{drftapp}
\alias{drfthtml}
\alias{explerr}
\alias{fylbl}
\alias{instcli}
\alias{llmask}
\alias{llmcfg}
\alias{llmchat}
\alias{llmmdls}
\alias{llmprvd}
\alias{llmrte}
\alias{llmstat}
\alias{loounit}
\alias{mnfdiff}
\alias{format.rmbl_mnfdiff}
\alias{print.rmbl_mnfdiff}
\alias{optsqr}
\alias{plmfld}
\alias{plotevgrid}
\alias{plotlrnz}
\alias{plotfnl}
\alias{plotmore}
\alias{plotrdg}
\alias{plotecdf}
\alias{plotvln}
\alias{plothex}
\alias{plotgain}
\alias{plotseries}
\alias{plotcal}
\alias{plothrz}
\alias{plotsm}
\alias{plotbump}
\alias{profcols}
\alias{rgncov}
\alias{rgnmapalt}
\alias{rgnmapcmp}
\alias{rgnmapintg}
\alias{rgnmappts}
\alias{rmblapp}
\alias{rmbldemo}
\alias{rptmd}
\alias{schemapath}
\alias{srchfig}
\alias{yoy}
\alias{yoy.default}
\alias{yoy.data.frame}
\alias{yoy.numeric}
\alias{yoy.integer}
\alias{yoy.ts}
\alias{format.rmbl_yoy}
\alias{print.rmbl_yoy}
\alias{yoydelim}
\alias{yoycsv}
\alias{yoytsv}
\alias{yoyjs}
\alias{yoymd}
\alias{yoylbl}
\alias{yoypals}
\alias{yoyren}
\alias{yoyhtml}
\alias{yoypdf}
\alias{yoysmry}
\alias{yoysmry.default}
\alias{yoysmry.rmbl_yoy}
\alias{yoywr}
\title{Plots, reports, the command line and language models}
\usage{

agentbndl(req, model = NULL, route = NULL)


blcli(args = commandArgs(trailingOnly = TRUE), out = cat)


blpal(name = c("okabe", "diverging", "sequential", "grey"), n = NULL)

plotopt(...)


blprog(label, total, quiet = NULL, color = "blue", delay = NULL)


cohtrnd(data, unit, time, y, ftreat, win = c(-12, 12), ma = 3L, norm = TRUE)


cpsrfrsh(dir, allowfile = FALSE)


cpsrpt(
  data,
  ref = NULL,
  schema = NULL,
  rules = NULL,
  chunks = NULL,
  sig = NULL,
  key = NULL,
  alpha = 0.01,
  maxrowsoutl = 20000L
)


dlogin(
  token = NULL,
  email = NULL,
  code = NULL,
  openbro = interactive(),
  pollmaxsec = 600,
  accter = FALSE,
  name = NULL,
  affil = NULL,
  purp = NULL,
  restr = NULL,
  supnm = NULL,
  suprole = NULL,
  supemail = NULL
)


dlogout()


drftapp(
  x = NULL,
  ref = NULL,
  cur = NULL,
  hist = NULL,
  warn = NULL,
  fail = NULL
)


drfthtml(
  x,
  file,
  title = "Drift report",
  warn = NULL,
  fail = NULL,
  open = FALSE
)


explerr(msg = geterrmessage(), pkgs = NULL, n = 3L)


fylbl(endyear, sep = "/", short = TRUE)


instcli(
  dir = file.path(path.expand("~"), ".local", "bin"),
  name = c("rmoriebricklayer", "rmbl")
)


llmask(
  prompt,
  model = NULL,
  tmout = 120,
  syspro = NULL,
  route = NULL,
  docs = TRUE,
  pkgs = NULL,
  fresh = FALSE
)


llmcfg(...)


llmchat(msgs, model = NULL, route = NULL, tmout = 120)


llmmdls(route = NULL, tmout = 15)


llmprvd()


llmrte(route = NULL)


llmstat()


loounit(
  data,
  unit,
  time,
  y,
  trtd,
  covs = NULL,
  cl = NULL,
  units = NULL,
  w = NULL
)


mnfdiff(old, new)

\method{format}{rmbl_mnfdiff}(x, ...)

\method{print}{rmbl_mnfdiff}(x, ...)


optsqr(
  effort,
  model = c("invcube", "random", "definite", "mbeta"),
  m = 1,
  E = 1
)


plmfld(q, u, h, x, y, z = 0, stab = "D", set = "rural", mixh = NULL, nimg = 3)


plotevgrid(x, ncol = NULL, main = NULL, ...)


plotlrnz(x, ..., main = NULL, col = NULL, pal = NULL)

plotfnl(
  obs,
  expd,
  area = NULL,
  lvls = c(0.95, 0.998),
  target = 1,
  ...,
  main = NULL,
  col = NULL,
  pal = NULL
)


plotrdg(x, grp = NULL, bw = "nrd0", ..., main = NULL, col = NULL, pal = NULL)

plotecdf(x, grp = NULL, ..., main = NULL, col = NULL, pal = NULL)

plotvln(x, grp = NULL, bw = "nrd0", ..., main = NULL, col = NULL, pal = NULL)

plothex(x, y, bins = 30L, ..., main = NULL, col = NULL, pal = NULL)

plotgain(x, grp = NULL, ..., main = NULL, col = NULL, pal = NULL)


plotcal(x, y, ..., main = NULL, col = NULL, pal = NULL)

plothrz(
  y,
  prd,
  grp = NULL,
  bands = 3L,
  ...,
  main = NULL,
  col = NULL,
  pal = NULL
)

plotsm(y, prd, grp = NULL, ..., main = NULL, col = NULL, pal = NULL)

plotbump(y, prd, grp, desc = TRUE, ..., main = NULL, col = NULL, pal = NULL)


profcols(data, qnts = c(0.25, 0.5, 0.75))


rgncov(reg, pop, units)


rgnmapalt(map, unit, reg, route, known = character())


rgnmapcmp(pub, obs, unit, cols = NULL)


rgnmapintg(map, unit, reg, regs = NULL)


rgnmappts(x, y, unit, bounds, fields, crs = 4326)


rmblapp(data = NULL, capsule = NULL, ...)


rmbldemo(name = NULL)


rptmd(report, path = NULL, title = "Capsule report")


schemapath(name)


srchfig(fig = NULL, num = NULL, seed = 1, main = NULL)


yoy(x, ...)

\method{yoy}{default}(x, ...)

\method{yoy}{data.frame}(
  x,
  value,
  prd,
  by = NULL,
  lag = 1L,
  fun = NULL,
  units = c("count", "continuous", "percent"),
  minbase = NULL,
  conflvl = 0.95,
  dir = c("neutral", "higher", "lower"),
  complete = TRUE,
  prdord = NULL,
  ...
)

\method{yoy}{numeric}(x, prd = seq_along(x), ...)

\method{yoy}{integer}(x, prd = seq_along(x), ...)

\method{yoy}{ts}(x, lag = NULL, ...)

\method{format}{rmbl_yoy}(x, digits = 1L, palette = "diverging",
  color = FALSE, n = 30, ...)

\method{print}{rmbl_yoy}(x, digits = 1L, palette = "diverging", color = NULL, n = 30, ...)


yoycsv(x, file, digits = NULL, na = "", meta = TRUE, comment = "#", ...)

yoytsv(x, file, digits = NULL, na = "", meta = TRUE, comment = "#", ...)

yoyjs(x, file, digits = NULL, pretty = TRUE, ...)

yoymd(x, file, digits = 1L, align = TRUE, ...)


yoylbl(x, labels)


yoypals()


yoyhtml(
  x,
  file,
  title = "Year-over-year change",
  sub = NULL,
  pal = "diverging",
  digits = 1L,
  bars = TRUE,
  intv = TRUE,
  notes = NULL,
  ...
)

yoypdf(
  x,
  file,
  title = "Year-over-year change",
  sub = NULL,
  pal = "diverging",
  digits = 1L,
  intv = TRUE,
  notes = NULL,
  width = 11,
  height = 8.5,
  ...
)


yoysmry(object, ...)

\method{yoysmry}{default}(object, ...)

\method{yoysmry}{rmbl_yoy}(object, ...)


yoywr(x, file, format = "auto", ...)

}
\arguments{
\item{req}{Character scalar describing the bundle task.}
\item{model}{For \code{agentbndl}: Optional model id, a string; \code{NULL} uses the route's model
(\code{rmbl models} lists them).

For \code{llmask}, \code{llmchat}: Character scalar or \code{NULL} (the default): the model id
to use (a value shaped like a key is refused, never sent).
\code{NULL} uses the route's own choice: \code{MORIE_LLM_MODEL}
for your own endpoint, \code{OLLAMA_MODEL} or the first pulled model
for Ollama, the saved \code{PROVIDER.model} or the provider's default
model (see \code{\link{llmprvd}}).

For \code{optsqr}: \code{"invcube"} (the default; Frost's ideal search
conditions), \code{"random"} (poor conditions), \code{"definite"} or
\code{"mbeta"}.}
\item{route}{For \code{agentbndl}: \code{NULL} (the saved route, else the first that is set
up), \code{"auto"}, \code{"own"}, \code{"ollama"} or a provider id such as
\code{"anthropic"} or \code{"openai"}.

For \code{llmask}, \code{llmchat}: Character scalar or \code{NULL} (the default: the saved
route, else the first that is set up). \code{"auto"} uses the
automatic order and ignores a saved route; \code{"own"},
\code{"ollama"} or a provider id insists on that one.

For \code{llmmdls}: Character scalar or \code{NULL} (the default: the route
\code{\link{llmask}} would take). Otherwise \code{"auto"},
\code{"own"}, \code{"ollama"} or a provider id from
\code{\link{llmprvd}}.

For \code{llmrte}: Character scalar or \code{NULL} (the default). \code{NULL}
uses the saved route, else the automatic order; \code{"auto"} uses the
automatic order and ignores a saved route; \code{"own"},
\code{"ollama"} or a provider id from the \code{id} column of
\code{\link{llmprvd}} (such as \code{"anthropic"})
asks about that one route only.

For \code{rgnmapalt}: Named character vector (names are units, values regions),
or a data frame with the same two column names as \code{map}, giving the
second method's assignment. Units it does not cover, and entries that
are \code{NA} or blank, are skipped rather than counted as disagreements.}
\item{args}{Character vector of arguments, verb first. The default is the
command line, \code{commandArgs(trailingOnly = TRUE)}. An empty vector
prints the help.}
\item{out}{Function that receives the output text, one string at a time
(default \code{cat}, the console). Pass a function that collects the
strings to capture the output.}
\item{name}{For \code{blpal}: Character scalar, the palette: \code{"okabe"} (the default), or
one of \code{"diverging"}, \code{"sequential"} and \code{"grey"}.

For \code{dlogin}: Character scalar or \code{NULL}: your name (asked for when
\code{NULL}). Required for a new key.

For \code{instcli}: Character vector of command names to install; default both
\code{rmoriebricklayer} and its short form \code{rmbl} (every verb works
under either).

For \code{rmbldemo}: The dataset, one of the names \code{rmbldemo()} lists; \code{NULL} (the
default)
lists them.

For \code{schemapath}: Character scalar: \code{"capsule"}, \code{"bundle"} or
\code{"manifest"}, with or without the \code{.schema.json} ending.}
\item{n}{For \code{blpal}: Integer scalar or \code{NULL} (the default: the palette's own
colours). The number of colours wanted; \code{"okabe"} and \code{"grey"}
recycle, \code{"sequential"} and \code{"diverging"} interpolate.

For \code{explerr}: How many matches to return, best first: a whole number, default
3.

For \code{yoy}: Integer, default \code{30}. Maximum number of rows printed; the
number of rows left out is reported on a final line.}
\item{...}{For \code{blpal}: For \code{plotopt()}, named options to set:
\code{palette} (a palette name), \code{grid} (logical, draw grid
lines), \code{cex} (numeric text and symbol size), \code{las} (axis label
orientation, as in \code{par()}), \code{bg} (background colour) and
\code{panel} (the plot region's fill behind white grid lines, \code{NA}
for none). With no arguments, the current values are returned.

For \code{llmcfg}: Settings to save, as \code{key = value}. The keys are:
\itemize{
\item \code{route}: \code{"auto"}, \code{"own"}, \code{"ollama"} or a
provider id such as \code{"anthropic"} (case is ignored);
\item \code{<provider>.key} and \code{<provider>.model}, for example
\code{anthropic.key} or \code{openai.model};
\item \code{own.url}, \code{own.key} and \code{own.model};
\item \code{ollama.url}, \code{ollama.model} and \code{ollama.key}.
}
Each value is a single string (leading and trailing
spaces are removed). \code{NULL}, \code{NA} or \code{""} removes a
saved setting. With no arguments nothing is written.

For \code{mnfdiff}: Further arguments, ignored when printing the comparison.

For \code{plotevgrid}: Passed to each panel's \code{plot()} (for example
\code{style = "stata"}, \code{shadepost = TRUE}, \code{refline = 0}).

For \code{plotlrnz}: As in \code{\link{plot-methods}}: the title,
colours overriding the palette, a \code{\link{blpal}} name,
and arguments passed to \code{plot()}.

For \code{plotmore}: Further arguments to the \code{plot()} call that opens each frame.

For \code{plotseries}: Further arguments to the \code{plot()} call that opens the frame.

For \code{rmblapp}: Options passed to \code{\link[shiny:shinyApp]{shiny::shinyApp()}}, such
as \code{port} and \code{launch.browser}.

For \code{yoy}: Further arguments from \code{print()}; the table ignores them.

For \code{yoydelim}: Ignored: what \code{yoywr()} passes on for its HTML and PDF writers.

For \code{yoyren}: Further arguments; the HTML writer does not use them.

For \code{yoysmry}: Further arguments for methods; not used.

For \code{yoywr}: Passed to the format's own writer, so the colour,
digit and layout options of \code{\link[=yoyhtml]{yoyhtml()}} and
\code{\link[=yoypdf]{yoypdf()}} are available here too.}
\item{label}{A short name for the work, shown before the bar.}
\item{total}{The number of steps, or 0 when the work has no count.}
\item{quiet}{\code{TRUE}, \code{FALSE}, or \code{NULL} to follow the
session (see above).}
\item{color}{For \code{blprog}: The bar's colour: \code{"blue"}, \code{"green"},
\code{"red"}, \code{"violet"} or \code{"amber"}.

For \code{yoy}: Logical or \code{NULL} (the default). \code{TRUE} wraps each
row in 24-bit ANSI colour codes chosen from its verdict; \code{FALSE}
prints plain text. \code{NULL} means colour only in an interactive
session with the \code{NO_COLOR} environment variable unset, so output
that is redirected or captured stays plain text. \code{format()} takes
\code{TRUE} or \code{FALSE} (default \code{FALSE}).}
\item{delay}{Seconds of work before anything is drawn; \code{NULL} takes the
package's 0.75.}
\item{data}{For \code{cohtrnd}, \code{loounit}: A data frame, one row per unit and period.

For \code{cpsrpt}: The data frame to assess.

For \code{profcols}: A data frame whose columns are profiled.

For \code{rmblapp}: A data frame, or the path of a CSV file, to start with; \code{NULL}
for none.}
\item{unit}{For \code{cohtrnd}, \code{loounit}: Column names: the unit, the period (numeric, for example a
year or a month index) and the outcome.

For \code{rgnmapalt}: Name of the unit identifier column (a string).

For \code{rgnmapcmp}: Name of the unit identifier column, present in both.

For \code{rgnmapintg}: Name of the column holding the unit identifier (a string).

For \code{rgnmappts}: Identifier for each point, same length (character, no
missing or empty values).}
\item{time}{Column names: the unit, the period (numeric, for example a
year or a month index) and the outcome.}
\item{y}{For \code{cohtrnd}, \code{loounit}: Column names: the unit, the period (numeric, for example a
year or a month index) and the outcome.

For \code{plmfld}: Numeric vectors, strictly increasing: the downwind and
crosswind coordinates of the grid, in metres from the source.

For \code{plotmore}: Numeric vector, one per value of \code{x} (\code{plothex()}).

For \code{plotseries}: Numeric vector of values.

For \code{rgnmappts}: Longitude and latitude of each point (numeric vectors, no
\code{NA}), in the coordinate reference system \code{crs}.}
\item{ftreat}{Column name of the period a unit is first treated (\code{NA},
0 or \code{Inf} for a unit never treated). Treatment is taken as staying on.}
\item{win}{Periods before and after adoption to show (default -12 to 12).}
\item{ma}{Width of the trailing moving average (default 3; 1 for none).}
\item{norm}{Scale each cohort to 1 at period -1 (default \code{TRUE}).}
\item{dir}{For \code{cpsrfrsh}: Character scalar, the capsule directory.

For \code{instcli}: Character scalar, the target directory; default
\code{~/.local/bin}. Created (with its parents) if absent.

For \code{yoy}: Which way is an improvement:
\code{"higher"}, \code{"lower"} (segregation days,
deaths in custody, use of force), or \code{"neutral"}. Affects colour
and the \code{verdict} column only, never the arithmetic.}
\item{allowfile}{\code{FALSE} (the default), \code{TRUE} to accept a
\code{file://} source inside \code{dir}, or an existing folder whose
files may also be read as a source (a local path or a \code{file://}
URL).}
\item{ref}{For \code{cpsrpt}: Optional data frame the capsule was
pinned against. Supplying it enables the drift comparison, which is the
check a digest cannot make.

For \code{drftapp}: Optional: the two data frames \code{x} was computed from, for
the rerun panel.}
\item{schema}{Optional schema from
\code{\link[=infsch]{infsch()}}, or a provenance list
containing one. Supplying it enables the structural check.}
\item{rules}{Optional list of \code{\link[=rul]{rul()}}
objects.}
\item{chunks}{Optional character vector of capsule chunks
(see \code{\link[=chnkfile]{chnkfile()}}) to pin with a Merkle root.}
\item{sig}{Optional signature and
verifying key, as from \code{\link[=cpssign]{cpssign()}},
checked against the data's own digest.}
\item{key}{Optional signature and
verifying key, as from \code{\link[=cpssign]{cpssign()}},
checked against the data's own digest.}
\item{alpha}{Numeric scalar, the significance level passed to
\code{\link[=cpsdrft]{cpsdrft()}}; default \code{0.01}.}
\item{maxrowsoutl}{Integer scalar: skip the outlier scan
above this many rows (default 20000), since it factors a covariance per
call.}
\item{token}{Character scalar or \code{NULL} (the default): a key you
already have, issued at \code{www.rmorie.com/access/}.
Surrounding spaces are removed. Takes precedence over \code{email}.}
\item{email}{Character scalar or \code{NULL} (the default): sign in with
a one-time code sent to this address. Lower-cased before use.}
\item{code}{Character scalar or \code{NULL} (the default): the emailed
code when you already have it; \code{NULL} sends a new code and asks
for it at the console. Used only with \code{email}.}
\item{openbro}{Logical scalar, default \code{interactive()}: open
the GitHub page for the device flow in the system browser (only a
public \code{https} address is opened).}
\item{pollmaxsec}{Numeric scalar, default \code{600}: how many
seconds the device flow waits for you to approve the sign-in.}
\item{accter}{Logical scalar, default \code{FALSE}: \code{TRUE}
accepts the data access terms (read them at
\code{data.rmorie.com/terms}) without the console asking. A new
key is issued only once they are accepted, here or at the prompt.}
\item{affil}{Character scalar or \code{NULL}: your university,
employer or organisation (optional; asked for when \code{NULL}).}
\item{purp}{Character scalar or \code{NULL}: why you need the data, a
sentence or two (asked for when \code{NULL}). Required for a new key.}
\item{restr}{Logical scalar or \code{NULL}: \code{TRUE} also accepts
Schedule B of the terms, which opens the restricted tables (ICPSR, NCVS
38604, A2AJ case law); \code{NULL} asks at the console.}
\item{supnm}{Character scalars
or \code{NULL}: the supervisor, department chair, director or
coordinator who knows of your use, their role and their email. Required
with \code{restricted = TRUE}; asked for when \code{NULL}. The role is
one of \code{"supervisor"}, \code{"chair"}, \code{"director"},
\code{"coordinator"} or \code{"other"}.}
\item{suprole}{Character scalars
or \code{NULL}: the supervisor, department chair, director or
coordinator who knows of your use, their role and their email. Required
with \code{restricted = TRUE}; asked for when \code{NULL}. The role is
one of \code{"supervisor"}, \code{"chair"}, \code{"director"},
\code{"coordinator"} or \code{"other"}.}
\item{supemail}{Character scalars
or \code{NULL}: the supervisor, department chair, director or
coordinator who knows of your use, their role and their email. Required
with \code{restricted = TRUE}; asked for when \code{NULL}. The role is
one of \code{"supervisor"}, \code{"chair"}, \code{"director"},
\code{"coordinator"} or \code{"other"}.}
\item{x}{For \code{drftapp}: A \code{\link[=cpsdrft]{cpsdrft()}} result, or \code{NULL} (the default) to
upload two CSV
files in the app.

For \code{drfthtml}: A \code{\link[=cpsdrft]{cpsdrft()}} result. Attach a provenance record as
\code{x$provenance} (for example from \code{\link[=loadprov]{loadprov()}}) and an
\code{\link[=mnfdiff]{mnfdiff()}} as
\code{x$manifest} to show them; \verb{rmbl drift --html} does both.

For \code{mnfdiff}: An \code{rmbl_mnfdiff} result.

For \code{plmfld}: Numeric vectors, strictly increasing: the downwind and
crosswind coordinates of the grid, in metres from the source.

For \code{plotevgrid}: A named list of \code{\link{evstudy}} or \code{\link{stgatt}}
results; the names title the panels.

For \code{plotlrnz}: For \code{plotlrnz()}, a numeric vector of non-negative values
(one per unit), or the data frame \code{lorenzc()} returns (columns
\code{population} and \code{value}).

For \code{plotmore}: Numeric vector to plot, one value per observation.

For \code{plotseries}: Dates (a \code{Date} or text \code{as.Date()} reads) for
\code{plotcal()}.

For \code{rgnmappts}: Longitude and latitude of each point (numeric vectors, no
\code{NA}), in the coordinate reference system \code{crs}.

For \code{yoy}: An \code{rmbl_yoy} object returned by \code{yoy()}.

For \code{yoydelim}, \code{yoywr}: An \code{rmbl_yoy} object from
\code{\link[=yoy]{yoy()}}.

For \code{yoylbl}: An \code{rmbl_yoy} object from \code{\link[=yoy]{yoy()}},
whose periods are labelled.

For \code{yoyren}: An \code{rmbl_yoy} object from \code{\link[=yoy]{yoy()}}, written as HTML.}
\item{cur}{Optional: the two data frames \code{x} was computed from, for
the rerun panel.}
\item{hist}{Optional: a directory of earlier drift JSON files, for the
history tab.}
\item{warn}{The PSI bands the page opens with; \code{NULL} (the default)
takes the object's \code{bands}.}
\item{fail}{The PSI bands the page opens with; \code{NULL} (the default)
takes the object's \code{bands}.}
\item{file}{For \code{drfthtml}: The path to write.

For \code{yoydelim}: Character scalar, the output path, or \code{NULL} to return the
text instead of writing it.

For \code{yoyren}: Output path (a string). \code{yoyhtml()} writes a single
self-contained HTML file with no external requests; \code{yoypdf()}
writes a PDF using R's own device, so neither needs a package beyond
base R.

For \code{yoywr}: Character scalar, the output path.}
\item{title}{For \code{drfthtml}: The page title, a string.

For \code{rptmd}: Character scalar, the heading for the document; default
\code{"Capsule report"}.

For \code{yoyren}: Heading for the page (and the HTML page title or PDF title),
a string; default \code{"Year-over-year change"}.}
\item{open}{Logical: open the page in the browser when written (default
\code{FALSE}).}
\item{msg}{The message: the text of an error, as R printed it (\dQuote{Error
in f(x) : ...} is fine), a condition object, or a \code{try()} result.
Default: the last error of this session (\code{geterrmessage()}).
Or a data frame of check rows with the columns \code{check},
\code{ok} and \code{detail}, as \code{rmbl verify --json} writes
them and \code{\link{vrfcps}} returns them in \code{checks}: each
failed row is explained.}
\item{pkgs}{For \code{explerr}: Character vector of installed packages to search. The default,
\code{NULL}, means this package, or the comma-separated list in
\code{RMBL_PACKAGES}: an environment variable that a package built on
this one sets for its own command line.

For \code{llmask}: Character vector or \code{NULL} (the default): the
installed packages whose help the model gets. \code{NULL} means
\code{"rmoriebricklayer"}, or the comma-separated list in the
environment variable \code{RMBL_PACKAGES} (which a package built on
this one sets for its own command line). Ignored when
\code{docs = FALSE}.}
\item{endyear}{The fiscal year's end year, as a whole number
or a string; a vector of them.}
\item{sep}{Separator between the two years, a string; default
\code{"/"}.}
\item{short}{Logical. \code{TRUE} (the default) abbreviates the second year
to two digits, as in \code{"2022/23"}; \code{FALSE} writes it in full, as
in \code{"2022/2023"}.}
\item{prompt}{Character scalar: the question, in plain text.}
\item{tmout}{For \code{llmask}, \code{llmchat}: Numeric scalar, seconds to wait for each reply; default
\code{120}. With \code{docs = TRUE} the whole exchange gets at most
three times this.

For \code{llmmdls}: Numeric scalar, seconds to wait for the model list;
default \code{15}.}
\item{syspro}{Character scalar or \code{NULL} (the default): extra
instructions sent as the system message (added to the package's own
instructions when \code{docs = TRUE}).}
\item{docs}{Logical scalar, default \code{TRUE}: give the model the
packages' help and the lookup tools (see Details). \code{FALSE} sends
the prompt alone.}
\item{fresh}{Logical scalar, default \code{FALSE}. \code{TRUE} asks the
model even when a saved answer matches (see Details), and saves the
new answer in its place.}
\item{msgs}{A non-empty list of turns, each a list with two
character scalars: \code{role}, one of \code{"system"}, \code{"user"}
or \code{"assistant"}, and \code{content}, the text of that turn. The
last turn is normally a \code{"user"} turn. Other elements of a turn are
dropped.}
\item{trtd}{Column name of the treatment indicator (0 or 1).}
\item{covs}{Optional column names of time-varying controls.}
\item{cl}{Column name of the clusters (default the unit), or two column names
for two-way clustering (Cameron, Gelbach and Miller 2011): \eqn{V_a + V_b -
V_{ab}}, each term with the small-sample factor of the dimension with fewer
clusters, and t on its \eqn{G - 1} degrees of freedom. A composite cluster
(district by month, say) is one column made with \code{interaction()}.
Fewer than ten clusters give a warning (CR1 errors are unreliable with
so few; \code{\link{wcb}} is made for that case), and so does a
cluster that changes within a unit.}
\item{units}{For \code{loounit}: Which units to leave out (default every treated unit).

For \code{rgncov}: Number of units located in each region, same length and
order, non-negative whole numbers. Zero is the expected value for most
regions in most geographies.

For \code{yoy}: What the measure is. \code{"count"} gets the
exact rate-ratio interval. \code{"continuous"} gets the percent change
without one, since a single pair of totals carries no information about
its own variability. \code{"percent"} reports a percentage-POINT change
and withholds the percent change, which for a percentage is a different
quantity.}
\item{w}{Optional column name of non-negative weights, such as population or
matching weights, for weighted least squares with weighted within-means.
Rows of weight 0 take no part in the fit.}
\item{old}{The two manifests, as described above. A list with
neither \code{resource} nor \code{files} has no resources.}
\item{new}{The two manifests, as described above. A list with
neither \code{resource} nor \code{files} has no resources.}
\item{effort}{Positive numeric vector: the effort (sweep width times track
length) of each search in turn, in the square of the units of \code{E}.}
\item{m}{Number in (0, 1]: the M-Beta height. Default 1.}
\item{E}{Positive number: the total probable error of position. Default 1.}
\item{q}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{u}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{h}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{stab}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{set}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{mixh}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{nimg}{As in
\code{\link{gplume}}: emission rate (mass per second), wind
speed (m/s), effective stack height (m), Pasquill class \code{"A"} to
\code{"F"} (default \code{"D"}), \code{"rural"} (default) or
\code{"urban"}, mixing-lid height in metres (default \code{NULL}, no
lid), number of lid image pairs (default \code{3}).}
\item{z}{Numeric scalar, the receptor height in metres; default \code{0}
(ground level).}
\item{ncol}{Panels per row (default up to 3).}
\item{main}{For \code{plotevgrid}: Optional overall title.

For \code{plotlrnz}: As in \code{\link{plot-methods}}: the title,
colours overriding the palette, a \code{\link{blpal}} name,
and arguments passed to \code{plot()}.

For \code{plotmore}, \code{plotseries}: The title, colours overriding the palette, and a
\code{\link[=blpal]{blpal()}} name.

For \code{srchfig}: The title, or \code{NULL} for the book's caption.}
\item{col}{For \code{plotlrnz}: As in \code{\link{plot-methods}}: the title,
colours overriding the palette, a \code{\link{blpal}} name,
and arguments passed to \code{plot()}.

For \code{plotmore}, \code{plotseries}: The title, colours overriding the palette, and a
\code{\link[=blpal]{blpal()}} name.}
\item{pal}{For \code{plotlrnz}: As in \code{\link{plot-methods}}: the title,
colours overriding the palette, a \code{\link{blpal}} name,
and arguments passed to \code{plot()}.

For \code{plotmore}, \code{plotseries}: The title, colours overriding the palette, and a
\code{\link[=blpal]{blpal()}} name.

For \code{yoyren}: One of \code{\link[=yoypals]{yoypals()}}:
\code{"diverging"} (the default),
\code{"safe"} or \code{"mono"}.}
\item{obs}{For \code{plotlrnz}: Numeric vectors of observed and expected counts
per area, the same length; \code{observed} non-negative, \code{expected}
positive.

For \code{rgnmapcmp}: The region map as recomputed (a data frame).}
\item{expd}{Numeric vectors of observed and expected counts
per area, the same length; \code{observed} non-negative, \code{expected}
positive.}
\item{area}{Optional vector of labels, one per area, drawn for the areas
outside the limits. Default \code{NULL}.}
\item{lvls}{Numeric vector of control-limit levels strictly between 0
and 1, as in \code{\link{fnllim}}; default \code{c(0.95, 0.998)}
(about two and three standard deviations).}
\item{target}{Numeric scalar, the ratio the limits are drawn around;
default \code{1} (observed equals expected).}
\item{grp}{For \code{plotmore}: Optional vector of groups, one per value of \code{x}.

For \code{plotseries}: Vector of series names, one per value, or \code{NULL} for one series.}
\item{bw}{Bandwidth passed to
\code{\link[stats:density]{stats::density()}}: one positive number or
the name of a rule (\code{"nrd0"}, the default, \code{"nrd"}, \code{"ucv"}, \code{"bcv"},
\code{"sj"}, \code{"sj-ste"}, \code{"sj-dpi"}).}
\item{bins}{Whole number, default 30: hexagons across the range of \code{x}.}
\item{prd}{For \code{plotseries}: Vector of periods, one per value (numbers, dates or text in order
of appearance).

For \code{yoy}: For a data frame, the column holding the period (a year, a \code{Date},
a fiscal-year integer, an ordered factor, or text). An ordered factor is
compared by level order, one level being one period; an unordered factor has
no order, so every row is flagged \dQuote{no comparison period}. For a
numeric vector, the periods themselves.

Text periods are read when every label has the same one of these forms
(one step is the period itself, so a missing period is a gap):
\itemize{
\item a year: \code{"1987"}, \code{"2031"};
\item a fiscal year by the two years it spans, ordered by the first:
\code{"2019/20"}, \code{"2019/2020"}, \code{"2019-20"},
\code{"2019-2020"}, \code{"FY 2019-20"},
\code{"FY2019/20"}; or by one year: \code{"FY2020"}, \code{"FY 2020"} (the two kinds do
not mix);
\item a quarter: \code{"2021 Q3"}, \code{"2021Q3"}, \code{"2021-Q3"}, \code{"Q3 2021"};
\item a month: \code{"2021-03"}, \code{"2021/03"}, \code{"2021-3"}, or an English month
name or its three-letter abbreviation: \code{"Mar 2021"}, \code{"March 2021"},
\code{"2021 Mar"};
\item a date: \code{"2021-03-15"}, \code{"2021/03/15"}, compared as a \code{Date}.
}
The result keeps the labels as text, with any period the grid inserts
spelled like the first one. Labels of mixed forms, or of a form not listed
(\code{"Q3"}, \code{"FY19/20"}), or that read as two forms alike (\code{"2010-11"},
\code{"2011-12"}: fiscal years or months), have no order: yoy() warns once,
naming them, and no row has a comparison period. Give their order with
\code{prdord}.}
\item{bands}{Whole number, default 3: the bands of a horizon chart.}
\item{desc}{Logical, default \code{TRUE}: rank 1 is the largest value
(\code{FALSE}: the smallest).}
\item{qnts}{Numeric vector of quantile probabilities to include for
numeric columns, one column each named \code{q} and the percentage (\code{q25},
\code{q50}, ...); default the quartiles. \code{NULL} or an empty vector adds none.}
\item{reg}{For \code{rgncov}: Region identifiers, one per region, not repeated
(character, or anything that converts to it; surrounding spaces are
trimmed).

For \code{rgnmapalt}: Name of the assigned region column (a string).

For \code{rgnmapintg}: Name of the column holding the region identifier (a string).}
\item{pop}{Population of each region, same length and order,
non-negative numbers.}
\item{map}{Data frame, one row per unit.}
\item{known}{Character vector of units whose disagreement is expected and
documented -- the cases the second route is known to get wrong. Default
none.}
\item{pub}{The region map as published (a data frame).}
\item{cols}{Character vector of columns to compare. \code{NULL} (the
default) compares every column the two share apart from \code{unit}.}
\item{regs}{Optional character vector of every valid region
identifier, typically the identifier column of the population table.
When supplied, region codes outside it are counted as failures; when
\code{NULL} (the default) that check is not run and its row is absent.}
\item{bounds}{Path to a boundary file \code{sf} can read (a shapefile,
GeoPackage, GeoJSON, ...).}
\item{fields}{Character vector of columns of the boundary file to carry
onto the result.}
\item{crs}{Coordinate reference system the points are in, anything
\code{sf::st_crs()} accepts. Default \code{4326}, that is WGS84, which is
what published latitude and longitude columns almost always are.}
\item{capsule}{The directory of a capsule whose pinned data to start with;
\code{NULL} for none.}
\item{report}{A \code{bricklayer_report} from
\code{\link[=cpsrpt]{cpsrpt()}}.}
\item{path}{Optional character scalar, the file to write. Without one
(\code{NULL}, the default) the lines are returned.}
\item{fig}{A figure number as text, \code{"5-7"}, or the chapter as a
number with \code{num}; \code{NULL} (the default) lists the figures.}
\item{num}{The figure's number within chapter \code{fig}, or \code{NULL}.}
\item{seed}{Number: the seed of figure 6-6's random efforts. Default 1;
the session's random number stream is left as it was.}
\item{value}{For a data frame, the column holding the
measure, as a string or a bare name.}
\item{by}{Optional grouping columns, as a character vector.
The change is computed within each group.}
\item{lag}{How many periods back to compare with. \code{1} is
year-over-year on annual data; for a \code{ts} the default follows the
series' own frequency, so monthly data compares with the same month a
year earlier.}
\item{fun}{How several rows of one period (and group) are combined into
one value: \code{NULL} (the default) sums counts (\code{\link[=sum]{sum()}}) and
averages
continuous values and percentages (\code{\link[=mean]{mean()}}); pass a function of
a
numeric vector returning one number to choose.}
\item{minbase}{Optional: previous-period values below this get a
\dQuote{small base} note. Nothing is withheld either way: every non-zero base
gets its percent change and exact interval, which is as wide as the base is
small. Defaults to 0 (no note); only a zero base has no percent change.}
\item{conflvl}{Numeric scalar in (0, 1), the confidence level for the
count interval; default 0.95.}
\item{complete}{Logical scalar, default \code{TRUE}: insert the missing periods
in the observed range so that a gap is visible as a gap instead of closing
up.}
\item{prdord}{Optional character vector: the period labels in order, one
label being one step, for text (or factor) periods the reader above does not
know. Every label in the data must be in it; one it lists that the data lacks
is a gap. \code{NULL} (the default) reads the labels as above.}
\item{digits}{For \code{yoy}: Integer, default \code{1}. Decimal places shown in the
percent (or percentage-point) change column. The interval column is
always shown to whole percent.

For \code{yoydelim}: A whole number from 0 to 15, or \code{NULL}: decimal places for the
percent columns. For the CSV, TSV and JSON writers \code{NULL}, the default,
writes them unrounded, which is what a downstream calculation wants; give a
number for a figure meant to be read. For \code{yoymd()} the default is \code{1}.

For \code{yoyren}: Digits for the percent column, default 1.}
\item{palette}{Character, default \code{"diverging"}. One of
\code{\link{yoypals}()}; chooses the colours used when
\code{color = TRUE}. An unknown name is an error.}
\item{na}{Character scalar, how to write a missing value (CSV and TSV). The
default empty string is what most readers expect; \code{"NA"} keeps R's own
spelling.}
\item{meta}{Whether to lead with comment lines
recording the lag, units, confidence level, base gate and direction. On
by default, because a percent column means different things under
different settings and the file is the only place a later reader can
look. Markdown and JSON carry the same information structurally.}
\item{comment}{Character scalar, the comment prefix for the metadata
lines; default \code{"#"}.}
\item{pretty}{Logical scalar, default \code{TRUE}: indent the JSON.}
\item{align}{Logical scalar, default \code{TRUE}: pad the Markdown columns so
the source table is readable unrendered.}
\item{labels}{Either a function applied to the period
column, or a character vector the same length as the number of distinct
periods, or a named character vector mapping a period (as a string) to
its label.}
\item{sub}{Optional line under the heading.
Defaults to the table's own settings -- lag, units, interval and base
gate -- so the reader can see what the percentages mean.}
\item{bars}{Logical (HTML only): draw an in-cell bar proportional to
the change, scaled to the largest absolute change in the table
(default \code{TRUE}).}
\item{intv}{Logical: show the exact interval column for counts
(default \code{TRUE}).}
\item{notes}{Optional character vector of footnotes.}
\item{width}{PDF page size in inches (default 11 by 8.5,
landscape US letter).}
\item{height}{PDF page size in inches (default 11 by 8.5,
landscape US letter).}
\item{object}{An \code{rmbl_yoy} object returned by \code{\link{yoy}}.}
\item{format}{Character scalar, the output format: \code{"auto"} (the
default) reads it from the file extension; otherwise one of
\code{"html"}, \code{"pdf"}, \code{"csv"}, \code{"tsv"}, \code{"json"}
or \code{"markdown"} (case-insensitive).}
}
\description{Plots, reports, the command line and language models. Each function has its own section below; \code{?name} opens this page for any of them.}
\value{
\subsection{Agent-assisted reproducibility-bundle help (\code{agentbndl})}{
Character scalar: the answer, or a message saying what to set
up when no route answers.
}
\subsection{Run the rmoriebricklayer command line (\code{blcli})}{
The exit status (integer scalar), invisibly: 0 on success, 1 on
failure, 2 for a usage error, 130 when interrupted.
}
\subsection{Plot styling for the package's plot methods (\code{blpal})}{
\code{blpal()}: a character vector of hexadecimal
colours. \code{plotopt()}: a named list of the six
options in force (after the change), invisibly when setting.
}
\subsection{Live progress for long-running work (\code{blprog})}{
An object of class \code{rmbl_progress}, a list of functions:
\code{update(done, info = NULL)} sets the steps done (and the text after
the bar), \code{tick(by = 1, info = NULL)} adds \code{by} steps,
\code{wait(seconds)} sleeps while keeping the animation moving, and
\code{done(summary = NULL)} ends the bar, clears the line and, when the
bar was shown, writes \code{summary} on its own line. Each returns the
object invisibly.
}
\subsection{Raw outcome trends by adoption cohort (\code{cohtrnd})}{
A data frame of class \code{rmbl_cohort_trends}: \code{cohort},
\code{evtm}, \code{value}. \code{plot()} draws one line per cohort, with
the period before adoption marked.
}
\subsection{Fetch a capsule's source again and pin the new bytes (\code{cpsrfrsh})}{
The \code{\link{mnfdiff}} of the provenance before and after:
all \code{"unchanged"} when the source still matches its pin.
}
\subsection{Assess a capsule in one call (\code{cpsrpt})}{
A list of class \code{c("bricklayer_report", "list")}: \code{findings} (a
data frame of character columns \code{severity}, \code{check} (\code{"schema"},
\code{"rule"}, \code{"drift"}, \code{"missing"}, \code{"shape"}, \code{"outliers"},
\code{"benford"} or
\code{"signature"}), \code{subject} (the column, rule or row count concerned) and
\code{detail}), \code{verdict} (the worst severity: \code{"fatal"}, \code{"warn"},
\code{"note"}, or
\code{"clean"} when there is no finding), \code{profile} (from
\code{\link[=profcols]{profcols()}}),
\code{missingness} (from \code{\link[=misssmry]{misssmry()}}),
\code{drift} (the
\code{\link[=cpsdrft]{cpsdrft()}} result, or \code{NULL} without a
reference), \code{digest} (a list
with \code{data_digest}, and with \code{chunks} also \code{merkle_root},
\code{merkle_scheme}
(the \code{\link[=mrkroot]{mrkroot()}} hashing scheme, 2) and \code{n_chunks},
and, with a signature and key, the logical \code{signature_valid}), and \code{nrows} /
\code{n_cols}. \code{print()} shows the verdict and the findings; \code{summary()}
gives
the verdict and the count of each severity.
}
\subsection{Sign in for the curated tables at data.rmorie.com (\code{dlogin})}{
The key (character scalar), invisibly. A message names the file
it was stored in.
}
\subsection{Forget the MORIE data key (\code{dlogout})}{
Logical scalar, invisibly: \code{TRUE} when a key was removed,
\code{FALSE} when none was stored.
}
\subsection{Drift report as a Shiny app (\code{drftapp})}{
A Shiny app object (class \code{shiny.appobj}).
}
\subsection{Interactive drift report as one HTML file (\code{drfthtml})}{
The path \code{file}, invisibly.
}
\subsection{Explain an error from rmoriebricklayer (or a package built on it) (\code{explerr})}{
A data frame with at most \code{n} rows, best match first, and the
character columns \code{package}, \code{raised_by} (the function whose code
raises it), \code{exported} (the exported functions that reach it,
separated by commas), \code{kind} (\code{"error"} or \code{"warning"}),
\code{message} (the message as written, with \code{...} where a value goes)
and \code{match} (\code{"exact"} or the share of its words found, such as
\code{"80\% of its words"}). No rows when the message is not one of these
packages' own: it came from another package or from R, and
\code{\link{llmask}} can help with it. For a data frame of check rows: one
row per failed check, with the columns \code{check}, \code{detail},
\code{explanation} (what the failure means and what to do) and
\code{raised_by} (\code{pkg::fn} when the detail is a message of these
packages, else \code{NA}).
}
\subsection{Name a fiscal year by the years it spans (\code{fylbl})}{
A character vector of labels, the same length as
\code{endyear}, with \code{NA} where a value is not a year.
}
\subsection{Install the rmoriebricklayer command-line launcher (\code{instcli})}{
The path of the first launcher written (normally
\code{rmoriebricklayer}), invisibly; the others are written beside it.
}
\subsection{Ask a language model (\code{llmask})}{
A character scalar with the reply. A saved answer carries the
time it was saved as attribute \code{cached}.
}
\subsection{Show or save the language-model settings (\code{llmcfg})}{
A data frame with one row per setting (seven general settings
followed by a key and a model row for each provider) and five character
columns: \code{key} (the setting's name), \code{value} (its current
value, the default spelled out; a key only as \code{"set"} or
\code{"(not set)"}), \code{source} (\code{"environment"},
\code{"saved"} or \code{"default"}), \code{env} (the environment
variable that overrides it) and \code{help} (what it is for). Returned
visibly when called with no settings, invisibly after saving.
}
\subsection{A conversation with a language model (\code{llmchat})}{
A character scalar: the text of the model's reply.
}
\subsection{Models a language-model route offers (\code{llmmdls})}{
A character vector of model ids (possibly empty) with two
attributes: \code{"default"}, the model \code{llmask()} uses
when \code{model} is not given (character, or \code{NULL} when none is
chosen), and \code{"route"}, the readable name of the route asked
(such as \code{"OpenAI"} or \code{"local Ollama"}; \code{NULL} when no
route is set up).
}
\subsection{The language-model providers a key can be brought for (\code{llmprvd})}{
A data frame with one row per provider (16 rows) and eight
columns: \code{id} (character, the value \code{route =} takes),
\code{label} (character, readable name), \code{base} (character, the
API base address), \code{api} (character, the wire format:
\code{"openai"}, \code{"anthropic"} or \code{"gemini"}),
\code{key_env} (character, the environment variable for the key),
\code{alt_env} (character, an alternative variable, \code{""} when
none), \code{default_model} (character, the model used when none is
chosen, \code{NA} when the provider has no default) and \code{key_set}
(logical, whether a key is set here).
}
\subsection{The language-model route that would answer (\code{llmrte})}{
\code{NULL} when no route is set up (or the named one is not
available), else a list of four elements: \code{route} (character, the
id that \code{route =} takes: \code{"own"}, \code{"ollama"} or a
provider id), \code{name} (character, a readable label such as
\code{"own endpoint"}, \code{"local Ollama"} or \code{"Anthropic"}),
\code{model} (character, or \code{NULL} when no model is chosen) and
\code{base} (character, the base address requests go to, without a
trailing \code{/v1} for your own endpoint).
}
\subsection{Report the language-model routes available from this machine (\code{llmstat})}{
A data frame with one row per route and three character columns:
\code{route} (\code{"own endpoint"}, a provider label such as
\code{"Anthropic"}, \code{"other providers"} or \code{"local Ollama"}),
\code{status} (\code{"not set"} or \code{"configured"} for your own
endpoint; \code{"key set"} for a provider; \code{"no key"} for the
shared row; \code{"disabled"}, \code{"not running"},
\code{"no models"} or \code{"available"} for Ollama) and \code{detail}
(the address and model, or what to set up).
}
\subsection{Leave-one-out estimates of a difference in differences (\code{loounit})}{
A data frame of class \code{rmbl_loo}: \code{dropped},
\code{estimate}, \code{se}; attribute \code{full} (the estimate with every
unit). \code{plot()} draws the histogram with the full-sample estimate and
a summary.
}
\subsection{Compare the resources of two manifests (\code{mnfdiff})}{
A data frame of class \code{rmbl_mnfdiff}, one row per resource
in either manifest, with the columns \code{resource} (the file name),
\code{change} (\code{"added"}, \code{"removed"}, \code{"changed"} or
\code{"unchanged"}), \code{old_sha256}, \code{new_sha256},
\code{old_size} and \code{new_size} (\code{NA} where not recorded).
It prints the counts and one line per change. Errors: a manifest that
is not a list, a data frame or a file; a data frame without
\code{path} and \code{sha256}.
}
\subsection{The optimal search square for a circular normal datum (\code{optsqr})}{
A data frame with one row per search: \code{search}, \code{effort},
\code{releff} (effort over \code{E^2}), \code{cumeff} (cumulative relative
effort), \code{factor}, \code{side} (\code{2 f E}), \code{poc},
\code{coverage}, \code{pod}, \code{pos} and \code{cumpos} (the probability
that one of the searches so far succeeded).
}
\subsection{A Gaussian-plume concentration field on a grid (\code{plmfld})}{
A list of class \code{rmbl_field}: \code{field} (a numeric
matrix of concentrations, rows along \code{x}, columns along
\code{y}), \code{x}, \code{y}, \code{dx} and \code{dy} (median
spacings, \code{NA} for a single coordinate), \code{units}
(\code{"concentration"}) and \code{title} (character, used by the plot
method).
}
\subsection{Event studies for several outcomes in one grid (\code{plotevgrid})}{
Invisibly, a data frame of every panel's estimates with a column
\code{panel}.
}
\subsection{Lorenz and funnel plots (\code{plotlrnz})}{
The data drawn, invisibly. \code{plotlrnz()}: a data frame with
\code{population} and \code{value}, starting at the origin.
\code{plotfnl()}: a data frame with \code{area}, \code{observed},
\code{expected}, \code{ratio} and \code{outside} (logical, outside the
widest limits).
}
\subsection{Many-plot helpers: ridgelines, ECDFs, violins, hexagonal bins and concentration curves (\code{plotmore})}{
The data drawn, invisibly: for \code{plotrdg()} and \code{plotvln()} the
densities (\code{grp}, \code{x}, \code{y}), for \code{plotvln()} with the
per-group \code{median}, \code{q1} and \code{q3} as an attribute
\code{summary}, for \code{plotecdf()} the steps (\code{grp}, \code{x},
\code{y}), for \code{plothex()} the hexagon centres (\code{x}, \code{y})
and \code{count}, for \code{plotgain()} the curves (\code{grp},
\code{population}, \code{value}) with the Gini coefficients as an attribute
\code{gini}.
}
\subsection{Plots for many series over time (\code{plotseries})}{
The data drawn, invisibly: for \code{plotcal()} the days (\code{date},
\code{year}, \code{week}, \code{wday}, \code{y}), for the others the
series (\code{grp}, \code{prd}, \code{y}, and \code{rank} for
\code{plotbump()}, \code{band} for \code{plothrz()}).
}
\subsection{Column report for a data frame (\code{profcols})}{
A data frame of class \code{bricklayer_profile}, one row per
column: the type, the missing count and share, the number of distinct
values, and for a numeric column the counts of zero, negative and
infinite values, the classical and robust centre and spread, the range,
the skewness, the count outside the Tukey fences, and an
\code{\link[=inlhist]{inlhist()}} sketch of its distribution. A
categorical column reports its most common value in \code{top} instead.
The columns are \code{column}, \code{type} (the first class), \code{n},
\code{n_missing},
\code{pct_missing}, \code{n_distinct}, \code{nzero}, \code{nneg},
\code{ninf},
\code{mean}, \code{sd}, \code{median}, \code{mad}, \code{min}, \code{max},
\code{skewness}, \code{n_outliers},
\code{hist}, \code{top} and one per quantile; a statistic that does not apply to the
column's type is \code{NA}. The print method formats the numbers to four
significant digits and shows the histogram last.
}
\subsection{Population of the regions that contain a unit, and of those that do not (\code{rgncov})}{
A data frame of class \code{c("rmbl_region_coverage",
  "data.frame")}, one row per region, with the columns
\code{region} (character),
\code{population} (numeric),
\code{units} (numeric),
\code{hasunit} (logical)
and \code{popshr} (numeric, percent of the total population),
ordered by units then population, both descending. The totals are
carried on the \code{coverage} attribute, a list of \code{regions},
\code{withunit}, \code{witunit}, \code{units},
\code{totalpop}, \code{covpop},
\code{uncpop} and \code{covshr} (percent), and
printed by the print method (which shows the first \code{n = 10} regions).
}
\subsection{Check a region map against an independently derived assignment (\code{rgnmapalt})}{
A data frame of disagreements, sorted with unexplained ones first,
with the columns \code{unit}, \code{primary} (the map's region),
\code{second} (the route's region), all character, and \code{known}
(logical). \code{sum(!x$known)} is the number of unexplained
disagreements and zero is the passing value; \code{nrow(x)} should equal
the number of documented cases, because a documented case that stops
disagreeing means the second route changed underneath the documentation.
}
\subsection{Compare a recomputed region map against a published one (\code{rgnmapcmp})}{
A data frame, one row per compared column plus a first
\code{"rows"} row for units present on one side only, with columns
\code{column} (character), \code{cells} (integer: for \code{"rows"} the
number of distinct units on either side, otherwise the number of shared
units compared), \code{mismatched} (integer) and \code{first}
(character, the first disagreement written out as text, \code{""} when
none). Zero \code{mismatched} throughout is the passing result.
}
\subsection{Internal soundness of a region map (\code{rgnmapintg})}{
A data frame with one row per check: \code{check} (character),
\code{observed} (numeric count), \code{expected} (numeric, always 0) and
\code{pass} (logical). Every check is stated so that zero is the
passing value, which is what makes the frame safe to feed straight
into a manifest.
}
\subsection{Recompute a region map by point in polygon (\code{rgnmappts})}{
A data frame: \code{unit}, the requested \code{fields} (factors
converted to character; \code{NA} for a point in no polygon, the first
polygon's values for a point in several), and \code{nreg} (integer),
the number of polygons that contained the point. Any value of
\code{nreg} other than 1 is a failure -- zero means the point fell
outside the geography, more than one means the boundaries overlap --
so it is returned rather than silently resolved. \code{NULL} if \code{sf}
is not installed or \code{boundaries} does not exist.
}
\subsection{Open the analysis dashboard (\code{rmblapp})}{
A shiny app object; printing it (or
\code{\link[shiny:runApp]{shiny::runApp()}}) starts it.
}
\subsection{Demonstration datasets (\code{rmbldemo})}{
A data frame; for \code{"ledger"} the ledger as
\code{\link[=ldgrread]{ldgrread()}} returns it. With
\code{name = NULL}, a data frame of \code{name}, \code{rows} and \code{description}.
}
\subsection{Write a capsule report as Markdown (\code{rptmd})}{
A character vector of Markdown lines; returned visibly when \code{path}
is \code{NULL}, invisibly when written to a file.
}
\subsection{Path of a JSON Schema shipped with the package (\code{schemapath})}{
The path of the installed schema file, a character scalar.
Error: any other name.
}
\subsection{The figures of The Theory of Search (\code{srchfig})}{
Without \code{fig}, a data frame of \code{fig}, \code{caption},
\code{how} and \code{yours}: one line of R that draws the figure from your
own numbers (the function behind it, with example inputs to replace; for a
schematic, the computation it pictures). With one, the figure's data,
invisibly: a data frame (or a list of them) of what was drawn.
}
\subsection{Year-over-year (and period-over-period) change (\code{yoy})}{
An \code{rmbl_yoy} object (a data frame of class
\code{c("rmbl_yoy", "data.frame")}) with one row per period (and group): the
period column under its own name (\code{period} for a vector or a \code{ts}), the
grouping columns, then \code{value}, \code{previous}, \code{change}, \code{pctchg}
(or
\code{ppchg} for percentages), \code{flag} (character: \dQuote{no comparison period},
\dQuote{no data}, \dQuote{previous period is zero}, or a small-base note when
\code{minbase} is set; \code{NA} otherwise), \code{pctlo} and \code{pctup}
for counts,
and \code{verdict}. Attribute \code{"yoy"} records \code{value}, \code{period},
\code{by}, \code{lag},
\code{units}, \code{minbase}, \code{conflvl}, \code{direction} and the display
digits;
the writers (\code{\link[=yoywr]{yoywr()}}) and
\code{\link[=yoysmry]{yoysmry()}} read it.
}
\subsection{Write a change table as delimited text, JSON or Markdown (\code{yoydelim})}{
\code{file}, invisibly; or, when \code{file} is \code{NULL}, the text as a
character scalar.
}
\subsection{Label a period without changing it (\code{yoylbl})}{
The object, still of class \code{rmbl_yoy}, with an added character
column \code{perlbl}. Its \code{yoy} attribute gets \code{perlbl} set to
\code{TRUE}, as \code{attr(x, "yoy")$perlbl}, so the labels are used by
\code{print()}, \code{\link[=yoyhtml]{yoyhtml()}}, \code{\link[=yoypdf]{yoypdf()}} and
the delimited writers.
}
\subsection{Colour palettes for change tables (\code{yoypals})}{
A character vector of palette names, currently
\code{c("diverging", "safe", "mono")}.
}
\subsection{Render a change table to HTML or PDF (\code{yoyren})}{
The path \code{file}, invisibly.
}
\subsection{Summarise a change table (\code{yoysmry})}{
A data frame with one row per series or group and columns: the
\code{by} columns (character), when \code{yoy()} had \code{by};
\code{from}, \code{to} (the first and last observed period, same type as
the period column); \code{first}, \code{last} (numeric values at those
periods); \code{totalpct}, \code{cagrpct} (numeric, percent);
\code{periods} (integer, observed periods); \code{up}, \code{down},
\code{flat} (integer counts of period-to-period changes).
}
\subsection{Write a change table to a file, in whatever format the name implies (\code{yoywr})}{
\code{file}, invisibly (as returned by the chosen writer).
}
}
\section{Agent-assisted reproducibility-bundle help (\code{agentbndl})}{

Asks a language model to plan a brick-proof, reproducible data bundle,
through \code{\link{llmask}}: your own key, your own
endpoint or a local Ollama server, with the packages' help at hand (the
model reads the help pages of the functions it proposes before it
answers). Use it to get a first draft of the steps and R code for
packaging an analysis: finding the portal's download URL, fetching with a
Wayback fallback, recording hashes and a manifest, writing a synthetic
stand-in, then packaging, signing and verifying the bundle.


The request is sent with a fixed system prompt that describes that task
and asks for a short plan and R code. The route is chosen as in
\code{\link[=llmask]{llmask()}}; when no route is set up, the
function returns a
message saying what to set up (a provider key, a local Ollama or your own
endpoint) instead of an error, and makes no network request. When a
route is set up, the request and the prompt are sent to that provider or
server. The answer is model output: check the code it proposes against
the help pages before running it.

Errors: \code{req} not a single non-empty string; \code{route} not one
of the names listed; \code{route = "hosted"} (the hosted tier is retired);
and errors raised by \code{\link[=llmask]{llmask()}}.

}
\section{Run the rmoriebricklayer command line (\code{blcli})}{

Dispatches the verbs of the \code{rmoriebricklayer} launcher: \describe{
\item{\code{login [--token] [--email ADDRESS [--code CODE]]
[--no-browser]}}{sign in for the curated tables at data.rmorie.com (a free
MORIE data key, issued at \code{www.rmorie.com/access/}): a key you paste
with \code{--token} (read from the terminal or a pipe when KEY is omitted), a
code sent to \code{--email}, or the GitHub device flow}
\item{\code{logout}}{forget the data key} \item{\code{doctor}}{report the
language-model routes available here (own endpoint, each provider with your
key, local Ollama), in the order \code{ask} tries them} \item{\code{models
[--route ROUTE]}}{list the models your provider (or server) offers, the one
in use marked} \item{\code{data list}}{the curated tables at data.rmorie.com}
\item{\code{data pull db/table}}{download one table as CSV} \item{\code{app
[PATH] [--port N] [--no-browser]}}{open the analysis dashboard
(\code{\link{rmblapp}}) on this machine, with PATH, a CSV file or a capsule
directory, loaded; needs the shiny package} \item{\code{config [setup | set
KEY VALUE | unset KEY | get KEY | help]}}{show or change the settings of the
language model (\code{\link{llmcfg}}): the route \code{ask} uses and the
address, key and model of each route; \code{setup} walks through them}
\item{\code{ask [--route ROUTE] [--model NAME] [--fresh] PROMPT...}}{send a
prompt to the model (or the named one, on the named route) and print the
reply; the same question again is answered from this machine (\code{--fresh}
asks anew). \code{aye} and \code{tellme} are the same verb, and a quoted
question with no verb (\code{rmbl "how do I weight a survey?"}) is asked too}
\item{\code{explain-error MESSAGE...}}{where an error of these packages comes
from (\code{\link{explerr}}), without a model or the network}
\item{\code{bundle REQUEST...}}{\code{\link{agentbndl}} from the shell}
\item{\code{pack DIR [--dest D] [--data FILE] [--version V]
[--overwrite] [--secrets]}}{a reproducibility bundle of the project in
DIR, or of a shipped example such as \code{otis-mrp}, with
\code{\link{mkbndl}}: one zip a reviewer unzips and double-clicks
(default \code{--dest}: the working directory; \code{--secrets} packs
files that look like credentials, left out otherwise);
\code{pack --new DIR [--title T] [--author A]
[--contact C]} writes a starter project with \code{\link{mkbndlproj}};
\code{pack --check ZIP [--data FILE] [--synthetic] [--keep]
[--container[=podman|docker]]} runs a
built bundle as a recipient would and checks its results with
\code{\link{mkbndlchk}} (exit status 1 when it fails). It RUNS THE
BUNDLE'S CODE on this machine, with a minimal environment and a
temporary HOME: check only bundles you trust. \code{--container} runs it
in a podman or docker container; otherwise a PID namespace (Linux), a
job object (Windows) or only a process group (macOS) contains it}
\item{\code{wayback FILE [--out FILE.jsonl] [--jobs N] [--within 30d] [--max
N]}}{save every URL listed in FILE (one per line; blank lines and \code{#}
comments skipped) in the Internet Archive's Wayback Machine with
\code{\link{wbsave}}, results in \code{--out} (default
\code{FILE.wayback.jsonl}), so a stopped run carries on; \code{wayback
--retry FILE.jsonl [--include-gone]} retries the failures of an earlier run
(\code{\link{wbrtry}})} \item{\code{archive save URL... --reason TEXT
[--dir D] [--private] [--also wayback]}}{save from this connection to
archive.rmorie.com with \code{\link{arccap}}, keeping the files, their
manifest and WARC copies in D (default \file{captures}); \code{archive
push DIR [--reason TEXT] [--private] [--also wayback]} sends a capture
kept in DIR on later, the same bytes, with \code{\link{arcpush}} (run it
again to retry what failed); \code{archive find URL} and \code{archive
get ID|URL -o FILE} list the captures of a URL and fetch one's exact bytes
(\code{\link{arcfind}}, \code{\link{arcget}})}
\item{\code{verify PATH [--json] [--fail-on LEVEL]
[--public-key HEX]}}{check every capsule under PATH as the rmbl GitHub Action
does (\code{\link{cpschk}}): each file against its JSON Schema
(\code{\link{schemapath}}), \code{\link{vrfcps}} and
\code{\link{cpsbndlvrf}}. The secret of an HMAC bundle is read from
\code{RMBL_KEY}, which is then removed from the environment. Prints the
Markdown report, or JSON with \code{--json}; exits 1 when a failed row is at
or above \code{--fail-on} (\code{error}, the default, \code{drift} or
\code{warn}). \code{--base MANIFEST|DIR} compares each manifest with its base
copy, \code{--manifests GLOB} checks only the capsule files matching GLOB,
\code{--snapshot} looks up each source's latest Wayback snapshot and
\code{--no-footprint} leaves the footprint (\code{\link{co2fp}}) out of the
report. \code{--seen-log FILE} adds the signatures an XMSS seen-log lists to
those under PATH: an XMSS index one key signed twice fails its
\code{xmss_index} row} \item{\code{drift PATH [--json] [--fail-on LEVEL]
[--html FILE] [--app]}}{ verify, then fetch each source again and compare it
column by column (\code{\link{cpsdrft}}, Benford): a column past
\code{--psi-warn X} (0.1) is a warning, a flagged one past \code{--psi-fail
X} (0.25) drift. \code{--allow-file} accepts \code{file://} sources,
\code{--cache DIR} keeps each source and reads it when a fetch fails; the
options of verify apply. \code{--html FILE} writes the interactive report
(\code{\link{drfthtml}}) and \code{--app} opens it as a Shiny app
(\code{\link{drftapp}})} \item{\code{refresh PATH}}{pin each source's new
bytes (\code{\link{cpsrfrsh}}) and print what changed
(\code{\link{mnfdiff}})} \item{\code{report PATH [--format md|json]}}{the
verify report, exit 0; the options of verify apply} \item{\code{sign PATH
[--scheme S] [--key-file F] [--overwrite]}}{pin each provenance on its first
run and sign each capsule into \code{capsule_bundle.json}
(\code{\link{cpsseal}}), then verify as \code{verify} does. The key is
\code{RMBL_KEY}, removed from the environment at once, or the contents of
\code{--key-file}, and is never printed: the shared secret for \code{hmac}
(the default), else the JSON of a \code{\link{fipskg}} key, or its secret hex
with \code{--public-key}, or the JSON of a \code{\link{pqckg}} key for
\code{xmss-sha256} (see the section XMSS keys). An existing bundle is refused
without \code{--overwrite}} \item{\code{functions [PATTERN]}}{list the
exported functions with their one-line titles, optionally filtered by a
regular expression} \item{\code{describe NAME}}{title, usage, arguments and
description of one function, from its help page} \item{\code{examples
NAME}}{print the examples of one function} \item{\code{version}}{print the
package version (also \code{--version}, \code{-v})} \item{\code{help
[VERB]}}{this list, or one verb's usage (also \code{--help}, \code{-h};
\code{VERB --help} shows a verb's usage without running it)} } The launcher
installed by \code{\link{instcli}} calls this function with the shell's
arguments and exits with its status. Calling it from R is the same as typing
the command, which is how the examples below work.


An option a verb does not take is refused with exit status 2 rather than
ignored or sent as part of a prompt; everything after a bare \code{--} is
positional (for a prompt that itself starts with \code{--}) and only
\code{ask}, \code{bundle} and \code{explain-error} accept it. A first
argument that is plainly a question (two or more words, or ending in
\code{?}, with no path, line break or key-shaped word) and no verb is
asked as \code{ask} would ask it.

Errors are not raised: every error is written to \code{out} as
\code{"PROG: message"} and turned into the exit status. The status is 0
on success, 1 when the verb failed (an error, nothing found, no route), 2
for a usage error (an unknown verb or option, a missing value) and 130 when
interrupted (Ctrl-C). The command name in messages is the environment
variable \code{RMBL_PROG}, else \code{rmoriebricklayer}.

Side effects: during the call \code{options(morie.progress = TRUE)} is set,
so downloads draw a progress bar; when \code{RMBL_PROG} is set (the
launcher sets it) and \code{options(rmoriebricklayer.dcache)} is not,
the data.rmorie.com manifest and tables are kept in
\code{tools::R_user_dir("rmoriebricklayer", "cache")} rather than a fresh
temporary folder. The verbs \code{login}, \code{logout} and
\code{config} write the shared credentials and settings files;
\code{ask}, \code{models}, \code{data}, \code{bundle} and
\code{wayback} use the network, and \code{drift} and \code{refresh}
fetch each capsule's source (\code{refresh} writes the capsule),
\code{sign} writes each capsule's provenance and bundle;
\code{verify} and \code{report} only read the capsule files;
\code{functions}, \code{describe},
\code{examples}, \code{explain-error}, \code{version} and \code{help}
only read the installed help.

\subsection{XMSS keys}{
 An XMSS key (\code{\link{pqckg}}) signs each of its
\code{2^height} indices once; two signatures at one index let anyone forge a
third. Its private key never changes, but its state, the indices already
used, changes with every signature, and a copy of an old state signs used
indices again (RFC 10033, \dQuote{Hash-Based Signatures: State and Backup
Management}, sections 2 and 4). \code{rmbl sign --scheme xmss-sha256
--key-file KEY} therefore treats the key file as the state: \itemize{ \item
Before anything is signed it rewrites KEY, under a lock, through a temporary
file in the same directory that is flushed to the disk and renamed over it,
with \code{next_index} advanced and the state in a \code{used} field:
\code{highest} (the highest index used), \code{generation} (one more at every
write), \code{writer} (a digest of the host name and boot id), the last
\code{reserved} block and, once split, \code{sectors}. A crash after that
write loses the reserved indices and never reuses one. A KEY that cannot be
rewritten (not writable, a read-only file system) is refused. \item
\code{--state-file FILE} keeps the state in FILE (an absolute path to a
writable regular file, or a new file in a writable directory) and only reads
KEY; a key in \code{RMBL_KEY} needs it. The command line never uses the
configuration directory that \code{\link{cpssign}} uses in an R session; it
reads and updates the record in \code{RMBL_XMSS_INDEX_FILE} only when that is
set. \item \code{--sectors K --sector NAME} (K a power of two, at most half
the indices) splits the indices into K disjoint ranges and signs only in one
of them, which keeps its own highest index; the range of NAME is SHA-256 of
NAME and the key fingerprint, modulo K. Two names land in one sector by
chance, so for real use give each runner its own \code{--sector-index I}. A
sector that is used up is refused. Once split, sign only through \code{rmbl
sign}. \item \code{--reserve N} marks the next N indices used in one write
(at least one per capsule signed); the capsules of the run are signed from
that block, and the indices it does not use are lost, as RFC 10033, section
5.9 allows. \item A stale copy is refused: when a bundle under PATH, or the
\code{--seen-log FILE} that every \code{rmbl sign} appends its signatures to,
shows this key signed an index above what the state says, nothing is signed.
A note says when another host wrote the state last. \item When N or fewer
indices are left in the range (\code{--warn-left N}, by default a tenth of
the range) a warning is printed in the report and on standard error (RFC
10033, section 3.4). } A CI secret is a fixed copy of the key that every job
starts from, so each job would sign the same indices again: in CI sign with
ML-DSA (\code{\link{fipskg}}), or keep the XMSS state in a file that persists
between jobs and give each concurrent runner its own sector. \code{rmbl
verify} shows each XMSS signature's index and key fingerprint, and
\code{\link{xmssidxseen}} lists indices signed twice. NIST SP 800-208
approves XMSS only when the key is made and used inside a hardware
cryptographic module that never exports it; a key file is software, so this
follows the software guidance of RFC 10033 and is not a validated SP 800-208
deployment.
}
}
\section{Plot styling for the package's plot methods (\code{blpal})}{

Every \code{plot()} method in the package draws with base graphics and
the same small set of style choices, which these functions expose.
\code{blpal()} returns colour-blind-safe palettes:
\code{"okabe"} (the Okabe-Ito categorical set), \code{"diverging"}
(blue, grey, orange), \code{"sequential"} (light to dark blue) and
\code{"grey"}. \code{plotopt()} sets the defaults every
method uses, for the session: \code{palette}, \code{grid}, \code{cex},
\code{las} and \code{bg}. Each method also takes \code{main},
\code{col} (which overrides the palette), \code{palette} and \code{...}
passed to the underlying base-graphics call, so a single plot can be
changed without changing the session. Use \code{blpal()} also
to colour your own plots so they match the package's.


The palettes: \code{"okabe"} is the eight-colour set of Okabe and
Ito (2008), distinguishable under the common forms of colour-vision
deficiency. \code{"diverging"} has three anchors (blue \code{#2166AC}, grey
\code{#8C8C8C}, orange-red \code{#D6604D}) and is used for changes (decrease,
no change, increase). The palette \code{"sequential"} has five blues from
light to dark; \code{"grey"} five greys from dark to light. With \code{n}
given, \code{"okabe"} and \code{"grey"} repeat their colours
(\code{rep_len()}) and \code{"diverging"} and \code{"sequential"} are
interpolated with \code{grDevices::colorRampPalette()}.

The session options are stored in \code{options(rmoriebricklayer.plot)};
the defaults are \code{palette = "okabe"}, \code{grid = TRUE},
\code{cex = 1}, \code{las = 1}, \code{bg = "white"} and
\code{panel = "#EEF1F6"}. Setting some options keeps the others.

Text is drawn at the session \code{cex}. Titles, axis titles, row labels and
keys are made smaller to fit a small device, but never below 0.6 of that
size, so that they stay readable; for larger text set, for example,
\code{plotopt(cex = 1.2)}, and for a table with many rows use a taller
device.

Errors: an unknown palette \code{name}; \code{n} not a positive whole
number; an option name other than the six above, or an unnamed value; an
unknown \code{palette} option.

}
\section{Live progress for long-running work (\code{blprog})}{

Makes a progress bar for a loop or a long computation: the animated bar of
\code{\link{bldl}()}, redrawn in place at no more than 12
frames a second, when the console can redraw a line -- a terminal, or the
RStudio, Positron, R.app or RKWard console (never a knitr or Jupyter
notebook; the options \code{rmoriebricklayer.dynamic} or
\code{cli.dynamic}, or the environment variable \code{R_CLI_DYNAMIC},
override the choice). In the RStudio or Positron console the bar is drawn
on stdout, elsewhere on stderr. Otherwise a milestone line goes to stderr
at each tenth, and nothing is shown when quiet. With \code{total = 0} the
work has no count, and the bar is a spinner with the time so far and the
current stage (the \code{info} text), with a line at each new stage when
the console cannot redraw.


Progress is shown when a person is watching: an interactive session, or a
command line that sets \code{options(morie.progress = TRUE)}.
\code{options(morie.quiet = TRUE)} or \code{quiet = TRUE} silences it.

Nothing is drawn until the work has run for \code{delay} seconds, so a
fast call never flashes a bar. A bar made inside a function while a bar
made by a calling function is still running stays silent, so nested work
shows one bar, for the outer loop.

Updates are cheap: when quiet an update only stores the value, and when
drawing, frames are throttled, so \code{$tick()} can be called on every
iteration of a loop. Call \code{$done()} through
\code{on.exit(p$done(), add = TRUE)} right
after making the bar, so the line is cleared and the bar is released even
when the work fails or is interrupted:
\preformatted{
p <- blprog("bootstrap", B)
on.exit(p$done(), add = TRUE)
for (b in seq_len(B)) {
  ...
  p$tick(info = sprintf("resample %d/%d", b, B))
}
}
\code{$done()} may be called more than once; only the first call acts.

}
\section{Raw outcome trends by adoption cohort (\code{cohtrnd})}{

The mean outcome of each adoption cohort by time since adoption, smoothed by
a moving average and scaled to 1 in the period before adoption: a check,
before any model, that the cohorts moved together before the policy.

}
\section{Fetch a capsule's source again and pin the new bytes (\code{cpsrfrsh})}{

Downloads the source named in a capsule's \code{data_provenance.json}
(\code{resource$direct_url}, else \code{source$url}; an \code{https://}
URL, or a local file inside the capsule), and when its bytes differ from
the pin writes them as the
capsule's data file and pins them in the provenance, in the form the
\code{analysis.R} of \code{\link{usecpstmpl}} writes on its first run:
\code{source$sha256}, and \code{resource$filename}, \code{sha256},
\code{size_bytes} and \code{retrieved_utc} (\code{row_count_data_rows}
too when it was recorded).
\code{\link{vrfcps}} then verifies the capsule against the new data.
From the shell: \code{rmbl refresh PATH}.


Nothing is written when the bytes are unchanged. A download goes through
\code{\link{fdl}}, with the provenance's \code{wayback$csv_snapshot}
as its fallback (no other Wayback copy is looked up). A source is fetched
over \code{https://} only. A local path (relative to the capsule) or a
\code{file://} URL is read only when it resolves, symbolic links followed,
to a file inside the capsule, inside the \code{allowfile} folder, or in the
package's \code{extdata}; never under \code{/proc}, \code{/sys} or
\code{/dev}. A gzip source may inflate to at most the option
\code{rmoriebricklayer.maxcsvbytes} (1 GiB by default) when it is read.
A capsule bundle is not signed again: that needs your
key (\code{\link{cpsbndl}}). Side effects: writes the data file and
\code{data_provenance.json} in \code{dir}. Errors: \code{dir} is not a
directory or holds no provenance; the provenance names no source, or a
\code{TODO} one, or a \code{file://} one without \code{allowfile}; a
URL that is not \code{https://}; a local source outside those folders;
the source cannot be fetched, or inflates past the limit;
\code{resource$filename} is not a plain relative path inside \code{dir};
\code{data_provenance.json} is a link out of \code{dir}; the new data
fail the schema the provenance pins (\code{\link{valsch}}).

}
\section{Assess a capsule in one call (\code{cpsrpt})}{

Runs the checks this package provides over one data frame and collects
the findings into a single report: the structural schema check, the
distributional comparison against a reference, the missingness picture,
the multivariate outliers, a Benford screen on the wide numeric columns,
and the integrity digests. Use it as the first look at a capsule or a fresh
extract, before any analysis, and keep the Markdown version
(\code{\link[=rptmd]{rptmd()}}) with the outputs.


Nothing here is new arithmetic. The value is that the answers arrive
together and ordered by severity, because the failure mode this is built
against is a person running one check, seeing it pass, and concluding
the data is fine.

\subsection{What \code{severity} means}{
\itemize{
\item \code{fatal} -- nothing downstream can run as it stands: a schema check or a
rule of severity \code{"fatal"} failed (for example a required column is
missing), or a column of the reference is absent from the data.
\item \code{warn} -- something moved or is badly incomplete: a schema check, or a
rule of severity \code{"warning"}, failed (a value left its pinned range, a type
changed), a column drifted from the reference, a column is entirely
missing or more than half missing, or a signature did not verify (or came
with no key).
\item \code{note} -- worth a look but not necessarily wrong: a column not in the
reference, a column whose drift could not be tested, a contiguous run of
missing values (one outage rather than scattered gaps), a constant column,
values beyond the Tukey fences, multivariate outliers or collinear columns,
a Benford departure.
}
}
\subsection{How each check runs}{
The drift comparison is \code{\link[=cpsdrft]{cpsdrft()}} at level
\code{alpha}. The missing
run is the longest run from \code{\link[=missruns]{missruns()}} of at least
\code{max(2, nrow(data) \%/\% 20)} rows. The outlier scan is
\code{\link[=mahaoutl]{mahaoutl()}} on the numeric columns
that are not constant or
entirely missing, run only when there are at least two of them, at most
\code{maxrowsoutl} rows and more complete rows than columns. The Benford
screen (\code{\link[=benfordtst]{benfordtst()}}) runs on a numeric column with at
least 200
non-zero finite values whose largest absolute value is more than 1,000
times its smallest, and reports p below 0.01. The digest is
\code{\link[=dgstobj]{dgstobj()}} of the data; a signature is checked with
\code{\link[=cpsvrf]{cpsvrf()}} against that digest.

Findings are sorted by severity, then check, then subject. Nothing is
written and nothing is fetched. Errors when \code{data} is not a data frame or
has no columns, and when \code{schema} or \code{rules} are malformed (from
\code{\link[=valsch]{valsch()}} and
\code{\link[=valrules]{valrules()}}).

A clean report is not proof the data is correct. It means these
particular checks found nothing, and every one of them has a stated
blind spot -- see \code{\link[=cpsdrft]{cpsdrft()}} on
statistical power and \code{\link[=benfordtst]{benfordtst()}} on why
a departure is a screen rather than a verdict.
}
}
\section{Sign in for the curated tables at data.rmorie.com (\code{dlogin})}{

Stores your personal MORIE data key in
\code{$XDG_CONFIG_HOME/morie/credentials.json} (owner-only; the file
the \code{morie}, \code{rmorie} and \code{rmoriedata} packages read too,
so one sign-in serves all of them). The key opens the curated tables
(\code{\link{dload}}); it is not used for language models,
which run on your own key or a local model (\code{\link{llmask}}).
Keys are personal: the GitHub or emailed-code sign-in issues one, or ask at
\code{www.rmorie.com/access/}.
The sign-in addresses come from \code{\link{svcs}}. Three ways in:
\itemize{
\item \code{token}: a key you already have, from the website or an
email. It is checked with the service first and stored only when
it is accepted; a refused key, or no answer, stores nothing.
\item \code{email}: a one-time code is sent to the address (valid
ten minutes, single use); you type it, or pass \code{code}.
\item neither: the GitHub device flow; a code is shown to enter at
github.com, and the key arrives once you approve.
}
Nothing is written except by this explicit call.


The credentials file is edited as text: only the three members this
package owns (\code{hosted_key}, \code{hosted_user} and
\code{hosted_base_url}, the address the key was issued for) are set, and
every other byte stays, so entries written by the other packages survive.
The file is written through a fresh temporary name, created owner-only
(mode 0600, folder 0700 on Unix) before the key is written. A file that
is not a JSON object, is not valid JSON or names a member twice is
refused rather than overwritten. \code{XDG_CONFIG_HOME} moves the file;
when unset it is \code{~/.config/morie/credentials.json}.

The sign-in service address is the signed services document's
\code{data.auth_url} (see \code{\link{svcs}}), or the environment variable
\code{MORIE_HOSTED_AUTH_URL} when set (it must be a public \code{https}
address). The device flow polls every \code{interval} seconds the
service names (5 by default), prints a progress line about every 30
seconds, and stops with an error after \code{pollmaxsec}.

Errors: an empty \code{token}; a \code{token} the data service does not
accept, or no answer from it (nothing is stored); an \code{email} that is
empty or not of the form \code{name@domain.tld}; no code typed at the
prompt; a refused code; a sign-in service that answers with an error or
returns no key; a credentials file that cannot be edited safely.

}
\section{Forget the MORIE data key (\code{dlogout})}{

Removes the MORIE data key that \code{\link{dlogin}}
stored, so this machine can no longer load the curated tables at
data.rmorie.com until you sign in again. Use it on a shared machine, or
to switch to another key. Nothing is contacted.


The shared credentials file is \code{credentials.json} in the folder
\code{$XDG_CONFIG_HOME/morie}, else in \code{~/.config/morie}. It is edited
as text. Three members are removed: \code{hosted_key}, \code{hosted_user} and
\code{hosted_base_url}. Every other entry (written by \code{morie},
\code{rmorie} or \code{rmoriedata}) is kept byte for byte. When nothing else
is left the file is deleted. A key set in the environment variable
\code{MORIE_HOSTED_KEY} is not touched. A message says whether a key was
removed.

Errors when the file is not a JSON object (or not valid JSON, or names a
member twice), and when the key cannot be removed without damaging the
file; in both cases the file is left as it was.

}
\section{Drift report as a Shiny app (\code{drftapp})}{

The report of \code{\link[=drfthtml]{drfthtml()}} as a Shiny app, for working through
a drift
result rather than handing it on. \code{drftapp(x)} opens on a
\code{\link[=cpsdrft]{cpsdrft()}}
result; \code{drftapp()} with no result opens on two file inputs, the
reference and the current CSV, and compares them when both are
uploaded. It needs the shiny package, which is suggested, not required.


The app has the column table (verdicts under the bands), the PSI per
column, the fingerprint, and for the chosen column its summary, the
distributions, the ECDFs, the quantile shift, the first digits and a sentence
on the verdict, as \code{\link[=drfthtml]{drfthtml()}} has, and a history heatmap with
\code{hist}; the warn and fail bands and alpha are sliders, with a reset to the
object's bands. Beyond the page it has: \dQuote{what would clear this}, the
PSI of the column with its \code{k} largest bins left out and the rest
renormalized; with \code{ref} and \code{cur} (or uploaded CSV files), a rerun of
\code{\link[=cpsdrft]{cpsdrft()}} on chosen columns with another number of bins; with
\code{hist}, the PSI of each column over the runs in that directory
(\verb{rmbl drift --json} outputs or JSON exports of the page); a manifest tab
when \code{x$manifest} holds an \code{\link[=mnfdiff]{mnfdiff()}}; and downloads of the
HTML report, Markdown and JSON. Uploaded files are read with the package's
own CSV reader (the one \code{\link[=dload]{dload()}} uses).
\verb{rmbl drift PATH --app} opens the app on the first capsule whose source
moved.

The function builds the app and returns it; printing it, or
\code{\link[shiny:runApp]{shiny::runApp()}}, runs it.

Errors: \code{x} neither \code{NULL} nor from \code{\link[=cpsdrft]{cpsdrft()}};
shiny not installed;
only one of \code{ref} and \code{cur}, or either not a data frame; \code{hist} not a
directory or holding no drift JSON; \code{warn} above \code{fail}.

}
\section{Interactive drift report as one HTML file (\code{drfthtml})}{

Writes a \code{\link[=cpsdrft]{cpsdrft()}} result to a single web page for a reader
who will
not run R. Everything is inside the file: the stylesheet, a short script,
and the binned summaries of each column as JSON. Nothing is fetched, so
the page opens from disk (\verb{file://}) and looks the same later.


The page shows:
\itemize{
\item a header with the overall verdict, the count of columns per
verdict, the row counts, when the page was written, the package
version, and the capsule's provenance (name, source, pinned
SHA-256, data date) when \code{x$provenance} holds one;
\item a hero canvas: the chosen column's reference and current
distributions as ribbons, the band between them shaded, drawn in
on load and on each new column (still when the reader asks for
reduced motion);
\item Columns: the table (verdict, column, type, test: KS for numbers
and dates, chi-square homogeneity for categories; statistic,
p-value, PSI, the change in the missing share and both sample
sizes) with a search box, filters by verdict and type and sorting on
any header; and the column detail for the column chosen (click a
row, or the up and down keys; \code{/} goes to the search box): both
samples' summary statistics (dates in ISO 8601) or the ten largest
categories, a sentence on the verdict, and charts each with a line
on how to read it: the density overlay with the area between shaded
(numeric) or the category flow from reference to current shares
(categorical), the ECDF overlay with the largest gap marked, the
quantile shift against the identity line (numeric), the PSI by bin,
drawn up where the current sample has more mass, and the first
digits against Benford's law with its 95\% band (numeric);
\item Overview: the drift fingerprint, one spoke per column at its PSI
with the warn and fail bands as rings, and a tile per column with its
two distributions in small;
\item Manifest, when \code{x$manifest} holds an
\code{\link[=mnfdiff]{mnfdiff()}}: the resources before and after as a tree, and the
table of digests and sizes;
\item History: pick earlier \verb{rmbl drift --json} outputs or this page's
JSON exports, and the PSI of each column over the runs is drawn as a
heatmap in the bands, the first crossing of the fail band outlined,
and as a line per column;
\item Capsule chain: provenance, pinned bytes, manifest and
attestation, each verified, moved, failed or not checked (from the
capsule's checks when \verb{rmbl drift} made the report);
\item sliders for the warn and fail PSI bands and for alpha, which
score every verdict and chart again as they move, and a button back
to the object's bands;
\item exports: Markdown, JSON, each chart as SVG, and the column table
copied as a GitHub comment.
}
Every chart is drawn at its card's width, two to a row on a wide screen
and one on a narrow one, in the colours of the theme in use.
The verdicts: \code{fail} when the test rejects at alpha, or the PSI is above
the fail band with both samples at least \code{psiminn}; \code{warn} when the PSI
is above the warn band; \code{untested} when no test applies; \code{ok} otherwise.
At the object's bands \code{fail} is \code{\link[=cpsdrft]{cpsdrft()}}'s
\code{drifted}. Each verdict is
written in words beside its symbol, the tables have header cells, and
each chart has a text label. A light or dark theme follows the system
and a button switches it. Every value is escaped. The page holds no rows
of the data, only the summaries in \code{x$summ}, so its size grows with the
number of columns and categories, not of rows.

Errors: \code{x} not from \code{\link[=cpsdrft]{cpsdrft()}}; \code{file} not one
path; \code{title} not one
string; \code{warn} above \code{fail}.

}
\section{Explain an error from rmoriebricklayer (or a package built on it) (\code{explerr})}{

Finds where an error or warning message comes from, without a language
model and without the network: every message the packages raise is written
in their code, so the code is searched. A message built from parts (a file
name, a number) matches with those parts as wildcards; one that was cut
short or retyped matches by its words. For each match you get the function
that raises it, the exported functions it is reached from (their help pages
say what they expect), and the message as written, which usually says what
to do.


The first call in a session walks the body of every function in the
searched packages and collects each \code{stop()}, \code{warning()} and
usage error whose literal text has at least 12 letters. A message built
with \code{sprintf()}, \code{gettextf()}, \code{paste()} or \code{paste0()}
becomes a template with its computed parts as wildcards. Each raising
function is traced up to four calls to the exported functions that reach
it (at most six are listed). The table is kept in memory for the session
(about a second to build for this package), and, while a person is
watching an interactive session and the answer cache is on, also saved as
an \code{.rds} file in the answer-cache directory.

The answer-cache directory is the one \code{tools::R_user_dir()} gives for
\code{"rmoriebricklayer"} and \code{"cache"}, or the one the
\code{rmoriebricklayer.llmcachedir} option names when it is set. The cache is
off under \code{options(morie.quiet = TRUE)}, \code{MORIE_LLM_CACHE=off},
tests and \code{R CMD check}.

The message is cleaned first: an \dQuote{Error in f(x) :} or \dQuote{Warning
message:} prefix is dropped, curly quotes become straight ones and white
space is collapsed. A template that matches the start of the message as a
regular expression is an exact match and ranks first (longer templates before
shorter ones). Otherwise a template scores \eqn{0.6 h / |m| + 0.4 h / |t|},
where \eqn{h} is the number of shared words (three letters or more, common
words left out, at least two needed), \eqn{|m|} the words of the message and
\eqn{|t|} those of the template; scores of 0.55 and above are kept.

Errors: \code{msg} that is not character text, a condition or a data
frame with the columns \code{check}, \code{ok} and \code{detail};
\code{n} not a whole number of 1 or more; \code{pkgs} that are not
installed.

}
\section{Name a fiscal year by the years it spans (\code{fylbl})}{

Turns fiscal years keyed by their END year into labels that name both
calendar years. Ontario's inmate data (and many government series) key on
the fiscal year's end year, so 2023 is the fiscal year running from April
2022 to March 2023; this renders that as \code{"2022/23"}, which a reader
cannot mistake for the calendar year 2023. Pass it to
\code{\link[=yoylbl]{yoylbl()}} to
label a change table.


Each value is converted with \code{as.integer(as.character(endyear))},
so a string such as \code{"2023"} works; a fractional number is refused
rather than truncated (2023.7 is an error). The label is
\code{(y - 1)}, \code{sep}, then \code{y} itself or its last two digits.
Values that cannot be read as a year give \code{NA}. The two-digit form
is unambiguous within a century (2000 gives \code{"1999/00"}).

Errors: \code{endyear} that is neither numeric nor character (for
example logical); a numeric year below 1; a numeric year that is not whole.

}
\section{Install the rmoriebricklayer command-line launcher (\code{instcli})}{

Writes small launcher scripts into a directory on your PATH so that
\code{rmoriebricklayer login}, \code{rmbl ask ...} and the other verbs of
\code{\link{blcli}} work from any shell. Run it once after
installing or upgrading the package. Nothing outside \code{dir} is
touched, and only when you call this.


On Unix-alikes each launcher is a \code{/bin/sh} script (mode 0755) that
sets \code{RMBL_PROG} to its own name and runs
\code{Rscript -e "rmoriebricklayer::blcli()"} with the shell's
arguments, exiting with the function's status (130 on Ctrl-C). The library
this copy of the package is installed in is pinned inside R with
\code{.libPaths()}, so an \code{R_LIBS} set in the shell or in
\code{~/.Renviron} cannot make the command run another copy. An existing
file or link of the same name in \code{dir} is replaced. On Windows a
\code{NAME.cmd} batch wrapper doing the same is written instead. A message
names the files written and, when \code{dir} is not on the \code{PATH},
says to add it. Re-run it after moving the package to another library.

Errors when the package installation has no launcher in
\code{inst/bin} (a damaged installation); when \code{dir}
cannot be created or written, or is not one string; and
when \code{name} is not a character vector of one or more command names
(empty, \code{NA}, an empty string or a name with a directory part is
refused).

}
\section{Ask a language model (\code{llmask})}{

Sends one prompt to the first language model that is set up on this
machine and returns the reply. Bring your own key, or run a model
locally: nothing is sent anywhere you did not set up. In order:
\enumerate{
\item your own OpenAI-compatible endpoint, \code{MORIE_LLM_BASE_URL}
(with \code{MORIE_LLM_API_KEY} and \code{MORIE_LLM_MODEL} when it needs
them), e.g. LM Studio, vLLM, llama.cpp or a company gateway. An
\code{https} address, or plain \code{http} to the loopback host or to a
literal private LAN address (\code{10/8}, \code{172.16/12},
\code{192.168/16}, \code{fc00::/7}: an LM Studio or vLLM box on your own
network); a host name over plain http is refused. It is not probed, so a
configured endpoint that is down is an error, not a silent hop elsewhere;
\item a provider whose key is set (see
\code{\link{llmprvd}}): OpenAI, Anthropic, Google
Gemini, OpenRouter, Groq, Together, Fireworks, DeepSeek, Mistral, xAI,
Cerebras, Perplexity, Hugging Face, OpenCode Zen, Cohere and NVIDIA,
each through its own documented API with its own key variable
(\code{ANTHROPIC_API_KEY}, \code{OPENAI_API_KEY}, ...);
\item a local Ollama server at \code{OLLAMA_HOST}, by default
\code{http://localhost:11434}, with the model \code{OLLAMA_MODEL} or the
first one pulled; \code{OLLAMA_HOST=off} skips it.
}
\code{\link{llmstat}} shows what is set up and which route
a question would take.


With \code{docs = TRUE} (the default) the model is given the help of the
packages named in \code{pkgs} (read from the help pages installed
here) and may call five read-only tools before it answers:
\code{search_docs}, \code{get_help}, \code{get_examples},
\code{list_datasets} and \code{get_vignette}. How much help goes into the
instructions depends on the model's context size: a model with at least
32,000 tokens gets an index of every exported function (name, arguments,
title) and up to six rounds of lookups; 8,000 to 32,000 tokens, the 120
functions nearest the question and four rounds; smaller, the 40 nearest
and three rounds. A package with very many pages is never listed whole:
its functions nearest the question are listed and the tools reach the
rest. \code{"Nearest"} is a BM25 search over the help text in R (\eqn{k_1 =
1.2}, \eqn{b = 0.75}). A model that cannot call tools gets the best
matching pages in the prompt instead. Nothing the model asks for is run:
it answers with code for you to run.

With \code{docs = TRUE} the whole exchange is given at most three times
\code{tmout}; a lookup round that would start after that is not
started and the call errors. With \code{docs = FALSE} one request is made
with \code{syspro} (when given) and \code{prompt}.

Saved answers: a person at a terminal (the command line with a terminal
on both stdin and stdout) or in an interactive GUI session gets a saved
answer back at once when the question (spacing aside; case counts),
route, address, model, packages and their versions, and
\code{syspro} all match. Answers are kept as owner-only files in the
folder that \code{tools::R_user_dir()} gives for \code{"rmoriebricklayer"}
and \code{"cache"}: for 30 days, which the option
\code{rmoriebricklayer.llmcachedays} changes, and at most the 200 newest,
which the option \code{rmoriebricklayer.llmcachemax} changes. The
first save in a session says where answers go. Nothing is saved from a
script, a pipeline, a test run, \code{R CMD check}, or with
\code{options(morie.quiet = TRUE)}. Saving is also turned off by
\code{MORIE_LLM_CACHE=off}, or by the option \code{rmoriebricklayer.llmcache}
set to \code{FALSE}.

Errors: \code{prompt} is not a single non-empty string; \code{fresh} or
\code{docs} is not \code{TRUE} or \code{FALSE}; \code{route = "hosted"}
or an unknown route; no route is set up (the message lists what to set);
no model is chosen for the route; \code{pkgs} names a package that is
not installed; and, after sending, an unreachable server, a rejected key
(HTTP 401 or 403) or an error reply. The key is redacted from any error
text a server echoes back.

}
\section{Show or save the language-model settings (\code{llmcfg})}{

Every setting that decides how \code{\link{llmask}} reaches a
model, in one place: which route to use; your key and model for each
provider (bring your own key: see \code{\link{llmprvd}});
the address, key and model of your own OpenAI-compatible server; and of a
local or LAN Ollama server. Called with no arguments it only reads: it
returns a table of every setting, its current value, and where that value
comes from. Called with \code{key = value} pairs it saves those settings
first. Keys are never printed, only whether one is set.


\strong{Where settings live.} Saved settings are kept in
\code{llm.json} in the folder \code{$XDG_CONFIG_HOME/morie}
(\code{~/.config/morie} when \code{XDG_CONFIG_HOME} is unset), a private file
(mode 0600, in a private directory) next to the shared
\code{credentials.json}. The file is written only when you pass a setting;
only the settings that change are rewritten in place, so the rest of the file
stays exactly as it was. An empty set of settings removes the file.

\strong{Precedence.} An environment variable that is set (the \code{env}
column, for example \code{ANTHROPIC_API_KEY} or \code{OLLAMA_HOST}) wins
over a saved value, which wins over the built-in default. Saving a
setting whose variable is set warns that the variable still wins. A
provider key is also read from the provider's alternative variable where
it has one: \code{GOOGLE_API_KEY} for Gemini, \code{CO_API_KEY} for Cohere,
and for Hugging Face \code{HUGGINGFACE_HUB_TOKEN}.

\strong{Checks when saving.} Names must be among the settings listed in
the \code{key} column (\code{"unknown setting"} otherwise) and every value
passed as \code{key = value} with one value each. \code{route} must be
\code{"auto"}, \code{"own"}, \code{"ollama"} or a provider id; the
retired \code{"hosted"} route is refused. \code{own.url} must be an
\code{http(s)://} address and \code{ollama.url} an address or
\code{host:port}; both are refused if they contain spaces, a fragment or
user information, and, unless they point at this machine or a private LAN
address, they get the package's public-address check (a metadata or
link-local address is refused). \code{"off"}, \code{"none"} or
\code{"disabled"} turns a server off. A key with a line break or control
character in it is refused. A new \code{own.url} or \code{ollama.url}
drops the key saved for the old server (with a message), so a key is
never sent to a server it was not saved for. A settings file that is not
a JSON object, or holds a setting that is not a non-empty string, stops
every call until it is fixed or moved aside with \code{rmbl config reset}.

Reading the settings takes a few milliseconds: the table of settings is
built once per session and the file is read once per call. Nothing is
sent over the network by this function.

The same is available from the shell: \code{rmbl config} lists the
settings, \code{rmbl config set KEY VALUE} and \code{rmbl config unset KEY}
change one (a key is asked for without echo when no value is given), and
\code{rmbl config setup} walks through them.

}
\section{A conversation with a language model (\code{llmchat})}{

Sends a whole conversation (system, user and earlier assistant turns) to
the route \code{\link{llmask}} would take, and returns the
model's next reply. Use it when you manage the conversation yourself, for
example to keep a multi-turn exchange or to give the model earlier answers
as context. Unlike \code{llmask()} it adds nothing to the
conversation (no help pages, no tools) and it never reads or writes the
saved-answer cache.


The route is resolved exactly as in \code{\link{llmrte}}.
The turns are sent in the provider's own wire format (the OpenAI chat
completions format for most providers, your own endpoint and Ollama;
Anthropic's Messages API; Google's Gemini \code{generateContent}). One
request is made, through the package's own libcurl binding, and waits at
most \code{tmout} seconds.

Errors, before anything is sent: \code{msgs} is not a non-empty list
of turns each with a single \code{role} among \code{"system"},
\code{"user"} and \code{"assistant"} and a single non-missing character
\code{content}; \code{route = "hosted"} or an unknown route; no route is
set up (the message says what to set); the route has no model and
\code{model} is not given. After sending: the server cannot be reached,
rejects the key (HTTP 401 or 403), or answers with an error. The key is
redacted from any error text a server echoes back.

}
\section{Models a language-model route offers (\code{llmmdls})}{

Asks the provider (or your own server, or a local Ollama server) which
models your key can use, so you can pick one for the \code{model}
argument of \code{\link{llmask}} or save it with
\code{rmoriebricklayer config set PROVIDER.model NAME}. The request goes
through the package's own libcurl binding; no prompt is sent.


The route is resolved as in \code{\link{llmrte}}. The
list comes from the provider's model endpoint: \code{GET /models} in the
OpenAI format (own endpoint and most providers), \code{GET /v1/models}
for Anthropic, \code{GET /v1beta/models} for Gemini (only models that
support \code{generateContent} are kept), and \code{GET /api/tags} for
Ollama. Perplexity publishes no model list, so its route returns an empty
vector. A failed request, a non-200 answer or a reply that is not JSON
also gives an empty vector, not an error, so check
\code{\link{llmstat}} when the list is unexpectedly empty.
Names are cleaned of control characters before they are returned.

Errors only while resolving the route: \code{"hosted"}, an unknown
route, a provider named with no key set, or a \code{tmout} that is not
a single positive number.

}
\section{The language-model providers a key can be brought for (\code{llmprvd})}{

Lists every provider \code{\link{llmask}} can reach with your
own key: the environment variable that holds the key, the address the key
and prompts are sent to, the wire format used, and whether a key is set on
this machine. Use it to find the variable name to set for a provider, or
the \code{id} to pass as \code{route}. Nothing is contacted.


The table is fixed in the package (the providers' documented addresses
and key variables). A key counts as set when the provider's variable
(\code{key_env}), its alternative spelling (\code{alt_env}), or a key
saved with \code{rmoriebricklayer config set ID.key} is non-empty; key
values are never returned. A key with a line break or control character
in it is an error. A server that speaks the OpenAI format but is not in
the table is used as your own endpoint (\code{MORIE_LLM_BASE_URL}).

}
\section{The language-model route that would answer (\code{llmrte})}{

Reports which route \code{\link{llmask}} and
\code{\link{llmchat}} would take right now, without sending a
prompt anywhere. Use it to check, before asking a question, that the
question would go to the server you expect (your own endpoint, a provider
whose key is set, or a local Ollama server) and which model it would use.


The automatic order is: an OpenAI-compatible endpoint of your own
(\code{MORIE_LLM_BASE_URL}, or \code{own.url} saved with
\code{rmoriebricklayer config set}); then every provider of
\code{\link{llmprvd}} whose key is set, in the order of that table; then a
local Ollama server, at \code{OLLAMA_HOST} or by default at
\code{http://localhost:11434}, when it answers with at least one pulled model
or \code{OLLAMA_MODEL} is set. A saved route replaces the automatic order
when \code{route = NULL}; it comes from \code{MORIE_LLM_ROUTE} or from the
\code{route} saved in the settings file.

Nothing is sent to a provider. The only network contact is the Ollama
probe, a \code{GET /api/tags} to the Ollama address with a 2 second
timeout; \code{OLLAMA_HOST=off} skips it. Your own endpoint is not probed.

Errors: \code{route = "hosted"} (the hosted MORIE tier is retired); a
\code{route} that is not one of the accepted names; a provider route
named explicitly with no key set; a \code{MORIE_LLM_BASE_URL} that is not
\code{https} to a public address or plain \code{http} to the loopback
host or a literal private LAN address. When automatic resolution skips a
route that is half set up (a model or key without an address, an Ollama
that does not answer) a message says so.

}
\section{Report the language-model routes available from this machine (\code{llmstat})}{

Shows, in one table, every way \code{\link{llmask}} could reach a language
model from this machine and whether each is ready: your own endpoint, each
provider whose key is set, and a local Ollama server. Use it to find out why
a question fails with \dQuote{no route}, or which model a route would use.
The command line prints it as part of \code{rmoriebricklayer doctor}.


Rows come in the order \code{llmask()} tries the routes. The
providers without a key share one row that names each one with its key
variable. Key values are never shown. Nothing is sent to a provider; the
only network contact is a \code{GET /api/tags} to the Ollama address
(\code{OLLAMA_HOST}, default \code{http://localhost:11434}; 2 second
timeout) unless \code{OLLAMA_HOST=off}.

A settings file (\code{llm.json} next to the credentials file) that
cannot be read does not make the call fail: the result is then a single
row with \code{route = "settings"} and \code{status = "unreadable"},
with the reason and the command that moves the file aside.

}
\section{Leave-one-out estimates of a difference in differences (\code{loounit})}{

Re-estimates \code{\link{plndid}} leaving out one treated unit at a time, to
show that no single unit drives the result.

}
\section{Compare the resources of two manifests (\code{mnfdiff})}{

Lists the resources (data files) of two manifests side by side and says
which were added, removed or changed: a different SHA-256, or a
different size where both sizes are recorded. A manifest is a provenance
record (its \code{resource}), a capsule bundle (its \code{files}), a
data frame with the columns \code{path} and \code{sha256} (and
optionally \code{size_bytes}), or the path of a JSON file holding one of
the first two. \code{\link{cpsrfrsh}} and \code{rmbl drift} report
what a fetched source changed with it.

}
\section{The optimal search square for a circular normal datum (\code{optsqr})}{

For a point datum with a circular normal distribution of position error,
the square centred on the datum that a given effort, spread evenly, should
cover to make the probability of success as large as possible (Frost 1996,
chapter 6). With several efforts, each search is optimized in turn against
the distribution as earlier unsuccessful searches left it.


The search factor \code{f} is the half side of the square in units
of the total probable error of position \code{E} (the radius of the circle
holding half the distribution, \code{E = 1.1774 sigma}). For relative effort
\code{z = Z / E^2} the coverage is \code{C = z / (2 f)^2}, the containment is
the circular normal's mass in the square, \code{(2 Phi(f E / sigma) - 1)^2}
for a first search, and the probability of success \code{POC x POD(C)} with
the POD curve of \code{model} (\code{\link{srchpod}}). The factor is found on
a grid of 241 values from 0.02 to 10 and refined by \code{optimize()}. After
a search the density inside its square is multiplied by \code{1 - POD}; every
later search is optimized against what is left, and its \code{poc} and
\code{pos} are conditional on the earlier searches having failed. Frost's
figures 6-3 to 6-6 are drawn from it by \code{\link{srchfig}}.

}
\section{A Gaussian-plume concentration field on a grid (\code{plmfld})}{

Evaluates \code{\link{gplume}} at every point of an \code{x} by
\code{y} ground-level grid (or at height \code{z}) and returns the field
as a matrix with the axes, ready for \code{plot()}. Use it to map where the
plume from a single stack touches the ground, how far downwind the
highest concentration lies, and how wide the affected area is.


Every grid point \eqn{(x_i, y_j, z)} is passed to
\code{\link{gplume}} in one call, with the source at the origin
and the wind along \eqn{+x}; the field is therefore zero (or vanishingly
small) upwind and at \eqn{x \le 0}. The concentration is in the mass unit
of \code{q} per cubic metre (grams per cubic metre for \code{q} in grams
per second). \code{dx} and \code{dy} are the median grid spacings, used by
the plot method for the cell size. The cost is one plume evaluation per
grid point, so a 100 by 100 grid is 10,000 evaluations.

Errors: \code{x} or \code{y} not numeric or not strictly increasing;
\code{z} negative; and every check of \code{\link{gplume}}
(\code{q}, \code{u}, \code{h}, the stability class, the setting, the
mixing height).

}
\section{Event studies for several outcomes in one grid (\code{plotevgrid})}{

Draws a list of \code{\link{evstudy}} (or \code{\link{stgatt}}) results in a
grid of panels, one per outcome, with the same style, the way papers show an
effect on several crimes or several groups at once.

}
\section{Lorenz and funnel plots (\code{plotlrnz})}{

Two plots for results that are plain data frames rather than classed
objects. \code{plotlrnz()} draws the Lorenz curve of a vector (or of
\code{\link{lorenzc}}'s output) with the Gini coefficient in the title.
\code{plotfnl()} draws every area's ratio of observed to expected
against its expected count, inside the control limits of
\code{\link{fnllim}}, the standard small-area funnel plot.
Use the Lorenz plot to show how concentrated a total is across units, and
the funnel plot to judge which areas' rates differ from the target by more
than chance would allow given their size.


\code{plotlrnz()}: from a numeric vector the curve is computed with
\code{\link{lorenzc}}, and the title carries \code{\link{ginicoef}}; a data
frame is used as given (sorted, with the origin added when missing) and
the title has no Gini. The dashed diagonal is perfect equality.

\code{plotfnl()}: each area's ratio observed / expected is drawn
against its expected count. The limits are exact Poisson quantiles around
\code{target}, computed by \code{\link{fnllim}} at the expected
counts present: the widest level is drawn solid, the others dashed. A point
outside the widest limits is coloured and, with \code{area}, labelled.

Errors: \code{plotlrnz()} given a data frame whose columns are not
cumulative shares in \eqn{[0, 1]} that never decrease, or invalid values for
\code{\link{lorenzc}}; \code{plotfnl()} given negative or non-finite
counts, an expected count of zero or less, \code{observed} and
\code{expected} of different lengths, \code{area} of another length,
\code{levels} outside (0, 1), or a \code{target} that is not one positive
number. Both draw on the current device.

}
\section{Many-plot helpers: ridgelines, ECDFs, violins, hexagonal bins and concentration curves (\code{plotmore})}{

Base-graphics plots in the house style for a numeric variable split by a
group, or two numeric variables: \describe{ \item{\code{plotrdg()}}{a ridgeline:
one kernel density per group, stacked with a small overlap.}
\item{\code{plotecdf()}}{the empirical distribution function of each group,
overlaid.} \item{\code{plotvln()}}{a violin per group: the mirrored density, the
median as a point and the interquartile range as a bar.}
\item{\code{plothex()}}{the two-dimensional density of \code{x} and \code{y} in
hexagonal bins, shaded by count.} \item{\code{plotgain()}}{cumulative-gain
(concentration) curves: the Lorenz curve of each group
(\code{\link[=lorenzc]{lorenzc()}}) with its Gini coefficient in the key.} } Missing and
non-finite values are dropped. A group of fewer than two values draws no
density.

}
\section{Plots for many series over time (\code{plotseries})}{

Base-graphics plots in the house style for a value observed by period, for
one series or many: \describe{ \item{\code{plotcal()}}{a calendar heatmap of a
daily series: one tile per day, weeks across and weekdays down, one block per
year.} \item{\code{plothrz()}}{a horizon chart: each series in its own thin row,
its deviation from its own median folded into \code{bands} shaded bands, above in
blue and below in red, so many series fit in little height.}
\item{\code{plotsm()}}{small multiples: one panel per series on a shared scale.}
\item{\code{plotbump()}}{a bump chart: the rank of each series in each period (1 =
largest), so changes of order stand out.} }

}
\section{Column report for a data frame (\code{profcols})}{

One row per column: type, missingness, and the summaries that suit the
column's type -- mean and standard deviation alongside their robust
counterparts (median, MAD) for a numeric column, and the number of
distinct levels plus the most common one for a categorical column.


Reporting the classical and robust centres side by side is the point:
where they disagree, the column has outliers or a heavy tail, and the
mean is not describing it. That is visible in one glance here and in no
single number.

How the numbers are computed. A column is numeric when \code{is.numeric()} is
\code{TRUE}; every other column (character, factor, logical, \code{Date}, ...) is
treated as categorical, and \code{top} is its most frequent non-missing value as
text (ties broken by the order of \code{sort(table())}). For a numeric column,
over its non-missing values: \code{sd} is the sample standard deviation (\eqn{n -
1}), \code{mad} the median absolute deviation scaled by 1.4826, \code{skewness} the
population moment ratio \eqn{m_3 / m_2^{3/2}}, \code{n_outliers} the count outside
the Tukey fences (1.5 interquartile ranges beyond the quartiles), and the
quantiles are type 7. Infinite values are counted in \code{ninf} (and in \code{nneg},
\code{n_distinct}) and left out of every other numeric statistic, which are taken
over the finite values only: a column with an infinite value keeps a finite
mean and range, and a column with no finite value has \code{NA} statistics. A
progress bar is shown for wide tables when \code{options(morie.progress)} allows
it. Errors when \code{data} is not a data frame, has no columns, or has duplicate
or empty column names.

}
\section{Population of the regions that contain a unit, and of those that do not (\code{rgncov})}{

Summarises where a set of point-located units (jails, courthouses,
hospitals, police stations) sits relative to the regions of a statistical
geography: how many regions hold at least one unit, and what share of the
population lives in them. Use it to describe the footprint of a set of
facilities, not to build a per-capita rate (see Details).


The share this returns is CONTEXT, not a denominator, and the
distinction is the reason the function exists rather than a bare
\code{tapply()}.

A region holding no unit is not an unserved population. Units serve
catchments, and a catchment is an administrative fact about where
people are sent from; a point location does not state it and cannot
imply it. Some geographies were never meant to have one unit each.

So a rate built by summing the populations of unit-holding regions
pairs a denominator covering part of the territory with a numerator
drawn from all of it. Every such rate is inflated, and inflated
unevenly: a dense region holding one unit and a sparse region holding
seven distort it in opposite directions. Where numerator and
denominator must cover the same population, the defensible figure is
the whole-territory one.

The print method says this each time, because the covered share is
precisely the number a reader is tempted to divide by. With a total
population of zero the shares are \code{NA}.

Errors: empty, missing or repeated \code{reg} values; arguments of
different lengths; missing or negative \code{pop}; missing,
negative or fractional \code{units}.

}
\section{Check a region map against an independently derived assignment (\code{rgnmapalt})}{

Compares the region each unit was assigned with the region a DIFFERENT
method assigns it, and marks the disagreements that are already known
and explained. Use it to catch errors in the method that built the map,
which re-running that same method can never find.


This is the only check here that can catch an error in the original
method, because it does not use that method. Recomputing point in
polygon against the same boundary file proves the pipeline is
deterministic; deriving the region a second way -- from a name, a
postal geography, an administrative lookup -- can disagree, and a
disagreement is information either way round.

The \code{known} argument exists because a second route usually has
understood weaknesses: a place name that is a community rather than a
municipality, an amalgamated city, a township absorbed into a
neighbour. Listing them keeps the check sharp instead of loosening the
tolerance until everything passes, and listing them by NAME means an
unexpected disagreement cannot hide inside an allowance.

Units and regions are compared as text with spaces trimmed. Errors:
\code{map} not a data frame or without the named columns; a \code{route}
vector without names; a \code{route} data frame without the two columns.

}
\section{Compare a recomputed region map against a published one (\code{rgnmapcmp})}{

Matches two region maps on the unit identifier and compares the named
columns cell by cell, reporting for each column how many cells disagree
and the first disagreement. Use it to confirm that a region map rebuilt
from the boundary file (for example with
\code{\link[=rgnmappts]{rgnmappts()}})
reproduces the one that was published or pinned.


Units are matched by their identifier as text with spaces trimmed; when
an identifier repeats, its first row is used. Numeric columns are compared
with \code{\link[=all.equal]{all.equal()}} at its default tolerance (relative
\eqn{1.5 \times
10^{-8}}), so a coordinate that survived a round trip through text is not
reported as a change; everything else is compared exactly as text after
trimming whitespace. Two missing values agree; a missing value against a
present one disagrees.

What this establishes is that the recomputation reproduced the
published assignment. It does NOT establish that the assignment is
right: run the same method against the same boundary file and a
definitional error reproduces perfectly. That is what
\code{\link[=rgnmapalt]{rgnmapalt()}} is for.

Errors: either input not a data frame or without \code{unit}; a column in
\code{cols} that is not in both.

}
\section{Internal soundness of a region map (\code{rgnmapintg})}{

Checks that a region map (a crosswalk from units, such as facilities, to
the statistical regions that contain them) lists each unit once, gives
every unit a region, and names only regions the reference geography knows
about. Run it on any crosswalk before tables are built on top of it.


These are the failures that a comparison against published output
cannot see, because they would be present on both sides: a unit
matched into two regions, a unit matched into none, a region code that
is a typo or belongs to a neighbouring province. None of them require
the geometry, so they run with nothing installed.

The checks as computed: \dQuote{units assigned more than one region} counts
rows whose (non-blank) unit identifier repeats an earlier row's, whether or
not the region differs, so an exact duplicate row also fails; \dQuote{units
assigned no region} counts rows whose region is \code{NA} or blank;
\dQuote{region codes not in the reference geography} counts non-blank region
codes not in \code{regs}, comparing the codes as text after trimming spaces
(so \code{"3506"} and \code{3506} match, but \code{"03506"} does not).
Errors: \code{map} not a data frame, or without the named columns.

}
\section{Recompute a region map by point in polygon (\code{rgnmappts})}{

Assigns each point (a facility's longitude and latitude) to the polygon of
a boundary file that contains it, and carries the polygon's identifier
and name columns onto the result. Requires the \code{sf} package and a
boundary file; returns \code{NULL} when either is absent, so a
verification script can record the check as unavailable instead of
failing for a missing optional dependency.


The points are projected onto the boundary file's own coordinate
reference system before matching, never the other way round: a
cartographic boundary file is published in a projection chosen for the
country it covers, and reprojecting the polygons to compare them
against unprojected points moves the edges. Containment is
\code{sf::st_within()}, so a point exactly on a shared edge is in neither
polygon. The whole boundary file is read into memory with
\code{sf::st_read()}; national files can take some seconds.

Point in polygon is preferred to matching place names against
subdivision names whenever both are available. Names fail on exactly
the cases that matter and fail quietly: a facility in a community
rather than an incorporated municipality, a city amalgamated into a
larger one, a township absorbed by a neighbour. The geometry has no
opinion about any of that.

\code{\link[=rgnmapalt]{rgnmapalt()}} checks this result against the name route,
with those cases named, and
\code{\link[=rgnmapcmp]{rgnmapcmp()}} compares it with a published map.

Errors (when \code{sf} and the file are present): missing or empty
\code{unit}; \code{x}, \code{y} and \code{unit} of different lengths;
missing coordinates; a field the boundary file does not have.

}
\section{Open the analysis dashboard (\code{rmblapp})}{

A local web app over the package's analyses: every tab opens on a
demonstration dataset (\code{\link[=rmbldemo]{rmbldemo()}}) with its first analysis
already run, and you can load a CSV file, the pinned data of a capsule, or a
table from data.rmorie.com (after \verb{rmbl login}) instead. Everything runs on
this machine in this R session; nothing is sent anywhere except the
data.rmorie.com requests you make.


Each analysis page shows the headline numbers (estimate, interval, n
and a verdict) in value boxes, the package's plot in a card that opens full
screen and downloads as PNG, SVG or CSV, a diagnostics card (the checks and
secondary tables the function returns, residual and goodness-of-fit plots
where the method has them, effect sizes with a line on how to read them),
the table, and the R call it ran, which runs exactly that call, so a result
can be reproduced in a script by copying the code. The method card states
the method in the words of its help page, its assumptions and what the
numbers mean. A refusal is shown as the package words it, with
\code{\link[=explerr]{explerr()}}'s explanation of where it comes from beside it, and
as a toast. The resampling analyses (bootstraps, permutations, simulations
and the Hawkes fits) run in a forked background process on Unix-alikes, so
the page stays live while they work. \dQuote{Share this view} in the navbar
gives a link that reopens the page with the same tab, data and form.

The menus and their tabs: \describe{ \item{Data}{Describe:
\code{\link[=profcols]{profcols()}}, \code{\link[=freqtbl]{freqtbl()}},
\code{\link[=cortbl]{cortbl()}}, \code{\link[=mahaoutl]{mahaoutl()}},
\code{\link[=missgrid]{missgrid()}} and the distribution plots
(\code{\link[=plotrdg]{plotrdg()}}, \code{\link[=plotecdf]{plotecdf()}},
\code{\link[=plotvln]{plotvln()}}, \code{\link[=plothex]{plothex()}},
\code{\link[=plotgain]{plotgain()}}); click a column of the profile to see its
distribution. Distributions: \code{\link[=dstfit]{dstfit()}} with its density, QQ, PP
and tail plots, and a synthetic sample from a fit through
\code{\link[=mksyncol]{mksyncol()}}.} \item{Over time}{Year over year:
\code{\link[=yoy]{yoy()}} (hover a period of its plot for the period's rows) and the
\code{\link[=yoyhtml]{yoyhtml()}} page to download. Rates:
\code{\link[=rtcalc]{rtcalc()}}, \code{\link[=ratechg]{ratechg()}} and
\code{\link[=shrs]{shrs()}}. Trends: \code{\link[=trndtst]{trndtst()}} (Mann-Kendall
with the Theil-Sen slope), \code{\link[=stepchg]{stepchg()}},
\code{\link[=cnttrnd]{cnttrnd()}}, and \code{\link[=plotcal]{plotcal()}},
\code{\link[=plothrz]{plothrz()}}, \code{\link[=plotsm]{plotsm()}} and
\code{\link[=plotbump]{plotbump()}}.} \item{Causal and survey}{Survey:
\code{\link[=svydes]{svydes()}} with weights, strata, clusters or replicate weights,
then \code{\link[=svyest]{svyest()}} or \code{\link[=svycmp]{svycmp()}}. Policy:
\code{\link[=plndid]{plndid()}}, \code{\link[=evstudy]{evstudy()}},
\code{\link[=stgatt]{stgatt()}}, \code{\link[=bacondcmp]{bacondcmp()}},
\code{\link[=swtdid]{swtdid()}}, \code{\link[=perminf]{perminf()}},
\code{\link[=syndid]{syndid()}}, \code{\link[=mtchdid]{mtchdid()}},
\code{\link[=wcb]{wcb()}}, \code{\link[=loounit]{loounit()}},
\code{\link[=cohtrnd]{cohtrnd()}}, \code{\link[=plnpwr]{plnpwr()}},
\code{\link[=baltab]{baltab()}} and \code{\link[=tse]{tse()}}.} \item{Capsules}{Drift:
\code{\link[=cpsdrft]{cpsdrft()}} on two snapshots, with a density whose brushed range
gives each snapshot's share of rows, and the app of \code{\link[=drftapp]{drftapp()}}
for two CSV files. Capsule: the provenance of a capsule (source, pinned
digest, manifest, attestation, bundle files) and its verification rows, with
buttons that run \code{\link[=vrfcps]{vrfcps()}} and \code{\link[=cpschk]{cpschk()}}, or
\code{\link[=cpsrfrsh]{cpsrfrsh()}}. Proof ledger: a ledger
(\code{\link[=ldgrread]{ldgrread()}}) from the demo, a file, a capsule or an installed
package, its theorems with their status and covered functions, and
\code{\link[=ldgrchk]{ldgrchk()}}.} \item{Domains}{First Nations, Metis and Inuit: the
bundled Statistics Canada tables (\code{\link[=indiex]{indiex()}}) or a table in the
same layout: \code{\link[=indgap]{indgap()}}, \code{\link[=dstntst]{dstntst()}},
\code{\link[=ordcmp]{ordcmp()}}, \code{\link[=welprof]{welprof()}} with
\code{\link[=dualcont]{dualcont()}}, \code{\link[=healchg]{healchg()}},
\code{\link[=mhcont]{mhcont()}}, \code{\link[=stdprev]{stdprev()}} and
\code{\link[=trcprog]{trcprog()}}. Each distinction is reported on its own, suppressed
cells stay suppressed with their quality flags, and the page states the OCAP
and CARE principles and the source tables. Courts and corrections:
\code{\link[=caseflow]{caseflow()}}, \code{\link[=stkflow]{stkflow()}},
\code{\link[=clrdcmp]{clrdcmp()}}, \code{\link[=dispmix]{dispmix()}},
\code{\link[=lifetbl]{lifetbl()}}, \code{\link[=crmdens]{crmdens()}},
\code{\link[=knoxtst]{knoxtst()}}, \code{\link[=rgnmapintg]{rgnmapintg()}}, and the SIU
report readers \code{\link[=siuprs]{siuprs()}} and \code{\link[=siuso]{siuso()}} on
pasted text. Air pollution: \code{\link[=plmfld]{plmfld()}} and
\code{\link[=gplume]{gplume()}} for a Gaussian plume, the monitors of the demo series
(\code{\link[=plotsm]{plotsm()}}), \code{\link[=crfpm25]{crfpm25()}},
\code{\link[=crfno2]{crfno2()}}, \code{\link[=polbrdn]{polbrdn()}} and
\code{\link[=vrfpol]{vrfpol()}}. Hawkes: \code{\link[=chwkfit]{chwkfit()}} with
\code{\link[=plothwk]{plothwk()}} (intensity, time-rescaling QQ, branching tree),
\code{\link[=chwksim]{chwksim()}} and \code{\link[=chwkjit]{chwkjit()}}. Search and
rescue: the search theory functions behind one form, \code{\link[=ltrlrng]{ltrlrng()}},
\code{\link[=srchpod]{srchpod()}}, \code{\link[=pswppod]{pswppod()}},
\code{\link[=datumpmap]{datumpmap()}}, \code{\link[=opteffort]{opteffort()}} and
\code{\link[=optcrcsrch]{optcrcsrch()}}, with the POD and POS numbers and four plots,
and any figure of Frost's The Theory of Search through
\code{\link[=srchfig]{srchfig()}}.} \item{Report}{the results added from the tabs, as
one self-contained HTML page (plots as inline SVG, year-over-year tables as
\code{\link[=yoyhtml]{yoyhtml()}} draws them), as Markdown, or as a GitHub comment to
copy.} \item{Settings}{light, dark or the system's theme (also the switch in
the navbar), digits, and the seed of the seeded analyses.} } The data key of
data.rmorie.com is never held by the app: \code{\link[=dload]{dload()}} reads it from
where \verb{rmbl login} stored it.

The dashboard needs the shiny package (Suggests), and with it bslib, which
shiny installs; without shiny \code{rmblapp()} refuses.

}
\section{Demonstration datasets (\code{rmbldemo})}{

Seeded synthetic datasets, made up but shaped like the data each family of
the package reads, so that every tab of \code{\link[=rmblapp]{rmblapp()}} (and any
example) has something realistic to run on without a download. Each call with
the same \code{name} returns the same data, and the caller's random number stream
is left as it was.


Every dataset is generated in R from a fixed seed, with
\code{\link[=mksyncol]{mksyncol()}} for the categorical and count columns and base R's
random number generators for the rest. None of it describes real people,
courts or places. \describe{ \item{\code{court}}{576 rows: 16 courts by 36
months (2022 to 2024). Columns \code{court}, \code{region}, \code{month} (1 to 36),
\code{date}, \code{received}, \code{disposed}, \code{pending} (the backlog carried
forward), \code{clearance} (disposed per 100 received), \code{caseload} (cases
received per judge), \code{delay} (median days to disposition), \code{reformed} (1
from the month a court adopted the reform) and \code{refmonth} (the month it
did, \code{NA} for the eight that never did). Eight courts adopt a
case-management reform in months 13, 19, 25 or 31; it lowers \code{delay} by 12
days, and the courts share a seasonal cycle and a common trend, so the
parallel-trends assumption holds.} \item{\code{offences}}{1,440 rows: monthly
offence counts for 10 areas, 2013 to
2024. Columns \code{area}, \code{year}, \code{month}, \code{date}, \code{n} (Poisson
counts with a summer peak of about 15 percent) and \code{pop} (growing 1 percent
a year). From April 2020 every area's level steps down by 28 percent and
stays there.} \item{\code{offences_annual}}{120 rows: \code{offences} summed by area
and year (\code{n}), with the mean population (\code{pop}).}
\item{\code{survey}}{1,200 respondents of a stratified two-stage sample: 4
strata (\code{stratum}), 10 primary sampling units in each (\code{psu}), design
weights (\code{w}), and 20 bootstrap replicate weights \code{rw01} to \code{rw20}
(Rao-Wu: primary units drawn with replacement within each stratum).
Variables \code{age}, \code{sex}, \code{smoker} (0/1), \code{drinks} per week,
\code{victim} (0/1, victimized in the past year), \code{trust} (1 to 5) and
\code{income} (with 8 percent missing and a few very large values).}
\item{\code{fnmi}}{128 rows in the layout of \code{\link[=indiex]{indiex()}}:
\code{period} (2015/2018, 2019/2022), \code{group} (First Nations, Metis, Inuit,
Non-Indigenous), \code{age}, \code{indicator} (four health indicators),
\code{estimate}, \code{lower}, \code{upper} (95 percent) and \code{quality} (A to E by
coefficient of variation; F, with the estimate and its interval suppressed,
above 33.3 percent).} \item{\code{otis}}{144 rows: admissions to 12 institutions
in 2013 to 2024, as a stock and flow table. Columns \code{inst}, \code{cd} (census
division), \code{region}, \code{year}, \code{people} (admissions), \code{days} (days
in custody of those admitted) and \code{releases}. Lengths of stay are
log-normal and drift up after 2019.} \item{\code{air}}{2,016 rows: hourly NO2 at
6 monitors for 14 days around one stack (10 g/s, effective height 50 m).
Columns \code{monitor}, \code{x}, \code{y}, \code{z} (metres from the stack),
\code{hour}, \code{wind_from} (degrees), \code{wind_speed} (m/s), \code{stability}
(Pasquill-Gifford class) and \code{no2} (micrograms per cubic metre): a diurnal
background plus the stack's \code{\link[=gplume]{gplume()}} concentration at the
monitor for that hour's wind.} \item{\code{hawkes}}{About 700 event times (\code{t},
in days, over 365 days) from a self-exciting process with a baseline of 0.9
events a day, branching ratio 0.55 and an exponential kernel of rate 0.8 a
day, simulated by thinning; \code{date} and \code{district} are added.}
\item{\code{drift}}{3,000 rows: a reference and a current snapshot (\code{snapshot})
of 1,500 rows each, with \code{age}, \code{income}, \code{region}, \code{visits} and
\code{satisfied}. In the current snapshot age is 4 years older on average,
income 16 percent higher, the North region larger and satisfaction lower;
visits do not change.} \item{\code{waits}}{1,000 court cases: \code{case_id},
\code{court_type}, \code{days} to disposition (a gamma body with a heavy log-normal
tail) and \code{appearances} (zero-inflated Poisson).} \item{\code{ledger}}{A proof
ledger of 120 theorems (proved, sorry or axiom) covering the package's
functions, written to a temporary JSON file and read back with
\code{\link[=ldgrread]{ldgrread()}}; four theorems carry checks that
\code{\link[=ldgrchk]{ldgrchk()}} runs.} }

}
\section{Write a capsule report as Markdown (\code{rptmd})}{

Renders a \code{\link[=cpsrpt]{cpsrpt()}} as Markdown,
so the assessment can travel with the capsule instead of living in a
console someone has since closed. The document renders on GitHub, in
R Markdown and Quarto, and in any Markdown viewer, and reads well as plain
text.


The document has a level-one heading (\code{title}), the verdict in one
sentence, a two-column table of rows, columns, missing cells, complete rows
and the full data digest (with the Merkle root and the signature result when
the report has them), a \code{"Findings"} table of severity, check, subject
and detail (left out when there is none), and a closing caveat that no
finding is proof of correctness. The text of the findings is written as it
is: a \code{|} in a column name would break the table. An existing file at \code{path}
is overwritten. Errors when \code{report} does not come from
\code{\link[=cpsrpt]{cpsrpt()}}.

}
\section{Path of a JSON Schema shipped with the package (\code{schemapath})}{

The capsule files are described by JSON Schema (draft 2020-12)
documents in the package's \code{schemas} folder, the same files as the
\code{spec} folder of the rmbl GitHub Action: \code{capsule} for
\code{data_provenance.json}, \code{bundle} for \code{capsule_bundle.json}
and \code{manifest} for a results manifest. \code{rmbl verify} checks
each capsule file against its schema before the package's own checks.

}
\section{The figures of The Theory of Search (\code{srchfig})}{

Draws any figure of Frost (1996), \dQuote{The Theory of Search: A Simplified
Explanation}, from the package's search theory functions with the book's
parameters, and returns the numbers it drew.


\code{srchfig()} with no argument lists the book's 36 figures
(3-1 to 3-14, 4-1 to 4-7, 5-1 to 5-9 and 6-1 to 6-6) with how each is
drawn: \code{"model"} figures are computed from the functions with the
book's parameters and reproduce the values the text states (for example
57.91, 9.08 and 1.42 percent in figure 3-4,
0.75 and 0.6836 in figure 5-7, 0.7899 at coverage 1 in figure 5-8, the
optimal factor 1.02 at an effort of 4 E^2 in figure 6-3);
\code{"schematic"} figures are diagrams with no data (3-6, 4-3, 4-6, 5-2);
\code{"approximation"} figures are drawn from the model where the book's
plate cannot be recovered exactly: 3-7 (the density implied by boxing in two
circles is drawn as the \code{"line"} datum, a circular normal spread along
the segment), 3-13 (the book's surface is illustrative; it is drawn from the
cells of figure 3-14), 5-9 (the plate is blank in the published file; it is
drawn from the text, an inverse cube curve with a smaller sweep width and
flattened by navigation error), 6-6 (the book's random efforts are not
given; 250 groups of 5 are drawn here with \code{seed}).

Distances are in standard deviations of position error (\code{E = 1.1774}),
or in sweep widths (\code{W = 1}) for the lateral range figures. The
general methods draw the same figures with other parameters:
\code{plot(ltrlrng(...), equiv = , spacing = )},
\code{plot(srchpod(...), models = , m = )},
\code{plot(datumpmap(...), view = )}.

}
\section{Year-over-year (and period-over-period) change (\code{yoy})}{

Computes the change from one period to the period \code{lag} places
before it, matched on the period's own value rather than on row order,
and carries an exact interval for count data. Use it for the
"up 12\% on last year" figures of an annual report or an open-data
release: a missing year shows as a gap instead of shifting every
comparison, a percentage is compared in percentage points, and a change
off a small count comes with an interval as wide as the count is small.


Rows are first combined to one per period (and group) with \code{fun}. With
\code{complete = TRUE} the periods missing from a regular grid (numbers, \code{Date}
or \code{POSIXct} with a common step, the levels of an ordered factor, text
periods read as described under \code{prd}) are inserted with \code{NA} values and
flagged \dQuote{no data}. Each period is then compared with the period
\code{lag} steps earlier in that grid: \code{change} is the difference, \code{pctchg}
\eqn{100 (v_t / v_{t-lag} - 1)} (\code{NA} off a zero base), and for percentages
\code{ppchg} is the difference in percentage points.

For counts, conditional on their sum \eqn{n = a + b} the current count
\eqn{a} is binomial with probability \eqn{\rho / (1 + \rho)}, \eqn{\rho}
the rate ratio; the Clopper-Pearson interval for that probability,
transformed back, is an exact interval for the ratio, reported as
\code{pctlo} and \code{pctup} (percent change). It is the interval
\code{stats::poisson.test()} gives for two counts with equal exposure. A zero
base has no percent change but still an interval (with an infinite upper
end).

\code{verdict} is \code{"up"}, \code{"down"} or \code{"unchanged"} for
\code{direction = "neutral"}, and \code{"better"}, \code{"worse"} or
\code{"unchanged"} otherwise; it reads
the sign of the change only and makes no claim of significance.

Errors: \code{x} neither a data frame, a numeric vector nor a \code{ts}; \code{value},
\code{period} or \code{by} naming a column that does not exist; a non-numeric or
infinite \code{value}; for \code{units = "count"}, negative or fractional values;
\code{lag} not a positive whole number; \code{conflvl} outside (0, 1); an unknown
\code{units} or \code{direction}; a \code{prdord} that is not distinct labels, lacks a
label of the data, or is given for periods that are not text.

\subsection{0.5.x argument names}{

The 0.5.x names \code{period}, \code{min_base}, \code{conf_level} and
\code{direction} are still accepted for \code{prd}, \code{minbase}, \code{conflvl}
and \code{dir}, the names to use, as are the 0.5.x values
\code{"higher_is_better"} and \code{"lower_is_better"} of \code{dir}. A call
that gives both names of one argument is refused.
}
}
\section{Write a change table as delimited text, JSON or Markdown (\code{yoydelim})}{

\code{yoycsv()} separates fields with a comma and quotes any field that
contains one; \code{yoytsv()} separates with a tab and replaces any tab
inside a field, since a tab-separated field cannot contain one and
writing it would shift every column after it.
\code{yoyjs()} writes an object with \code{settings} (value, period, grouping,
lag, units, minimum base, confidence level, direction), \code{summary} (from
\code{\link[=yoysmry]{yoysmry()}}) and \code{rows}, using the package's own
JSON codec.
\code{yoymd()} writes a pipe table meant for reading: values formatted
(every numeric column right-aligned),
percentages signed and rounded, the interval as \verb{[lower, upper]}, notes in
the last column, and the settings in an italic line under the table.


The CSV and TSV writers export every column of the object (the period and
grouping columns, \code{value}, \code{previous}, \code{change}, the percent or
percentage-point change, \code{flag}, the interval and \code{verdict}), so the note
explaining a missing or flagged figure stays with its row. Quoting in the
CSV follows RFC 4180 (a field with a comma, a quote or a line break is
quoted, quotes doubled). The metadata line names the value and period
columns, the grouping, the lag, the units, and for counts the interval's
confidence level and the base below which changes are noted. A pipe inside
a Markdown cell is escaped. An existing file is overwritten. Errors when
\code{x} does not come from \code{\link[=yoy]{yoy()}}, or \code{digits} is not a whole
number.

}
\section{Label a period without changing it (\code{yoylbl})}{

Attaches display labels to the periods of a change table from
\code{\link[=yoy]{yoy()}},
so a fiscal year keyed as 2023 can print as \code{"2022/23"}, or a year can
carry a note such as \dQuote{(COVID)}. The arithmetic already ran on the
period's value, so a label can only affect what is printed: relabelling
cannot move a number.


The labels are stored in a new \code{perlbl} column, and the
table's \code{yoy} attribute is marked so that \code{print()},
\code{\link[=yoyhtml]{yoyhtml()}}, \code{\link[=yoypdf]{yoypdf()}} and the
delimited writers show the label in
place of the period. The period column itself is unchanged, as are all
values, changes and verdicts.

\code{labels} is interpreted as follows: a function is called once on the
period column and must return one label per row; a named character vector
maps periods (matched as strings) to labels, and periods it does not name
keep their own value; an unnamed character vector gives one label per
distinct period, in order of first appearance.

Errors: \code{x} not from \code{\link[=yoy]{yoy()}}; an unnamed vector whose length is
not
the number of distinct periods; a function that does not return one label
per row.

}
\section{Colour palettes for change tables (\code{yoypals})}{

Lists the names of the colour palettes that the change-table renderers
accept. In every palette the colour says whether a change is good or bad
news for the series, not whether the number went up or down: the arrow in
the table carries the sign, and the colour carries the
\code{direction} chosen in \code{\link{yoy}}. Use this to see which values
the \code{palette} argument of \code{print()}, \code{\link{yoyhtml}} and
\code{\link{yoypdf}} takes.


Three palettes are defined:
\describe{
\item{\code{"diverging"}}{the default; red-orange (\code{#c2492f}) for bad
news and teal (\code{#1b7f6b}) for good news, hues pulled apart so the
pair stays distinguishable in the common forms of colour blindness.}
\item{\code{"safe"}}{orange (\code{#b8621b}) and blue (\code{#18567d}),
safe for deuteranopia and protanopia alike.}
\item{\code{"mono"}}{black on grey; \code{print()} emits no colour codes
at all with this palette.}
}
Unchanged rows and rows without a comparison use grey (\code{#6b6b6b}).
The verdict-to-colour mapping is: \code{"worse"} uses the bad colour and
\code{"better"} the good colour. With \code{direction = "neutral"} in
\code{\link{yoy}} the verdicts are \code{"up"}/\code{"down"}, which say
nothing about good or bad news, so those rows use the grey as well; the
arrow still shows the sign.
A palette name not in this list is an error in every renderer.

}
\section{Render a change table to HTML or PDF (\code{yoyren})}{

Writes a change table from \code{\link[=yoy]{yoy()}} to a file for people who will not
run
R: \code{yoyhtml()} to a single self-contained web page, \code{yoypdf()}
to a PDF. Each row shows the period, the value, the previous value, the
change and the percent change, coloured by whether it is better or worse,
with the exact interval and any flags; the HTML page also has summary
cards from \code{\link[=yoysmry]{yoysmry()}}. Use them to hand a reviewed set
of
period-over-period changes to a manager, a journalist or a court.


Neither backend needs a package beyond base R. The HTML page inlines its
stylesheet, makes no external requests (no fonts, scripts or images from
the network) and escapes every value, so the file stays the artefact and
renders the same later. Rows are coloured by the table's \code{verdict}:
\code{"worse"} in the palette's bad colour, \code{"better"} in its good
colour, everything else (including the \code{"up"} and \code{"down"} of
\code{direction = "neutral"}) in its neutral grey. Labels set
with \code{\link[=yoylbl]{yoylbl()}} replace the period. For percentage units
the change is
shown in points. The page ends with the package version that wrote it.

The PDF is drawn on R's own \code{pdf()} device with its standard fonts,
which cannot draw arrows or dashes, so those are written in ASCII (\code{+},
\code{-}). Long tables are split over pages at 0.22 inch per row, with
\dQuote{page i of n} labels; notes go under the last page's rows when they
fit and on pages of their own otherwise. The interval column appears only
when the table has \code{pctlo} and \code{pctup} (counts).

Both overwrite \code{file}. Errors: \code{x} not from \code{\link[=yoy]{yoy()}}; a
\code{pal} not in \code{\link[=yoypals]{yoypals()}}; a file that cannot
be written.

}
\section{Summarise a change table (\code{yoysmry})}{

Collapses a period-over-period change table from \code{\link{yoy}} into
one row per series (or one row per group when \code{yoy()} was called with
\code{by}). Each row gives the first and last observed periods, the total
change between them, the compound annual growth rate, and how many
period-to-period changes went up, went down or stayed flat. Use it to
report the whole span of a series in one line next to the detailed table.


Rows whose \code{value} is missing are dropped before the summary,
and the remaining rows are sorted by period, text periods in the order
\code{yoy()} read them (its \code{prd} and \code{prdord}). Periods with no
order (text \code{yoy()} could not read, an unordered factor) have no first
or last: \code{from}, \code{to}, \code{first}, \code{last}, \code{totalpct}
and \code{cagrpct} are then \code{NA}, with a warning saying why. With
\eqn{v_1} the first and \eqn{v_T} the last observed value, the total
change is \deqn{100 (v_T / v_1 - 1)} and, with
\eqn{s = (T - 1) / \mathrm{lag}} steps of length \code{lag},
\deqn{100 \left( (v_T / v_1)^{1/s} - 1 \right).} Both are \code{NA} when
\eqn{v_1 \le 0}, because a growth rate out of zero does not exist;
\code{cagrpct} is also \code{NA} for a single period. \code{"Annual"} in CAGR
assumes one period is a year; for monthly or quarterly data read it as the
compound rate per \code{lag} periods.

The \code{up}, \code{down} and \code{flat} counts are taken from the
percent-change column (\code{pctchg}, or \code{ppchg} for
\code{units = "percent"}). A change out of a zero base has no percent
change and is not counted in any of the three. A group with no non-missing
value gives a row of \code{NA} with \code{periods = 0}.

Anything other than a \code{yoy()} result is refused with the error
\dQuote{\code{object} must be a yoy() result}.

}
\section{Write a change table to a file, in whatever format the name implies (\code{yoywr})}{

Writes a period-over-period table from \code{\link[=yoy]{yoy()}} in the format the
file
name implies, so one call serves a web page, a PDF for a report, a CSV for
a spreadsheet, JSON for a program or Markdown for a README. Every format is
written from the same object, with each row's note attached, so the number
a reader sees and the number a pipeline reads are the same.


The extension is matched case-insensitively: \code{.html} and \code{.htm}
go to \code{\link[=yoyhtml]{yoyhtml()}}, \code{.pdf} to
\code{\link[=yoypdf]{yoypdf()}}, \code{.csv} to
\code{\link[=yoycsv]{yoycsv()}}, \code{.tsv} and \code{.tab} to
\code{\link[=yoytsv]{yoytsv()}}, \code{.json} to
\code{\link[=yoyjs]{yoyjs()}}, \code{.md} and \code{.markdown} to
\code{\link[=yoymd]{yoymd()}}. An
existing file is overwritten. Errors when \code{x} does not come from
\code{\link[=yoy]{yoy()}}, when the format cannot be read from the extension (pass
\code{format}), or when \code{format} is not one of the names below; and
whatever error the chosen writer raises.

}
\references{

Okabe, M. and Ito, K. (2008). Color Universal Design (CUD):
how to make figures and presentations that are friendly to colorblind
people. jfly.uni-koeln.de/color


Frost, J. R. (1996). The Theory of Search: A Simplified
Explanation. Soza and Company and U.S. Coast Guard Office of Search and
Rescue. Chapter 6.

Koopman, B. O. (1957). The theory of search. III. The optimum
distribution of searching effort. Operations Research 5(5), 613-626.
DOI 10.1287/opre.5.5.613


Frost, J. R. (1996). The Theory of Search: A Simplified
Explanation. Soza and Company and U.S. Coast Guard Office of Search and
Rescue. Chapters 3-6.


The exact interval for a ratio of two counts is the conditional-binomial
(Clopper-Pearson) one, which is the construction
\code{stats::poisson.test} uses and which this is verified against. On
the reporting conventions, the Toronto Police Service's \emph{Understanding
Strip Searches in 2020 Methodological Report} -- in the local corpus
-- reports year-over-year change on exactly this kind of
administrative extract, and is the shape this function is built for.

}
\seealso{

\code{\link{instcli}} to put the command on your PATH.


\code{\link{mnfdiff}}, \code{\link{vrfcps}},
\code{\link{usecpstmpl}}.


\code{\link[=cpsdrft]{cpsdrft()}},
\code{\link[=profcols]{profcols()}},
\code{\link[=valsch]{valsch()}},
\code{\link[=rptmd]{rptmd()}} to write it out.


\code{\link{dlogout}} to remove the key.


\code{\link{dlogin}}.


\code{\link[=drfthtml]{drfthtml()}} for a file to hand on.


\code{\link[=drftapp]{drftapp()}} for the same report as a Shiny app,
\link[=plot-methods]{plot()} for the same charts in base graphics.


\code{\link{blcli}} for the verbs.


\code{\link{llmchat}} for a conversation without the
help; \code{\link{llmstat}} and
\code{\link{llmrte}} to see where a question would go.


\code{\link{llmprvd}} for the providers and
their variables, \code{\link{llmstat}} for which routes
are reachable, \code{\link{llmask}} which uses these
settings.


\code{\link{llmask}} for one question with the
package help at hand.


\code{\link{llmstat}}, \code{\link{llmrte}}.


\code{\link{llmstat}} for every route at once,
\code{\link{llmprvd}} for the provider ids.


\code{\link{llmrte}} for the one route a
question would take; \code{\link{llmprvd}}.


\code{\link{cpsrfrsh}}, \code{\link{cpsbndl}}.


\code{\link{gplume}}; \code{plot()} draws the field as an
image with contours (see \code{\link{plot-methods}}).


\code{\link{evstudy}}, \code{\link{plot-methods}}.


\code{\link[=cpsdrft]{cpsdrft()}} to compare two of these,
\code{\link[=cmom]{cmom()}} for the underlying kernel.


\code{\link[=rgnmapintg]{rgnmapintg()}},
\code{\link[=rgnmapcmp]{rgnmapcmp()}},
\code{\link[=rgnmapalt]{rgnmapalt()}}


\code{\link[=rgnmapcmp]{rgnmapcmp()}},
\code{\link[=rgnmapintg]{rgnmapintg()}}


\code{\link[=rgnmapalt]{rgnmapalt()}},
\code{\link[=rgnmapintg]{rgnmapintg()}}


\code{\link[=rgnmapcmp]{rgnmapcmp()}},
\code{\link[=rgnmapalt]{rgnmapalt()}},
\code{\link[=rgncov]{rgncov()}}


\code{\link[=rgnmapcmp]{rgnmapcmp()}},
\code{\link[=rgnmapalt]{rgnmapalt()}}


\verb{rmbl app} on the command line (\code{\link[=blcli]{blcli()}});
\code{\link[=rmbldemo]{rmbldemo()}} for the datasets
the tabs open on.


\code{\link[=rmblapp]{rmblapp()}}, whose tabs open on these datasets;
\code{\link[=mksyncol]{mksyncol()}}.


\code{\link[=cpsrpt]{cpsrpt()}}


\code{\link{blcli}} (the verify verb), \code{\link{vrfcps}}.


\code{\link[=yoyhtml]{yoyhtml()}}, \code{\link[=yoypdf]{yoypdf()}},
\code{\link[=yoysmry]{yoysmry()}}


\code{\link[=fylbl]{fylbl()}}


\code{\link{yoy}}, \code{\link{yoysmry}},
\code{\link{yoyhtml}}, \code{\link{yoypdf}}.


\code{\link{yoy}}, \code{\link{yoypals}}.


\code{\link[=yoyhtml]{yoyhtml()}}, \code{\link[=yoypdf]{yoypdf()}},
\code{\link[=yoycsv]{yoycsv()}}

}
\examples{

\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# Needs a language model: a provider key (e.g. ANTHROPIC_API_KEY), your own
# endpoint or a local Ollama.
agentbndl("scaffold a bundle for analysis.R from the Toronto CKAN data")
agentbndl("sign and verify my capsule", route = "ollama")
\dontshow{\}) # examplesIf}
\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# With every route switched off (no key in the environment and no saved
# settings: the settings folder is pointed at an empty one) the call returns
# a setup hint, not an error, and reaches no network -- safe to run anywhere:
keys <- c(
  "OLLAMA_HOST",
  "MORIE_LLM_BASE_URL",
  "XDG_CONFIG_HOME",
  llmprvd()$key_env,
  llmprvd()$alt_env[nzchar(llmprvd()$alt_env)]
)
old <- Sys.getenv(keys, unset = NA)
Sys.setenv(
  OLLAMA_HOST = "off",
  MORIE_LLM_BASE_URL = "off",
  XDG_CONFIG_HOME = tempfile()
)
Sys.unsetenv(setdiff(
  keys,
  c("OLLAMA_HOST", "MORIE_LLM_BASE_URL", "XDG_CONFIG_HOME")
))
cat(agentbndl("hello"))
for (v in keys) {
  if (is.na(old[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(old[v]))
  }
}

# argument errors come first
try(agentbndl(""))
try(agentbndl("plan a bundle", route = "hosted"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
blcli("version")
blcli("help")

# one verb's usage
blcli(c("help", "data"))

# capture the output instead of printing it
con <- textConnection("lines", "w")
status <- blcli(c("functions", "^drbg_"), out = function(x) {
  cat(x, file = con)
})
close(con)
status
lines

# an unknown verb is a usage error: status 2, nothing run
blcli("nonsense")

# check a capsule as the rmbl GitHub Action does
d <- usecpstmpl(tempfile("capsule-"), ex = TRUE)
invisible(cpsrfrsh(d))
blcli(c("verify", d))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# these read every help page, which takes a few seconds
blcli(c("functions", "json"))
blcli(c("describe", "anltab"))
blcli(c("examples", "perdays"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
blpal("okabe", 3)
# plotopt() returns the options in force, so keep them before a change
old <- plotopt()
plotopt(palette = "grey", grid = FALSE)
plotopt(palette = old$palette, grid = old$grid)

# an interpolated sequential scale, shown as swatches
cols <- blpal("sequential", 7)
barplot(
  rep(1, 7),
  col = cols,
  border = NA,
  axes = FALSE,
  names.arg = cols,
  las = 2,
  cex.names = 0.6
)

# the same palette in a base plot of your own
plot(1:8, pch = 19, cex = 3, col = blpal("okabe"))

# names are checked
try(blpal("viridis"))
try(plotopt(colour = "red"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- blprog("squares", 50, delay = 0)
for (i in 1:50) {
  x <- sum(seq_len(i)^2)
  p$tick(info = sprintf("step \%d/50", i))
}
p$done("squares: 50 steps")

# work with no count: a spinner and the stage
f <- function() {
  p <- blprog("model", 0, delay = 0)
  on.exit(p$done(), add = TRUE)
  p$update(info = "fitting")
  p$wait(0.2)
  p$update(info = "writing")
  invisible(TRUE)
}
f()
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
ct <- cohtrnd(p, "district", "month", "crmrate", "refmonth",
                    win = c(-10, 10))
plot(ct)

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
cohtrnd(own, "town", "year", "rate", "first", win = c(-3, 3), ma = 1)
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- usecpstmpl(tempfile("capsule-"), ex = TRUE)
cpsrfrsh(d)            # the first pin: the data file is added
vrfcps(d)$ok
cpsrfrsh(d)$change     # the source has not changed since

try(cpsrfrsh(tempfile()))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
ref <- data.frame(
  id = 1:200,
  score = stats::runif(200, 0, 10),
  grade = sample(c("a", "b", "c"), 200, TRUE),
  stringsAsFactors = FALSE
)

# A fresh extract from the same process: nothing to report.
cur <- ref
cur$score <- stats::runif(200, 0, 10)
cpsrpt(cur, ref = ref, schema = infsch(ref))

# One rescaled column and a new category: both surface, worst first.
bad <- cur
bad$score <- bad$score * 5
bad$grade[1:80] <- "z"
r <- cpsrpt(bad, ref = ref, schema = infsch(ref))
r
r$verdict
r$findings[, c("severity", "check", "subject")]

# A missing column is fatal, because nothing downstream can run.
cpsrpt(bad[, c("id", "score")], ref = ref, schema = infsch(ref))$verdict

# validation rules join the findings, and chunks are pinned with a Merkle
# root
r2 <- cpsrpt(
  bad,
  rules = list(ruleinset("grade", c("a", "b", "c"))),
  chunks = c("part one", "part two")
)
summary(r2)
r2$digest$merkle_root

# a data frame is required
try(cpsrpt(1:10))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
old <- Sys.getenv("XDG_CONFIG_HOME", unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile()) # never touch your real credentials

# input checks that need no network
try(dlogin(token = "   "))
try(dlogin(email = "not-an-email"))

if (is.na(old)) {
  Sys.unsetenv("XDG_CONFIG_HOME")
} else {
  Sys.setenv(XDG_CONFIG_HOME = old)
}
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# these contact the sign-in service
dlogin(token = "<key issued at https://www.rmorie.com/access/>")
dlogin(email = "you@example.com")
dlogin(email = "you@example.com", code = "123456")
dlogin() # GitHub device flow; asks for the terms, name and reason
# everything given up front, for a script
dlogin(accter = TRUE, name = "Ada Lovelace",
                     purp = "Course project on court delays in Ontario.")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
old <- Sys.getenv("XDG_CONFIG_HOME", unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile()) # a scratch credentials folder

# nothing stored yet
dlogout()

# a file holding a key and another tool's entry: only the key goes
d <- file.path(Sys.getenv("XDG_CONFIG_HOME"), "morie")
dir.create(d, recursive = TRUE)
writeLines(
  '{"hosted_key": "k-123", "other_tool": 1}',
  file.path(d, "credentials.json")
)
dlogout()
readLines(file.path(d, "credentials.json"))

# a damaged file is refused, not overwritten
writeLines("not json", file.path(d, "credentials.json"))
try(dlogout())

if (is.na(old)) {
  Sys.unsetenv("XDG_CONFIG_HOME")
} else {
  Sys.setenv(XDG_CONFIG_HOME = old)
}
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(5)
ref <- data.frame(value = stats::rnorm(400),
                  grade = sample(c("a", "b", "c"), 400, TRUE))
cur <- data.frame(value = stats::rnorm(400, 0.4),
                  grade = sample(c("a", "b", "c"), 400, TRUE))
d <- cpsdrft(ref, cur)
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
if (requireNamespace("shiny", quietly = TRUE)) {
  # drftapp() alone opens on two CSV files to upload
  print(drftapp(d, ref = ref, cur = cur))
}
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(5)
ref <- data.frame(value = stats::rnorm(400),
                  grade = sample(c("a", "b", "c"), 400, TRUE))
cur <- data.frame(value = stats::rnorm(400, 0.4),
                  grade = sample(c("a", "b", "c"), 400, TRUE))
d <- cpsdrft(ref, cur)
f <- file.path(tempdir(), "drift.html")
drfthtml(d, f, title = "Pinned against fetched")
file.exists(f)

# narrower bands open the page with more columns to look at
drfthtml(d, f, warn = 0.02, fail = 0.05)
unlink(f)
try(drfthtml(list(), f))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
msg <- "`prompt` must be a single non-empty string"
explerr(msg, pkgs = "rmoriebricklayer")

# a condition object
e <- tryCatch(kemsz(3), error = identity)
explerr(e, n = 1)

# the failed rows of a capsule check
rows <- data.frame(
  check = c("data_present", "data_sha256"),
  ok = c(TRUE, FALSE),
  detail = c("d.csv", "expected 01..., got 9c...")
)
explerr(rows)$explanation

# n must be at least 1
try(explerr(msg, n = 0))
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# an error caught with try(), and the message as R prints it, with the call
# in front
r <- try(llmcfg(no.such = 1), silent = TRUE)
explerr(r, pkgs = "rmoriebricklayer")
explerr(
  paste0(
    "Error in mrkprf(x, 9) : `index` must be between 1 and the number ",
    "of chunks"
  ),
  n = 1
)

# a message retyped from memory
explerr("index between number chunks", n = 1)

# R's own messages are not in the table: no rows
nrow(explerr("object 'x' not found"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
fylbl(2019:2023)

fylbl(2023, short = FALSE)

fylbl(2023, sep = "-")

# strings work; something that is not a year gives NA
fylbl(c("2023", "n/a", NA))

# logical input is refused
try(fylbl(TRUE))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# into a scratch folder, so nothing on your PATH changes
d <- file.path(tempdir(), "bin")
p <- instcli(dir = d)
list.files(d)
readLines(p)[1:4]

# one name only
instcli(dir = d, name = "rmbl")
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
instcli()   # ~/.local/bin/rmoriebricklayer and ~/.local/bin/rmbl
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
old <- Sys.getenv(c("XDG_CONFIG_HOME", "OLLAMA_HOST"), unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile(), OLLAMA_HOST = "off")

# arguments are checked before any route is resolved
try(llmask(c("two", "questions")))

# a provider named explicitly without its key
try(llmask("What is a capsule?", route = "anthropic"))

# no route set up: the error lists what to set up
try(llmask("What is a capsule?", route = "ollama", docs = FALSE))

for (v in names(old)) {
  if (is.na(old[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(old[v]))
  }
}
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs your own key or a local model, and the network
Sys.setenv(ANTHROPIC_API_KEY = "...")
llmask("What does a SHA-256 provenance record protect against?")
llmask("Explain an E-value of 2.1", route = "ollama")
llmask("Summarise Benford's law in two lines", docs = FALSE,
                   syspro = "You are terse.")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Work in a temporary settings directory so your own settings are
# untouched.
old <- Sys.getenv("XDG_CONFIG_HOME", unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile("cfg"))

# Reading the settings writes nothing.
cfg <- llmcfg()
head(cfg[, c("key", "value", "source")])
nrow(cfg)

# Save a local Ollama model and use it for every request; the key column
# shows where each value now comes from.
llmcfg(ollama.model = "qwen3:8b", route = "ollama")
cfg <- llmcfg()
cfg[cfg$key \%in\% c("route", "ollama.model"), c("key", "value", "source")]

# A key is shown only as set or not set.
llmcfg(own.url = "http://localhost:1234/v1", own.key = "k-123")
cfg <- llmcfg()
cfg$value[cfg$key == "own.key"]

# Back to the defaults: NULL removes a saved setting.
llmcfg(route = NULL, ollama.model = NULL, own.url = NULL, own.key = NULL)

# Unknown settings and retired routes are refused.
try(llmcfg(colour = "blue"))
try(llmcfg(route = "hosted"))

if (is.na(old)) {
  Sys.unsetenv("XDG_CONFIG_HOME")
} else {
  Sys.setenv(XDG_CONFIG_HOME = old)
}
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# your Anthropic key and model, and always use them
llmcfg(anthropic.key = "sk-ant-...", route = "anthropic")
# an Ollama server on another machine
llmcfg(ollama.url = "http://192.168.1.20:11434", ollama.model = "qwen3:8b")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
old <- Sys.getenv(c("XDG_CONFIG_HOME", "OLLAMA_HOST"), unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile(), OLLAMA_HOST = "off")

# a conversation is a list of role/content turns
turns <- list(
  list(role = "system", content = "Answer in one sentence."),
  list(role = "user", content = "Name one type of survey weight.")
)
str(turns)

# a malformed turn is refused before anything is sent
try(llmchat(list("Name one type of survey weight.")))

# with no route set up the error says what to set up
try(llmchat(turns, route = "ollama"))

for (v in names(old)) {
  if (is.na(old[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(old[v]))
  }
}
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# needs a key or a local model, and the network
Sys.setenv(ANTHROPIC_API_KEY = "...")
llmchat(turns)
llmchat(c(turns, list(
  list(role = "assistant", content = "A design weight."),
  list(role = "user", content = "And a second one?")
)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
old <- Sys.getenv(c("XDG_CONFIG_HOME", "OLLAMA_HOST"), unset = NA)
Sys.setenv(XDG_CONFIG_HOME = tempfile(), OLLAMA_HOST = "off")

# no route set up: an empty vector, nothing contacted
m <- llmmdls(route = "ollama")
length(m)
attributes(m)

# a provider named without its key is an error
try(llmmdls(route = "anthropic"))

for (v in names(old)) {
  if (is.na(old[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(old[v]))
  }
}
\dontshow{\}) # examplesIf}
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
# with a key set, the provider is asked (network)
m <- llmmdls(route = "openai", tmout = 10)
head(m)
attr(m, "default")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- llmprvd()
p[, c("id", "key_env", "key_set")]

# the providers that use the Anthropic or Gemini wire format
p[p$api != "openai", c("id", "api", "base")]

# providers with a default model
p[!is.na(p$default_model), c("id", "default_model")]
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# keep the examples away from your real settings and from the network
old <- Sys.getenv(
  c(
    "XDG_CONFIG_HOME",
    "OLLAMA_HOST",
    "MORIE_LLM_BASE_URL",
    "MORIE_LLM_MODEL"
  ),
  unset = NA
)
Sys.setenv(XDG_CONFIG_HOME = tempfile(), OLLAMA_HOST = "off")

# Ollama switched off: that route is not available
llmrte("ollama")

# an OpenAI-compatible server of your own on this machine (not contacted
# here)
Sys.setenv(
  MORIE_LLM_BASE_URL = "http://localhost:8080/v1",
  MORIE_LLM_MODEL = "llama3"
)
str(llmrte())

# the retired hosted tier, and a route name that does not exist
try(llmrte("hosted"))
try(llmrte("nope"))

for (v in names(old)) {
  if (is.na(old[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(old[v]))
  }
}
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
old <- Sys.getenv(
  c(
    "XDG_CONFIG_HOME",
    "OLLAMA_HOST",
    "MORIE_LLM_BASE_URL",
    "MORIE_LLM_MODEL"
  ),
  unset = NA
)
# a scratch settings folder and the local route off: no network at all
Sys.setenv(XDG_CONFIG_HOME = tempfile(), OLLAMA_HOST = "off")
st <- llmstat()
st[, c("route", "status")]

# your own OpenAI-compatible server shows as configured (it is not contacted)
Sys.setenv(
  MORIE_LLM_BASE_URL = "http://localhost:8080",
  MORIE_LLM_MODEL = "llama3"
)
llmstat()[1, ]

for (v in names(old)) {
  if (is.na(old[[v]])) {
    Sys.unsetenv(v)
  } else {
    do.call(Sys.setenv, as.list(old[v]))
  }
}
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
l <- loounit(p, "district", "month", "crmrate", "reformed")
range(l$estimate)
plot(l)

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
# each adopting town left out in turn, weighted by population
loounit(own, "town", "year", "rate", "bylaw", w = "pop")
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
a <- data.frame(
  path = c("a.csv", "b.csv"),
  sha256 = c("01", "02"),
  size_bytes = c(10, 20)
)
b <- data.frame(
  path = c("a.csv", "c.csv"),
  sha256 = c("09", "03"),
  size_bytes = c(12, 30)
)
d <- mnfdiff(a, b)
d
d$change

# a provenance record and its re-pinned copy
p <- list(
  resource = list(filename = "a.csv", sha256 = "01", size_bytes = 10)
)
q <- p
q$resource$sha256 <- "09"
mnfdiff(p, q)$change

try(mnfdiff(1, b))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Frost's example: an effort of 4 E^2 on a point datum
optsqr(4)
# poor search conditions: the random search curve
optsqr(4, model = "random")
# three searches in a row, each optimal for what the last ones left
optsqr(c(4, 4, 8), E = 2)
try(optsqr(-1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
f <- plmfld(
  100,
  5,
  50,
  x = seq(100, 3000, by = 100),
  y = seq(-500, 500, by = 50)
)
dim(f$field)
plot(f)

# where the ground-level maximum lies, downwind
f$x[which.max(apply(f$field, 1, max))]

# a more unstable atmosphere brings the plume down sooner
fb <- plmfld(
  100,
  5,
  50,
  x = seq(100, 3000, by = 100),
  y = seq(-500, 500, by = 50),
  stab = "B"
)
fb$x[which.max(apply(fb$field, 1, max))]

# the coordinates must increase
try(plmfld(100, 5, 50, x = c(300, 100), y = c(-50, 0, 50)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
p <- polex()
es <- list(
  "Crime rate" = evstudy(p, "district", "month", "crmrate", "refmonth",
                             leads = 3, lags = 4),
  "Arrest rate" = evstudy(p, "district", "month", "arrrate", "refmonth",
                              leads = 3, lags = 4))
plotevgrid(es, style = "stata")

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
plotevgrid(list(
  "Rate" = evstudy(own, "town", "year", "rate", "first", leads = 3,
                   lags = 3),
  "Income" = evstudy(own, "town", "year", "income", "first", leads = 3,
                     lags = 3)
))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
plotlrnz(c(1, 1, 2, 3, 5, 8, 13))
plotfnl(obs = c(4, 20, 50, 9), expd = c(5, 22, 40, 20),
            area = c("a", "b", "c", "d"))

# a funnel with one area well above expectation, around a target of 1
set.seed(4)
e <- c(5, 10, 20, 40, 80, 160)
o <- rpois(6, e)
o[5] <- 130
fd <- plotfnl(o, e, area = LETTERS[1:6], lvls = 0.95)
fd[fd$outside, ]

# a curve from lorenz(), styled
plotlrnz(lorenzc(c(rep(1, 50), rep(10, 5), 200)), col = "darkred",
            main = "Placements per person")

# a hand-made frame must be cumulative shares
try(plotlrnz(data.frame(population = c(0, 0.5, 1), value = c(0, 0.8, 0.5))))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(3)
x <- c(stats::rnorm(200), stats::rnorm(200, 2, 0.6))
g <- rep(c("before", "after"), each = 200)
plotrdg(x, g)
plotecdf(x, g)
plotvln(x, g)
plothex(x, x + stats::rnorm(400), bins = 20)
plotgain(stats::rexp(400), g)
try(plotrdg("a"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(5)
days <- seq(as.Date("2024-01-01"), as.Date("2024-12-31"), by = "day")
plotcal(days, stats::rpois(length(days), 5 + 3 * (format(days, "\%u") > "5")))
d <- expand.grid(
  year = 2015:2024,
  area = c("north", "south", "east", "west")
)
d$n <- stats::rpois(
  nrow(d),
  50 + 10 * as.integer(d$area) + 2 * (d$year - 2015)
)
plotsm(d$n, d$year, d$area)
plothrz(d$n, d$year, d$area)
plotbump(d$n, d$year, d$area)
try(plotcal("not a date", 1))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(9)
df <- data.frame(
  clean = stats::rnorm(100),
  skewed = c(stats::rnorm(99), 500),
  grade = sample(c("a", "b", "c"), 100, TRUE),
  gappy = c(rep(NA, 10), stats::runif(90))
)

profcols(df)

# The mean and the median agree on `clean` and disagree sharply on
# `skewed`, which is the outlier announcing itself.
p <- profcols(df)
p[p$column \%in\% c("clean", "skewed"), c("column", "mean", "median")]

# The histogram column shows shape no summary number carries.
p[, c("column", "hist")]

# Zeros, negatives and infinities are counted separately, because
# each breaks a different downstream computation (a log, a square
# root, an average).
p[, c("column", "nzero", "nneg", "ninf")]

# deciles instead of quartiles
names(profcols(df, qnts = c(0.1, 0.9)))

# a table with no columns has nothing to profile
try(profcols(df[, 0]))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Four regions, two of which hold a facility.
cov <- rgncov(
  reg = c("A", "B", "C", "D"),
  pop = c(1200000, 800000, 450000, 90000),
  units = c(3, 0, 1, 0)
)
cov

# The covered share is reported, and is not a rate denominator.
attr(cov, "coverage")$covshr
attr(cov, "coverage")[c("withunit", "uncpop")]

# counting units per region from a facility list first
fac <- c("C", "A", "A", "A")
regions <- c("A", "B", "C", "D")
units <- as.vector(table(factor(fac, levels = regions)))
rgncov(regions, c(1200000, 800000, 450000, 90000), units)$hasunit

# a region listed twice is refused
try(rgncov(c("A", "A"), c(10, 20), c(1, 0)))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
cw <- data.frame(
  inst = c("North Jail", "South Jail", "Hill Jail"),
  cd = c("3557", "3520", "3506"),
  stringsAsFactors = FALSE
)

# a name-based route that is known to mis-place one unit
route <- c(
  "North Jail" = "3557",
  "South Jail" = "3520",
  "Hill Jail" = "3519"
)
rgnmapalt(cw, "inst", "cd", route, known = "Hill Jail")

# an undocumented disagreement is what the check is for
route["South Jail"] <- "3521"
d <- rgnmapalt(cw, "inst", "cd", route, known = "Hill Jail")
sum(!d$known)

# the route as a data frame with the same column names
routedf <- data.frame(
  inst = c("North Jail", "Hill Jail"),
  cd = c("3557", "3506")
)
nrow(rgnmapalt(cw, "inst", "cd", routedf))

# an unnamed vector cannot be matched to units
try(rgnmapalt(cw, "inst", "cd", c("3557", "3520")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
pub <- data.frame(
  inst = c("North Jail", "South Jail"),
  cd = c("3557", "3520"),
  stringsAsFactors = FALSE
)
obs <- pub
rgnmapcmp(pub, obs, "inst")

# a changed assignment is reported with the unit that moved
obs$cd[2] <- "3521"
rgnmapcmp(pub, obs, "inst")

# a unit on one side only, and a coordinate that only moved by rounding noise
pub$lat <- c(44.39, 43.65)
obs2 <- data.frame(
  inst = c("North Jail", "Hill Jail"),
  cd = c("3557", "3506"),
  lat = c(44.39 + 1e-12, 45.1)
)
rgnmapcmp(pub, obs2, "inst", cols = c("cd", "lat"))

# a compared column must be in both maps
try(rgnmapcmp(pub, obs, "inst", cols = "lat"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
cw <- data.frame(
  inst = c("North Jail", "South Jail", "East Jail"),
  cd = c("3557", "3520", "3506"),
  stringsAsFactors = FALSE
)
rgnmapintg(cw, "inst", "cd", regs = c("3557", "3520", "3506"))

# a region code the geography does not know fails the third check
cw$cd[3] <- "2406"
rgnmapintg(cw, "inst", "cd", regs = c("3557", "3520", "3506"))

# a unit listed twice and a unit with no region, without a reference list
cw2 <- rbind(
  cw,
  data.frame(inst = c("North Jail", "West Jail"), cd = c("3560", ""))
)
rgnmapintg(cw2, "inst", "cd")

# the columns must exist
try(rgnmapintg(cw, "institution", "cd"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# Two square regions as a small GeoJSON boundary file.
gj <- tempfile(fileext = ".geojson")
writeLines(
  paste0(
    '{"type":"FeatureCollection","features":[',
    '{"type":"Feature","properties":{"CDUID":"A","CDNAME":"West"},"geo',
    'metry":',
    '{"type":"Polygon","coordinates":[[[-80,43],[-79,43],[-79,44],[-80',
    ',44],[-80,43]]]}},',
    '{"type":"Feature","properties":{"CDUID":"B","CDNAME":"East"},"geo',
    'metry":',
    '{"type":"Polygon","coordinates":[[[-79,43],[-78,43],[-78,44],[-79',
    ',44],[-79,43]]]}}]}'
  ),
  gj
)

if (requireNamespace("sf", quietly = TRUE)) {
  obs <- rgnmappts(
    x = c(-79.5, -78.5, -70),
    y = c(43.5, 43.5, 43.5),
    unit = c("North Jail", "South Jail", "Far Jail"),
    bounds = gj,
    fields = c("CDUID", "CDNAME")
  )
  print(obs)
  # the point outside both regions is reported, not dropped
  obs$unit[obs$nreg != 1]

  # a field the file does not have is an error
  print(try(rgnmappts(-79.5, 43.5, "North Jail", gj, fields = "PRUID")))
}

# no boundary file: NULL, so a script can record the check as unavailable
rgnmappts(
  -79.5,
  43.5,
  "North Jail",
  bounds = file.path(tempdir(), "missing.shp"),
  fields = "CDUID"
)
unlink(gj)
\dontshow{\}) # examplesIf}


\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
rmblapp()
rmblapp(indiex("health"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
rmbldemo()
head(rmbldemo("court"))
identical(rmbldemo("survey"), rmbldemo("survey"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
set.seed(1)
df <- data.frame(v = stats::rnorm(100), g = rep("x", 100),
                 stringsAsFactors = FALSE)
r <- cpsrpt(df)

md <- rptmd(r)
cat(head(md, 8), sep = "\n")

# Written beside the capsule it describes.
p <- tempfile(fileext = ".md")
rptmd(r, p)
file.exists(p)
unlink(p)

# a report with findings, under its own title
r2 <- cpsrpt(transform(df, v = ifelse(seq_along(v) <= 60, NA, v)))
md2 <- rptmd(r2, title = "Extract of 2024-03-01")
md2[1]
md2[grep("^## Findings", md2) + 0:4]

# only a cpsrpt() result is accepted
try(rptmd(list(verdict = "clean")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
schemapath("capsule")
s <- fromjs(paste(readLines(schemapath("bundle")), collapse = "\n"))
s$required

# only the four schemas exist
try(schemapath("nope"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
head(srchfig())
srchfig("3-4")
srchfig(5, 8)
d <- srchfig("6-3")
head(d)
try(srchfig("9-9"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
seg <- data.frame(
  EndFiscalYear = rep(2019:2023, each = 2),
  Gender = rep(c("Female", "Male"), 5),
  NumberOfPlacements = c(31, 402, 28, 377, 12, 190, 19, 268, 24, 331)
)

y <- yoy(
  seg,
  value = "NumberOfPlacements",
  prd = "EndFiscalYear",
  by = "Gender",
  dir = "lower"
)
y

# The interval is exact, so a small group does not get a confident
# percent it has not earned.
subset(as.data.frame(y), Gender == "Female")

# A percentage is handled as percentage points, not as a percent of a
# percent.
rate <- data.frame(year = 2019:2023, share = c(4.1, 4.6, 5.2, 5.0, 5.4))
yoy(rate, value = "share", prd = "year", units = "percent")

# a missing year stays a gap; a bare column name works too
yoy(
  data.frame(year = c(2019, 2021, 2022), n = c(10, 12, 15)),
  value = n,
  prd = year
)

# a quarterly series compares each quarter with the same quarter a year
# earlier
q <- ts(c(5, 6, 7, 8, 6, 7, 9, 9), frequency = 4, start = c(2020, 1))
as.data.frame(yoy(q))[5:8, c("period", "value", "previous", "pctchg")]

# text periods are read: fiscal years, quarters, months
fy <- data.frame(fy = c("2019/20", "2020/21", "2022/23"), n = c(5, 7, 9))
as.data.frame(yoy(fy, "n", "fy"))[, c("fy", "previous", "flag")]
qt <- data.frame(q = c("2021 Q4", "2022 Q1", "2022 Q2"), n = c(3, 4, 6))
as.data.frame(yoy(qt, "n", "q"))[, c("q", "previous", "pctchg")]

# labels the reader does not know take their order from `prdord`
ws <- data.frame(s = c("spring", "summer", "fall"), n = c(4, 6, 5))
yoy(ws, "n", "s", prdord = c("spring", "summer", "fall", "winter"))

# counts must be whole numbers
try(yoy(data.frame(year = 1:3, n = c(1.5, 2, 3)), "n", "year"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(year = 2019:2023, n = c(402, 377, 190, 268, 331))
y <- yoy(d, value = "n", prd = "year")

# Straight to text, for inspection.
cat(yoycsv(y, NULL))

# Markdown, for a report.
cat(yoymd(y, NULL))

# JSON keeps the settings as fields rather than as comments.
substr(yoyjs(y, NULL), 1, 80)

# rounded percentages, no metadata line, and R's own NA
cat(yoytsv(y, NULL, digits = 1, meta = FALSE, na = "NA"))

# written to a file
f <- tempfile(fileext = ".csv")
yoycsv(y, f)
read.csv(f, comment.char = "#")[, c("year", "pctchg", "flag")]

# only yoy() results are accepted
try(yoycsv(d, NULL))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
seg <- data.frame(EndFiscalYear = 2019:2023,
                  n = c(402, 377, 190, 268, 331))
y <- yoy(seg, value = n, prd = EndFiscalYear)

# 2023 means the fiscal year 2022/23, so say so.
yoylbl(y, fylbl)

# Any function will do.
yoylbl(y, function(p) paste0("FY", substr(p, 3, 4)))

# Or an explicit mapping, for the periods that need one.
yoylbl(y, c("2020" = "2019/20 (COVID)"))

# the numbers are untouched
identical(yoylbl(y, fylbl)$change, y$change)

# an unnamed vector must have one label per distinct period
try(yoylbl(y, c("a", "b")))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# the palette names
yoypals()

# use one of them when printing a change table
d <- data.frame(year = 2019:2023, n = c(40, 46, 38, 52, 49))
print(yoy(d, value = "n", prd = "year"), palette = "safe", color = FALSE)

# a name that is not a palette is refused
try(print(yoy(d, value = "n", prd = "year"), palette = "rainbow"))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(year = rep(2019:2023, each = 2),
                region = rep(c("North", "South"), 5),
                n = c(31, 402, 28, 377, 12, 190, 19, 268, 24, 331))
y <- yoy(d, value = "n", prd = "year", by = "region",
         dir = "lower")

h <- file.path(tempdir(), "change.html")
yoyhtml(y, h, title = "Placements by region")
file.exists(h)

p <- file.path(tempdir(), "change.pdf")
yoypdf(y, p, title = "Placements by region")
file.exists(p)

# a colour-blind-safe palette, no bars or intervals, and a footnote
yoyhtml(y, h, pal = "safe", bars = FALSE, intv = FALSE,
         notes = "Counts below 10 are suppressed at source.")
any(grepl("suppressed", readLines(h)))

# portrait letter pages, with fiscal-year labels
yoypdf(yoylbl(y, fylbl), p, width = 8.5, height = 11)

# only yoy() tables can be rendered
try(yoyhtml(d, h))
unlink(c(h, p))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
# one series
d <- data.frame(year = 2018:2023, n = c(120, 131, 98, 140, 155, 149))
yoysmry(yoy(d, value = "n", prd = "year"))

# one row per group; a zero base gives no percent change
g <- data.frame(year = rep(2019:2022, 2), unit = rep(c("A", "B"), each = 4),
                n = c(10, 12, 0, 15, 5, 7, 6, 9))
yoysmry(yoy(g, value = "n", prd = "year", by = "unit"))

# anything that is not a yoy() result is refused
try(yoysmry(d))
\dontshow{\}) # examplesIf}


\dontshow{if (isTRUE(getOption("rmbl.examples"))) withAutoprint(\{ # examplesIf}
d <- data.frame(year = 2019:2023, n = c(402, 377, 190, 268, 331))
y <- yoy(d, value = "n", prd = "year")

for (ext in c("csv", "tsv", "json", "md", "html")) {
  f <- file.path(tempdir(), paste0("change.", ext))
  yoywr(y, f)
  cat(ext, file.size(f), "bytes\n")
  unlink(f)
}

# an extension that names no format: say which one
f <- file.path(tempdir(), "change.txt")
yoywr(y, f, format = "csv", digits = 1)
readLines(f, n = 3)
unlink(f)
try(yoywr(y, file.path(tempdir(), "change.xlsx")))
\dontshow{\}) # examplesIf}

}
