filetype plugin indent on


"Set mapleader
let mapleader = ","
"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
map <silent> <leader>n :set nonu<cr>
map <silent> <leader>m :set nu<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Platform
function! MySys()
    if has("win32")
        return "windows"
    else
        return "linux"
    endif
endfunction

function! SwitchToBuf(filename)
    "let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction

"Fast edit vimrc
if MySys() == 'linux'
    "Fast reloading of the .vimrc
    map <silent> <leader>ss :source ~/.vimrc<cr>
    "Fast editing of .vimrc
    map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
    "When .vimrc is edited, reload it
    autocmd! bufwritepost .vimrc source ~/.vimrc
elseif MySys() == 'windows'
    " Set helplang
    set helplang=cn
    "Fast reloading of the _vimrc
    map <silent> <leader>ss :source ~/_vimrc<cr>
    "Fast editing of _vimrc
    map <silent> <leader>ee :call SwitchToBuf("~/_vimrc")<cr>
    "When _vimrc is edited, reload it
    autocmd! bufwritepost _vimrc source ~/_vimrc
endif

" For windows version
if MySys() == 'windows'
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

syntax enable
set cursorline
syntax on

"set mouse=a

set helplang=cn
set hlsearch
colorscheme desert
"colorscheme darkblue
map <F2> :nohlsearch<CR>
filetype plugin indent on
set completeopt=longest,menu
autocmd FileType c,cpp set shiftwidth=4 | set expandtab

"close lookupfile window by two <Esc>
nnoremap <buffer> <Esc><Esc> <C-W>q
inoremap <buffer> <Esc><Esc> <Esc><C-W>q
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
:hi ModeMsg ctermfg=Green
"映射LookupFile为,lk
"nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
"nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
"nmap <silent> <leader>lw :LUWalk<cr>



 set tags =/mnt/new-QN3950/vendor/qcom/proprietary/camx/tags
 set tags +=/mnt/new-QN3950/vendor/qcom/proprietary/chi-cdk/tags
"开启光亮光标行 
set cursorline 
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white 
"开启高亮光标列 
"set cursorcolumn 
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight Keyword term=reverse,bold
highlight Comment cterm=underline ctermfg=red ctermbg=blue

set autochdir
"启动vim后自动打开taglist窗口
let Tlist_Auto_Open = 1
let Tlist_Close_On_Select=1

"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File = 1

"taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1

"taglist窗口显示在右侧，缺省为左侧
"let Tlist_Use_Right_Window =1

"设置taglist窗口大小
"let Tlist_WinHeight = 100
let Tlist_WinWidth = 32

"显示taglist菜单
"let Tlist_Show_Menu=1

let Tlist_GainFocus_On_ToggleOpen = 1 

"设置taglist打开关闭的快捷键F8
"map <silent> <leader>a :TlistToggle<CR>

"更新ctags标签文件快捷键设置
map <F6> :!ctags -R<CR>

let g:winManagerWidth = 30

"let g:AutoOpenWinManager = 1

"let g:winManagerWindowLayout='FileExplorer'
"let g:winManagerWindowLayout="TagList|FileExplorer,BufExplorer" 
"let g:winManagerWindowLayout='FileExplorer|TagList'
"map <silent> <leader>j :WMToggle<CR>

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

":set cscopequickfix=s-,c-,d-,i-,t-,e-

":cs add /libvirt/cscope.out /libvirt
":cs add /mnt/mh4_new/cscope.out /mnt/mh4_new

:set backspace=indent,eol,start
syntax enable
syntax on " 自动语法高亮
set number"显示行号
colorscheme desert" 设定配色方案
set guifont=Consolas:h12:cANSI"英文字体
set guifontwide=SimSun-ExtB:h12:cGB2312
set tabstop=4"表示Tab代表4个空格的宽度
set expandtab"表示Tab自动转换成空格
set autoindent"表示换行后自动缩进
set autoread " 当文件在外部被修改时，自动重新读取
set history=400"vim记住的历史操作的数量，默认的是20
set nocompatible"使用vim自己的键盘模式,而不是兼容vi的模式
set confirm"处理未保存或者只读文件时,给出提示
set smartindent"智能对齐
set shiftwidth=4


set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

call vundle#end()            " required
Bundle 'Valloric/YouCompleteMe'

let g:ycm_confirm_extra_conf=0
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :
""\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2    "
"从第2个键入字符就开始罗列匹配项
"let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1   " 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>   "force recomile with
"syntastic
""nnoremap <leader>lo :lopen<CR>    "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
"inoremap <leader><leader> <C-x><C-o>
""在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"Bundle 'Valloric/YouCompleteMe'

""""""""""""""""""""""""""""""

" Set mapleader
let mapleader = ","

"...........ag................
set runtimepath^=~/.vim/bundle/ag
set runtimepath^=~/.vim/bundle/fzf
nnoremap <leader>f :silent execute("Ag! " . expand("<cword>"))<CR>



"FZF config
"nnoremap <leader>a :silent execute("FZF")<CR>
"...........ag...............

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/fzf.vim'

set rtp+=/root/.vim/bundle/fzf/bin/fzf
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
nmap <C-h> :History<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }
