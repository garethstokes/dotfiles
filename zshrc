# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sto268/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
alias ll='ls -al'
alias gw="cd /Users/sto268/go/src/data61.githost.io/digital-regulation"
alias sw="cd /Users/sto268/code/paidright"
alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias kc="kubectl"

GOPATH="/Users/sto268/code/go"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sto268/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/sto268/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sto268/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/sto268/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$HOME/haskell/ghc-8.4.3/bin:$PATH

# List available GHC versions
ghc-list-available() {
  echo "Available versions:"
  for ver in $HOME/haskell/ghc-*; do
    echo "  ${ver##$HOME/haskell/ghc-}"
  done
}

# Switch to a specific GHC version
ghc-switch() {
  if [ -z "$1" ]; then
    echo "USAGE: ghc-switch VERSION"
    ghc-list-available
    return 1
  fi

  VER_PATH="$HOME/haskell/ghc-$1"
  if [ -d "$VER_PATH" ]; then
    path=($VER_PATH/bin ${(@)path:#*ghc*})
    export GHC_VERSION=$1
    ghc --version
  else
    echo "GHC $1 isn't available"
    ghc-list-available
    return 1
  fi
}
