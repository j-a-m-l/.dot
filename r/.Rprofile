options(editor = "vim")

# Set tab width:
options(tab.width = 2)

dotHome = Sys.getenv('DOT_HOME')

loadDotR <- function () {
  source(paste0(dotHome, '/r/interest.R'))
  source(paste0(dotHome, '/r/taxes.R'))
  source(paste0(dotHome, '/r/trading.R'))
}

reloadRprofile <- function () {
  source('~/.Rprofile')
  loadDotR()
}

q <- function (save='no', ...) {
  quit(save=save, ...)
}

.First <- function () {
  loadDotR()
}
