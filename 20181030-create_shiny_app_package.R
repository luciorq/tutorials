# Creating package for qPCRplots

available::available("qPCRplots")

options(
  devtools.name = "Lucio Rezende Queiroz",
  devtools.desc.author =
    'person(
      "Lucio", "Rezende Queiroz",
      email = "luciorqueiroz@gmail.com",
      role = c("aut", "cre"),
      comment = c(ORCID="0000-0002-6090-1834")
    )'
)

options(
  usethis.name = "Lucio Rezende Queiroz",
  usethis.full_name = "Lucio Rezende Queiroz",
  usethis.description = list(
    `Authors@R` = 'person(
                      "Lucio", "Rezende Queiroz",
                      email = "luciorqueiroz@gmail.com",
                      role = c("aut", "cre"),
                      comment = c(ORCID="0000-0002-6090-1834")
                    )',
    License = "MIT + file LICENSE",
    Version = "0.1.0"
  )
)
getOption("usethis.description")


# Create package structure
usethis::create_package("projects/qPCRplots")

# Change project build information

# Menu: Build > Configure Build Tools > check:
#  * Generate Documentation with roxygen and all suboptions in `configure`
#
# Add check parameter `--as-cran` (Check Parameter - R CMD check)

cran_packages_to_use <- c(
  "shiny",
  "shinydashboard",
  "tidyr",
  "dplyr",
  "stringr",
  "readxl",
  "writexl",
  "readr",
  "purrr",
  "ggplot2",
  "ggrepel",
  "ggpubr",
  "viridis",
  "fs",
  "RColorBrewer"
)
## Bioconductor packages
bioc_packages_to_use <- c(
)
packages_to_use <- c(cran_packages_to_use, bioc_packages_to_use)
## Add to description file Imports filed
output <- purrr::map(
  packages_to_use,
  usethis::use_package
)

usethis::use_readme_rmd()

usethis::use_mit_license(name = "Lucio Rezende Queiroz")

usethis::use_code_of_conduct()

usethis::use_news_md()

# git remote add origin https://github.com/luciorq/qPCRplots.git
# git push -u origin master

usethis::use_git()

usethis::use_git_config()

usethis::use_git_config(user.name = "luciorq", user.email = "luciorqueiroz@gmail.com")

usethis::use_github()

usethis::use_github(protocol = "https")

# Populate DESCRIPTION file with link to github
usethis::use_github_links()

usethis::use_travis()

usethis::use_coverage("codecov")

usethis::use_appveyor()

usethis::use_logo(img = "man/figures/logo.png")

# Create tests
usethis::use_testthat()
usethis::use_test(name = "plot_boxplot")
usethis::use_test(name = "launch_qpcrplots")

# To run the app
# qPCRplots::launch_qpcrplots()


