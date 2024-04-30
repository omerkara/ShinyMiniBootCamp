#============================= Shiny mini BootCamp =============================
#====================== Information for renv Package Usage =====================
#================================= renv Info ===================================

#=================================== Notes =====================================
# This code is just for your reference, in case you need to initialize or update renv package.

#================================ renv Package =================================
# Information for renv Package Usage.
if("renv" %in% rownames(utils::installed.packages()) == FALSE) {install.packages("renv")} ## renv package is required for reproducibility.
library("renv") ## Load renv package.

renv::init(bare = TRUE) ## Initializes a new project (with an empty R library).
# renv::init() ## Initializes a new project (with currently loaded packages).

renv::status() ## Checks the status of renv.

renv::snapshot() ## Takes a snapshot of renv. Before updating the packages, this code takes the snapshot, then updates the packages in the lock file.

renv::restore() ## Restore a project's dependencies from a lockfile.

renv::install(packages = c("shiny", "shinythemes")) ## Install packages in the renv library if necessary and links from the cache.
renv::update() ## Update renv in the project library.

#==================================== END ======================================

