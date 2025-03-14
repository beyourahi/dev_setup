# aliases (life saver)

# C:\Program Files\Git\etc\profile.d

# basic
alias e="exit"
alias t="touch"
alias rm="rm -rf"
alias c="clear"
alias l="ls -la"

# npm
alias n="npm"
alias nx="npx"
alias ni="npm install"
alias na="npm install"
alias nr="npm uninstall"
alias nd="npm run dev"
alias nb="npm run build"
alias ns="npm run start"
alias nu="ncu -u -x tailwindcss && npm install && npm run build"


# pnpm
alias p="pnpm"
alias px="pnpm dlx"
alias pi="pnpm install"
alias pa="pnpm add"
alias pr="pnpm remove"
alias pd="pnpm run dev"
alias pb="pnpm run build"
alias ps="pnpm run start"
alias pu="ncu -u -x tailwindcss && pnpm install && pnpm run build"

# bun
alias b="bun"
alias bx="bunx"
alias bi="bun install"
alias ba="bun add"
alias br="bun remove"
alias bd="bun run dev"
alias bb="bun run build"
alias bs="bun run start"
alias bu="ncu -u -x tailwindcss && bun install && bun run build"

# git
alias g="git"
alias gs="git status"
alias gl="git log --oneline"
alias ga="git add ."
alias gc="git commit -m"
alias gam="git commit --amend"
alias gp="git push --force"
alias gpl="git pull"
alias gb="git branch"
alias gck="git checkout"
alias fuckit="git add . && git commit --amend && git push --force"

# prettier
alias sexy="bunx prettier --write ."

# wrangler
alias w="wrangler"
