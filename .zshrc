# prompt
PROMPT='%F{cyan}%2/%f %(?.%F{red}❱%f%F{yellow}❱%f%F{green}❱%f.%F{red}❱❱❱%f) '

# colors
export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# completions
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle ':completion:*:approximate:*' max-errors 1 numeric
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH #zsh-completions installed through brew
autoload -Uz compinit
compinit
setopt auto_list
setopt complete_in_word
setopt glob_complete
unsetopt case_glob

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt share_history
setopt hist_save_no_dups
setopt inc_append_history
setopt hist_reduce_blanks

# directories
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent

# vi mode
export KEYTIMEOUT=100
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]]; then
	    echo -ne '\e[2 q'
	else
	    echo -ne $'\e[6 q'
	fi
}
zle -N zle-keymap-select
zle-line-init() {
	echo -ne "\e[5 q"
}
zle -N zle-line-init
bindkey -v # vi mode
bindkey -M viins 'kj' vi-cmd-mode # 'kj' as escape key
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# FZF (ripgrep, bat)
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# aliases
alias vi=nvim
alias cat=bat

# others
export PATH=/opt/homebrew/bin:$PATH
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

