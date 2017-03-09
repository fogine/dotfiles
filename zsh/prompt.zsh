#User powerline plugin in shell
function _update_ps1()
{
    error=$?
    if [[ -s "/usr/local/bin/pypy" ]]; then
        export PROMPT="$(pypy ~/.oh-my-zsh/plugins/powerline-zsh/powerline-zsh.py $error)"
    else
        export PROMPT="$(~/.oh-my-zsh/plugins/powerline-zsh/powerline-zsh.py  $error)"
    fi
}
precmd()
{
    _update_ps1
}

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
