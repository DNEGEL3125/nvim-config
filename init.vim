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

" Set colorscheme (will override the background color)
colorscheme cyberdream

" Set background color
" highlight Normal guibg=none
" highlight NonText guibg=none
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none

function OpenMarkdownPreview (url)
  execute "silent ! open -a Google\ Chrome -n --args --new-window " . a:url
endfunction
let g:mkdp_browserfunc = 'OpenMarkdownPreview'
