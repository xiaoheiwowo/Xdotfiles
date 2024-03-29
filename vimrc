""------------------------------------------- Plugin ------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'easymotion/vim-easymotion'
" 对齐线
Plug 'Yggdroot/indentLine'
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()
""------------------------------------------- 基本设置 ------------------------------------------------------
" set nu
set ruler
syntax on
colo desert
set expandtab
" %ret! 4
set tabstop=4 "设定tab宽度为4个字符
set shiftwidth=4 "设定自动缩进为4个字符
set expandtab "用space替代tab的输入
" 设置vim剪切板和系统剪切板共享
set clipboard=unnamed
set paste
" 光标
" set cc=120
let g:indent_guides_guide_size=1
" 光标所在的当前行高亮
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 显示光标所在行的行号，其它行都为相对改行的行号
" set relativenumber
" 设置编码
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
" 支持使用鼠标
set mouse=a
" 在底部显示当前模式
" set showmode
" 命令模式下显示键入的指令
" set showcmd
" 开启文件类型检查，并且载入与该类型对应的缩进规则(如.py 文件会去找~/.vim/indent/python.vim)
" filetype indent on
" #在状态栏显示光标的当前位置（位于哪一行哪一列）
" set ruler
" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch
" 搜索时，高亮显示匹配结果
" set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 搜索时忽略大小写
set smartcase
" set paste
"
set splitbelow
"

""-------------------------------------------- NERDTree ------------------------------------------------------
" NerdTree才插件的配置信息
""将F2设置为开关NERDTree的快捷键
map <f2> :NERDTreeToggle<cr>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = ' ▶'
let g:NERDTreeDirArrowCollapsible = ' △'
""窗口位置
let g:NERDTreeWinPos='right'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=0
""不显示隐藏文件
let g:NERDTreeHidden=1

""-------------------------------------------- Vim Commentary ------------------------------------------------
"vim-commentary
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s

""--------------------------------------------- Airline & 状态栏 ---------------------------------------------
" vim-airline
let g:airline_theme="onedark"

" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:Powerline_symbols = 'fancy'
""--------------------------------------------- Key Map ------------------------------------------------------
let mapleader=' '
map <leader>q :q <CR>
map <leader>w :w <CR>
map <leader>sa ggVG"

noremap ; :
inoremap jj <ESC>
inoremap kk <ESC>
noremap <c-h> <C-w>h
noremap <c-l> <C-w>l
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
nnoremap <c-a> ^
nnoremap <c-e> $


" 新建终端
nnoremap <leader>tt :terminal<cr>

" 插入模式下的一些快捷键
inoremap <M-o> <esc>o
inoremap <M-O> <esc>O
" inoremap <M-h> <HOME>
inoremap <M-h> <esc>^i
inoremap <M-l> <END>
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

" 定义以下快捷键，用于删除当前文件中所有的行尾多余空格：
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" 定义以下快捷键，用于快速编辑和重载vimrc配置文件：
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" 定义以下快捷键，使用前缀键和数字键快速切换缓冲区：
nnoremap <leader>1 :1b<CR>
nnoremap <leader>2 :2b<CR>
" Mapping selecting mappings
""------------------------------------------- Fzf 插件配置开始------------------------------------------------------
let g:fzf_command_prefix = 'Fzf'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
noremap <Leader>f :FzfFiles<cr>
noremap <Leader>[ :FzfBuffers<cr>
noremap <Leader>t :FzfTags<cr>
noremap <Leader>a :FzfAg<cr>


nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
inoremap <expr> <c-x><c-k> fzf#complete('cat /usr/share/dict/words')
" Default fzf layout
" - down / up / left / right
" - window (nvim only)
let g:fzf_layout = { 'down': '~40%' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] to customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Advanced customization using autoload functions
autocmd VimEnter * command! Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})

command! FZFMru call fzf#run({
            \  'source':  v:oldfiles,
            \  'sink':    'e',
            \  'options': '-m -x +s',
            \  'down':    '40%'})
nnoremap <leader>u :FZFMru<cr>
