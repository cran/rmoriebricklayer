## ----setup, include = FALSE---------------------------------------------------
# the vignette runs in full in GitHub CI and for the package tarball (NOT_CRAN), on r-universe
# (MY_UNIVERSE), on the package website (IN_PKGDOWN) and in an interactive session; when CRAN
# re-builds it in its check, none of these is set and only this chunk runs
if (!interactive() && !any(nzchar(Sys.getenv(c("NOT_CRAN", "MY_UNIVERSE", "IN_PKGDOWN"))))) {
  knitr::knit_exit()
}

## ----include = FALSE----------------------------------------------------------
# the one-time index record of this vignette stays out of the reader's configuration directory
options(rmoriebricklayer.xmssidxfile = tempfile())
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----hashing-and-integrity-digests--------------------------------------------
csha256("hello capsule")
csha512("hello capsule")
cblake2b("hello capsule")
ccrc32("hello capsule")

## ----hashing-and-integrity-files----------------------------------------------
f <- tempfile()
writeLines("hello capsule", f)
sha256file(f)
sha512file(f)
crc32file(f)

before <- sha256file(f)
writeLines("hello capsule (edited)", f)
sha256file(f) == before

## ----hashing-and-integrity-objects--------------------------------------------
dgstobj(list(a = 1L, b = "x"))
identical(dgstobj(1:10), dgstobj(1:10))
dgstobj(1:10) == dgstobj(1:11)
dgstobj(matrix(1:6, nrow = 2)) == dgstobj(1:6)   # dimensions count
dgstobj(data.frame(x = 1:3))

## ----hashing-and-integrity-hmac-----------------------------------------------
chmac("Jefe", "what do ya want for nothing?")   # RFC 4231 test case 2
chmac("key-a", "manifest")
chmac("key-b", "manifest")

## ----hashing-and-integrity-ct-------------------------------------------------
tag <- chmac("k", "m")
cdgsteq(tag, chmac("k", "m"))
cdgsteq(tag, chmac("k", "tampered"))
cdgsteq(tag, "too-short")

## ----hashing-and-integrity-pbkdf2---------------------------------------------
drvkey("password", "salt", iter = 1)     # the published test vector
identical(drvkey("pw", "s", 1000), drvkey("pw", "s", 1000))
drvkey("pw", "salt-a", 1000) == drvkey("pw", "salt-b", 1000)

## ----hashing-and-integrity-pbkdf2-sign----------------------------------------
salt <- paste(format(rndbytes(16)), collapse = "")
key <- drvkey("correct horse battery staple", salt)
sig <- cpssign("manifest-digest", key, scheme = "hmac")
cpsvrf("manifest-digest", sig, key)

## ----hashing-and-integrity-random---------------------------------------------
set.seed(1)
a <- stats::runif(1)
set.seed(1)
invisible(rndbytes(32))
identical(stats::runif(1), a)

## ----hashing-and-integrity-drbg-----------------------------------------------
d <- drbgnew(as.raw(0:47))
drbggen(d, 16)
a <- drbgnew(as.raw(1:48), person = charToRaw("session 1"))
b <- drbgnew(as.raw(1:48), person = charToRaw("session 2"))
identical(drbggen(a, 16), drbggen(b, 16))

## ----hashing-and-integrity-merkle---------------------------------------------
chunks <- c("row1,row2", "row3,row4", "row5,row6", "row7,row8")
root <- mrkroot(chunks)
root

before <- mrklvs(chunks)
after <- mrklvs(c(chunks[1:2], "row5,row6-EDITED", chunks[4]))
which(before != after)

pr <- mrkprf(chunks, 3)
mrkvrf(chunks[3], pr, root)
mrkvrf("row5,row6-EDITED", pr, root)

## ----hashing-and-integrity-chunkfile------------------------------------------
p <- tempfile()
writeLines(rep("some capsule content", 50), p)
ch <- chnkfile(p, chnkbytes = 128)
length(ch)
mrkroot(ch)
identical(unlist(ch), readBin(p, "raw", file.size(p)))

## ----hashing-and-integrity-indigenous-hash------------------------------------
d <- indiex("suicide")
dgstobj(d)
rows <- apply(d, 1, paste, collapse = ",")
root <- mrkroot(rows)
proof <- mrkprf(rows, 3)
mrkvrf(rows[3], proof, root)

## ----hashing-and-integrity-hashed-table-plot, fig.width = 7, fig.height = 4.5----
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
t1 <- d[d$measure == d$measure[1], ]
ci_plot(t1, paste(t1$group, t1$age), t1$measure[1])

