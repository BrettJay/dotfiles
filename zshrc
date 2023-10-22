# Use Pure Prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL="→"
prompt pure

eval "$(fnm env --use-on-cd)"

# Set Neovim as the editor
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH="$HOME/.npm-packages/bin:$PATH"

eval "$(rbenv init - zsh)"

# More useful ls command by default
alias ls='ls -lAFh'

# Make directory and cd into it
function mkcd() {
    mkdir -p "$@" && cd "$_";
}
export GPG_TTY=$(tty)

# bun completions
[ -s "/Users/brett/.bun/_bun" ] && source "/Users/brett/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
