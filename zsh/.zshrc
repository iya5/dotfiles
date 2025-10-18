alias vim=nvim

# history settings
export HISTFILE="$HOME/.config/zsh/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# move .zcompdump files into hidden directory
autoload -Uz compinit
compinit -d "$HOME/.config/zsh/.zcompdump"

# shared history settings
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt hist_ignore_dups

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

ZSH_THEME="geoffgarside"
source $HOME/.config/zsh/oh-my-zsh/oh-my-zsh.sh