## ----include = FALSE----------------------------------------------------------
# the one-time index record of this vignette stays out of the reader's configuration directory
options(rmoriebricklayer.xmssidxfile = tempfile())
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----attestations-bundles-chains-attest---------------------------------------
m <- mkmnf(list(dataset = "otis", rows = 1200L), env = FALSE)
key <- fipskg("ML-DSA-65")
att <- cpsatst(m, key, note = "counts as published")

res <- cpschkatst(att, m)
res$ok
res$checks

## ----attestations-bundles-chains-attest-break---------------------------------
m2 <- m
m2$meta$rows <- 1201L
cpschkatst(att, m2)$ok

cpschkatst(att, m, keyexp = fipskg("ML-DSA-65")$public)$ok

## ----attestations-bundles-chains-bundle---------------------------------------
dir <- tempfile()
dir.create(dir)
write.csv(data.frame(x = 1:3), file.path(dir, "data.csv"), row.names = FALSE)
m <- mkmnf(list(dataset = "demo"), env = FALSE)
key <- fipskg("ML-DSA-44")

b <- cpsbndl(dir, m, key, note = "as published")
cpsbndlvrf(attr(b, "path"), dir, man = m)$ok

## ----attestations-bundles-chains-bundle-break---------------------------------
write.csv(data.frame(x = 1:4), file.path(dir, "data.csv"), row.names = FALSE)
v <- cpsbndlvrf(attr(b, "path"), dir, man = m)
v$ok

## ----attestations-bundles-chains-bundle-read----------------------------------
cpsbndlrd(attr(b, "path"))$attestation$note
unlink(dir, recursive = TRUE)

## ----attestations-bundles-chains-chain----------------------------------------
ch <- chnnew()
ch <- chnapp(ch, "manifest for run 1", label = "run-1")
ch <- chnapp(ch, "manifest for run 2", label = "run-2")
ch <- chnapp(ch, "manifest for run 3", label = "run-3")
chnvrf(ch)$valid

## ----attestations-bundles-chains-chain-edit-----------------------------------
edited <- ch
edited$entries[[2]]$digest <- csha256("something else")
chnvrf(edited)$valid
chnvrf(edited)$broken_at

## ----attestations-bundles-chains-chain-drop-----------------------------------
dropped <- ch
dropped$entries[[2]] <- NULL
chnvrf(dropped)$valid

## ----attestations-bundles-chains-seal-----------------------------------------
key <- fipskg("ML-DSA-44")
sig <- cpssign(chnseal(ch), key)
cpsvrf(chnseal(ch), sig, fipspubkey(key))

truncated <- ch
truncated$entries[[3]] <- NULL
cpsvrf(chnseal(truncated), sig, fipspubkey(key))

## ----attestations-bundles-chains-seal-none------------------------------------
chnseal(dropped)

## ----attestations-bundles-chains-indigenous-chain-----------------------------
ch <- chnnew()
for (nm in c("health", "mentalhealth", "wellbeing")) {
  d <- indiex(nm)
  ch <- chnapp(ch, list(table = nm, rows = nrow(d), sha256 = dgstobj(d)),
                     label = nm)
}
chnvrf(ch)$valid

## ----attestations-bundles-chains-chain-table-plot, fig.width = 7, fig.height = 4.5----
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

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----key-encapsulation-mlkem--------------------------------------------------
key <- kemkg(768)
pub <- kempubkey(key)

# the sender holds only the public key
sent <- kemencap(pub)
# the recipient recovers the same secret from the ciphertext
got <- kemdecap(key, sent$ciphertext)
identical(sent$shared, got)

## ----key-encapsulation-sizes--------------------------------------------------
kemsz(512)
kemsz(768)
kemsz(1024)

## ----key-encapsulation-reject-------------------------------------------------
bad <- sent$ciphertext
substring(bad, 1L, 2L) <- "00"
other <- kemdecap(key, bad)
nchar(other) == 64L          # a 32-byte secret, as always
identical(other, got)        # but not the one the sender has

## ----key-encapsulation-masked-------------------------------------------------
identical(kemdecap(key, sent$ciphertext, masked = FALSE), got)
identical(kemdecap(key, bad, masked = FALSE), other)

## ----key-encapsulation-hqc----------------------------------------------------
hkey <- hqckg(1)
hpub <- hqcpubkey(hkey)

hsent <- hqcencap(hpub)
identical(hqcdecap(hkey, hsent$ciphertext), hsent$shared)
hqcsz(1)

## ----key-encapsulation-hqc-r4-------------------------------------------------
old <- hqckg(1, ver = "round4")
cap <- hqcencap(hqcpubkey(old))
identical(hqcdecap(old, cap$ciphertext), cap$shared)

