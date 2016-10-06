# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi


PATH=~/.dotfiles/bin:${PATH}
PATH=~/.miniconda/bin:$PATH

export PATH


# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# Aliases
source ~/.dotfiles/aliases

# Custom prompt
source ~/.zsh/prompt.zsh

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
