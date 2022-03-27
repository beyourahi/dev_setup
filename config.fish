# no more annoying welcome message hehe
set fish_greeting ""

# to enable ANSI color codes
set -gx TERM xterm-256color

# set default editor to Neovim
set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.nvm/versions/node/v17.7.2/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# aliases (life saver)
alias y "yarn"
alias c "clear"
alias r "ranger"
alias l "exa -l -a --icons"
alias v "lvim"
alias g "git"
alias gt "git status"
alias ga "git add ."
alias gc "git commit"
alias gp "git push"
alias gpl "git pull"
alias rm "rm -rf"
alias python "/usr/local/bin/python3.10"

# prompt theme
oh-my-posh prompt init fish --config '~/.poshthemes/takuya.omp.json' | source

