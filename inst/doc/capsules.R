## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----setup--------------------------------------------------------------------
library(rmoriebricklayer)

## ----provenance---------------------------------------------------------------
prov_json <- '{
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

prov_path <- file.path(tempdir(), "data_provenance.json")
writeLines(prov_json, prov_path)

prov <- load_provenance(prov_path)
prov$dataset$title

## ----resolve, eval = FALSE----------------------------------------------------
# url <- resolve_via_ckan(prov)            # package_show + name match
# if (is.null(url))                        # slug-change fallback
#   url <- resolve_via_ckan_search(prov)
# 
# path <- file.path(tempdir(), "data.csv")
# friendly_download(url, path)             # plain-language failure diagnosis
#                                          # + automatic Wayback fallback

## ----synthetic----------------------------------------------------------------
data_path <- file.path(tempdir(), "data.csv")
gen <- make_synthetic_csv(prov$schema$synthetic_recipe, data_path)
gen$rows

df <- read.csv(data_path)
head(df, 3)

## ----validate-----------------------------------------------------------------
digest <- sha256_file(data_path)
substr(digest, 1, 16)

chk <- verify_sha256(data_path, digest)
chk$match

issues <- validate_schema(df, prov)
length(issues)   # 0 = clean against the pinned schema

## ----manifest-----------------------------------------------------------------
man <- make_manifest(
  list(project = "demo-study", author = "A. Author", synthetic = TRUE),
  environment = FALSE  # TRUE also snapshots R/OS/package versions
)

man <- record(man, "rows_generated", observed = gen$rows, expected = 25)
man <- record(man, "mean_visits",
              observed = mean(df$visits), expected = 3,
              tol = 1, synthetic = TRUE)

out_dir <- file.path(tempdir(), "capsule-demo")
dir.create(out_dir, showWarnings = FALSE)

write_manifest_json(man, file.path(out_dir, "manifest.json"))
summary_path <- write_summary_txt(
  man, out_dir,
  paths = list(input = data_path, results = out_dir),
  what_was_done = c("* generated synthetic stand-in (real source offline)",
                    "* validated schema and recorded cross-checks")
)

cat(readLines(summary_path)[7:12], sep = "\n")

