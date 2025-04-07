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

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
export PATH="$HOME/go/bin:$PATH"

# More useful ls command by default
alias ls='ls -lAFh'
alias e='nvim'

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

# fnm
FNM_PATH="/Users/brett/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/brett/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/brett/.cache/lm-studio/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/brett/.lmstudio/bin"

# Created by `pipx` on 2025-03-04 12:19:03
export PATH="$PATH:/Users/brett/.local/bin"

# Added by Windsurf
export PATH="/Users/brett/.codeium/windsurf/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/brett/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
