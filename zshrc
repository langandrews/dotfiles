# Load zgen
source "${HOME}/.zgen/zgen.zsh"

#----------------------------------------
# Zgen
#----------------------------------------
if ! zgen saved; then

	# Load oh-my-zsh base plugins
	zgen oh-my-zsh

	# Specify particular plugins here
	zgen oh-my-zsh plugins/command-not-found
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/history
	zgen oh-my-zsh plugins/web-search
	zgen oh-my-zsh plugins/dotenv

	# NOTE: zsh-syntax-highlighting *must* come before zsh-history-substring
	# search, else breakage occurs (or so I'm told).
	zgen load zsh-users/zsh-completions src
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-history-substring-search

  # Theme
	zgen load langandrews/aphrodite-terminal-theme aphrodite

	# Generate the init.zsh script
	zgen save
fi

#----------------------------------------
# Aliases
#----------------------------------------
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias dirs='dirs -v'
alias dd='dd status=progress'
alias c='clear'
alias grep='grep --color=auto'
alias tmux='tmux'
alias cdcode='cd /Volumes/Code/'
alias eslintinit='npm init @eslint/config@latest'

alias gp='git pull'
alias gP='git push'

export TERM='xterm-256color'
export EDITOR='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/ruby/bin:/Users/andrew/.local/bin/:$HOME/.config/emacs/bin/:/opt/homebrew/opt/grep/libexec/gnubin:$HOME/.roswell/bin:$PATH"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrew/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andrew/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrew/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andrew/google-cloud-sdk/completion.zsh.inc'; fi
