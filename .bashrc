# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

# よく使うエイリアスやら各コマンドのデフォルトのオプションを設定
alias ls='ls -CF --color'
alias ll='ls -lFh --show-control-chars --color=auto'
alias la='ls -CFal'
alias ps='ps --sort=start_time'

# プロンプトの表示をカスタマイズ
export PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \W \$\[\033[00m\] '

# もろもろ環境変数を設定
export PATH=$PATH:/sbin:/usr/sbin:/home/TOOL:/home/UTL # パス
export PAGER='/usr/bin/less' # man とかで使われる
export EDITOR='/usr/bin/vim' # visudo とかで使われる
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export HISTSIZE=1000 # これだけコマンド履歴を残す
export LANG='ja_JP.UTF-8' # 以下 3 つ文字コード
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

# GNU coreutils
#if [ "$PS1" ] && [ -f '/usr/local/Cellar/coreutils/8.17/aliases' ]; then
#  . /usr/local/Cellar/coreutils/8.17/aliases
#fi

# node関連
export NVM_DIR="/home/hands/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#export NODE_PATH="${NVM_BIN}"

# screenのセッション保存場所を変更
export SCREENDIR=/home/${USER}/.screens
