---
author: "Lucio Rezende Queiroz"
date: "2025-06-26"
modified: "2025-06-26"
output: github_document
---

## Creating R packages with Rust compiled code

Check R packages [rextendr](https://github.com/extendr/rextendr) and [savvy](https://github.com/yutannihilation/savvy).

```bash
#
```

## References

Yutani's blog has some really good insights on the process of building and vendoring
cargo dependencies into R packages.

e.g. <https://yutani.rbind.io/post/a-quick-note-about-how-to-bundle-rust/>

---

## Submitting to CRAN

As of 2025-06-26, those are the main recomendations from CRAN to create R packages with Rust compiled code.

Notes from CRAN: <https://cran.r-project.org/web/packages/using_rust.html>

`DESCRIPTION` file should include:

```config
SystemRequirements: Cargo (Rust's package manager), rustc
```

The `configure/configure.win` script should check for the presence of commands `cargo` and `rustc`, and check their versions if required.

This includes checking for system versions on the path and personal versions in `~/.cargo/bin` (which are often not on the path).

The Linux servers on the CRAN check farm use system versions, and Linux distributions are often slow to update these so version requirements need to be conservative.

If suitable cargo/rustc are not found, ask the user to install them, either on their Linux system by something like

```bash
dnf install cargo
apt-get install cargo rustc
```

Or by using rustup from `https://rustup.rs/`.

The package should not attempt to install these for itself.

The `cargo build -j N` defaults to the number of ‘logical CPUs’. This usually exceeds the maximum allowed in the CRAN policy, so needs to be set explicitly to N=1 or 2.

Please report the version of `rustc` used (as R does for C, C++ and Fortran compilers) in the installation log **especially** if compilation fails, so best reported before starting compilation (as R does).

Downloading should be avoided if at all possible.

The package would become uninstallable if the Internet resources are temporarily or permanently unavailable, and CRAN packages are kept available for many years.

CRAN does not regard github.com (which used to host the index of crates.io and still hosts most of the crates it indexes) as sufficiently reliable.

In most cases all the Rust software can be bundled into the package via cargo vendor.
(Thanks to Hiroaki Yutani for providing an example of doing that in his `string2path` package, version 0.1.5 at the time of writing.)

Please `tar` the included Rust sources using `xz` compression. If the bundle is too large to be included in the package sources, it could be hosted at a long-term secure site under the maintainer's control.

---

## Submitting to BioConductor

At the moment, the BioConductor is relying on the CRAN recommendations, so the same rules should apply.

As of 2025-06-26, at the BioConductor Zulip Chat an ongoing discussion is happening about the use of Rust in BioConductor packages.

Discussion can be followed <https://github.com/BioconductorBoards/CABWorkingGroups/issues/65> and <https://community-bioc.zulipchat.com/#narrow/channel/507552-developers-forum/topic/Rust.20in.20Bioconductor.20packages/with/523182771>.

A Developer's forum is going to be held on July 28th 2025 at 17:00 to 18:00 CEST (11am-12pm NY time).

Check the [Developer's forum channel](https://community-bioc.zulipchat.com/#narrow/channel/507552-developers-forum) on Zulip for links and information.
