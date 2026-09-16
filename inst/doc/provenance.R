## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)
set.seed(1)

## -----------------------------------------------------------------------------
manifest <- paste0(
  "source=https://example.org/extract.csv\n",
  "sha256=", core_sha256("id,value\n1,2\n"), "\n",
  "fetched=2026-09-12"
)

sig <- capsule_sign(core_sha256(manifest), key = "team-secret",
                    scheme = "hmac")
capsule_verify(core_sha256(manifest), sig, "team-secret")

## -----------------------------------------------------------------------------
edited <- sub("fetched=2026-09-12", "fetched=2026-01-01", manifest)
capsule_verify(core_sha256(edited), sig, "team-secret")

## -----------------------------------------------------------------------------
# Fixed here so the vignette is reproducible. For a real key the salt
# comes from random_bytes(16), which reads the operating system's
# CSPRNG rather than R's generator.
salt <- "9f2c41a7d8e05b36"
key <- derive_key("correct horse battery staple", salt)
nchar(key)

## -----------------------------------------------------------------------------
# Small for the vignette; the default height 10 gives 1024 signatures.
signing_key <- pqc_keygen(height = 3)
signing_key

## -----------------------------------------------------------------------------
pub <- signing_public_key(signing_key)
pub

## -----------------------------------------------------------------------------
s1 <- capsule_sign(core_sha256(manifest), signing_key)
capsule_verify(core_sha256(manifest), s1, pub)

# A verifier holding only `pub` cannot forge one.
capsule_verify(core_sha256(edited), s1, pub)

## -----------------------------------------------------------------------------
signing_key <- s1$key_state
signing_key$next_index

s2 <- capsule_sign(core_sha256("a second manifest"), signing_key)
capsule_verify(core_sha256("a second manifest"), s2, pub)

## ----error = TRUE-------------------------------------------------------------
try({
k <- pqc_keygen(height = 1)          # signs exactly 2 messages
k <- capsule_sign("one", k)$key_state
k <- capsule_sign("two", k)$key_state
capsule_sign("three", k)
})

## -----------------------------------------------------------------------------
pqc_backends()

## -----------------------------------------------------------------------------
m <- make_manifest(list(dataset = "otis", rows = 1200L),
                   environment = FALSE)
key <- fips_keygen("ML-DSA-65")
att <- capsule_attest(m, key, note = "counts as published")
capsule_check_attestation(att, m)

## -----------------------------------------------------------------------------
m2 <- m
m2$meta$rows <- 1201L
capsule_check_attestation(att, m2)$ok

## -----------------------------------------------------------------------------
one_third <- make_manifest(list(x = 1 / 3), environment = FALSE)
back <- bricklayer_json_from_json(manifest_canonical(one_third))
identical(back$meta$x, 1 / 3)

## -----------------------------------------------------------------------------
identical(
  manifest_digest(make_manifest(list(a = 1, b = 2), environment = FALSE)),
  manifest_digest(make_manifest(list(b = 2, a = 1), environment = FALSE)))

## -----------------------------------------------------------------------------
set.seed(1)
d <- data.frame(x = rnorm(200))
d$y <- 0.8 * d$x + rnorm(200)
capsule_falsify(d, function(z) cor(z$x, z$y), treatment = "x",
                n = 199, seed = 42)

## -----------------------------------------------------------------------------
capsule_falsify(d, function(z) 0.5, treatment = "x", n = 199,
                seed = 42)$controls[, c("control", "passed")]

## -----------------------------------------------------------------------------
d <- data.frame(x = 1:10)
man <- make_manifest(list(dataset = "demo"), environment = FALSE)
man <- record(man, "mean_x", observed = mean(d$x), expected = 5.5)
man <- record(man, "n", observed = nrow(d), expected = 10)

manifest_recompute(man, d, list(mean_x = function(z) mean(z$x),
                                n = function(z) nrow(z)))

## -----------------------------------------------------------------------------
manifest_recompute(man, d, list(n = function(z) nrow(z)))

## -----------------------------------------------------------------------------
set.seed(1)
m2 <- manifest_record_seed(make_manifest(list(a = 1),
                                         environment = FALSE))
first <- runif(3)
invisible(runif(1000))          # any amount of other work
manifest_restore_seed(m2)
identical(runif(3), first)

## -----------------------------------------------------------------------------
plan <- prereg_declare(c(
  ate = "use of force is higher in the exposed division",
  n_rows = "the extract has the row count the source publishes"))

# a declared outcome that was not reported
prereg_check(plan, "n_rows")

# statistics reported that were never declared
prereg_check(plan, c("ate", "n_rows", "by_year", "by_precinct"))

## -----------------------------------------------------------------------------
falsify_family(c(ate = 0.02, by_year = 0.3, by_precinct = 0.4,
                 by_shift = 0.6, by_month = 0.7), method = "holm")

## -----------------------------------------------------------------------------
evalue_rr(2, lo = 1.4, hi = 2.9)

## -----------------------------------------------------------------------------
dir <- tempfile()
dir.create(dir)
write.csv(data.frame(x = 1:3), file.path(dir, "data.csv"),
          row.names = FALSE)
b <- capsule_bundle(dir, man, key, note = "as published")
capsule_bundle_verify(attr(b, "path"), dir, manifest = man)

## -----------------------------------------------------------------------------
unlink(dir, recursive = TRUE)

## ----eval=FALSE---------------------------------------------------------------
# res <- timestamp_verify("response.tsr", data = "manifest.json")
# res$time
# res$checks

## -----------------------------------------------------------------------------
chunks <- c("id,value", "1,2", "3,4", "5,6")
root <- merkle_root(chunks)
root

## -----------------------------------------------------------------------------
# Editing one chunk moves exactly one leaf.
edited_chunks <- chunks
edited_chunks[3] <- "3,5"
which(merkle_leaves(chunks) != merkle_leaves(edited_chunks))

## -----------------------------------------------------------------------------
# Prove chunk 3 belongs, holding only it and log2(n) sibling digests.
proof <- merkle_proof(chunks, 3)
proof
merkle_verify(chunks[3], proof, root)
merkle_verify("3,5", proof, root)

## -----------------------------------------------------------------------------
merkle_root(c("a", "b", "c")) == merkle_root(c("a", "b", "c", "c"))

## -----------------------------------------------------------------------------
chain <- chain_new()
chain <- chain_append(chain, "manifest for run 1", label = "run-1")
chain <- chain_append(chain, "manifest for run 2", label = "run-2")
chain <- chain_append(chain, "manifest for run 3", label = "run-3")
chain

## -----------------------------------------------------------------------------
# Deleting an entry from the middle breaks the links, and names where.
tampered <- chain
tampered$entries[[2]] <- NULL
chain_verify(tampered)

## -----------------------------------------------------------------------------
truncated <- chain
truncated$entries[[3]] <- NULL

c(head_unchanged_by_middle_deletion =
    chain_head(tampered) == chain_head(chain),
  links_accept_truncation = chain_verify(truncated)$valid)

## -----------------------------------------------------------------------------
seal_sig <- capsule_sign(chain_seal(chain), signing_key)
capsule_verify(chain_seal(chain), seal_sig, pub)

# The truncated chain seals to a different value.
capsule_verify(chain_seal(truncated), seal_sig, pub)

# A chain whose links disagree has no seal to offer at all.
chain_seal(tampered)

