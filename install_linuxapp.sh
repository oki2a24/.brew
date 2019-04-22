#!/bin/bash
#
# Usage:
#   install_app.sh
#
# Description:
#   Linux へアプリをインストールします。
#
###########################################################################

set -eux

readonly TOOLS_DIR="$(cd "$(dirname "$0")" && pwd)"

brew bundle install --file=${TOOLS_DIR}/bundle/linux/Brewfile
