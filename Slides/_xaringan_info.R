#============================= Shiny mini BootCamp =============================
#===================== Information for Xaringan Slides Usage ===================
#============================ Xaringan Slides Info =============================

#=================================== Notes =====================================
# This code is just for your reference about xaringan slides.

#================================ Xaringan Package =================================
# Information for Xaringan Slides Usage.
if("xaringan" %in% rownames(utils::installed.packages()) == FALSE) {install.packages("xaringan")} ## xaringan package is required for slides.
library("xaringan") ## Load xaringan package.

# Offline work.
## To make slides work offline, you need to download a copy of remark.js in advance, because xaringan uses the online version by default. You can use xaringan::summon_remark() to download the latest or a specified version of remark.js. By default, it is downloaded to libs/remark-latest.min.js. Then change the chakra option in the YAML metadata to point to this file. Example: chakra: libs/remark-latest.min.js
xaringan::summon_remark() ## Run this code first, if chakra is used in YAML.

# Live preview the slides.
xaringan::infinite_moon_reader(moon = "./Shiny_mini_BootCamp_Slides.RMD")
servr::daemon_stop(1) ## Stop the live preview slides.

# Configuration Info for xaringan::moon_reader.
## The main R Markdown output format in this package is moon_reader(). See the R help page ?xaringan::moon_reader for all possible configurations.
## See: https://github.com/gnab/remark/wiki/Configuration

# CSS and themes.
## All built in CSS files can be seen by calling xaringan:::list_css() or names(xaringan:::list_css()).

# Classes.
## left, center, right.
## top, middle, bottom.
## left-column (%20 left-sidebar), right-columns (%75 slide width)
## pull-left, pull-right.
## Usage: .left-column[content]
## Add more classes into CSS.

# Presenter notes.
## Anything after ?? will be presenter notes and will be hidden from the audiance.

# xaringan keyboard shortcuts.
## h or ?: the help page.
## f: toggle the full screen mode.
## c: clone the slides to a new browser window.
## p: to toggle the presenter mode.
## b: black out a slide
## m: mirror a slide (reverse everything on the slide).

# xaringanExtra package keyboard shortcuts.
## o: tile view. Use: xaringanExtra::use_tile_view()
## s: Scribble, draw on slides.
## Alt/Option + F: fits slides to screen by ignoring ratio.

#==================================== END ======================================

