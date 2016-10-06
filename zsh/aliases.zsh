alias ls='ls --color=auto'
alias grep='grep --color'

alias ll='ls -lah'
alias la='ls -A'
alias l=ls

function mcd() {
    mkdir "${1}" && cd "${1}"
}
