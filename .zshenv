export DOTNET_ROOT=$HOME/.dotnet
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export PATH=$HOME/bin:$PATH:$HOME/.local/bin:$DOTNET_ROOT

export OCTOPUS_CLI_SERVER=https://rightnowmedia.octopus.app
export OCTOPUS_CLI_API_KEY=API-V1BC58PENFTVMJYEKDFW1I3DCVAK27V
export GITHUB_TOKEN=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
export GITHUB_OWNER=RightNowMinistries

fpath=($HOME/.granted/zsh_autocomplete/granted/ $fpath)
fpath=($HOME/.granted/zsh_autocomplete/assume/ $fpath)

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias assume="source assume"
