#============================= Shiny mini BootCamp =============================
#==================== Package Installation Restore Via renv ====================
#========================== Restore Packages via renv ==========================

#=================================== Notes =====================================
# If you wish to download the below packages to your renv package cache and link them to your workshop folder using the "renv.lock" file, then do the followings in order.
# RStudio might be disconnected after initialization, if this is the case please restart the RStudio using the workshop's ".Rproj" file, then run the below code without the "renv::init()" function.

#============================== Restore Packages ===============================
# Packages that MUST be installed.
if("renv" %in% rownames(utils::installed.packages()) == FALSE) {install.packages("renv")} ## renv package is required for reproducibility.
library("renv") ## Load renv package.
renv::init(bare = TRUE) ## Initializes a new project (with an empty R library).
renv::restore() ## Type 1 and press enter. Restore a project's dependencies from a lockfile.
renv::status() ## Checks the status of renv.

#==================================== END ======================================