## ----key-encapsulation-seed---------------------------------------------------
identical(hqckg(1, seed = as.raw(1:32))$public,
          hqckg(1, seed = as.raw(1:32))$public)

## ----key-encapsulation-use----------------------------------------------------
tag <- chmac(sent$shared, "the capsule manifest")
cdgsteq(tag, chmac(got, "the capsule manifest"))

## ----key-encapsulation-indigenous-kem-----------------------------------------
steward <- kemkg(768)
pub <- kempubkey(steward)
sent <- kemencap(pub)
msg <- tojs(indiex("wellbeing"))
# the shared secret keys an authentication tag the steward can recompute
tag <- chmac(msg, sent$shared)
identical(chmac(msg, kemdecap(steward, sent$ciphertext)), tag)

## ----key-encapsulation-kem-sizes-plot, fig.width = 7, fig.height = 4.5--------
sz <- rbind(
  "ML-KEM-512" = kemsz(512L)[c("public", "ciphertext")],
  "ML-KEM-768" = kemsz(768L)[c("public", "ciphertext")],
  "ML-KEM-1024" = kemsz(1024L)[c("public", "ciphertext")],
  "HQC-1" = hqcsz(1L)[c("public", "ciphertext")],
  "HQC-3" = hqcsz(3L)[c("public", "ciphertext")],
  "HQC-5" = hqcsz(5L)[c("public", "ciphertext")]
)
op <- par(mar = c(7, 5, 3, 1))
barplot(t(sz), beside = TRUE, col = blpal()[1:2], ylab = "bytes", las = 2, cex.names = 0.8,
        legend.text = c("public key", "ciphertext"), args.legend = list(x = "topleft", bty = "n"),
        main = "Key and ciphertext sizes")
par(op)

## ----include = FALSE----------------------------------------------------------
# the one-time index record of this vignette stays out of the reader's configuration directory
options(rmoriebricklayer.xmssidxfile = tempfile())
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----post-quantum-signatures-mldsa--------------------------------------------
key <- fipskg("ML-DSA-65")
key$scheme

sig <- cpssign("a manifest digest", key)
cpsvrf("a manifest digest", sig, fipspubkey(key))

## ----post-quantum-signatures-mldsa-tamper-------------------------------------
cpsvrf("a manifest digest (edited)", sig, fipspubkey(key))

## ----post-quantum-signatures-context------------------------------------------
sig2 <- cpssign("a manifest digest", key, ctx = "release")
cpsvrf("a manifest digest", sig2, key, ctx = "release")
cpsvrf("a manifest digest", sig2, key, ctx = "staging")

## ----post-quantum-signatures-deterministic------------------------------------
s1 <- cpssign("same message", key, determ = TRUE)
s2 <- cpssign("same message", key, determ = TRUE)
identical(s1$signature, s2$signature)

h1 <- cpssign("same message", key)
h2 <- cpssign("same message", key)
identical(h1$signature, h2$signature)

## ----post-quantum-signatures-mu-----------------------------------------------
mu <- fipsmu(fipspubkey(key), "a manifest digest", ctx = "release")
sig3 <- fipssignmu(key, mu)
fipsvrfmu(key, mu, sig3)
# the same signature verifies the ordinary way
cpsvrf("a manifest digest", sig3, key, ctx = "release")

## ----post-quantum-signatures-slh----------------------------------------------
fipssz("ML-DSA-65")
fipssz("SLH-DSA-SHAKE-128f")

## ----post-quantum-signatures-slh-size-----------------------------------------
fipssz("SLH-DSA-SHAKE-128f")[["signature"]] > fipssz("ML-DSA-44")[["signature"]]

## ----post-quantum-signatures-slh-sign-----------------------------------------
hkey <- fipskg("SLH-DSA-SHAKE-128f")
hsig <- cpssign("a manifest digest", hkey)
cpsvrf("a manifest digest", hsig, fipspubkey(hkey))

## ----post-quantum-signatures-prehash------------------------------------------
p <- cpssign("a large artifact", key, prehash = "sha512")
cpsvrf("a large artifact", p, key, prehash = "sha512")
cpsvrf("a large artifact", p, key, prehash = "sha3_512")

## ----post-quantum-signatures-xmss---------------------------------------------
xkey <- pqckg(height = 3)
xkey$capacity
xkey$next_index

s1 <- cpssign("manifest-1", xkey)
cpsvrf("manifest-1", s1, signpubkey(xkey))

xkey <- xmssadv(xkey, s1)
xkey$next_index
s2 <- cpssign("manifest-2", xkey)
cpsvrf("manifest-2", s2, signpubkey(xkey))

