#!/bin/bash
#
# Usage:
#   set_git_completion.sh
#
# Description:
#   Git のタブ補完、ブランチを表示する設定を追記します。
#
###########################################################################

# 最終行に記述があるのであれば、空白行を追加する
if [[ -e ~/.bash_profile ]] && [[ -n $(tail -1 ~/.bash_profile) ]]; then
  echo "" >> ~/.bash_profile
fi

grep -q "git-completion.bash" ~/.bash_profile \
|| cat >> ~/.bash_profile <<'EOF'
# ターミナルでタブ補完を有効
source /usr/local/etc/bash_completion.d/git-completion.bash
EOF

grep -q "git-prompt.sh" ~/.bash_profile \
|| cat >> ~/.bash_profile <<'EOF'
# プロンプトに各種追加情報を表示可能にする
source /usr/local/etc/bash_completion.d/git-prompt.sh
EOF

grep -q "GIT_PS1_SHOWDIRTYSTATE=true" ~/.bash_profile \
|| cat >> ~/.bash_profile <<'EOF'
# ターミナルにブランチ名を表示
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\W\[\e[m\]$(__git_ps1 "(\[\e[1;31m\]%s\[\e[m\])")\$'
EOF

# 反映
source ~/.bash_profile
