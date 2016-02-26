# Ruby
alias rb='ruby'

# gem
alias gemi='gem install'

# Bundle
alias bundin='bundle install'
alias bex='bundle exec'
alias bexr='bundle exec ruby'

# Rails
alias ra='rails'
alias migrate='rake db:migrate && rake db:migrate RAILS_ENV=test'
alias migratest='rake db:migrate RAILS_ENV=test'
alias migration='rails generate migration'

# Rake
# For avoiding that zsh tries to autocomplete something like "rake task[arg]"
shell=`ps | grep $$ | awk '{ print $4 }'`
if [ 'zsh' = $shell ]; then
  alias rake='noglob rake'
fi
alias rk='rake'

# Guard
alias gua='guard'
