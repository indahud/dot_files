export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)

source $ZSH/oh-my-zsh.sh

# NPM
# installs npm dependencies in all projects
alias nall="find . -maxdepth 2 -name package.json -execdir npm i \;"

alias ni="npm install"
alias dev="npm run dev"
alias deb="npm run debug"
alias pdev="pnpm run dev"
alias start="npm run start"

# System Alias
alias cl="clear"
alias cp="pwd | xclip -selection clipboard"
alias src="source .zshrc"

# VS CODE
alias co="code ."
alias ci="code-insiders ."
alias cdm="codium ."

#Tmux
alias ta="tmux at -t"
alias tls="tmux ls"
alias tmux="tmux -u"

# Rust based better utilities
alias ls="eza -F --icons"
alias cat="bat"

# Search and go to directory with fzf
alias sd="cd ~ && cd \$(find * -type d | fzf)"


# List files and go inside directory
lst() {
	cd $("ls" | fzf)
}

# Local tunnel
tunnel() {
	npx localtunnel --subdomain $1 --port $2
}

export FZF_DEFAULT_COMMAND='fd --type f'

# Ignores duplicates in history
setopt hist_ignore_all_dups
HIST_FIND_NO_DUPS=true
HIST_IGNORE_DUPS=true
