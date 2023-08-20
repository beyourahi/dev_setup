# aliases (life saver)

# basic
alias e="exit"
alias t="touch"
alias rm="rm -rf"
alias c="clear"
alias l="ls -la"

# npm
alias ni="npm install && npx prettier --write ."
alias nd="npx prettier --write . && npm run dev"
alias nb="npx prettier --write . && npm run build"
alias ns="npm run start"
alias nu="ncu && ncu -u && npm install && npx prettier --write ."

# pnpm
alias px="pnpm dlx"
alias pi="pnpm install && pnpm dlx prettier --write ."
alias pa="pnpm add"
alias pd="pnpm dlx prettier --write . && pnpm run dev"
alias pb="pnpm dlx prettier --write . && pnpm run build"
alias ps="pnpm run start"
alias pu="ncu && ncu -u && pnpm install && pnpm dlx prettier --write ."

# git
alias g="git"
alias gs="pnpm dlx prettier --write . && git status"
alias gl="pnpm dlx prettier --write . && git log --oneline"
alias ga="pnpm dlx prettier --write . && git add ."
alias gc="git commit -m"
alias gam="pnpm dlx prettier --write . && git commit --amend"
alias gp="git push --force"
alias gpl="git pull && pnpm dlx prettier --write ."
alias gb="git branch"
alias gck="git checkout"
alias fuckit="git add . && pnpm dlx prettier --write . && git commit --amend && git push --force"

# prettier
alias p="pnpm dlx prettier --write ."
alias pc="pnpm dlx prettier --check ."
