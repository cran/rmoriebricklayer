## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## -----------------------------------------------------------------------------
seg <- data.frame(
  EndFiscalYear = rep(2019:2023, each = 2),
  Gender = rep(c("Female", "Male"), 5),
  Number_Of_Placements = c(31, 402, 28, 377, 12, 190, 19, 268, 24, 331)
)

## -----------------------------------------------------------------------------
y <- yoy(seg,
  value = Number_Of_Placements,
  period = EndFiscalYear,
  by = "Gender",
  direction = "lower_is_better"
)
y

## -----------------------------------------------------------------------------
stats::poisson.test(c(331, 268), c(1, 1))$conf.int

## -----------------------------------------------------------------------------
gap <- data.frame(year = c(2019, 2020, 2022, 2023), n = c(100, 120, 140, 150))
yoy(gap, value = n, period = year)

## -----------------------------------------------------------------------------
tiny <- data.frame(year = 2019:2021, n = c(2, 20, 25))
yoy(tiny, value = n, period = year)

## -----------------------------------------------------------------------------
as.data.frame(yoy(tiny, value = n, period = year, min_base = 0))$pct_change

## -----------------------------------------------------------------------------
rate <- data.frame(year = 2019:2023, share = c(4.1, 4.6, 5.2, 5.0, 5.4))
yoy(rate, value = share, period = year, units = "percent")

## -----------------------------------------------------------------------------
m <- stats::ts(c(10:21, 20:31), start = c(2021, 1), frequency = 12)
head(as.data.frame(yoy(m, min_base = 0))[12:14, c("period", "value",
                                                  "previous", "change")], 3)

## -----------------------------------------------------------------------------
yoy_summary(y)

## -----------------------------------------------------------------------------
stops <- data.frame(
  division = c("North", "South", "East"),
  stops = c(412, 77, 3),
  residents = c(120000, 41000, 9500))

rate(stops, stops, residents, by = "division", per = "100k")

## -----------------------------------------------------------------------------
share(stops, stops, by = "division")

## -----------------------------------------------------------------------------
d <- data.frame(
  year = rep(2021:2023, each = 2),
  division = rep(c("North", "South"), 3),
  stops = c(400, 70, 430, 66, 455, 61),
  residents = c(120000, 41000, 122000, 41500, 125000, 42000))

rate_change(d, stops, residents, year, by = "division", per = "100k")

## -----------------------------------------------------------------------------
dir <- tempdir()
for (ext in c("csv", "tsv", "json", "md", "html", "pdf")) {
  f <- file.path(dir, paste0("placements.", ext))
  yoy_write(y, f, title = "Placements by gender")
  cat(sprintf("%-5s %6d bytes\n", ext, file.size(f)))
}

## -----------------------------------------------------------------------------
cat(yoy_csv(y, NULL, digits = 1L))

## -----------------------------------------------------------------------------
cat(yoy_markdown(yoy(gap, value = n, period = year), NULL))

## -----------------------------------------------------------------------------
yoy_palettes()

## ----include = FALSE----------------------------------------------------------
unlink(file.path(dir, paste0("placements.",
                             c("csv", "tsv", "json", "md", "html", "pdf"))))

