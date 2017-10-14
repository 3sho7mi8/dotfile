call plug#begin('~/.vim/plugged')

" ファイルをtree表示してくれる
Plug 'scrooloose/nerdtree'

" ファイルオープンを便利に
Plug 'ctrlpvim/ctrlp.vim'

" Unite.vimで最近使ったファイルを表示できるようにする
Plug 'Shougo/neomru.vim'

" プラグイン用依存ライブラリ
Plug 'vim-jp/vital.vim'

" Rails向けのコマンドを提供する
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-bundler'

" Ruby向けにendを自動挿入してくれる
Plug 'tpope/vim-endwise'

" Git
Plug 'tpope/vim-fugitive'

" シングルクオートとダブルクオートの入れ替え等
Plug 'tpope/vim-surround'

" インデントに色を付けて見やすくする
Plug 'Yggdroot/indentLine'

" ログファイルを色づけしてくれる
Plug 'vim-scripts/AnsiEsc.vim'

" 行末の半角スペースを可視化
Plug 'bronson/vim-trailing-whitespace'

" Emmet
Plug 'mattn/emmet-vim'

" IM Control
Plug 'fuenor/im_control.vim'

" ステータスバーに色をつける
Plug 'itchyny/lightline.vim'
Plug 'fuenor/qfixgrep'

" vim-tag
Plug 'szw/vim-tags'

" ag.vim
Plug 'rking/ag.vim'

" ColorScheme
Plug 'w0ng/vim-hybrid'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'aereal/vim-colors-japanesque'

" Syntax
" インデントの設定は最後あたりに
" MarkDown Syntax
Plug 'tpope/vim-markdown'

" less用のsyntaxハイライト
Plug 'KohPoll/vim-less'

" slimのSyntax
Plug 'slim-template/vim-slim'

" HamlのSyntax
Plug 'tpope/vim-haml'

" html5のSyntax
Plug 'othree/html5.vim'

" RubyのSyntax
Plug 'vim-ruby/vim-ruby'

" CSS3のSyntax
Plug 'hail2u/vim-css3-syntax'

" JavaScriptのSyntax
Plug 'jelera/vim-javascript-syntax'

" CoffeeのSyntax
Plug 'kchmck/vim-coffee-script'

" JSX
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'

" JSX / optional
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'

" styled-components
Plug 'fleischie/vim-styled-components'

" Syntaxチェック"
Plug 'vim-syntastic/syntastic'

" VimでTwitter
Plug 'twitvim/twitvim'

call plug#end()

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" 基本のキーリマップ
noremap j gj
noremap k gk
nnoremap == gg=G''

" 日付を入力するコマンド
nmap <C-o><C-o> <ESC>a<C-r>=strftime("[%Y/%m/%d(%a) %H:%M]")<CR><ESC>

" newtab
nnoremap tn :<C-u>tabnew<CR>

" Pasteの挙動変更
vnoremap <silent> p "0p
" 一行の解析を320に変更
set synmaxcol=320
" 日本語の特定の文字入力に対応
set ambiwidth=double
" undoファイルの出力場所を指定
set undodir=~/var/vim/undofile
" %コマンドを拡張
packadd! matchit
" mdもMarkDownで開く
set syntax=markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" 自動で折りたたまないようにする
let g:vim_markdown_folding_disabled=1
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" 行間の調整
set lsp=3
" タグファイルの指定
set tags=~/.tags
" スワップファイルは使わない
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ステータス行に表示させる情報の指定
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" ステータス行に現在のgitブランチを表示する
" set statusline+=%{fugitive#statusline()}
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" バックアップディレクトリの指定
set backupdir=$HOME/.vimbackup
" バッファで開いているファイルのディレクトリでエクスクローラを開始する
set browsedir=buffer
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" 暗い背景色に合わせた配色にする
set background=dark
" タブ入力を複数の空白入力に置き換える
set expandtab
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 構文毎に文字色を変化させる
syntax on
" カラースキームの色を一部変更
autocmd ColorScheme * highlight markdownH1 ctermfg=196
autocmd ColorScheme * highlight markdownH2 ctermfg=202
autocmd ColorScheme * highlight markdownH3 ctermfg=3
autocmd ColorScheme * highlight markdownH4 ctermfg=36
autocmd ColorScheme * highlight markdownH5 ctermfg=110
autocmd ColorScheme * highlight markdownCode ctermfg=189
autocmd ColorScheme * highlight rubyControl ctermfg=173 guifg=#c397d8
autocmd ColorScheme * highlight markdownHeadingDelimiter ctermfg=189
autocmd ColorScheme * highlight markdownCodeDelimiter ctermfg=189
" カラースキーム
let scheme = 'Tomorrow-Night-Bright'
augroup guicolorscheme
  autocmd!
  execute 'autocmd GUIEnter * colorscheme' scheme
augroup END
execute 'colorscheme' scheme
" 行番号の色
highlight LineNr ctermfg=darkyellow
" フォントの変更
" set guifont=MigMix_2M_Regular:h12
set guifont=Ricty_Diminished_Discord_Regular:h13
" クリップボードにコピーができるようにする
set clipboard=unnamed,autoselect
" バックスペースの処理
set backspace=2
" 保存時に空白スペースを削除
autocmd BufWritePre * :FixWhitespace
" 保存前にディレクトリを自動的に作成する
augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)  " {{{
    if !isdirectory(a:dir) && (a:force ||
          \    input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

""""""""""""""""""""""""""""""
" NERDTree設定
""""""""""""""""""""""""""""""
" NERDTreeを開く
nnoremap <silent><C-n> :NERDTreeToggle<CR>

" NERDTreeをVim起動時に自動的に開く
" autocmd vimenter * NERDTree

" ファイル指定なしでVimを起動した場合だけ表示
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERD Treeのウィンドウだけが残るような場合にVimを終了
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ブックマークを初期表示
let g:NERDTreeShowBookmarks=1

" .ファイルを表示
" let NERDTreeShowHidden=1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('rb', 'Red', 'none', 'red',  '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('slim', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('erb', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('haml', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('coffee', '5', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('less', '5', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('scss', '5', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('sass', '5', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
""""""""""""""""""""""""""""""
" 全角スペースの表示
""""""""""""""""""""""""""""""
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
  augroup END
  call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal! g'\"" |
        \ endif
endif
""""""""""""""""""""""""""""""

" indentlineでタブでもインデントがわかるように
set list listchars=tab:\¦\
" ヤンクをクリップボードにコピー
set clipboard=unnamed,autoselect

" xやsの場合ヤンクしない
nnoremap x "_x
nnoremap s "_s

" ヤンクを貼り付けるのをテキストのみに変更
vnoremap <silent> p "0p

" カーソル下の単語をハイライトする
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" カーソル下の単語をハイライトしてから置換する
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>

" ビジュアルモードでもハイライト・置換
xnoremap <silent> <Space> mz:call <SID>set_vsearch()<CR>:set hlsearch<CR>`z
xnoremap * :<C-u>call <SID>set_vsearch()<CR>/<C-r>/<CR>
xmap # <Space>:%s/<C-r>///g<Left><Left>

function! s:set_vsearch()
  silent normal gv"zy
  let @/ = '\V' . substitute(escape(@z, '/\'), '\n', '\\n', 'g')
endfunction

" Emacsキーバインド
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

" ハイライトを消去
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

""""""""""""""""""""""""""""""""""""""""""""""""""
" インデント設定 / CUSTOM
""""""""""""""""""""""""""""""""""""""""""""""""""
" tabstop: TABキーに対応する空白数を設定
" shiftwidth: 自動インデントや"<<"、">>"で動く幅の設定
" softtabstop: TABキーやBSキーを打ち込んだときに動く幅の設定
autocmd FileType ruby setlocal sw=2 sts=2 ts=2 et
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et

""""""""""""""""""""""""""""""""""""""""""""""""""
" :SyntaxInfo でcursor下の構文情報を取得できる
" http://cohama.hateblo.jp/entry/2013/08/11/020849
""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()

""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""
" SETTING
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 100000 " 最大ファイル数(default: 10000)
let g:ctrlp_max_depth = 10 " 最大階層数(default: 40)
let g:ctrlp_mruf_max = 500
let g:ctrlp_max_height = 20
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:18'
let g:ctrlp_map = '<Nop>'

" KEYMAPPING
nnoremap s <Nop>
nnoremap sp :<C-u>CtrlP<CR>
nnoremap sb :<C-u>CtrlPBuffer<CR>
nnoremap sl :<C-u>CtrlPLine<CR>
nnoremap sz :<C-u>CtrlPMRUFiles<CR>
nnoremap sd :<C-u>CtrlPDir .<CR>
nnoremap sc :<C-u>CtrlPClearCache<CR>:<C-u>CtrlP<CR>

""""""""""""""""""""""""""""""
" Syntaxがどんどん消えてしまう現象の対策
" https://github.com/vim-jp/issues/issues/1076
""""""""""""""""""""""""""""""
set redrawtime=10000

""""""""""""""""""""""""""""""""""""""""""""""""""
" EMMETのキーバインドを変更
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key = '<C-e>'

""""""""""""""""""""""""""""""""""""""""""""""""""
" Twitvim
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap tp :<C-u>PosttoTwitter<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab
" http://thinca.hatenablog.com/entry/20111204/1322932585
" http://vim-jp.org/vimdoc-ja/tabpage.html#setting-tabline
""""""""""""""""""""""""""""""""""""""""""""""""""
" タブページを常に表示
set showtabline=2
" gVimでもテキストベースのタブページを使う
set guioptions-=e

" Tip: set tablineはlightlineが有効になっている状態では反映されない

""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline.vim
" https://gist.github.com/note103/4efce80fa78ec19111b7e12de3aaa000
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
        \ 'colorscheme': 'seoul256',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'right': [ [ 'syntastic', 'lineinfo' ],
        \              [ 'percent' ], [ 'winform' ],
        \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'branch', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'linetotal': 'LightLineTotal',
        \   'modified': 'LightLineModified',
        \   'readonly': 'LightLineReadonly',
        \   'fugitive': 'LightLineFugitive',
        \   'filename': 'LightLineFilename',
        \   'filepath': 'LightLineFilepath',
        \   'fileformat': 'LightLineFileformat',
        \   'filetype': 'LightLineFiletype',
        \   'fileencoding': 'LightLineFileencoding',
        \   'mode': 'LightLineMode',
        \   'winform': 'LightLineWinform'
        \ },
        \ 'component_expand': {
        \   'syntastic': 'SyntasticStatuslineFlag',
        \ },
        \ 'component_type': {
        \   'syntastic': 'error',
        \ }
        \ }

let g:lightline.component = {
    \ 'lineinfo': '%3l[%L]:%-2v'}

function! LightLineWinform()
  return winwidth(0) > 50 ? 'w' . winwidth(0) . ':' . 'h' . winheight(0) : ''
endfunction

function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? "⭤" : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%') && winwidth(0) <=120 ? expand('%:t') : winwidth(0) >120 ? expand('%:p') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFilepath()
  return winwidth(0) <=120 ? expand('%:h') : ''
endfunction

function! LightLineFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && winwidth(0) > 55
      let _ = fugitive#head()
      return strlen(_) ? '⭠ '._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 80 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 60 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 30 ? lightline#mode() : ''
endfunction

function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""
" ファイルタイプ関連を有効にする
""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
