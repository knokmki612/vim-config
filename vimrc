" dein.vim
set runtimepath+=~/.vim/bundle/dein.vim
if dein#load_state(expand('~/.vim/bundle'))
	call dein#begin('~/.vim/bundle')
	call dein#add('~/.vim/bundle/dein.vim')
	call dein#add('vim-jp/vimdoc-ja')
	call dein#add('w0ng/vim-hybrid')
	call dein#add('cohama/lexima.vim')
	call dein#add('w0rp/ale')
	call dein#add('editorconfig/editorconfig-vim')
	call dein#add('digitaltoad/vim-pug')
	call dein#add('prettier/vim-prettier')
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
" ファイル種別の設定が出来るようにした
filetype plugin on
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
" Lint関係
let g:ale_linters = {
\	'javascript': ['eslint'],
\	'scss': ['stylelint'],
\}
let g:ale_fixers = {
\	'javascript': ['eslint'],
\	'scss': ['stylelint'],
\}
