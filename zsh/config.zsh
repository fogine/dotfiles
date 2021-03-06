# Set GPG TTY
export GPG_TTY=$(tty)
# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh"
# required by cutom "smart-pinentry" script
# the script is then used by gpg-agent.conf: pinentry-program /path/to/smart-pinentry
export PINENTRY_USER_DATA=tty

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt AUTO_PUSHD       # pushes the old directory onto the stack
setopt PUSHD_MINUS      # exchange the meanings of '+' and '-'
setopt CDABLE_VARS      # expand the expression (allows 'cd -2/tmp')

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_IGNORE_SPACE
#setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
#breaks z utility
#setopt complete_aliases

zle -N newtab

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


#Disable stty start so shortcut <C-q> can be used
stty start undef
#After this, shortcut <C-s> can be used
stty -ixon
