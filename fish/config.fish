fish_config theme choose "Dracula Official"
if status is-interactive
    # Commands to run in interactive sessions can go here
end
# starship init fish | source
zoxide init fish | source
oh-my-posh init fish --config ~/.config/fish/x.omp.json | source

alias cd=z
alias ls=lsd
alias l=ll
alias vim=hx
alias yy=yazi
alias where=which
alias cat="bat --style=header --paging=never --theme=gruvbox-dark"

set fish_greeting ""
# set -Ux LC_ALL "zh_CN.UTF-8"
