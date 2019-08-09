# Ruby
alias rb='ruby'

# gem
alias gemi='gem install'
# alias gemid='gem install --document rdoc'

# Bundle
alias bundin='bundle install'
alias bex='bundle exec'
alias bexr='bundle exec ruby'

# Rails
alias ra='rails'
alias RET='RAILS_ENV=test'
alias migrate='rails db:migrate'
alias migratest='rails db:drop RAILS_ENV=test && rails db:create RAILS_ENV=test && rails db:migrate RAILS_ENV=test'
alias migration='rails generate migration'
alias db_from_scratch='rails db:drop && rails db:create && rails db:migrate && rails db:seed'

# Rails with parallel_tests (in an engine)
alias parallel_migratest='rails app:parallel:drop[4] RAILS_ENV=test && rails app:parallel:create[4] RAILS_ENV=test && rails app:parallel:migrate[4] RAILS_ENV=test'

# Rake
# For avoiding that zsh tries to autocomplete something like "rake task[arg]"
shell=`ps | grep $$ | awk '{ print $4 }'`
if [ 'zsh' = $shell ]; then
  alias rake='noglob rake'
fi
alias rk='rake'

# Guard
alias gua='guard'
