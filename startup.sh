yes | sudo  apt-get install zsh
sudo chsh -s /bin/zsh `whoami`
curl -L git.io/antigen > $HOME/antigen.zsh
echo "#antigen
source $HOME/.antigen.zsh 
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Load the theme.
antigen theme robbyrussell
# Tell Antigen that you're done.
antigen apply" >> $HOME/.zshrc
