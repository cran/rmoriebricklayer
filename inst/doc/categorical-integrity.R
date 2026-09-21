## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## -----------------------------------------------------------------------------
tab <- matrix(c(9000, 120, 2000, 220, 1500, 60, 4000, 1), ncol = 2, byrow = TRUE,
              dimnames = list(c("White", "Black", "Other", "Unknown"), c("no", "yes")))
tab
ref <- 120 / 9000
odds_ratio_check(tab, "White", c(Black = 220 / 2000 / ref, Other = 60 / 1500 / ref,
                                 Unknown = 1 / 4000 / ref))$verdict

## -----------------------------------------------------------------------------
rotated <- tab[c("Unknown", "White", "Black", "Other"), ]
rownames(rotated) <- rownames(tab)
rref <- rotated["White", 2] / rotated["White", 1]
reported <- c(Black = rotated["Black", 2] / rotated["Black", 1] / rref,
              Other = rotated["Other", 2] / rotated["Other", 1] / rref,
              Unknown = rotated["Unknown", 2] / rotated["Unknown", 1] / rref)
round(reported, 1)
r <- odds_ratio_check(tab, "White", reported)
r$consistent
r$matches
r$verdict

## -----------------------------------------------------------------------------
odds_ratio_check(tab, "White", c(Black = 36, Other = 4, Unknown = 1))$verdict

## -----------------------------------------------------------------------------
raw <- data.frame(race = c(1, 2, 2, 3, 1), stringsAsFactors = FALSE)
audit_categories(data.frame(race = factor(raw$race)))
race <- decode_codes(raw$race, c("1" = "White", "2" = "Black", "3" = "Indigenous"))
race

## -----------------------------------------------------------------------------
x <- c("W", "B", "W", "I", "B")
y <- guard_recode(x, c(W = "White", B = "Black", I = "Indigenous"))
verify_recode(x, y, c(W = "White", B = "Black", I = "Indigenous"))
guard_levels(y, c("White", "Black", "Indigenous"), reference = "White")

## ----error = TRUE-------------------------------------------------------------
try({
verify_recode(c("W", "B"), c("Black", "White"), c(W = "White", B = "Black"))
})

## ----error = TRUE-------------------------------------------------------------
try({
verify_marginals(y, c(White = 2, Black = 2, Indigenous = 1))
verify_marginals(y, c(White = 2, Black = 1, Indigenous = 2))
})

## -----------------------------------------------------------------------------
key <- pqc_keygen(height = 2)
m <- recode_manifest(x, y, c(W = "White", B = "Black", I = "Indigenous"),
                     published = c(White = 2, Black = 2, Indigenous = 1),
                     key = key, context = "vignette")
p <- write_recode_manifest(m, tempfile(fileext = ".json"))
verify_recode_manifest(p, x, y)[c("ok", "signature_ok")]

## -----------------------------------------------------------------------------
y_swapped <- as.character(y)
y_swapped[y_swapped == "Black"] <- "Indigenous"
verify_recode_manifest(p, x, y_swapped)[c("ok", "reasons")]

## ----error = TRUE-------------------------------------------------------------
try({
guard_binary(c("treated", "control"), "treatment")
})

## -----------------------------------------------------------------------------
arrived <- structure(c(1, 1, 2, 4, 1, 3, 1, 2),
                     labels = c(White = 1, Black = 2, Other = 3, Unknown = 4))
code_book <- c("1" = "White", "2" = "Black", "3" = "Other", "4" = "Unknown")
spss_frequencies <- c(White = 4, Black = 2, Other = 1, Unknown = 1)
chk <- transfer_verify(arrived, spss_frequencies, code_book = code_book)
chk$ok
levels(chk$decoded)

## -----------------------------------------------------------------------------
f <- factor(c(1, 2, 3, 4, 1))
levels(f) <- sort(unname(code_book))
data.frame(code = c(1, 2, 3, 4, 1), became = as.character(f))

## ----error = TRUE-------------------------------------------------------------
try({
relabel(factor(c(1, 2, 3, 4, 1)), sort(unname(code_book)))
relabel(factor(c(1, 2, 3, 4, 1)), code_book)
})

## ----error = TRUE-------------------------------------------------------------
try({
transfer_verify(as.character(f), c(White = 2, Black = 1, Other = 1, Unknown = 1))
})

## -----------------------------------------------------------------------------
observed <- c(White = "Black", Black = "Other", Other = "Unknown", Unknown = "White")
relabel_forensics(code_book, observed)

