# Vagrant
alias vag='vagrant'
alias vags='vagrant ssh'
alias vago='__vagopen__'
alias vend='vagrant suspend'

__vagopen__() {
  vagrant up $1 && vagrant ssh $1
}
