#!/bin/bash
#
# Usage:
#   install.sh
#
# Description:
#   Mac へアプリをインストールするスクリプトを呼び出し、実行します。
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
    echo 'is not osx. do nothing.'
  fi
}
main
