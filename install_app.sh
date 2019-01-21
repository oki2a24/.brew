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

brew install git
bash "$TOOLS_DIR/set_git_completion.sh"
