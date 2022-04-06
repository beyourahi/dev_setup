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
alias e "exit"
alias t "touch"
alias y "yarn"
alias c "clear"
alias r "ranger"
alias l "exa -l -a --icons"
alias v "lvim"
alias g "git"
alias gt "git status"
alias ga "git add ."
alias gp "git push"
alias gpl "git pull"
alias rm "rm -rf"
alias next "mkdir dope_web_app && cd dope_web_app && yarn create next-app --typescript . && yarn add react@latest react-dom@latest next@12 && yarn add -D tailwindcss@latest postcss@latest autoprefixer@latest && npx tailwindcss init -p && rm styles/globals.css && echo "@tailwind base;@tailwind components;@tailwind utilities;" > styles/globals.css && rm tailwind.config.js && echo "module.exports={content:['./pages/**/*.{js,ts,jsx,tsx}','./components/**/*.{js,ts,jsx,tsx}',],theme:{extend:{},},plugins:[],}" > tailwind.config.js && touch pages/404.tsx pages/500.tsx && mkdir components lib && yarn dev"
alias python "/usr/local/bin/python3.10"

# prompt theme
oh-my-posh prompt init fish --config '~/.poshthemes/takuya.omp.json' | source

