call plug#begin('~/.local/share/nvim/plugged')

" Place plugins here
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()


lua require('init')

" Yank to clipboard
set clipboard+=unnamedplus

set expandtab       " Use spaces instead of tabs
set shiftwidth=4    " Number of spaces per indentation level
set tabstop=4       " Number of spaces per tab

" 设置自动缩进
" (Neo)Vim 默认有三种自动缩进模式 cindent, autoindent, smartindent
set smartindent

" Enable line numbering
set number

" Set colorscheme (will override the background color)
if exists('g:vscode')
    " Do nothing
else
    colorscheme cyberdream
endif

" Set background color
" highlight Normal guibg=none
" highlight NonText guibg=none
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none

