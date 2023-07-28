# aliases (life saver)

# basic
alias e="exit"
alias t="touch"
alias rm="rm -rf"
alias c="clear"
alias l="ls -la"

# npm
alias ni="npm install && npx prettier --write ."
alias nid="npm install -D && npx prettier --write ."
alias nd="npx prettier --write . && npm run dev"
alias nb="npx prettier --write . && npm run build"
alias ns="npm run start"
alias nu="ncu && ncu -u && npm install && npx prettier --write ."

# git
alias g="git"
alias gs="npx prettier --write . && git status"
alias gl="npx prettier --write . && git log --oneline"
alias ga="npx prettier --write . && git add ."
alias gc="git commit -m"
alias gam="npx prettier --write . && git commit --amend"
alias gp="git push --force"
alias gpl="git pull && npx prettier --write ."
alias fuckit="git add . && npx prettier --write . && git commit --amend && git push --force"

# prettier
alias p="npx prettier --write ."
alias pc="npx prettier --check ."
