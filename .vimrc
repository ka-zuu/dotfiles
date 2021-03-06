" .vimrc

if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/Users/tabei/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/tabei/.vim/bundles/')

" My plugins
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('scrooloose/syntastic')
call dein#add('othree/html5.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('pangloss/vim-javascript')

call dein#add('tpope/vim-fugitive')

call dein#add('tpope/vim-surround')
call dein#add('mattn/emmet-vim')
call dein#add('deris/vim-shot-f')

call dein#add('scrooloose/nerdtree')

call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('tomasr/molokai')

call dein#add('koron/minimap-vim')

call dein#add('vim-airline/vim-airline')
call dein#add('vim-scripts/vim-auto-save')

"call dein#add('kannokanno/previm')

"NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
"NeoBundle 'Shougo/vimproc', {
"      \ 'build' : {
"      \     'windows' : 'make -f make_mingw32.mak',
"      \     'cygwin' : 'make -f make_cygwin.mak',
"      \     'mac' : 'make -f make_mac.mak',
"      \     'unix' : 'make -f make_unix.mak',
"      \    },
"      \ }
"

call dein#end()

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


"-------------------------------------------------
" 基本設定
"-------------------------------------------------

" カーソルの上または下に表示する最小限の行数
set scrolloff=1

" 入力されているテキストの最大幅 「0」で無効
set textwidth=0

" バックアップの作成は行わない
set nobackup

" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread

" スワップファイルの作成は行わない
"set noswapfile

" undoファイルを作らない
set noundofile

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
"set whichwrap=b,s,<,>,[,],~

" コマンド (の一部) を画面の最下行に表示する
set showcmd

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" タブを常に表示
set showtabline=2

" ステータス行を常に表示する
set laststatus=2

" コマンドラインに使われる画面上の行数
set cmdheight=1

" Insertモード、ReplaceモードまたはVisualモードで最終行にメッセージを表示する
set showmode

"モードラインの無効化
set nomodeline

" すべてのモードでマウスは無効
set mouse=
"set ttymouse=xterm

" ステータスラインの設定
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Vimを使ってくれてありがとうを消すため
set notitle

" 挿入モードでカーソル形状を変更する
let &t_SI.="\e[6 q"
let &t_EI.="\e[2 q"
" " カーソル形状がすぐに元に戻らないのでタイムアウト時間を調整
set ttimeoutlen=10


"-------------------------------------------------
" Color Scheme設定
"-------------------------------------------------
syntax on

set t_Co=256
colorscheme molokai


"-------------------------------------------------
" エディター設定
"-------------------------------------------------

" 行番号を表示する。
set number

" 相対行番号を表示する。
"set relativenumber
" トグル設定
nnoremap <C-N> :<C-u>setlocal relativenumber!<CR>

" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする
set showmatch

" 保存時に行末の空白を除去する
"autocmd BufWritePre * :%s/\s\+$//e

"-------------------------------------------------
" インデント設定
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

" 検索結果をハイライトする
set hlsearch

" 大文字小文字を区別しない
set ignorecase
" 大文字小文字を混ぜたときは区別する
set smartcase

"-------------------------------------------------
" Completion 補完設定
"-------------------------------------------------

"補完候補を表示する
set wildmenu

"-------------------------------------------------
" MacVim 関連
"-------------------------------------------------

" vimでのコピーをクリップボード対応に
"set clipboard=unnamed,autoselect

" MacVimがデフォルトで変な設定を読んでいるのを解除 (効いてない・・・)
"let g:no_vimrc_example = 1

"-------------------------------------------------
" キーバインド
"-------------------------------------------------

"挿入モードのキーバインドをemacs風に
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>
inoremap <C-h> <BS>
inoremap <C-d> <Del>

" 縦分割版gf
nnoremap gs :vertical wincmd f<CR>

"-------------------------------------------------
" プラグイン関連
"-------------------------------------------------

" ----------------
"  unite

" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-H> :Unite buffer<CR>

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


"" ----------------
"" neocomplcache もしくは neocomplete
"
"" if_luaが有効ならneocompleteを使う
"if neobundle#is_installed('neocomplete')
"    " neocomplete用設定
"    let g:neocomplete#enable_at_startup = 1
"    let g:neocomplete#enable_ignore_case = 1
"    let g:neocomplete#enable_smart_case = 1
"    if !exists('g:neocomplete#keyword_patterns')
"        let g:neocomplete#keyword_patterns = {}
"    endif
"    let g:neocomplete#keyword_patterns._ = '\h\w*'
"elseif neobundle#is_installed('neocomplcache')
"    " neocomplcache用設定
"    let g:neocomplcache_enable_at_startup = 1
"    let g:neocomplcache_enable_ignore_case = 1
"    let g:neocomplcache_enable_smart_case = 1
"    if !exists('g:neocomplcache_keyword_patterns')
"        let g:neocomplcache_keyword_patterns = {}
"    endif
"    let g:neocomplcache_keyword_patterns._ = '\h\w*'
"    let g:neocomplcache_enable_camel_case_completion = 1
"    let g:neocomplcache_enable_underbar_completion = 1
"endif
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" ----------------
" gjslint
"autocmd FileType javascript :compiler gjslint
"autocmd QuickfixCmdPost make copen

" ----------------
" NeoSnippet

" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

"" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" ----------------
 "  vim-indent-guides

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" ---------------
"  Markdown関連

autocmd BufRead,BufNewFile *.{md,mkd,txt} set filetype=markdown
" let g:previm_open_cmd = 'open -a Safari'
" nnoremap <silent> <C-p> :PrevimOpen<CR>

" let g:vim_markdown_folding_disabled=1

" ---------------
" vim-auto-save
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

" ---------------
" NERDtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" NERDTreeでルートを変更したらchdirする
"let g:NERDTreeChDirMode = 2





