# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7 winget
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac


# basic
alias e="exit"
alias t="touch"
alias rm="rm -rf"
alias c="clear"
alias l="ls -la"

# pnpm
alias px="pnpm dlx"
alias pi="pnpm install && pnpm dlx prettier --write ."
alias pa="pnpm add"
alias pd="pnpm dlx prettier --write . && pnpm run dev"
alias pb="pnpm dlx prettier --write . && pnpm run build"
alias ps="pnpm run start"
alias pu="ncu && ncu -u && pnpm install && pnpm dlx prettier --write ."

# bun
alias bx="bunx"
alias bi="bun install && bunx prettier --write ."
alias ba="bun add"
alias br="bun remove"
alias bu="bun update --latest"
alias bd="bunx prettier --write . && bun run dev"
alias bb="bunx prettier --write . && bun run build"
alias bs="bun run start"

# git
alias g="git"
alias gs="bunx prettier --write . && git status"
alias gl="bunx prettier --write . && git log --oneline"
alias ga="bunx prettier --write . && git add ."
alias gc="git commit -m"
alias gam="bunx prettier --write . && git commit --amend"
alias gp="git push --force"
alias gpl="git pull && bunx prettier --write ."
alias gb="git branch"
alias gck="git checkout"
alias fuckit="git add . && bunx prettier --write . && git commit --amend && git push --force"

# prettier
alias p="bunx prettier --write ."
alias pc="bunx prettier --check ."
