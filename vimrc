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

"NerdTree
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

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
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"navigate through splits
nmap <silent> <c-i> :wincmd k<CR>
nmap <silent> <c-k> :wincmd j<CR>
nmap <silent> <c-j> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
"remap Esc
"imap   <Esc>

