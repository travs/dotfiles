# ZSH CONFIG
export ZSH=/home/travis/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
plugins=(git)
ZSH_THEME="ys"
source $ZSH/oh-my-zsh.sh
source ~/.sendgrid.env
source /usr/share/nvm/init-nvm.sh
source ~/.nix-profile/etc/profile.d/nix.sh

## Vi-mode
# bindkey -v

# USER CONFIG
## Aliases
alias '$'=''    # ignore $ at front of pasted commands
alias p='sudo pacman'
alias pwl='wal -qc -a 90 -i ~/.config/wall.png'
alias pwll='wal -qc -l -a 90 -i ~/.config/wall.png'
alias genfilename='date +%s | sha224sum | base64 | head -c 12 ; echo'
alias kovanstart='(cd ~/prg/keys/kovan && ./parity_kovan.sh)'
alias npm-exec='PATH=$(npm bin):$PATH'
alias open='xdg-open'
alias pbcopy='xclip -selection c'
alias sethk='seth --rpc-port=8547 --chain=kovan'
alias sethl='seth --rpc-port=8549 --chain=mainnet'
alias v='vi'
alias vi='vim'
alias vim='nvim'
alias ytv='youtube-viewer'

export BROWSER="chromium"

# Add personal bin and scripts folder to path
export PATH="$PATH:/home/travis/.bin"
export PATH="$PATH:/home/travis/.scripts"

# Add ruby gems to path
export PATH="$PATH:/home/travis/.gem/ruby/2.4.0/bin"

# Add Rust binaries to path
export PATH="$PATH:/home/travis/.cargo/bin"

# Add node 
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

(cat ~/.cache/wal/sequences &)
