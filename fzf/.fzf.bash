# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jonathan/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/jonathan/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jonathan/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jonathan/.fzf/shell/key-bindings.bash"
