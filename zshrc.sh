# Use Command + Left/Right to go to the beginning / end of the line
bindkey '^A' beginning-of-line  # ⌘ + ←
bindkey '^E' end-of-line        # ⌘ + →

# Use Option + Left/Right for word navigation
bindkey '^[b' backward-word  # ⌥ + ← (Option + Left)
bindkey '^[f' forward-word   # ⌥ + → (Option + Right)

# Use Command + Backspace to delete the whole line
bindkey '^U' backward-kill-line  # ⌘ + ⌫

# Enable syntax highlighting and autosuggestions
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#555"

# Only show the current directory, and not the full path
prompt_dir () {
	prompt_segment "$AGNOSTER_DIR_BG" "$AGNOSTER_DIR_FG" '%1~'
}

# My git shortcuts
source ~/config/gitrc.sh

# Ensure that GPG knows which terminal to use for any interactive prompts
# export GPG_TTY=$(tty)

# fzf is a command-line fuzzy finder, used by zoxide for completions / interactive selection
source <(fzf --zsh)
# Generates the shell-specific initialization script for zoxide to integrate with the zsh shell
# The script sets up aliases and functions that enable zoxide to hook into the shell's directory navigation commands, such as cd
eval "$(zoxide init zsh)"
