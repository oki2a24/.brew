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

brew bundle install --file=${TOOLS_DIR}/bundle/mac/Brewfile
bash "${TOOLS_DIR}/set_bash_completion.sh"
bash "${TOOLS_DIR}/set_composer.sh"
bash "${TOOLS_DIR}/set_docker_bash_completion.sh"
bash "${TOOLS_DIR}/set_fzf.sh"
bash "${TOOLS_DIR}/set_git_completion.sh"
