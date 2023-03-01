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
set -gx PATH ~/.nvm/versions/node/v18.14.2/bin $PATH
set -gx PATH node_modules/.bin $PATH
set -gx PATH ~/.cargo/bin $PATH

# aliases (life saver)

# basic
alias e "exit"
alias t "touch"
alias rm "rm -rf"
alias c "clear"
alias r "ranger"
alias l "exa -l -a --icons"

# npm
alias n "npm"
alias ni "npm install"
alias nid "npm install -D"
alias nd "npm run dev"
alias nb "npm run build"

# pnpm
alias p "pnpm"
alias pa "pnpm add"
alias pad "pnpm add -D"
alias pu "pnpm up"
alias pr "pnpm rm"
alias pd "pnpm run dev"
alias pb "pnpm run build"

# git
alias g "git"
alias gs "git status"
alias gl "git log --oneline"
alias ga "git add ."
alias gc "git commit -m"
alias gam "git commit --amend -m"
alias gp "git push --force"
alias gpl "git pull"
