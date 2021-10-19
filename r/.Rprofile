# Of couse!
options(editor = 'vim')

# Prompt style
options(prompt = '> ')
options(continue = '... ')

# Set tab width:
options(tab.width = 2)

# Print 100 items at most
options(max.print = 60)

# To not use scientific notation for very small numbers
options(scipen = 8)

.colorize <- function() {
  # NOTE: `verbose == TRUE` displays a sample of the colours
  setOutputColors256(
    normal = 252, negnum = 214, zero = 221, number = 216, date = 74, string = c(3, 0, 39),
    const = c(1, 0, 147), false = c(1, 0, 204), true = c(1, 0, 78), infinite = c(1, 0, 111),
    index = 190, stderror = 243, warn = c(3, 0, 9), error = c(1, 15),
    verbose = FALSE, zero.limit = 1e-20
  )
}

.create_dir <- function(path) {
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }
}

.install_once <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[, 'Package'])]
  pending <- length(new_packages)
  if (pending) {
    # NOTE: `install.packages` starts a new R non-interactive process
    install.packages(pkgs = new_packages, lib = personal_library)
  }

  pending
}

.load_dot_r <- function() {
  # TODO: refactor
}

dot_home <- Sys.getenv('DOT_HOME')

r_profile <- Sys.getenv('R_PROFILE')
if (r_profile == '') {
  r_profile <- '~/.Rprofile'
}

history_file <- Sys.getenv('R_HISTORY_FILE')
if (history_file == '') {
  history_file <- '~/.R/history'
}
.create_dir(dirname(history_file))

personal_library <- Sys.getenv('R_PERSONAL_LIBRARY')
if (personal_library == '') {
  personal_library <- '~/.R/library/'
}
.create_dir(personal_library)
.libPaths(personal_library)

.First <- function() {
  if (interactive()) {
    library(utils)

    if (Sys.getenv('TERM') == 'xterm-256color') {
      pending <- .install_once(c('devtools', 'usethis'))
      library('devtools')
      library('usethis')
      # Avoid checking GitHub repository on every load
      if (pending) {
        # To highlight the output on the console
        install_github('jalvesaq/colorout', lib = personal_library)
      }
      library('colorout')
      .colorize()
    }

    .load_dot_r()

    timestamp(, prefix = paste('##------ [', getwd(), '] ', sep = ''))
    loadhistory(history_file)
  }
}

.Last <- function() {
  if (interactive()) {
    savehistory(history_file)
  }
}

reload_r_profile <- function() {
  source(r_profile)
  .load_dot_r()
}

#' Apply tidyverse style to all the files inside the personal R folder
#'
#' The only excepption are single quotes, which IMHO introduce less noise.
prettify_r_home <- function() {
  .install_once('styler')
  library('styler')

  r_home <- paste0(dot_home, '/r/')
  transformers <- tidyverse_style()
  transformers$token$fix_quotes <- NULL

  style_dir(r_home, transformers = transformers, recursive = TRUE)
}
