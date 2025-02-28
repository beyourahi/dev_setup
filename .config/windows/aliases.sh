# aliases (life saver)

# C:\Program Files\Git\etc\profile.d

# basic
alias e="exit"
alias t="touch"
alias rm="rm -rf"
alias c="clear"
alias l="ls -la"

# npm
alias nx="npx"
alias ni="npm install"
alias na="npm install"
alias nr="npm uninstall"
alias nd="npm run dev"
alias nb="npm run build"
alias ns="npm run start"
alias nu="ncu && ncu -u && npm install"


# pnpm
alias px="pnpm dlx"
alias pi="pnpm install"
alias pa="pnpm add"
alias pd="pnpm run dev"
alias pb="pnpm run build"
alias ps="pnpm run start"
alias pu="ncu && ncu -u && pnpm install"

# bun
alias bx="bunx"
alias bi="rm bun.lockb && bun install && bunx prettier --write ."
alias ba="bun add"
alias br="bun remove"
alias bu="ncu -u && bi && bb"
alias bd="bun run dev"
alias bb="bun run build"
alias bs="bun run start"

# git
alias g="git"
alias gs="git status"
alias gl="git log --oneline"
alias ga="git add ."
alias gc="git commit -m"
alias gam="git commit --amend"
alias gp="git push --force"
alias gpl="git pull && bunx prettier --write ."
alias gb="git branch"
alias gck="git checkout"
alias fuckit="git add . && git commit --amend && git push --force"

# prettier
alias p="bunx prettier --write ."
alias pc="bunx prettier --check ."

# wrangler
alias w="wrangler"
alias wp="wrangler pages"
alias wpdc="wrangler pages download config"
