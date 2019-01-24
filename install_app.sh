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

brew cask install google-chrome
brew cask install docker
brew cask install evernote
brew cask install virtualbox
brew install bash-completion
bash "$TOOLS_DIR/set_bash_completion.sh"
brew install git
bash "$TOOLS_DIR/set_git_completion.sh"
brew install packer
brew install vim
