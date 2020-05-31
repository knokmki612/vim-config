" dein.vim
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state(expand('~/.vim/dein'))
  call dein#begin('~/.vim/dein')
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('cohama/lexima.vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('JuliaEditorSupport/julia-vim')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('posva/vim-vue')
  call dein#add('w0rp/ale')
  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/asyncomplete.vim')
  call dein#add('prabirshrestha/asyncomplete-lsp.vim')
  call dein#add('prabirshrestha/vim-lsp')
  call dein#add('mattn/vim-lsp-settings')
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
" localvimrc
let g:localvimrc_ask=0
" タブインデント
set tabstop=2
set shiftwidth=2
set smartindent
" 文字エンコード関係
set fileencoding=utf-8
set fileencodings=utf-8,sjis,euc-jp,iso-2022-jp
set encoding=utf-8
" ファイル種別の設定ができるように
filetype plugin on
" ファイル更新の検出ができるように
set backupcopy=yes
" 検索語句のマークをクリア
nnoremap <silent> <C-L> :noh<C-L><CR>
" 検索時にハイライトする
set hlsearch
" ヤンク時にクリップボードにもコピー
set clipboard=unnamed,autoselect
" 色付け
if &t_Co < 256
  set t_Co=256
endif
set background=dark
colorscheme hybrid
syntax enable
" swpファイルの出力先変更
set directory=~/.vim
" ファイルの再読み込み
set autoread
augroup vimrc
  autocmd!
  au CursorHold * checktime
augroup END
" Ale
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'vue': ['eslint'],
  \ 'scss': ['stylelint'],
  \ 'julia': ['languageserver'],
  \ }
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'vue': ['eslint'],
  \ 'scss': ['stylelint'],
  \ }
let g:ale_fix_on_save = 1
