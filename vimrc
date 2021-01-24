" dein.vim
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = '~/.vim/dein'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml('~/.vim/dein.toml')
  call dein#load_toml('~/.vim/dein_lazy.toml', { 'lazy': 1 })
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
let s:dein_non_used_plugins = dein#check_clean()
if len(s:dein_non_used_plugins) > 0
  call map(s:dein_non_used_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" タブインデント
set smartindent
inoremap <S-Tab> <C-d>
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
