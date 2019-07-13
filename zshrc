# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi


PATH=~/.dotfiles/bin:${PATH}
#PATH=~/anaconda/bin:$PATH
. $HOME/anaconda/etc/profile.d/conda.sh

if [ -f "$HOME/anaconda/etc/profile.d/conda.sh" ]; then
    . "$HOME/anaconda/etc/profile.d/conda.sh"
    CONDA_CHANGEPS1=false conda activate base
else
    \export PATH="$HOME/anaconda/bin:$PATH"
fi

export PATH

# Exports
source ~/.zsh/exports.zsh

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

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# added by travis gem
[ -f /home/jared/.travis/travis.sh ] && source /home/jared/.travis/travis.sh
