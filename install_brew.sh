#!/bin/bash
#
# Usage:
#   install_brew.sh
#
# Description:
#   Mac へ Homebrew をインストールします。
#
###########################################################################

# Homebrew https://brew.sh/index_ja
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew Cask http://caskroom.io/
brew tap caskroom/cask
