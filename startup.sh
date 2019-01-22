yes | sudo apt-get install zsh man-db

sudo chsh -s /bin/zsh `whoami`

curl -L git.io/antigen > $HOME/.antigen.zsh

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

# install vsCode, per https://code.visualstudio.com/docs/setup/linux#_installation
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
yes | sudo apt-get install apt-transport-https
yes | sudo apt-get update
yes | sudo apt-get install code

yes | sudo apt-get install build-essential curl file git
