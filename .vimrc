
"===== Vundle and bundles configuration =====
source ~/.vim/bundles.vim

"colorscheme default
colorscheme molokai

"===== display =====
set number
set laststatus=2
set title
set linespace=0
set expandtab                   "Tabをスペースに展開
set smarttab                    "Tabでshiftwidth分だけインデント
set nobackup                    "backupファイル作らない
set noswapfile                  "swapファイル作らない
set nowrap                      "画面幅で折り返さない
set autoindent                  "インデントを現在行と同じに設定
set backspace=indent,eol,start  "バックスペースで特殊記号も削除可能に
set formatoptions=lmoq          "整形オプション，マルチバイト系を追加
set shiftwidth=2                "シフト幅
set hlsearch
set ts=2                        "Tabのspaceは2
set nocompatible
set mouse=a

filetype plugin on
filetype indent on

"===== encode =====
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

"===== syntax color =====
syntax on

"===== move buffer =====
nnoremap <silent>bp :bprev<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bb :b#<CR>
nnoremap <silent>bf :bf<CR>
nnoremap <silent>bl :bl<CR>
nnoremap <silent>bm :bm<CR>
nnoremap <silent>bd :bdelete<CR>

" 全角スペースをハイライトする
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
autocmd BufRead,BufNew * match JpSpace /　/

"=================================================================
" plugin settings
"=================================================================

"===== lightline ====
set t_Co=256
"let g:lightline = { 'colorscheme': 'solarized' }

"===== vim-rails =====
let g:rails_level = 4
let g:rails_default_database = 'mysql2'

"===== neocomplecache =====
let g:neocomplcache_enable_at_startup = 1            " 起動時に有効化
let g:neocomplcache_enable_smart_case = 1            " 大文字が入力されるまで、大文字小文字の区別を無視
let g:neocomplcache_enable_underbar_completion = 1   " _区切りの補完を有効化
let g:neocomplcache_force_overwrite_completefunc = 1 " completefuncを上書き
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

"===== vim-indent-guides =====
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  ctermbg=lightgray
hi IndentGuidesEven ctermbg=lightgray

"===== Align =====
let g:Align_xstrlen = 3

"===== taglist =====
let Tlist_Close_On_Select = 1
let Tlist_WinWidth = 50

"===== vim-tags =====
let g:vim_tags_project_tags_command = "/usr/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/bin/ctags -R {OPTIONS} `bundle show --paths` 2>/dev/null"

" 候補が複数ある場合は一覧表示
nnoremap <C-]> g<C-]>

"===== vim-slim =====
autocmd BufNewFile,BufRead *.slim set ft=slim
