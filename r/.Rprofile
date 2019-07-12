options(editor = "vim")

# Set tab width:
options(tab.width = 2)

# FIXME relative to $DOT_HOME
loadDotR <- function () {
  source("~/dot/r/interest.R")
  source("~/dot/r/taxes.R")
  source("~/dot/r/trading.R")
}

reloadRprofile <- function () {
  source("~/.Rprofile")
  loadDotR()
}

q <- function (save="no", ...) {
  quit(save=save, ...)
}

.First <- function () {
  loadDotR()
}
