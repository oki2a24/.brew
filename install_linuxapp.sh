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

readonly CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

brew bundle install --file=${CURRENT_DIR}/bundle/linux/Brewfile
