#!/bin/sh

# TODO
# stow --dir "$DOT_HOME" --target "$HOME" docker firefox fonts git i3wm python r ripgrep ruby rust vi vm x
stow --dir "$DOT_HOME" --target "$HOME" redshift

# mkdir -p "$DOT_HOME/vi/.vim/autoload"
# mkdir -p "$DOT_HOME/vi/.vim/colors"
# stow --dir "$DOT_HOME/vi/" --target "$HOME/.vim/autoload" 'autoload'
# stow --dir "$DOT_HOME/vi/" --target "$HOME/.vim/colors" 'colors'
#
# mkdir -p "$DOT_HOME/vi/.config/nvim/autoload"
# mkdir -p "$DOT_HOME/vi/.config/nvim/colors"
# stow --dir "$DOT_HOME/vi/" --target "$HOME/.config/nvim/autoload" 'autoload'
#
# # TODO private
#
# mkdir -p "$DOT_HOME/vi/.vim/pythonx"
# stow --dir "$DOT_HOME/vi/" --target "$HOME/.vim/pythonx" 'pythonx'
#
# mkdir -p "$DOT_HOME/vi/.config/nvim/pythonx"
# stow --dir "$DOT_HOME/vi/" --target "$HOME/.config/nvim/pythonx" 'pythonx'
#
# #
# # Shell
# #
#
# stow --dir "$DOT_HOME/shell" --target "$HOME" 'bash'
