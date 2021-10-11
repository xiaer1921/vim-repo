set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc



call plug#begin('~/.vim/plugged')

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'mzlogin/vim-markdown-toc'

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

call plug#end()

let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '192.168.0.1'
let g:mkdp_port = 8080
function! g:Open_browser(url)
    silent exe '!lemonade open 'a:url
endfunction
let g:mkdp_browserfunc = 'g:Open_browser'
