[ -n "$PS1" ] && source ~/.bash_profile;

if [ -r $(brew --prefix)/opt/mcfly/mcfly.bash ]; then
  . $(brew --prefix)/opt/mcfly/mcfly.bash
fi
. "$HOME/.cargo/env"
