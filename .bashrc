#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias venv='source venv/bin/activate'
alias runflutter='flutter run --no-sound-null-safety'
alias vi='nvim'
alias tree='tree -L 2'
alias py='python3'
alias designer='./venv/lib/python3.9/site-packages/qt6_applications/Qt/bin/designer'
alias maven='source /etc/profile.d/maven.sh && mvn -version'
alias ex='exit'
alias php='php82'
alias make='makepkg -si'

PS1='[\u@\h \W]\$ '


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Definir colores
blue="\[\e[34m\]"
green="\[\e[32m\]"
dark_gray="\[\e[90m\]"
reset="\[\e[0m\]"

# Crear el prompt personalizado
PS1="${blue}[${green}\u${blue}] \w ${dark_gray}\$(parse_git_branch) ${green}\$ ${reset}"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#nvim
source /usr/share/nvm/init-nvm.sh

# Habilitar autocompletado
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi
