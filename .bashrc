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


################################
# もろもろ環境変数を設定
################################

# 共通の環境変数
export HISTSIZE=1000 # これだけコマンド履歴を残す
export LANG='ja_JP.UTF-8' # 以下 3 つ文字コード
#export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

# OS判定
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
fi

# OS毎の設定
case "${OS}" in
    Mac) # OSがMacならば
        if [ -d /Applications/MacVim.app ]; then # MacVimが存在するならば
          alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
          alias vi="vim"
          export PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"
          export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim" # visudo とかで使われる
        else
          export EDITOR='/usr/bin/vim' # visudo とかで使われる
        fi
        # GNU coreutils
        export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
        export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
        # その他
        export PAGER='/usr/bin/less' # man とかで使われる
        ;;
    Linux)
	if [ -d /home/TOOL -a -d /home/UTL ]; then
            export PATH="/home/TOOL:/home/UTL:$PATH"
        fi
        export PAGER='/usr/bin/less' # man とかで使われる
        export EDITOR='/usr/bin/vim' # visudo とかで使われる
        ;;
    *)
        ;; # OSがMac以外ならば何もしない
esac


# node関連
#export NVM_DIR="/home/hands/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#export NODE_PATH="${NVM_BIN}"

# screenのセッション保存場所を変更
#export SCREENDIR=/home/${USER}/.screens
