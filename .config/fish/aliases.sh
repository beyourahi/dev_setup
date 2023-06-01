# aliases (life saver)

# basic
alias e="exit"
alias t="touch"
alias rm="rm -rf"
alias c="clear"
alias r="ranger"
alias l="ls -la"

# npm
alias n="npm"
alias ni="npm install"
alias nid="npm install -D"
alias nd="npm run dev"
alias nb="npm run build"

# git
alias g="git"
alias gs="git status"
alias gl="git log --oneline"
alias ga="git add ."
alias gc="git commit -m"
alias gam="git commit --amend"
alias gp="git push --force"
alias gpl="git pull"
alias fuckit="git add . && git commit --amend && git push --force"

# prettier
alias p="npx prettier --write ."
alias pc="npx prettier --check ."

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
