#============================= Shiny mini BootCamp =============================
#======================== Package Installation Into renv =======================
#================================ renv Packages ================================

#=================================== Notes =====================================
# Note that due to the nature of the workshop (having multiple apps and slides with dedicated folders), downloading necessary packages directly into your renv package cache will ensure reproducibility and prevent adding these new packages into you main R library. However, it will increase package loading problems tremendously and increase the code size.

# If you wish to download the below packages into your renv package cache and link them to your workshop folder, then do the followings in order.
## 1: Install/load the renv package.
## 2: Initialize the renv.
## 3: Install/load the necessary package into your renv package cache.
# Use this option, if you delete or modify the "renv.lock" file, otherwise just restore the renv using the code given in the "_renv_restore.R" file.
# RStudio might be disconnected after initialization, if this is the case please restart the RStudio using the workshop's ".Rproj" file, then run the below code without the "renv::init()" function.

#================================= Packages ====================================
#=================================
# Packages that MUST be installed.
if("renv" %in% rownames(utils::installed.packages()) == FALSE) {install.packages("renv")} ## renv package is required for reproducibility.
library("renv") ## Load renv package.

#=================================
# renv Package initialization.
renv::init(bare = TRUE) ## Initializes a new project (with an empty R library).Use it, if renv is not already initialized.
renv::status() ## Checks the status of renv.

#=================================
# Shiny related packages.
renv::install(packages = c("shiny"), prompt = FALSE, lock = TRUE)
renv::install(packages = c("shinythemes"), prompt = FALSE, lock = TRUE)
renv::install(packages = c("shinydashboard", "shinydashboardPlus", "bs4Dash", "bslib"), prompt = FALSE, lock = TRUE)
renv::install(packages = c("shinycssloaders", "shinycustomloader"), prompt = FALSE, lock = TRUE)
renv::install(packages = c("shinyjs", "rintrojs", "shinyBS", "bsplus", "shinyWidgets", "cicerone", "waiter", "dipsaus", "shinyjqui", "shinybusy", "shinyalert", "shinyscreenshot", "shinyvalidate", "shinyauthr", "shinymanager", "dotenv"), prompt = FALSE, lock = TRUE)
renv::install(packages = c("reactlog", "profvis", "microbenchmark", "shinytest2", "shinyloadtest"), prompt = FALSE, lock = TRUE)
# load.install(c("conflicted"), prompt = FALSE)

#=================================
# Packages for knitr.
renv::install(packages = c("knitr", "rmarkdown", "markdown", "tinytex"), prompt = FALSE, lock = TRUE) ## Use the following code for all the options of knitr: "str(knitr::opts_chunk$get())"

# Packages for YAML options.
renv::install(packages = c("ymlthis"), prompt = FALSE, lock = TRUE) ## https://ymlthis.r-lib.org/index.html

#=================================
# Packages related to slide presentation.
renv::install(packages = c("xaringan", "xaringanExtra"), prompt = FALSE, lock = TRUE)
# renv::install(packages = c("xaringanthemer"), prompt = FALSE, lock = TRUE)

#=================================
# Packages for graphics and related packages.
renv::install(packages = c("ggplot2", "ggthemes", "plotly"), prompt = FALSE, lock = TRUE)

#=================================
# Packages for emojis and icons.
renv::install(packages = c("rstudio/fontawesome", "hadley/emo"), prompt = FALSE, lock = TRUE)

#==================================== END ======================================