# a signature does not transfer to another message
cpsvrf("manifest-1", s2, signpubkey(xkey))

## ----post-quantum-signatures-xmss-cli-----------------------------------------
root <- tempfile("capsules-")
for (nm in c("one", "two")) {
  d <- file.path(root, nm)
  dir.create(d, recursive = TRUE)
  utils::write.csv(data.frame(x = 1:3), file.path(d, "data.csv"), row.names = FALSE)
  writeLines('{"resource": {"filename": "data.csv"}}', file.path(d, "data_provenance.json"))
}
kf <- tempfile(fileext = ".json")
writeLines(tojs(unclass(pqckg(height = 4)), auto_unbox = TRUE), kf)
copy <- tempfile(fileext = ".json")
invisible(file.copy(kf, copy))   # an old copy of the key, kept by mistake

status <- blcli(c("sign", root, "--scheme", "xmss-sha256", "--key-file", kf, "--json"),
                out = function(s) NULL)
status
state <- fromjs(paste(readLines(kf), collapse = "\n"))
state$next_index                # two capsules signed, two indices used
state$used$generation

# the old copy is refused: the bundles show indices it does not know are used
blcli(c("sign", root, "--scheme", "xmss-sha256", "--key-file", copy, "--overwrite"),
      out = function(s) cat(s[grepl("stale", s)]))
xmssidxseen(root)[, c("index", "reused")]

## ----post-quantum-signatures-wrong--------------------------------------------
pub <- fipspubkey(key)
bad <- sig
bad$signature <- paste0("ff", substring(bad$signature, 3))
cpsvrf("a manifest digest", bad, pub)
trunc <- sig
trunc$signature <- substring(sig$signature, 1, 64)
cpsvrf("a manifest digest", trunc, pub)
cpsvrf("a manifest digest", sig, fipspubkey(fipskg("ML-DSA-65")))

## ----post-quantum-signatures-indigenous-sign----------------------------------
key <- fipskg("ML-DSA-65")
d <- indiex("mentalhealth")
msg <- dgstobj(d)
sig <- cpssign(msg, key)
cpsvrf(msg, sig, fipspubkey(key))

## ----post-quantum-signatures-signature-sizes-plot, fig.width = 7, fig.height = 4.5----
sch <- c("ML-DSA-44", "ML-DSA-65", "ML-DSA-87", "SLH-DSA-SHA2-128f", "SLH-DSA-SHAKE-128s")
sz <- t(vapply(sch, function(s) fipssz(s)[c("public_key", "signature")], numeric(2)))
op <- par(mar = c(9, 5, 3, 1))
barplot(t(sz), beside = TRUE, log = "y", ylim = c(10, 2 * max(sz)), col = blpal()[1:2],
        ylab = "bytes (log scale)", las = 2, cex.names = 0.8, legend.text = c("public key", "signature"),
        args.legend = list(x = "topleft", bty = "n"), main = "Key and signature sizes")
par(op)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(rmoriebricklayer)

## ----side-channel-assurance-harnesses-----------------------------------------
list.files(system.file(package = "rmoriebricklayer"), pattern = "^(ctcheck|dudect|tvla|fuzz)$")

## ----side-channel-assurance-agree---------------------------------------------
key <- kemkg(512)
sent <- kemencap(kempubkey(key))
identical(kemdecap(key, sent$ciphertext, masked = TRUE),
          kemdecap(key, sent$ciphertext, masked = FALSE))

skey <- fipskg("ML-DSA-44")
sig <- cpssign("manifest", skey, determ = TRUE)
cpsvrf("manifest", sig, fipspubkey(skey))

## ----side-channel-assurance-tvla-readme---------------------------------------
readLines(system.file("tvla", "README.md", package = "rmoriebricklayer"), n = 12)

## ----side-channel-assurance-indigenous-masked---------------------------------
getOption("rmoriebricklayer.masked", TRUE)

## ----side-channel-assurance-decap-timing-plot, fig.width = 7, fig.height = 4.5----
bad <- sent$ciphertext
substr(bad, 1, 1) <- if (substr(bad, 1, 1) == "0") "1" else "0"  # one hex digit changed
tm <- function(ct) {
  s <- proc.time()[["elapsed"]]
  for (i in 1:200) kemdecap(key, ct)
  (proc.time()[["elapsed"]] - s) / 200 * 1e6
}
honest <- tampered <- numeric(60)
for (k in 1:60) {
  honest[k] <- tm(sent$ciphertext)
  tampered[k] <- tm(bad)
}
plotecdf(c(honest, tampered), rep(c("honest ciphertext", "one digit changed"), each = 60),
         main = "ML-KEM-512 decapsulation time (microseconds)")

