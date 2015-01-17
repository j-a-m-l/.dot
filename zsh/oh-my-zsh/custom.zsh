ZSH_THEME="setache"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(bundler coffee colored-man colorize gem git node npm python rails3 rake ruby rvm tmuxinator vagrant )
# Others: cake capistrano common-aliases django knife pip redis-cli tmux tmuxinator vi-mode

[[ -s "$HOME/.dot/shell/sources.sh" ]] && . "$HOME/.dot/shell/sources.sh"
