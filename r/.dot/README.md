TODO: Set environment variables to use default R folders, but configure my settings to use what I prefer
TODO: .RData => ~/.R/Data

TODO: `DOT_R_FOLDER` to auto-load files from there

`R_PROFILE` is set to `~/.Rprofile`. That file is linked to `$DOT_HOME/r/.Rprofile`.

By default, instead of saving the history on the current working directory, which could be annoying, it uses `~/.R/history` always. It can be set with the environment variable `R_HISTORY_FILE`

Apart from `R_LIBS_USER`, there is an environment variable `R_PERSONAL_LIBRARY` to install personal libraries (default folder is `~/.R/library/`)

Some packages are installed when running R:
 - devtools: (It takes several minutes)
 - colorout
 - styler
