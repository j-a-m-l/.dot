# vim: set ft=ruby:

require 'awesome_print'
require_relative "#{ENV['DOT_HOME']}/ruby/helpers"
require_relative "#{ENV['DOT_HOME']}/ruby/math"

# Pry.config.history.file = '~/.irb_history'

Pry.config.editor = 'vim'

# TODO use a theme
Pry.config.color = true

Pry.config.prompt = [ proc { "» " }, proc { "> " }]

AwesomePrint.pry!
