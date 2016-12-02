" dein.vim
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/dein.vim
endif
call dein#begin(expand('~/.vim/bundle'))
call dein#add('vim-jp/vimdoc-ja')
call dein#add('w0ng/vim-hybrid')
call dein#end()
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
