" NeoBundle
if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'w0ng/vim-hybrid'
NeoBundleCheck
call neobundle#end()
" タブインデント
set tabstop=2
set shiftwidth=2
set smartindent
" ファイル種別にインデント切り替え
filetype plugin on
" 検索語句のマークをクリア
nnoremap <silent> <C-L> :noh<C-L><CR>
" ヤンク時にクリップボードにもコピー
set clipboard=unnamed,autoselect
" 色付け
set background=dark
colorscheme hybrid
syntax enable
