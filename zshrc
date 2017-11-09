# ZSH CONFIG
export ZSH=/home/travis/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
plugins=(git)
ZSH_THEME="ys"
source $ZSH/oh-my-zsh.sh
source ~/.sendgrid.env
source /usr/share/nvm/init-nvm.sh
source ~/.nix-profile/etc/profile.d/nix.sh

# USER CONFIG
## Aliases
alias open='xdg-open'
alias kovanstart='(cd ~/prg/keys/kovan && ./parity_kovan.sh)'
alias pbcopy='xclip -selection c'
alias vim='nvim'
alias v='vi'

# Add personal bin and scripts folder to path
export PATH="$PATH:/home/travis/bin"
export PATH="$PATH:/home/travis/scripts"

# Add ruby gems to path
export PATH="$PATH:/home/travis/.gem/ruby/2.4.0/bin"

# Add Rust binaries to path
export PATH="$PATH:/home/travis/.cargo/bin"

eval $(thefuck --alias)
