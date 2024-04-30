#============================= Shiny mini BootCamp =============================
#==================== Package Installation Into Main R Library =================
#=============================== R Lib Packages ================================

#=================================== Notes =====================================
# Note that due to the nature of the workshop (having multiple apps and slides with dedicated folders), downloading necessary packages directly into your main R library will decrease package loading problems tremendously and decrease the code size. However, it will add all these new packages into you main R library and breaks reproducibility.

# If you wish to download the below packages directly into your main R Library, then do the followings in order depending on your workshop directory state.
## State 1: If the renv package is not already initialized, then run the following code.
    ### Note that the workshop comes without renv initialization, so it can be performed right away.
## State 2: If the renv package is already initialized (i.e., you have "renv" folder and "renv.lock" file in your workshop directory), then perform the below tasks first. Note that the workshop comes without
    ### a. Stop initializing the renv by deleting or commenting the first row in the ".Rprofile" file in the workshop directory.
    ### b: Restart the workshop (by quitting the workshop Rstudio instance and re-opening).

#================================= Functions ===================================
# ---- Settings.Functions.1 ----
load.install <- function (Package.Names, Quiet = FALSE, Update.All = FALSE)
{
    if (!requireNamespace("devtools"))
        stop("Required devtools package is missing.")
    if (!requireNamespace("utils"))
        stop("Required utils package is missing.")
    is_installed <- function(my.pkgs) is.element(my.pkgs, utils::installed.packages()[, 1])
    github.pkgs <- grep("^.*?/.*?$", Package.Names, value = TRUE)
    github.bare.pkgs <- sub(".*?/", "", github.pkgs)
    cran.pkgs <- Package.Names[!(Package.Names %in% github.pkgs)]
    all.pkgs <- c(cran.pkgs, github.bare.pkgs)
    cran.missing <- cran.pkgs[which(!is_installed(cran.pkgs))]
    github.missing <- github.pkgs[which(!is_installed(github.bare.pkgs))]
    if (Update.All == TRUE) {
        cran.missing <- cran.pkgs
        github.missing <- github.pkgs
    }
    else {
        cran.missing <- cran.pkgs[which(!is_installed(cran.pkgs))]
        github.missing <- github.pkgs[which(!is_installed(github.bare.pkgs))]
    }
    if (length(cran.missing) > 0) {
        suppressWarnings(utils::install.packages(cran.missing, quiet = Quiet, dependencies = TRUE))
    }
    if (length(github.missing) > 0) {
        suppressWarnings(devtools::install_github(github.missing, quiet = Quiet, dependencies = TRUE))
    }
    failed.install <- all.pkgs[which(!is_installed(all.pkgs))]
    if (length(failed.install) > 0) {
        warning(paste0("Some packages failed to install: ", paste(failed.install, collapse = ", "), "."))
    }
    install.pkgs <- all.pkgs[which(is_installed(all.pkgs) == TRUE)]
    for (install.pkgs in install.pkgs) {
        suppressPackageStartupMessages(library(install.pkgs, character.only = TRUE, quietly = Quiet, verbose = FALSE))
    }
}

#================================= Packages ====================================
# ---- Settings.Packages.1 ----
#=================================
# Packages that MUST be installed.
if("devtools" %in% rownames(utils::installed.packages()) == FALSE) {install.packages("devtools")} ## devtools package is required for "load.install" function.
load.install(c("usethis", "devtools")) ## usethis package is required for loading devtools package.

#=================================
# Shiny related packages.
load.install(c("shiny"))
load.install(c("shinythemes"))
load.install(c("shinydashboard", "shinydashboardPlus", "bs4Dash", "bslib"))
load.install(c("shinycssloaders", "shinycustomloader"))
load.install(c("shinyjs", "rintrojs", "shinyBS", "bsplus", "shinyWidgets", "cicerone", "waiter", "dipsaus", "shinyjqui", "shinybusy", "shinyalert", "shinyscreenshot", "shinyvalidate", "shinyauthr", "shinymanager", "dotenv"))
load.install(c("reactlog", "profvis", "microbenchmark", "shinytest2", "shinyloadtest"))
# load.install(c("conflicted"))

#=================================
# Packages for knitr.
load.install(c("knitr", "rmarkdown", "markdown", "tinytex")) ## Use the following code for all the options of knitr: "str(knitr::opts_chunk$get())"

# Packages for YAML options.
load.install(c("ymlthis")) ## https://ymlthis.r-lib.org/index.html

#=================================
# Packages related to slide presentation.
load.install(c("xaringan", "xaringanExtra"))
# load.install(c("xaringanthemer"))

#=================================
# Packages for graphics and related packages.
load.install(c("ggplot2", "ggthemes", "plotly"))

#=================================
# Packages for emojis and icons.
load.install(c("rstudio/fontawesome", "hadley/emo"))

#==================================== END ======================================
