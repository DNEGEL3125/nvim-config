
lua require('init')

set clipboard+=unnamedplus

" Use spaces instead of tabs
set expandtab
" Number of spaces per indentation level
set shiftwidth=4
" Number of space per tab
set tabstop=4

" 设置自动缩进
" (Neo)Vim 默认有三种自动缩进模式 cindent, autoindent, smartindent
set smartindent

highlight Normal guibg=none

colorscheme tokyonight-moon
