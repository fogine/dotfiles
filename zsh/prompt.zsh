#Use powerline plugin in shell
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

## workaround for handling TERM variable in multiple tmux sessions properly from http://sourceforge.net/p/tmux/mailman/message/32751663/ by Nicholas Marriott
if [[ -n ${TMUX} && -n ${commands[tmux]} ]];then
        case $(tmux showenv TERM 2>/dev/null) in
                *256color) ;&
                TERM=fbterm)
                        TERM=screen-256color ;;
                *)
                        TERM=screen
        esac
fi

#<c-z> - toggle between bg and fg a current process
_zsh_cli_fg() { fg;}
zle -N _zsh_cli_fg
bindkey '^Z' _zsh_cli_fg
bindkey '^i' end-of-line


# 'jj' goes to command mode
bindkey -M viins 'jj' vi-cmd-mode
