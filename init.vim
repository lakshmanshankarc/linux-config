
" Set Number 
:set number
" Auto indentation
:set autoindent
" Use Mouse
:set mouse=a
"Smart Tab
set smarttab

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
"Complicated if possible try not to touch this boy
"Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

call plug#end()

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme molokai

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandables='+'
let g:NERDTReeDirAllowCollapsn;/*;
sudo pkill -9 NetworkManager
e="~"
