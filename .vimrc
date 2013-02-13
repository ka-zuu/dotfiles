"-------------------------------------------------
" NeoBundle プラグイン管理
"-------------------------------------------------
 
" Vi互換OFF 
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplcache-snippets-complete'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'tpope/vim-surround'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'git://github.com/kchmck/vim-coffee-script.git'

NeoBundle 'tomasr/molokai'

" ファイル形式別プラグインのロードを有効化
filetype plugin on
filetype indent on


"-------------------------------------------------
" Basic 基本設定
"-------------------------------------------------
 
" カーソルの上または下に表示する最小限の行数
set scrolloff=5
 
" 入力されているテキストの最大幅 「0」で無効
set textwidth=0
 
" バックアップの作成は行わない
set nobackup
 
" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread
 
" スワップファイルの作成は行わない
"set noswapfile
 
" 保存しないで他のファイルを表示することが出来るようにする
set hidden
 
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
 
" 自動整形の実行方法
set formatoptions=lmoq
 
" ビープ音 ビジュアルベルを使用しない
set vb t_vb=
 
" ファイルブラウザの初期ディレクトリ
set browsedir=buffer
 
" 特定のキーに行頭および行末の回りこみ移動を許可する設定
"  b - [Backspace]  ノーマルモード ビジュアルモード
"  s - [Space]      ノーマルモード ビジュアルモード
"  <  - [←]        ノーマルモード ビジュアルモード
"  >  - [→]         ノーマルモード ビジュアルモード
"  [ - [←]         挿入モード 置換モード
"  ] - [→]          挿入モード 置換モード
"  ~ - ~            ノーマルモード
set whichwrap=b,s,<,>,[,],~
 
" コマンド (の一部) を画面の最下行に表示する
set showcmd
 
" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" タブを常に表示
set showtabline=2
 
" ステータス行を常に表示する
set laststatus=2
 
" コマンドラインに使われる画面上の行数
set cmdheight=2
 
" Insertモード、ReplaceモードまたはVisualモードで最終行にメッセージを表示する
set showmode
 
"モードラインの無効化
set nomodeline
 
" すべてのモードでマウスが有効
set mouse=a

"-------------------------------------------------
" Color Scheme設定
"-------------------------------------------------
set t_Co=256
colorscheme molokai


"-------------------------------------------------
" Editor エディター設定
"-------------------------------------------------
 
" 行番号を表示する。
set number
 
" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする
set showmatch
 
" 保存時に行末の空白を除去する
"autocmd BufWritePre * :%s/\s\+$//e
 
"-------------------------------------------------
" Indent インデント設定
"-------------------------------------------------
 
" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent
 
" 新しい行を作ったときに高度な自動インデントを行う
set smartindent
 
" <Tab> が対応する空白の数。
set tabstop=8
 
" <Tab> の挿入や <BS> の使用等の編集操作をするときに、<Tab> が対応する空白の数。
set softtabstop=2
 
" インデントの各段階に使われる空白の数
set shiftwidth=2
 
" Insertモードで <Tab> を挿入するとき、代わりに適切な数の空白を使う。（有効:expandtab/無効:noexpandtab）
"set noexpandtab
set expandtab
 
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
 
"-------------------------------------------------
" Search 検索設定
"-------------------------------------------------
 
" 検索コマンドを打ち込んでいる間にも、打ち込んだところまでのパターンがマッチするテキストを、すぐに表示する
set incsearch
 
"-------------------------------------------------
" Completion 補完設定
"-------------------------------------------------
 
"補完候補を表示する
set wildmenu
 
"-------------------------------------------------
" MacVim 関連
"-------------------------------------------------

" vimでのコピーをクリップボード対応に
set clipboard=unnamed,autoselect

" MacVimがデフォルトで変な設定を読んでいるのを解除 (効いてない・・・)
let g:no_vimrc_example = 1


"-------------------------------------------------
" プラグイン関連
"-------------------------------------------------

" ----------------
" neocomplcache

" 補完ウィンドウの設定
set completeopt=menuone
 
" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1

" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_smart_case = 1

" _(アンダースコア)区切りの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1

" 
let g:neocomplcache_enable_camel_case_completion  =  1

" ポップアップメニューで表示される候補の数
let g:neocomplcache_max_list = 10

" シンタックスをキャッシュするときの最小文字長
let g:neocomplcache_min_syntax_length = 3

" ディクショナリ定義
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ }

if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif

"tabで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"


" ----------------
" gjslint
autocmd FileType javascript :compiler gjslint
autocmd QuickfixCmdPost make copen

" ----------------
"  unite

" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-H> :Unite file_mru<CR>

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
