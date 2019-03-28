#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias gst="gws"
unsetopt CORRECT

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm

export PATH="$PATH:/home/sahal/Dropbox/mybash"
export PATH="$PATH:/home/sahal/.nvm/versions/node/v8.15.0/bin"

eval "$(direnv hook $SHELL)"
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/sahal/.nvm/versions/node/v8.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/sahal/.nvm/versions/node/v8.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/sahal/.nvm/versions/node/v8.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/sahal/.nvm/versions/node/v8.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

if ! ps -p $PPID | grep -q java; then
    ZSH_TMUX_AUTOSTART=true;
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sahal/.sdkman"
[[ -s "/home/sahal/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sahal/.sdkman/bin/sdkman-init.sh"
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/sahal/servicerocket/cloud/link-cloud/node_modules/tabtab/.completions/slss.zsh ]] && . /home/sahal/servicerocket/cloud/link-cloud/node_modules/tabtab/.completions/slss.zsh