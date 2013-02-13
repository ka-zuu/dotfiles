# from http://c-brains.jp/blog/wsg/11/07/08-184205.php

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef
 
# よく使うエイリアスやら各コマンドのデフォルトのオプションを設定
alias ls='ls -CF --color'
alias ll='ls -AlFh --show-control-chars --color=auto'
alias la='ls -CFal'
alias ps='ps --sort=start_time'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='vi'
 
# プロンプトの表示をカスタマイズ
export PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \W \$\[\033[00m\] '

# もろもろ環境変数を設定
export PATH=$PATH:/sbin:/usr/sbin # パス
export PAGER='/usr/bin/lv -c' # man とかで使われる
#export EDITOR='/usr/bin/vim' # visudo とかで使われる
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export HISTSIZE=1000 # これだけコマンド履歴を残す
export LANG='ja_JP.UTF-8' # 以下 3 つ文字コード
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

# GNU coreutils
if [ "$PS1" ] && [ -f '/usr/local/Cellar/coreutils/8.17/aliases' ]; then
  . /usr/local/Cellar/coreutils/8.17/aliases
fi

# node.js
export NODE_PATH=/usr/local/lib/node:$PATH
export PATH=/usr/local/share/npm/bin:$PATH



