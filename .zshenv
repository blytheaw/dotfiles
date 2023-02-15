export EB_EXEC=$HOME/.ebcli-virtual-env/executables

export PATH=$HOME/bin:$PATH:$HOME/.local/bin:$EB_EXEC

export OCTOPUS_CLI_SERVER=https://rightnowmedia.octopus.app
export GITHUB_OWNER=RightNowMinistries

fpath=($HOME/.granted/zsh_autocomplete/granted/ $fpath)
fpath=($HOME/.granted/zsh_autocomplete/assume/ $fpath)

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias assume="source assume"

source $HOME/.zshsecrets
