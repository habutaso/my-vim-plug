set fenc=utf-8
"バックアップファイルを作らない
set nobackup
""スワップファイルを作らない
set noswapfile
"入力中のコマンドをステータスに表示
set showcmd
"
"" カーソルの位置 
set ruler
set number
set cursorline

"" 新しいウィンドウを下に開く
set splitbelow
"" 新しいウィンドウを右に開く
set splitright

" 自動補完
inoremap [ []<LEFT>
inoremap { {}<LEFT>
" inoremap {<CR> {}<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

nnoremap <C-k> :sp<CR>:terminal<CR>

" neovim ターミナル移動
tnoremap <silent> <ESC> <C-\><C-n>
tnoremap <silent> <C-w><C-w> <C-\><C-n><C-w><C-w>


" インデント
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" 文字検索
set ignorecase
set incsearch
set wrapscan
set hlsearch


" go設定
autocmd BufRead,BufNewFile *.go nnoremap <C-b> :GoImports<CR>:GoRun %<CR>
autocmd BufRead,BufNewFile *.go nnoremap <F4> :GoImports<CR>


" python設定
autocmd BufRead,BufNewFile *.py set expandtab
autocmd BufRead,BufNewFile *.py set tabstop=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4
autocmd BufRead,BufNewFile *.py nnoremap <C-b> :w<CR>:!python3 %<CR>


" node.js設定
autocmd BufRead,BufNewFile *.js set expandtab
autocmd BufRead,BufNewFile *.js set tabstop=2
autocmd BufRead,BufNewFile *.js set shiftwidth=2
autocmd BufRead,BufNewFile *.js nnoremap <C-b> :w<CR>:!node %<CR>


" c言語設定
autocmd BufRead,BufNewFile *.c set noexpandtab
