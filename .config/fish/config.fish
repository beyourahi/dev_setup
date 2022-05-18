# no more annoying welcome message hehe
set fish_greeting ""

# to enable ANSI color codes
set -gx TERM xterm-256color

# set default editor to Neovim
set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /usr/local/go/bin $PATH
set -gx PATH ~/.nvm/versions/node/v17.9.0/bin $PATH
set -gx PATH node_modules/.bin $PATH
set -gx PATH ~/.cargo/bin $PATH

# aliases (life saver)
alias cj "caja"
alias e "exit"
alias t "touch"
alias y "yarn"
alias c "clear"
alias r "ranger"
alias l "exa -l -a --icons"
alias v "lvim"
alias g "git"
alias gt "git status"
alias ga "git add ."
alias gc "git commit -am"
alias gam "git commit --amend -m"
alias gp "git push"
alias gpl "git pull"
alias gl "git log --oneline"
alias rm "rm -rf"
alias python "/usr/local/bin/python3.10"

# prompt theme
oh-my-posh prompt init fish --config '~/.poshthemes/takuya.omp.json' | source

