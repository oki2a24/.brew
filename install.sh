#!/bin/bash
#
# Usage:
#   install.sh
#
# Description:
#   Mac または Linux へアプリをインストールするスクリプトを呼び出し、実行します。
#
###########################################################################

set -eu

readonly TOOLS_DIR="$(cd "$(dirname "$0")" && pwd)"

is_osx() {
  [ $(uname) == "Darwin" ]
}

main() {
  if is_osx; then
    bash "${TOOLS_DIR}/install_brew.sh"
    bash "${TOOLS_DIR}/install_app.sh"
  else
    bash "${TOOLS_DIR}/install_linuxbrew.sh"
    bash "${TOOLS_DIR}/install_linuxapp.sh"
  fi
}
main
