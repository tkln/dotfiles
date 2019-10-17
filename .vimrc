syntax on
set expandtab
set ts=4
set sw=4
set smartindent
set autoindent copyindent
set noswapfile

set wildmode=longest,list,full
set wildmenu

filetype on
filetype plugin on

"gui stuff
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

colorscheme minimal

map <space> <leader>

nnoremap <leader>n :setlocal number!<cr>
nnoremap <leader>s :if exists("g:syntax_on") <Bar>
    \   syntax off <Bar>
    \ else <Bar>
    \   syntax enable <Bar>
    \ endif <CR>
nnoremap <leader>h :set hlsearch!<CR>

fu! KernelMode()
    set noexpandtab
    set sw=8
    set ts=8
    set softtabstop=8
endfunction

nnoremap <leader>k :call KernelMode()<CR>

let g:clang_user_options='|| exit 0'
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1 }
