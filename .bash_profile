export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/dcb1:$PATH"
export PATH="$(brew --prefix)/opt/gnu-tar/libexec/gnubin:$PATH"
export PS1="[\h \t] \W \\$\[$(tput sgr0)\] "

function _update_ps1() {
    PS1="$(/opt/homebrew/bin/powerline-go -error $? -jobs $(jobs -p | wc -l) -cwd-max-depth 1 -hostname-only-if-ssh -theme ~/.config/powerline-go/default.json -modules time,jobs,cwd,exit,root)"
}

if [ "$TERM" != "linux" ] && [ -f "/opt/homebrew/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export VISUAL="/opt/homebrew/bin/vim"
export EDITOR="$VISUAL"

#my aliases
alias ls="ls -G"