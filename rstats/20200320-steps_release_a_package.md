# Steps to release a Package

## Prepare for release:

[ ] Check current CRAN check results
[ ] devtools::check(remote = TRUE, manual = TRUE)
[ ] devtools::check_win_devel()
[ ] rhub::check_for_cran()
[ ] rhub::check(platform = 'ubuntu-rchk')
[ ] rhub::check_with_sanitizers()
[ ] revdepcheck::revdep_check(num_workers = 4)
[ ] Update cran-comments.md
[ ] Polish NEWS
[ ] Draft blog post

## Submit to CRAN:

[ ] usethis::use_version('major')
[ ] devtools::submit_cran()
[ ] Approve email


## Wait for CRAN...

[ ] Accepted 🎉
[ ] usethis::use_github_release()
[ ] usethis::use_dev_version()
[ ] Finish blog post
[ ] Tweet
[ ] Add link to blog post in pkgdown news menu

----

Source: [`tibble` Ussue tracker](https://github.com/tidyverse/tibble/issues/736)
