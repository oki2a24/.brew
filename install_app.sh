#!/bin/bash
#
# Usage:
#   install_app.sh
#
# Description:
#   Mac へアプリをインストールします。
#
###########################################################################

set -eux

readonly TOOLS_DIR="$(cd "$(dirname "$0")" && pwd)"

brew update && brew upgrade && brew cleanup

# Homebrew Cask http://caskroom.io/
brew tap caskroom/cask
brew cask upgrade
brew cask install google-chrome
brew cask install docker
bash "${TOOLS_DIR}/set_docker_bash_completion.sh"
brew cask install virtualbox
brew cask install visual-studio-code

brew install bash-completion
bash "${TOOLS_DIR}/set_bash_completion.sh"
brew install fzf
brew install git
bash "${TOOLS_DIR}/set_git_completion.sh"
brew install kryptco/tap/kr
brew install mas
brew install packer
brew install tmux
brew install tree
brew install vim

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

mas upgrade
mas install 405399194 # Kindle
mas install 406056744 # Evernote
mas install 926036361 # LastPass
