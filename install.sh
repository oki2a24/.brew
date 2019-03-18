#!/bin/bash
#
# Usage:
#   install.sh
#
# Description:
#   Mac へアプリをインストールするスクリプトを呼び出し、実行します。
#
###########################################################################

set -eux

readonly TOOLS_DIR="$(cd "$(dirname "$0")" && pwd)"

bash "${TOOLS_DIR}/install_brew.sh"
bash "${TOOLS_DIR}/install_app.sh"
