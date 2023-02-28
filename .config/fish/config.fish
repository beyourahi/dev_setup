# no more annoying welcome message hehe
set fish_greeting ""

# to enable ANSI color codes
set -gx TERM xterm-256color

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /usr/local/go/bin $PATH
set -gx PATH ~/.nvm/versions/node/v18.14.2/bin $PATH
set -gx PATH node_modules/.bin $PATH
set -gx PATH ~/.cargo/bin $PATH

# aliases (life saver)
alias e "exit"
alias t "touch"
alias n "npm"
alias ni "npm install"
alias nd "npm run dev"
alias c "clear"
alias r "ranger"
alias l "exa -l -a --icons"
alias g "git"
alias gt "git status"
alias ga "git add ."
alias gc "git commit -am"
alias gam "git commit --amend -m"
alias gp "git push"
alias gpl "git pull"
alias gl "git log --oneline"
alias rm "rm -rf"
