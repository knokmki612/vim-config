" NeoBundle
if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'vim-jp/vimdoc-ja.git'
NeoBundleCheck
call neobundle#end()
" タブインデント
set tabstop=2
set shiftwidth=2
set smartindent
" ファイル種別にインデント切り替え
filetype on
" 検索語句のマークをクリア
nnoremap <silent> <C-L> :noh<C-L><CR>
" シンタックス
syntax on
