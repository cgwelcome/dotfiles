# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/charlesgao/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/charlesgao/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/charlesgao/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/charlesgao/.fzf/shell/key-bindings.zsh"
