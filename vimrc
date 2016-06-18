execute pathogen#infect()
filetype plugin indent on
syntax on

set t_Co=256
colorscheme monokai
set tabstop=4
set number
set smartindent
set autoindent
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
set hidden
set history=1000
set expandtab
set nowrap
set guifont="Source Code Pro"
"remove whitespace
autocmd BufWritePre * :%s/\s\+$//e
"term bg conflict
hi Normal ctermbg=none
"highlght search keyword
set hlsearch

let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'component':{
        \       'readonly': '%{&readonly?"RO!":"RD"}',
        \  }
        \}
"Neocomplete
let g:neocomplete#enable_at_startup=1



"NerdTree
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>

"navigate tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <C-o> :tabprevious<CR>
nnoremap <C-p> :tabnext<CR>

"navigate through splits
nmap <silent> <c-i> :wincmd k<CR>
nmap <silent> <c-k> :wincmd j<CR>
nmap <silent> <c-j> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"map save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
imap <x-c> :wq<CR>
"remap Esc
"imap   <Esc>


"tag bar for golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
nmap <F8> :TagbarToggle<CR>

"Golang vars
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"Enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

"Golang Key map
au FileType go nmap <Leader>im <Plug>(go-implements)
au FileType go nmap <Leader>if <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
