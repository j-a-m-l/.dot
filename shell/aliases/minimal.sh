# grep use -p (is a pipe)
alias G='grep -i --color=auto'
alias gy='__grepify__'

# Insist / retry
alias insist='__insist__'
alias retry='__insist__ !!'

# less
alias l='less'
# Use less (no pun intended)
alias ly='__lessify__'

# ls
alias la='ls -A'
alias lg='ls -a | grep -i --color=auto'
alias lh='ls -alFh'
alias ll='ls -alF'

# man
alias m='man'

# tree
alias tred='tree --dirsfirst'

# Vim
alias v='vim'


# "Aliases are expanded when a function definition is read, not when the function is executed"

__grepify__() {
  # Is mandatory to use () or a space for escaping negative values
  eval ${@:2:($#)} | grep -i --color=auto $1
}

__insist__() {
  echo "\n » Trying '$@' (first time)\n"
  i=1
  until $@; do
    i=`expr $i + 1`
    echo "\n » Trying '$@' ($i times)\n"
  done
}

__lessify__() {
  eval $@ | less
}
