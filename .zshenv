export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export EB_EXEC=$HOME/.ebcli-virtual-env/executables
export DOTNET_ROOT="$HOME/.dotnet"

typeset -U PATH
export PATH=$HOME/.local/bin:$EB_EXEC:$DOTNET_ROOT:$DOTNET_ROOT/tools:$PATH

export OCTOPUS_CLI_SERVER=https://rightnowmedia.octopus.app
export GITHUB_OWNER=RightNowMinistries

fpath=($HOME/.granted/zsh_autocomplete/granted/ $fpath)
fpath=($HOME/.granted/zsh_autocomplete/assume/ $fpath)

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias assume="source assume"
alias vim="nvim"
alias lg="lazygit"

source $HOME/.zshsecrets
