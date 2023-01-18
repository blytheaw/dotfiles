export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

alias assume="source assume"

export PATH=$PATH:/home/austin/.local/bin:/home/austin/.dotnet

fpath=(/home/austin/.granted/zsh_autocomplete/assume/ $fpath)

fpath=(/home/austin/.granted/zsh_autocomplete/granted/ $fpath)
