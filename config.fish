# no more annoying welcome message hehe
set fish_greeting ""

# to enable ANSI color codes
set -gx TERM xterm-256color

# set default editor to Neovim
set -gx EDITOR nvim

# aliases (life saver)
alias c "clear"
alias l "exa -l -a --icons"
alias v "nvim"
alias g "git"
alias gs "git status"
alias ga "git add ."
alias gc "git commit"
alias gp "git push"
alias gpl "git pull"
alias rm "rm -rf"
alias python "/usr/local/bin/python3.10"

# prompt theme
oh-my-posh prompt init fish --config '~/.poshthemes/takuya.omp.json' | source
