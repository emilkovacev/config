set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" -- Plugins --

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" NVIM plugins.
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'samoshkin/vim-mergetool'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'lukas-reineke/indent-blankline.nvim'

" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()

" mergetool config
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

" NERDTree config
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" let NERDTreeShowHidden=1

" COC Config
hi CocInfoFloat guifg=#ffffff guibg=#000000
hi CocErrorFloat guifg=#ffffff guibg=#000000
hi CocWarningFloat guifg=#ffffff guibg=#000000
hi CocHintFloat guifg=#ffffff guibg=#000000
